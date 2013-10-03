/*
 * file:        SynWorkLoadSimC.nc
 * description: Implementation of a synthetic work load generator
 *              to test tradeoff between computation, storage and
 *              communication
 *
 */

includes sim_constants;

/*******************************************************************************/
/********* Variables describing the emulation - !!!! Fill these in !!!! ********/
/*******************************************************************************/
/* Timer triggers t at d_timer ms
   d : (d_cyc++) d_proc_cyc -> d_gen -> (!(d_cyc % d_xmit_freq)) Xmit d_gen bytes
                                     -> (!(d_cyc % d_write_freq)) write d_gen bytes
   
   b : (!(d_cyc % b_freq)) (b_cyc++) b_read -> b_proc_cyc -> b_gen 
                                        -> (!(b_cyc % b_xmit_freq)) Xmit b_gen
*/


/* Data processing config */
#define d_timer      1000    /* NON-ZERO */
#define d_proc_cyc   10   /* NON-ZERO */
#define d_gen        64
#define d_xmit_freq  0       /* ZERO indicates no Xmit */
#define d_write_freq 0       /* ZERO indicates no write */
    
/* Batch processing config*/
#define b_freq      8     /* ZERO indicates no batch processing */
#define b_read      0    /* ZERO indicates batch processing w/o flash */
#define b_write     0    /* ZERO indicates batch processing w/o flash */
#define b_proc_cyc  512  /* NON-ZERO */
#define b_proc_cyc_repeat 350  /* ATLEAST 1 : serves as a multiplier for the
                                  batch processing cycles. therefore, no.
                                  of cycles executed = b_proc_cyc_repeat x 
                                                       b_proc_cyc */
#define b_xmit_freq 1      /* ZERO indicates no Xmit */
#define b_gen       40

//#define XMIT_SERIAL 1

module SynWorkLoadSimC {
    provides interface StdControl;
    
    uses {
        interface PageNAND;
        interface Leds;
        interface SendMsg;
        interface SendMsg as SendRadioMsg;
        interface Timer;
        interface PowerManagement;
        interface SplitControl as RadioControl;
    }
}

implementation {


    /*******************************************************************************/
    /***** Variables describing the emulation - Fill these in in sim_constants *****/
    /*******************************************************************************/
    /* Timer triggers t at d_timer ms
      d : (d_cyc++) d_proc_cyc -> d_gen -> (!(d_cyc % d_xmit_freq)) Xmit d_gen bytes
                                        -> (!(d_cyc % d_write_freq)) write d_gen bytes

      b : (!(d_cyc % b_freq)) (b_cyc++) b_read -> b_proc_cyc -> b_gen 
                        -> (!(b_cyc % b_xmit_freq)) Xmit b_gen
    */
    /*******************************************************************************/



    /* Global variables */
    uint16_t d_cyc;                   /* Indicates no. of data collection 
                                         cycles executed */
    uint16_t b_cyc;                   /* Indicates no. of batch processing
                                         cycles executed */

    enum application_state app_state; /* Indicates when the application is shutting down */
    uint8_t buffer[TOS_NAND_PAGE_SIZE]; /* General buffer to dump read/write data */
    uint16_t total_pages;               /* Total pages on flash */
    uint16_t write_page;                /* Indicates current write page */
    uint16_t write_offset;              /* Indicates current write offset within page */

    bool busy;
    uint16_t xmit_bytes,                /* Total Xmit bytes pending */
             to_xmit;                   /* No of bytes being transmitted */
    enum radio_state radio;

    TOS_Msg msg_ptr;

    /* Declare methods */
    void data_process();
    void batch_process();
    
    void flash_read(uint16_t bytes);
    void flash_write(uint16_t bytes);
    void process_cycles(uint16_t cyc);
    
    task void xmit();
    task void power_off_radio();

#ifdef XMIT_SERIAL 
    TOS_Msg serial_msg;
    SimMsg *serial_msg_ptr;
    task void xmit_serial();
#endif

    /* 
     * Called at program init 
     */
    command result_t StdControl.init()
    {
        d_cyc = 0;
        b_cyc = 0;
        app_state = S_RUNNING;
        write_page = 0;
        write_offset = 0;
        xmit_bytes = 0;
        to_xmit = 0;
        busy = 0;
        radio = R_ON;

#ifdef XMIT_SERIAL
        serial_msg_ptr = (SimMsg *) serial_msg.data;
        serial_msg_ptr->err_type = 0;
        serial_msg_ptr->data_cyc = 0;
        serial_msg_ptr->batch_cyc = 0;
#endif

        dbg(DBG_USR1, "Initializing Leds\n");
        call Leds.init(); 
        dbg(DBG_USR1, "Initializing PageNAND\n");
        call PageNAND.init();
        dbg(DBG_USR1, "Enabling Power Mangement\n");
        call PowerManagement.enable();

        return SUCCESS;
    }

    /* 
     * Not being used 
     */
    event result_t RadioControl.initDone()
    {
        return (SUCCESS);
    }

    /* 
     * Flash initialization 
     */
    event result_t PageNAND.initDone(result_t r)
    {
        if (SUCCESS != r)
        {
            dbg(DBG_USR1, "Error ! PageNAND init failure\n");
            call Leds.redOn();

            /* Send packet to serial port */
#ifdef XMIT_SERIAL
            serial_msg_ptr->err_type = 1;
            post xmit_serial();
#endif            

            return (FAIL);
        }

        dbg(DBG_USR1, "PageNAND init ok\n");
        total_pages = call PageNAND.numPages();

        return (SUCCESS);
    }

    /* 
     * Called to start program execution 
     */
    command result_t StdControl.start() 
    {
        call Timer.start(TIMER_REPEAT, d_timer);

        call PowerManagement.adjustPower();

        return (SUCCESS);
    }

    /* 
     * Called at program termination 
     */
    command result_t StdControl.stop()
    {
        app_state = S_EXITING;
        return call Timer.stop();
    }


    /************************* Workload Generator **********************/

    /*
     * This timer event triggers the workload generator cycle 
     */
    event result_t Timer.fired()
    {
        //call Leds.redToggle();
        //call Leds.redToggle();

        if (app_state != S_EXITING)
        {
            /****** Process the data needed */
            data_process();

            /****** Batch process when needed */
            if ((d_cyc) && (b_freq != 0) && !(d_cyc % b_freq))
                batch_process();
        }

        dbg(DBG_USR1, "Timer fired...\n");
        
        /* Send packet to serial port */
#ifdef XMIT_SERIAL
        serial_msg_ptr->err_type = 0;
        serial_msg_ptr->data_cyc = d_cyc;
        serial_msg_ptr->batch_cyc = b_cyc;
        serial_msg_ptr->write_page = write_page;
        serial_msg_ptr->write_offset = write_offset;
        post xmit_serial();
#endif

        if (xmit_bytes > 0)
            post xmit();
        else
            call PowerManagement.adjustPower();

        return SUCCESS;
    }


    /*
     * This method is called to process the data collected by
     * the sensor 
     */
    void data_process()
    {
        dbg(DBG_USR1, "Processing data : cycle %d\n", d_cyc);
        
        /* assume data is available */

        /* process the data */
        process_cycles(d_proc_cyc);

        d_cyc++;

        /* Xmit if needed */
        /* (!(d_cyc % d_xmit_freq)) Xmit gen bytes */
        if ((d_xmit_freq != 0) && !(d_cyc % d_xmit_freq))
        {
            xmit_bytes += d_gen;
        }

        /* Write to flash if needed */
        /* (!(d_cyc % d_write_freq)) Write gen bytes */
        if ((d_write_freq != 0) && !(d_cyc % d_write_freq))
            flash_write (d_gen);

    }


    /*
     * This method is called to batch process the collected data
     */
    void batch_process()
    {
        int i;
        dbg(DBG_USR1, "Batch Processing data : cycle %d\n", b_cyc);
        
        /* Read bytes from flash */
        if (b_read != 0)
            flash_read (b_read);

        /* Read bytes from flash */
        if (b_write != 0)
            flash_write (b_write);

        /* batch process the data */
        for (i=0; i<b_proc_cyc_repeat; i++)
        process_cycles(b_proc_cyc);

        /* Xmit if needed */
        b_cyc++;

        /* (!(d_cyc % d_xmit_freq)) Xmit gen bytes */
        if ((b_xmit_freq != 0) && !(b_cyc % b_xmit_freq))
        {
            xmit_bytes += b_gen;
        }
    }


    /*********************** Processing ********************/
    void process_cycles(uint16_t cyc)
    {
        dbg(DBG_USR1, "Running %d cycles\n", cyc);
        cyc = cyc / 6;

        while (cyc > 0)    // 3 cycles
        {
            asm __volatile__ ("nop");
            cyc = cyc - 1; // 3 cycles
        }
    }


    /*********************** Flash processing ********************/
    /* Flash read */
    void flash_read(uint16_t bytes)
    {
        uint16_t to_read = 0;
        dbg(DBG_USR1, "Reading %d bytes from flash\n", bytes);

        if (0 == bytes)
            return;

        call Leds.yellowToggle();
        call Leds.yellowToggle();

        /* Calculate number of more reads to perform */
        do
        {
            if (bytes > TOS_NAND_PAGE_SIZE)
            {
                bytes -= TOS_NAND_PAGE_SIZE;
                to_read = TOS_NAND_PAGE_SIZE;
            }
            else
            {
                to_read = bytes;
                bytes = 0;
            }


            if (SUCCESS == call PageNAND.read(write_page, 0, 
                                              buffer, to_read))
            {
                dbg(DBG_USR1, "Read %d bytes from flash\n", to_read);
            }
            else
            {
                dbg(DBG_USR1, "Error ! Unable to read %d bytes from flash\n", to_read);
                call Leds.redOn();
                
                /* Send packet to serial port */
#ifdef XMIT_SERIAL
                serial_msg_ptr->err_type = 2;
                post xmit_serial();
#endif
            }
        }
        while (bytes != 0);
    }

    /* Flash write */
    void flash_write(uint16_t bytes)
    {
        uint16_t to_write = 0;
        dbg(DBG_USR1, "Writing %d bytes to flash\n", bytes);

        if (0 == bytes)
            return;

        call Leds.yellowToggle();
        call Leds.yellowToggle();
        do
        {
            /* Calculate number of more writes to perform */
            if (bytes > (TOS_NAND_PAGE_SIZE - write_offset))
            {
                bytes -= (TOS_NAND_PAGE_SIZE - write_offset);
                to_write = (TOS_NAND_PAGE_SIZE - write_offset);
            }
            else
            {
                to_write = bytes;
                bytes = 0;
            }


            if (SUCCESS == call PageNAND.write(write_page, write_offset, 
                                               buffer, to_write))
            {
                dbg(DBG_USR1, "Wrote %d bytes to flash\n", to_write);
            }
            else
            {
                dbg(DBG_USR1, "Error ! Unable to write %d bytes to flash\n", 
                    to_write);
                call Leds.redOn();

                /* Send packet to serial port */
#ifdef XMIT_SERIAL
                serial_msg_ptr->err_type = 3;
                post xmit_serial();
#endif
            }


            /* Calculate next write offset */
            write_offset += to_write;

            /* Calculate next write page */
            if (write_offset >= TOS_NAND_PAGE_SIZE)
            {
                /* Move write pointer to next page */
                write_offset = 0;
                write_page++;

                if (write_page > total_pages)
                    write_page = 0;

                /* If write pointer moves to a new erase block -> 
                   erase the new erase block */
                if (!(write_page % TOS_NAND_ERASE_SIZE))
                {
                    if (SUCCESS == call PageNAND.erase(write_page))
                    {
                        dbg(DBG_USR1, "Erasing page %d ok\n", write_page);
                    }
                    else
                    {
                        dbg(DBG_USR1, "Error ! Unable to erase %d page\n", 
                            write_page);
                        call Leds.redOn();

                        /* Send packet to serial port */
#ifdef XMIT_SERIAL
                        serial_msg_ptr->err_type = 4;
                        post xmit_serial();
#endif
                    }

                }
            }

        }
        while (bytes != 0);
    }

    /* 
     * Erase flash erase block 
     */
    event result_t PageNAND.eraseDone(result_t r)
    {
        if (SUCCESS != r)
        {
            dbg(DBG_USR1, "Error ! PageNAND erase failure\n");
            call Leds.redOn();

            /* Send packet to serial port */
#ifdef XMIT_SERIAL
            serial_msg_ptr->err_type = 5;
            post xmit_serial();
#endif

            return (FAIL);
        }
        else 
            dbg(DBG_USR1, "PageNAND erase ok\n");

        return (SUCCESS);
    }


    /*********************** Transmit processing ********************/
    task void xmit()
    {
        bool local_busy;

        if (0 == xmit_bytes)
        {
            dbg(DBG_USR1, "Nothing to xmit\n");
            return;
        }            

        /* Lock the radio */
        atomic {
            local_busy = busy;
            if (busy == 0)
                busy = 1;
        }

        if (local_busy)
        {
            dbg(DBG_USR1, "Busy ! Xmit failed - %d bytes\n", xmit_bytes);
            return;
        }

        /* Check if the radio is on */
        if (radio != R_ON)
        {
            /* Radio cannot be turning off or turning on as it is locked
               in these durations -> radio is off */
            /* Turn on the radio */
            /* Note : lock is held */
        
            if (FAIL == call RadioControl.start())
            {
                call Leds.redOn();
                dbg(DBG_USR1, "Error ! Failed to turn on radio !\n");
            }
            else
            {
                /* Radio is TURNING ON */
                dbg(DBG_USR1, "Radio is being turned on\n");
                radio = R_TURNING_ON;
                /* Radio will post task again when its on */
                return;
            }
        }

        /* Xmit one msg */
        dbg(DBG_USR1, "To Xmit %d bytes\n", xmit_bytes);

        /* Calculate number of more xmits to perform */
        if (xmit_bytes > TOSH_DATA_LENGTH)
            to_xmit = TOSH_DATA_LENGTH;
        else
            to_xmit = xmit_bytes;

        //call Leds.greenOn();
        if(SUCCESS == call SendRadioMsg.send(TOS_BCAST_ADDR, 
                                             to_xmit, &msg_ptr))
        {
            dbg(DBG_USR1, "Xmiting %d bytes on radio\n", to_xmit);
        }
        else
        {
            dbg(DBG_USR1, "Error ! Unable to xmit %d bytes on radio\n", 
                to_xmit);
            busy = 0;
            call Leds.redOn();

            /* Send packet to serial port */
#ifdef XMIT_SERIAL
            serial_msg_ptr->err_type = 6;
            post xmit_serial();
#endif
        }
    }  

    /* 
     * Called when radio message send is successful 
     */
    event result_t SendRadioMsg.sendDone(TOS_MsgPtr msg_Ptr, result_t r)
    {
        //call Leds.greenOff();
        
        if (SUCCESS == r)
        {
            dbg(DBG_USR1, "Xmit done\n");
            xmit_bytes -= to_xmit;
        }
        else
        {
            //call Leds.redOn();
            dbg(DBG_USR1, "Error ! Xmit failed !\n");

#ifdef XMIT_SERIAL
            serial_msg_ptr->err_type = 7;
            post xmit_serial();
#endif
        }

        if (xmit_bytes > 0)
        {
            /* Radio is ON */
            /* More bytes need to be xmited */
            /* Note : lock is released */
            dbg(DBG_USR1, "Bytes to xmit : %d\n", xmit_bytes);
            busy = 0;
            post xmit();
        }
        else
        {
            /* Radio is ON */
            /* No more bytes to xmit - turn off the radio */
            /* Note : lock is held */
            dbg(DBG_USR1, "Posted radio power off task\n");
            post power_off_radio();
        }

        return SUCCESS;
    }

    event result_t RadioControl.startDone()
    {
        /* Radio is ON */
        /* Note : lock is released */
        radio = R_ON;
        busy = 0;
        //call Leds.greenToggle();

        /* Post the xmit task */
        post xmit();

        return (SUCCESS);
    }


    task void power_off_radio()
    {
        /* Radio is ON and we hold lock */
        if (FAIL == call RadioControl.stop())
        {
            //call Leds.redOn();
            dbg(DBG_USR1, "Error ! Failed to turn off radio !\n");
        }
        else
        {
            /* Radio is TURNING OFF */
            dbg(DBG_USR1, "Radio is being turned off\n");
            radio = R_TURNING_OFF;
        }
    }

    event result_t RadioControl.stopDone()
    {
        /* Radio is OFF */
        /* Note : lock is released */
        radio = R_OFF;
        busy = 0;
        //call Leds.yellowToggle();

        call PowerManagement.adjustPower();

        return (SUCCESS);
    }


#ifdef XMIT_SERIAL 
    task void xmit_serial()
    {
        if (busy)
        {
            dbg(DBG_USR1, "Busy ! Serial Xmit failed - t:%d d:%d b:%d\n", 
                serial_msg_ptr->err_type, 
                serial_msg_ptr->data_cyc,
                serial_msg_ptr->batch_cyc);
        }
        else 
        {
            /* Xmit one msg */
            busy = 1;

            /* Send packet to serial port */
            if(SUCCESS != call SendMsg.send(TOS_UART_ADDR, sizeof(SimMsg), 
                                            &serial_msg))
            {
                dbg(DBG_USR1, "Error ! Unable to serial xmit t:%d d:%d b:%d\n", 
                    serial_msg_ptr->err_type, 
                serial_msg_ptr->data_cyc,
                serial_msg_ptr->batch_cyc);
                busy = 0;
                call Leds.redOn();
            }
            else
                dbg(DBG_USR1, "Xmiting on serial...\n");
        }
    }
#endif

   event result_t SendMsg.sendDone(TOS_MsgPtr msg_Ptr, result_t r)
   {
       busy = 0;
       dbg(DBG_USR1, "Xmit on serial done\n");

       // post xmit();

       return (SUCCESS);
   }

}

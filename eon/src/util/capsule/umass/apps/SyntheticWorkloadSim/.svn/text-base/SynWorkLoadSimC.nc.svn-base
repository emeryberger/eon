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
#define d_timer      7000    /* NON-ZERO */
#define d_proc_cyc   0   /* NON-ZERO : Should be a multiple of 7 */
#define d_gen        0
#define d_xmit_freq  0       /* ZERO indicates no Xmit */
#define d_write_freq 0       /* ZERO indicates no write */
    



module SynWorkLoadSimC {
    provides interface StdControl;
    
    uses {
        interface PageNAND;
        interface Leds;
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

/* Batch processing config*/
    uint8_t b_freq = 1;     /* ZERO indicates no batch processing */
    uint32_t b_read = 131072;    /* ZERO indicates batch processing w/o flash */
    uint32_t b_write = 65536;    /* ZERO indicates batch processing w/o flash */
    uint32_t b_proc_cyc = 32768;  /* NON-ZERO : Should be a multiple of 7 */
    uint16_t b_proc_cyc_repeat = 600;  /* ATLEAST 1 : serves as a multiplier for the
                                        batch processing cycles. therefore, no.
                                        of cycles executed = b_proc_cyc_repeat x 
                                        b_proc_cyc */
    uint8_t b_xmit_freq = 1;      /* ZERO indicates no Xmit */
    uint32_t b_gen = 8192;



    /* Global variables */
    uint16_t d_cyc;                   /* Indicates no. of data collection 
                                         cycles executed */
    uint16_t b_cyc;                   /* Indicates no. of batch processing
                                         cycles executed */

    uint8_t buffer[TOS_NAND_PAGE_SIZE]; /* General buffer to dump read/write data */
    uint16_t total_pages;               /* Total pages on flash */
    uint16_t write_page;                /* Indicates current write page */
    uint16_t write_offset;              /* Indicates current write offset within page */

    uint32_t xmit_bytes,                /* Total Xmit bytes pending */
             to_xmit;                   /* No of bytes being transmitted */
    enum radio_state radio;
    enum radio_state radio_xmit;

    TOS_Msg msg_ptr;

    /* Declare methods */
    void data_process();
    void batch_process();
    
    void flash_read(uint32_t bytes);
    void flash_write(uint32_t bytes);
    void process_cycles(uint16_t cyc);    
    void xmit();

    task void xmit_task();

    /* 
     * Called at program init 
     */
    command result_t StdControl.init()
    {
        d_cyc = 0;
        b_cyc = 0;
        write_page = 0;
        write_offset = 0;
        xmit_bytes = 0;
        to_xmit = 0;
        radio = R_ON;
        radio_xmit = R_FREE;

        dbg(DBG_USR1, "Initializing Leds\n");
        call Leds.init(); 
        dbg(DBG_USR1, "Initializing PageNAND\n");
        call PageNAND.init();
        dbg(DBG_USR1, "Enabling Power Mangement\n");
        //call PowerManagement.enable();

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

        //call PowerManagement.adjustPower();

        return (SUCCESS);
    }

    /* 
     * Called at program termination 
     */
    command result_t StdControl.stop()
    {
        return call Timer.stop();
    }


    /************************* Workload Generator **********************/

    /*
     * This timer event triggers the workload generator cycle 
     */
    event result_t Timer.fired()
    {
        /****** Process the data needed */
        data_process();
        
        /****** Batch process when needed */
        if ((d_cyc) && (b_freq != 0) && !(d_cyc % b_freq))
            batch_process();

        dbg(DBG_USR1, "Timer fired...\n");
        

        if (xmit_bytes > 0)
        {
            if (radio == R_OFF)
            {
                /* Start the radio */
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
                }
            } 
            else if (radio == R_ON)
            {
                xmit();
            }   
        }
        else
        {
            //call PowerManagement.adjustPower();
        }

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
        cyc = cyc / 7;

        while (cyc > 0)    // 3 cycles
            cyc = cyc - 1; // 3 cycles
    }


    /*********************** Flash processing ********************/
    /* Flash read */
    void flash_read(uint32_t bytes)
    {
        uint16_t to_read = 0;
        dbg(DBG_USR1, "Reading %d bytes from flash\n", bytes);

        if (0 == bytes)
            return;

        //call Leds.yellowToggle();
        //call Leds.yellowToggle();

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
                dbg(DBG_USR1, "Error ! Unable to read %d bytes from flash\n", 
                    to_read);
                call Leds.redOn();
                call Leds.yellowOn();
            }
        }
        while (bytes != 0);
    }

    /* Flash write */
    void flash_write(uint32_t bytes)
    {
        uint16_t to_write = 0;
        dbg(DBG_USR1, "Writing %d bytes to flash\n", bytes);

        if (0 == bytes)
            return;

        //call Leds.yellowToggle();
        //call Leds.yellowToggle();
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
                call Leds.yellowOn();
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
                        call Leds.yellowOn();
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
            call Leds.yellowOn();

            return (FAIL);
        }
        else 
            dbg(DBG_USR1, "PageNAND erase ok\n");

        return (SUCCESS);
    }


    /*********************** Transmit processing ********************/
    void xmit()
    {
        if ( (xmit_bytes == 0) || 
             (radio != R_ON) || 
             (radio_xmit != R_FREE) )
            return;

        /* Xmit one msg */
        radio_xmit = R_BUSY;
        dbg(DBG_USR1, "To Xmit %d bytes\n", xmit_bytes);

        /* Calculate number of more xmits to perform */
        if (xmit_bytes > TOSH_DATA_LENGTH)
            to_xmit = TOSH_DATA_LENGTH;
        else
            to_xmit = xmit_bytes;

        if(SUCCESS == call SendRadioMsg.send(TOS_BCAST_ADDR, 
                                             to_xmit, &msg_ptr))
        {
            dbg(DBG_USR1, "Xmiting %d bytes on radio\n", to_xmit);
        }
        else
        {
            dbg(DBG_USR1, "Error ! Unable to xmit %d bytes on radio\n", 
                to_xmit);
            radio_xmit = R_FREE;
            call Leds.redOn();
            call Leds.greenOn();
        }
    }  

    /* 
     * Called when radio message send is successful 
     */
    event result_t SendRadioMsg.sendDone(TOS_MsgPtr msg_Ptr, result_t r)
    {   
        radio_xmit = R_FREE;

        if (SUCCESS == r)
        {
            dbg(DBG_USR1, "Xmit done\n");
            xmit_bytes -= to_xmit;
        }
        else
        {
            call Leds.redOn();
            call Leds.greenOn();
            dbg(DBG_USR1, "Error ! Xmit failed !\n");
        }

        if (xmit_bytes > 0)
        {
            /* Radio is ON */
            /* More bytes need to be xmited */
            /* Note : lock is released */
            dbg(DBG_USR1, "Bytes to xmit : %d\n", xmit_bytes);
            post xmit_task();
        }
        else
        {
            /* Radio is ON */
            /* No more bytes to xmit - turn off the radio */
            dbg(DBG_USR1, "Posted radio power off task\n");
            if (radio == R_ON)
            {
                if (FAIL == call RadioControl.stop())
                {
                    call Leds.redOn();
                    dbg(DBG_USR1, "Error ! Failed to turn off radio !\n");
                }
                else
                {
                    /* Radio is TURNING OFF */
                    radio = R_TURNING_OFF;
                    dbg(DBG_USR1, "Radio is being turned off\n");
                }
            }
        }

        return SUCCESS;
    }

    event result_t RadioControl.startDone()
    {
        /* Radio is ON */
        /* Note : lock is released */
        radio = R_ON;

        /* Xmit stuff on the radio */
        xmit();

        return (SUCCESS);
    }


    event result_t RadioControl.stopDone()
    {
        /* Radio is OFF */
        /* Note : lock is released */
        radio = R_OFF;

        //call PowerManagement.adjustPower();

        return (SUCCESS);
    }

    task void xmit_task()
    {
        xmit();
    }
}

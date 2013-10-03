/*
 * file:        SynWorkLoadSimC.nc
 * description: Implementation of a synthetic work load generator
 *              to test tradeoff between computation, storage and
 *              communication
 *
 */

includes sim_constants;

/* Constants for mote flash */
#define TOS_NAND_PAGE_SIZE 256

module SynWorkLoadSimC_telos {
    provides interface StdControl;
    
    uses {
        interface Mount;
        interface BlockRead;
    	interface BlockWrite;
        interface Leds;
        interface Timer;
    }
}

implementation {

    void erase();
    void write();
    void read();
    int count;
    char data[TOS_NAND_PAGE_SIZE];

    task void mount();
    task void call_commit();

    /* 
     * Called at program init 
     */
    command result_t StdControl.init()
    {
        count = 0;

        dbg(DBG_USR1, "Initializing Leds\n");
        call Leds.init(); 
        
        return SUCCESS;
    }

    task void mount() 
    {
    	call Mount.mount(1);
    }

    task void call_commit() 
    {
    	call BlockWrite.commit();
    }

    /* 
     * Called to start program execution 
     */
    command result_t StdControl.start() 
    {
	    post mount();

        return (SUCCESS);
    }

    /* 
     * Called at program termination 
     */
    command result_t StdControl.stop()
    {
        return call Timer.stop();
    }


    /*
     * This timer event triggers the workload generator cycle 
     */
    event result_t Timer.fired()
    {
        if (count < 10)
            erase();
        else if ( (count >= 10) && (count < 20) )
        {
            memset(data, 0, TOS_NAND_PAGE_SIZE);
            write();
        }
        else if ( (count >= 20) && (count < 30) )
            read();
        if (count == 30)
            count = 0;

        return SUCCESS;
    }

    void erase()
    {
        count++;
        call Leds.redOn();

        if (SUCCESS == call BlockWrite.erase())
        {
            dbg(DBG_USR1, "Erasing page in flash\n");
        }
        else
        {
            dbg(DBG_USR1, "Error ! Unable to erase flash page\n");
            call Leds.redOn();
        }
    }

    void write()
    {
        count++;
        call Leds.yellowOn();

        if (SUCCESS == call BlockWrite.write(0, data, TOS_NAND_PAGE_SIZE))
        {
            dbg(DBG_USR1, "Writing page in flash\n");
        }
        else
        {
            dbg(DBG_USR1, "Error ! Unable to write flash page\n");
            call Leds.yellowOn();
        }
    }

    void read()
    {
        count++;
        call Leds.greenOn();

        if (SUCCESS == call BlockRead.read(0, data, TOS_NAND_PAGE_SIZE))
        {
            dbg(DBG_USR1, "Reading from page in flash\n");
        }
        else
        {
            dbg(DBG_USR1, "Error ! Unable to read flash page\n");
            call Leds.greenOn();
        }
    }


    event void Mount.mountDone(storage_result_t result, volume_id_t id) 
    {
        call Timer.start(TIMER_REPEAT, 1000);
    }

  event void BlockWrite.writeDone(storage_result_t result, block_addr_t x, void* buf, block_addr_t y) 
  {
    post call_commit();
  }

  event void BlockWrite.eraseDone(storage_result_t result) 
  {
        call Leds.redOff();
  }

  event void BlockWrite.commitDone(storage_result_t result) 
  {
        call Leds.yellowOff(); 
  }

  event void BlockRead.readDone(storage_result_t result, block_addr_t x, void* buf, block_addr_t rlen)
  {
        call Leds.greenOff();
  }

  event void BlockRead.verifyDone(storage_result_t result) 
  {
  }

  event void BlockRead.computeCrcDone(storage_result_t result, 
	uint16_t z, block_addr_t x, block_addr_t y) 
  {
  }

}

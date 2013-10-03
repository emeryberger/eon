/*
 * Measuring the performance of the data structures
 */
includes chunk_header;
includes sizes;

module StressTestC {
    provides interface StdControl;
    
    uses {
        interface Leds;
        interface Console;
        interface GenericFlash;
        interface Checkpoint;
    }
}

implementation {
    bool ecc, busy;
    uint16_t pages, current;
    flashptr_t someptr;
    datalen_t len;


    task void format();
    task void check_read();
    task void check_write();

    task void check_trans_start()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (SUCCESS != call Checkpoint.checkpoint())
        {
            call Leds.redOn();
#ifdef Checkpoint_DEBUG
            call Console.string("Error starting..\n");
#endif
        }
    }

    task void check_trans_rollback()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (SUCCESS != call Checkpoint.rollback())
        {
            call Leds.redOn();
#ifdef Checkpoint_DEBUG
            call Console.string("Error rolling back..\n");
#endif
        }
    }


    event void Checkpoint.rollbackDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Rollback call returned failure\n");
        }
        else 
        {
#ifdef Checkpoint_DEBUG
            call Console.string("Rollback success");
            call Console.string("\n");
            TOSH_uwait(3000);
#endif
            call Console.string("done\n");
        }

    }

    event void Checkpoint.checkpointDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Checkpoint call returned failure\n");
        }
        else 
        {
#ifdef Checkpoint_DEBUG
            call Console.string("Checkpoint success");
            call Console.string("\n");
            TOSH_uwait(3000);
#endif
            call Console.string("done\n");
        }
    }

    command result_t StdControl.init() 
    {
        busy = 0;
        current = pages = 0;

        call Console.init();

        call Leds.init();
        
        return SUCCESS;
    }

    command result_t StdControl.start() 
    {    
        pages = 192;

        post format();
        
        return SUCCESS;
    }
    
    command result_t StdControl.stop() 
    {
        return SUCCESS;
    }

    event void Console.input(char *s)
    {
    }

    task void format()
    {
        if (SUCCESS != call GenericFlash.erase(current))
        {
            call Console.string("ERROR ! erase call failed\n");
            call Leds.redOn();
        }

        current += 1;
    }

    event result_t GenericFlash.eraseDone(result_t r)
    {
        if (SUCCESS != r)
        {
            call Leds.redOn();
            call Console.string("ERROR ! erase call failure\n");
            return (FAIL);
        }
        else
        {
            if (current < pages)
            {
                post format();
            }
            else
            {
                call Console.string("Flash formatted... Ready");

                current = 0;
                //call Timer.start(TIMER_REPEAT, 5000);
                call Checkpoint.init(FALSE);
                post check_trans_start();
           }
        }

        return (SUCCESS);
    }
    
    event result_t GenericFlash.initDone(result_t r)
    {
        call Console.string("Init done\n");
        return (SUCCESS);
    }

    event result_t GenericFlash.writeDone(result_t r)
    {
        return (SUCCESS);
    }

    event result_t GenericFlash.readDone(result_t r)
    {
        return (SUCCESS);
    }

    event result_t GenericFlash.falReadDone(result_t r)
    {
        return (SUCCESS);
    }

}

/*
 * Measuring the performance of the data structures
 */
includes chunk_header;
includes sizes;

module StressTestC {
    provides interface StdControl;
    
    uses {
        interface ChunkStorage;
        interface Leds;
        interface Console;
        interface GenericFlash;
        interface Index;
        interface Checkpoint;
        interface RootDirectory;
    }
}

implementation {
    //flashptr_t fd[COUNT];
    uint8_t i_[LEN], i[LEN];
    uint16_t j, j_;

    bool ecc, busy;
    int count = 0;
    uint16_t pages, current;
    flashptr_t someptr;
    datalen_t len;


    task void format();
 
    task void write_flush()
    {
        if (SUCCESS != call ChunkStorage.flush())
        {
            call Console.string("Flush call failed\n");
            call Leds.redOn();
        }
    }

    event void ChunkStorage.writeDone(result_t res)
    {
        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Write call returned failure\n");
        }
    }

    event void ChunkStorage.flushDone(result_t res)
    {
        if (res == FAIL)
        {
            call Console.string("flush call returned failure\n");
            call Leds.redOn();
        }
    }

    event void ChunkStorage.readDone(result_t res)
    {
        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Read call returned failure\n");
        }
    }


    task void check_checkpt()
    {
        if (SUCCESS != call Checkpoint.checkpoint())
        {
            call Leds.redOn();
            call Console.string("Checkpoint error...\n");
            TOSH_uwait(3000);
        }
    }

    event void Checkpoint.checkpointDone(result_t res)
    {
        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Checkpoint returned failure\n");
        }
    }

    task void check_rollback()
    {
        if (SUCCESS != call Checkpoint.rollback())
        {
            call Leds.redOn();
            call Console.string("Rollback error...\n");
            TOSH_uwait(3000);
        }
    }

    event void Checkpoint.rollbackDone(result_t res)
    {
        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Rollback returned failure\n");
        }
    }
    
    task void check_stream_append()
    {
        /*if (SUCCESS != call Stream.append(&j, LEN, &someptr))
        {
            call Leds.redOn();
            call Console.string("Error appending...\n");
        }*/
    }


    event void Stream.appendDone(result_t res)
    {
        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Append call returned failure\n");
        }
        else 
        {
            call Console.string("Append success : ");
            call Console.decimal(j);
            call Console.string(" page:");
            call Console.decimal(someptr.page);
            call Console.string(" off:");
            call Console.decimal(someptr.offset);
            call Console.string("\n");
            TOSH_uwait(3000);
            
            j++;
        }
    }

    task void check_stream_next()
    {
        if (SUCCESS != call Stream.next(&j_, &len))
        {
            call Leds.redOn();
            call Console.string("Error getting next stream element...\n");
        }
    }

    event void Stream.nextDone(result_t res)
    {
        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Next call returned failure\n");
        }
        else 
        {
            call Console.string("Next success : ");
            call Console.decimal(j_);
            call Console.string("\n");
            TOSH_uwait(3000);
        }
    }



    command result_t StdControl.init() 
    {
        busy = 0;
        current = pages = 0;
	    memset(i, 0xAB, LEN);
    	memset(i_, 0x0, LEN);
        count = 0;   

        call Console.init();

        call Leds.init();
        
        return SUCCESS;
    }

    command result_t StdControl.start() 
    {    
        pages = 2048;

        call RootDirectory.init();

        //post format();

        return SUCCESS;
    }
    
    command result_t StdControl.stop() 
    {
        return SUCCESS;
    }

    event void Console.input(char *s)
    {
        if (s[0] == 'f')
        {
            call Console.string("write flush test...\n");
            post write_flush();
        }

        if ((s[0] == 'f') && (s[1] == 'f'))
        {
            call Console.string("formatting flash...\n");
            post format();
        }

        if ((s[0] == 'd') && (s[1] == 'i'))
            call Stream.init(FALSE);

        if ((s[0] == 'd') && (s[1] == 's'))
            call Stream.start_traversal(NULL);

        if ((s[0] == 'd') && (s[1] == 'a'))
        {
            post check_stream_append();
        }
 
        if ((s[0] == 'd') && (s[1] == 'n'))
        {
            post check_stream_next();
        }

        if ((s[0] == 'c') && (s[1] == 'i'))
            call Checkpoint.init(0);

        if ((s[0] == 'c') && (s[1] == 'c'))
        {
            post check_checkpt();
        }
 
        if ((s[0] == 'c') && (s[1] == 'r'))
        {
            post check_rollback();
        }

        call Console.string("ok...\n");
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
            call Console.string("ERROR ! erase call failure - pg: ");
            call Console.decimal(current);
            call Console.string("\n");
            return (FAIL);
        }
        else
        {
            if (current < pages)
            {
                post format();
                //call Console.string("Formatting\n");
            }
            else
            {
                call Console.string("Flash formatted... Ready\n");

                current = 0;
                //call Timer.start(TIMER_REPEAT, 5000);
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

    event void RootDirectory.initDone(result_t result)
    {
        call Console.string("Root dir init done\n");
    }

    event void RootDirectory.setRootDone(result_t result)
    {
    }

    event void RootDirectory.getRootDone(result_t res)
    {
    }

    event void RootDirectory.restore(flashptr_t *restore_ptr)
    {
        call Console.string("Restoring...\n");
    }

}

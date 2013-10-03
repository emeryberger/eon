/*
 * Measuring the performance of the data structures
 */
includes chunk_header;
includes sizes;

module TestCompactionC {
    provides interface StdControl;
    
    uses {
        interface ChunkStorage;
        interface Leds;
        interface Console;
        interface Stream;
        interface Timer;
        interface GenericFlash;
        interface Compaction;
        interface Index;
    }
}

implementation {
    //flashptr_t fd[100];
    uint8_t i_[LEN], i[LEN];

    bool ecc, busy;
    int count;
    uint16_t pages, current;

    task void format();
    

    task void write_flush()
    {
        if (SUCCESS != call ChunkStorage.flush())
        {
#ifdef CHUNK_DEBUG
            call Console.string("Flush call failed\n");
#endif
            call Leds.redOn();
        }
    }

    event void ChunkStorage.writeDone(result_t res)
    {
    }

    event void ChunkStorage.flushDone(result_t res)
    {
        if (res == FAIL)
        {
#ifdef CHUNK_DEBUG
            call Console.string("flush call returned failure\n");
#endif
            call Leds.redOn();
        }
    }


    event void ChunkStorage.readDone(result_t res)
    {
    }

    flashptr_t someptr;

    task void check_stream_append()
    {
        if (SUCCESS != call Stream.append(i, LEN, &someptr))
        {
            call Leds.redOn();
#ifdef STREAM_DEBUG
            call Console.string("Error appending...\n");
#endif
        }
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
#ifdef STREAM_DEBUG
            call Console.string("Append success : ");
            call Console.decimal(count);
            call Console.string(" page:");
            call Console.decimal(someptr.page);
            call Console.string(" off:");
            call Console.decimal(someptr.offset);
            call Console.string("\n");
            TOSH_uwait(3000);
#endif
            
            if(++count < COUNT)
            {
                /* Keep appending */
                post check_stream_append();
            }
            else
            {
                /* done appending */
                call Leds.greenToggle();
                call Leds.greenToggle();
                count = 0;

                call Console.string("done\n");

                TOSH_uwait(10000);

                call Leds.yellowToggle();
                call Leds.yellowToggle();

                call Compaction.compact();
            }
        }
    }
        
    event void Stream.nextDone(result_t res)
    {
    }

    task void check_index_set()
    {
        if (SUCCESS != call Index.set(count, i, LEN, &someptr))
        {
            call Leds.redOn();
#ifdef INDEX_DEBUG
            call Console.string("Error setting the index for:");
            call Console.decimal(count);
            call Console.string("\n");
#endif
        }
    }

    event void Index.setDone(result_t res)
    {
        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Index set returned failure for:");
            call Console.decimal(count);
            call Console.string("\n");
        }
        else 
        {
#ifdef INDEX_DEBUG
            call Console.string("Set success : ");
            call Console.decimal(count);
            call Console.string(" page:");
            call Console.decimal(someptr.page);
            call Console.string(" off:");
            call Console.decimal(someptr.offset);
            call Console.string("\n");
            TOSH_uwait(3000);
#endif
            
            if(++count < COUNT)
            {
                /* Keep appending */
                post check_index_set();
            }
            else
            {
                /* done appending */
                call Leds.greenToggle();
                call Leds.greenToggle();
                count = 0;

                call Console.string("done\n");

                TOSH_uwait(10000);

                call Leds.yellowToggle();
                call Leds.yellowToggle();

                call Compaction.compact();
            }
        }

    }

    event void Index.getDone(result_t res)
    {}


    command result_t StdControl.init() 
    {
        busy = 0;
        current = pages = 0;
	    memset(i, 0, LEN);
    	memset(i_, 0, LEN);
        count = 0;   

        call Console.init();

        call Leds.init();
        
        return SUCCESS;
    }

    command result_t StdControl.start() 
    {
        pages = 1024; //call GenericFlash.numPages();

        post format();
        
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
        
        if ((s[0] == 's') && (s[1] == 'i'))
            call Stream.init(FALSE);

        if ((s[0] == 'f') && (s[1] == 'f'))
        {
            call Console.string("Formatting now...\n");
            post format();
        }

        if ((s[0] == 's') && (s[1] == 'a'))
        {
            post check_stream_append();
        }
 
        if (s[0] == 'c')
        {
            call Compaction.compact();
        }

        if ((s[0] == 'i') && (s[1] == 'l'))
            call Index.load(FALSE);

        if ((s[0] == 'i') && (s[1] == 's'))
        {
            post check_index_set();
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

    event void Compaction.compactionDone(result_t res)
    {
        call Leds.yellowToggle();
        call Leds.yellowToggle();

        if (SUCCESS != res)
        {
            call Console.string("ERROR ! compaction failed\n");
            call Leds.redOn();
        }
        else
        {
            call Console.string("compaction success\n");
        }
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
                call Stream.init(FALSE);

                TOSH_uwait(10000);

                
                //post check_stream_append();
                call Index.load(FALSE);
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

    event result_t Timer.fired()
    {
        call Console.string("Timer fired...\n");

        return (SUCCESS);
    }
   
    event void Index.loadDone(result_t res)
    {
        call Console.string("starting set\n");

        call Leds.greenToggle();
        call Leds.greenToggle();

        post check_index_set();
    }

    event void Index.saveDone(result_t res)
    {}

}

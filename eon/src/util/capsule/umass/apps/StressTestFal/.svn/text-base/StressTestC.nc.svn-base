/*
 * Measuring the performance of the data structures
 */
includes chunk_header;
includes sizes;

#define CHUNK_DEBUG

module StressTestC {
    provides interface StdControl;
    
    uses {
        interface ChunkStorage;
        interface Leds;
        interface Console;
        interface GenericFlash;
    }
}

implementation {
    //flashptr_t fd[COUNT];
    uint8_t i_[LEN], i[LEN];
    uint8_t h[4], h_[4];

    bool ecc, busy;
    int count = 0;
    uint16_t pages, current;
    flashptr_t someptr;
    datalen_t len;


    task void format();
    task void check_read();
    task void check_write();


    task void write_flush()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (SUCCESS != call ChunkStorage.flush())
        {
#ifdef CHUNK_DEBUG
            call Console.string("Flush call failed\n");
#endif
            call Leds.redOn();
        }
    }

    task void check_write()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (SUCCESS != call ChunkStorage.write(h, 4, 
                                               i, LEN, FALSE, &someptr))
        {
            call Leds.redOn();
#ifdef CHUNK_DEBUG
            call Console.string("Error writing...\n");
#endif
        }
    }


    event void ChunkStorage.writeDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Write call returned failure\n");
        }
        else 
        {
#ifdef CHUNK_DEBUG
            call Console.string("Write success : ");
            call Console.decimal(count);
            call Console.string(" page:");
            call Console.decimal(someptr.page);
            call Console.string(" off:");
            call Console.decimal(someptr.offset);
            call Console.string("\n");
            TOSH_uwait(8000);
#endif
            if(++count < COUNT)
            {
                /* Keep appending */
                post check_write();
            }
            else
            {
                /* done appending */
                //call Leds.greenToggle();
                //call Leds.greenToggle();

                call Console.string("done\n");

                post check_read();
                count =0;
                someptr.page = 4; someptr.offset = 0;
            }
        }

    }

    event void ChunkStorage.flushDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (res == FAIL)
        {
#ifdef CHUNK_DEBUG
            call Console.string("flush call returned failure\n");
#endif
            call Leds.redOn();
        }
    }

    task void check_read()
    {
        call Leds.yellowToggle();
        call Leds.yellowToggle();

        if (SUCCESS != call ChunkStorage.read(&someptr, h_, 4, 
                                                 i_, &len, 
                                                 FALSE, NULL))
        {
            call Leds.redOn();
#ifdef CHUNK_DEBUG
            call Console.string("Error reading...\n");
#endif
        }
    }


    event void ChunkStorage.readDone(result_t res)
    {
        call Leds.yellowToggle();
        call Leds.yellowToggle();

        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Read call returned failure\n");
        }
        else 
        {
#ifdef CHUNK_DEBUG
            call Console.string("Read success : ");
            call Console.decimal(count);
            call Console.string(" page:");
            call Console.decimal(someptr.page);
            call Console.string(" off:");
            call Console.decimal(someptr.offset);
            call Console.string("\n");

            TOSH_uwait(3000);
#endif


            if(memcmp(i, i_, LEN) != 0)
            {
                call Console.string("Data mismatch\n");
                call Leds.redOn();
                TOSH_uwait(3000);
            }

            if(memcmp(h, h_, 4) != 0)
            {
                call Console.string("Header mismatch\n");
                call Console.string("Expected:");
                call Console.decimal(h[0]);
                call Console.string(" ");
                call Console.decimal(h[1]);
                call Console.string(" ");
                call Console.decimal(h[2]);
                call Console.string(" ");
                call Console.decimal(h[3]);
                call Console.string("  Got:");
                call Console.decimal(h_[0]);
                call Console.string(" ");
                call Console.decimal(h_[1]);
                call Console.string(" ");
                call Console.decimal(h_[2]);
                call Console.string(" ");
                call Console.decimal(h_[3]);
                call Console.string("\n");

                call Leds.redOn();
                TOSH_uwait(5000);
            }


            if(++count < COUNT)
            {
                /* Keep reading */
                someptr.offset += (4 + LEN + sizeof(chunk_header));
                if((someptr.offset + 4 + LEN + sizeof(chunk_header)) > 256)
                {
                    someptr.page++;
                    someptr.offset = 0;
                }
                post check_read();
            }
            else
            {
                /* done appending */
                //call Leds.greenToggle();
                //call Leds.greenToggle();

                call Console.string("done\n");
                count =0;
            }
        }

    }
    


    command result_t StdControl.init() 
    {
        busy = 0;
        current = pages = 0;
	    memset(i, 0xAB, LEN);
    	memset(i_, 0x0, LEN);
        h[0] = 1;
        h[1] = 2;
        h[2] = 3;
        h[3] = 4;
        count = 0;   

        call Console.init();

        call Leds.init();
        
        return SUCCESS;
    }

    command result_t StdControl.start() 
    {    
        pages = call GenericFlash.numPages();

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

        if ((s[0] == 'f') && (s[1] == 'f'))
        {
            call Console.string("formatting flash...\n");
            post format();
        }

        if (s[0] == 'w')
        {
            call Leds.greenToggle();
            call Leds.greenToggle();

            post check_write();
        }
       
        if (s[0] == 'r')
        {
            someptr.page = 4;
            someptr.offset = 0;
            call Leds.greenToggle();
            call Leds.greenToggle();

            post check_read();
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

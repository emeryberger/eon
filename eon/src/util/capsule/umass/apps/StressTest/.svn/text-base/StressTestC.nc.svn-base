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
        interface Stack;
        interface GenericFlash;
        interface Queue;
        interface Stream;
        interface StreamIndex;
        interface Index;
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

    task void check_index_set()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (SUCCESS != call Index.set(count, i, LEN, &someptr))
        {
            call Leds.redOn();
#ifdef CHUNK_DEBUG
            call Console.string("Error setting..\n");
#endif
        }
    }

    task void check_index_get()
    {
        call Leds.yellowToggle();
        call Leds.yellowToggle();

        if (SUCCESS != call Index.get(count, i_, &len))
        {
            call Leds.redOn();
#ifdef CHUNK_DEBUG
            call Console.string("Error getting...\n");
#endif
        }
    }

    event void Index.loadDone(result_t res)
    {
        post check_index_set();
    }

    event void Index.saveDone(result_t res)
    {
    }


    event void Index.setDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Set call returned failure\n");
        }
        else 
        {
#ifdef CHUNK_DEBUG
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
                //call Leds.greenToggle();
                //call Leds.greenToggle();

                call Console.string("done\n");

                post check_index_get();
                count =0;
                someptr.page = 2; someptr.offset = 0;
            }
        }

    }

    event void Index.getDone(result_t res)
    {
        call Leds.yellowToggle();
        call Leds.yellowToggle();

        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Get call returned failure\n");
        }
        else 
        {
#ifdef CHUNK_DEBUG
            call Console.string("Get success : ");
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
                post check_index_get();
            }
            else
            {
                /* done appending */
                //call Leds.greenToggle();
                //call Leds.greenToggle();

                call Console.string("done\n");

                count =0;
                someptr.page = 2; someptr.offset = 0;
            }
        }

    }


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
            TOSH_uwait(3000);
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
                someptr.page = 2; someptr.offset = 0;
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

            /*
            if(memcmp(i, i_, LEN) != 0)
            {
                call Console.string("Data mismatch\n");
                call Leds.redOn();
                TOSH_uwait(3000);
            }
            */
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
                someptr.offset += (4 + LEN + 3);
                if((someptr.offset + 4 + LEN + 3) > 512)
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
    
    task void check_stack_push()
    {
        if (SUCCESS != call Stack.push(i, LEN, &someptr))
        {
            call Leds.redOn();
#ifdef STACK_DEBUG
            call Console.string("Error pushing...\n");
#endif
        }
    }

    event void Stack.pushDone(result_t res)
    {
        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Push call returned failure\n");
        }
        else 
        {
#ifdef STACK_DEBUG
            call Console.string("Push success : ");
            call Console.decimal(count+1);
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
                post check_stack_push();
            }
            else
            {
                /* done appending */
                call Leds.greenToggle();
                call Leds.greenToggle();

                call Console.string("done\n");
                count =0;
            }
        }
    }

    task void check_stack_pop()
    {
        if (SUCCESS != call Stack.pop(i_, &len))
        {
            call Leds.redOn();
#ifdef STACK_DEBUG
            call Console.string("Error popping...\n");
#endif
        }
    }

    event void Stack.popDone(result_t res)
    {
        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Pop call returned failure\n");
        }
        else 
        {
#ifdef STACK_DEBUG
            call Console.string("Pop success : ");
            call Console.decimal(count+1);
            call Console.string("\n");
            TOSH_uwait(3000);
#endif

            if(memcmp(i, i_, LEN) != 0)
                call Console.string("Data mismatch\n");
            
            if(++count < COUNT)
            {
                /* Keep appending */
                post check_stack_pop();
            }
            else
            {
                /* done popping */
                call Leds.greenToggle();
                call Leds.greenToggle();

                call Console.string("done\n");
            }
        }
    }

    event void Stack.topDone(result_t res)
    {
    }

    task void check_queue_enqueue()
    {
        if (SUCCESS != call Queue.enqueue(i, LEN, &someptr))
        {
            call Leds.redOn();
#ifdef QUEUE_DEBUG
            call Console.string("Error queuing...\n");
#endif
        }
    }

    event void Queue.enqueueDone(result_t res)
    {
        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Enqueue call returned failure\n");
        }
        else 
        {
#ifdef QUEUE_DEBUG
            call Console.string("Enqueue success : ");
            call Console.decimal(count+1);
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
                post check_queue_enqueue();
            }
            else
            {
                /* done appending */
                call Leds.greenToggle();
                call Leds.greenToggle();

                call Console.string("done\n");
                count =0;
            }
        }
    }

    task void check_queue_dequeue()
    {
        if (SUCCESS != call Queue.dequeue(i_, &len))
        {
            call Leds.redOn();
#ifdef QUEUE_DEBUG
            call Console.string("Error dequeuing...\n");
#endif
        }
    }

    event void Queue.dequeueDone(result_t res)
    {
        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Dequeue call returned failure\n");
        }
        else 
        {
#ifdef QUEUE_DEBUG
            call Console.string("Dequeue success : ");
            call Console.decimal(count+1);
            call Console.string("\n");
            TOSH_uwait(3000);
#endif
            if(memcmp(i, i_, LEN) != 0)
            {
                call Console.string("Data mismatch\n");
                call Leds.redOn();
                TOSH_uwait(3000);
            }
    
            if(++count < COUNT)
            {
                /* Keep appending */
                post check_queue_dequeue();
            }
            else
            {
                /* done appending */
                call Leds.greenToggle();
                call Leds.greenToggle();

                call Console.string("done\n");
                count =0;
            }
        }
    }

    event void Queue.frontDone(result_t res)
    {}

    task void check_stream_append()
    {
        if (SUCCESS != call Stream.append(i, LEN, &someptr))
        {
            call Leds.redOn();
#ifdef APPEND_DEBUG
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
#ifdef APPEND_DEBUG
            call Console.string("Append success : ");
            call Console.decimal(count+1);
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

                call Console.string("done\n");
                count =0;
            }
        }
    }

    task void check_stream_next()
    {
        if (SUCCESS != call Stream.next(i_, &len))
        {
            call Leds.redOn();
#ifdef APPEND_DEBUG
            call Console.string("Error appending...\n");
#endif
        }
    }

    event void Stream.nextDone(result_t res)
    {
        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Append call returned failure\n");
        }
        else 
        {
#ifdef APPEND_DEBUG
            call Console.string("Append success : ");
            call Console.decimal(count+1);
            call Console.string("\n");
            TOSH_uwait(3000);
#endif
            
            if(memcmp(i, i_, LEN) != 0)
            {
                call Console.string("Data mismatch\n");
                call Leds.redOn();
                TOSH_uwait(3000);
            }

            if(++count < COUNT)
            {
                /* Keep appending */
                post check_stream_next();
            }
            else
            {
                /* done appending */
                call Leds.greenToggle();
                call Leds.greenToggle();

                call Console.string("done\n");
                count =0;
            }
        }
    }


    task void check_si_add()
    {
        if (SUCCESS != call StreamIndex.add(i, LEN))
        {
            call Leds.redOn();
#ifdef STREAM_INDEX_DEBUG
            call Console.string("Error adding to SI...\n");
#endif
        }
    }

    task void check_si_setTag()
    {
        if (SUCCESS != call StreamIndex.setTag())
        {
            call Leds.redOn();
#ifdef STREAM_INDEX_DEBUG
            call Console.string("Error setting tag on SI...\n");
#endif
        }
    }


    event void StreamIndex.addDone(result_t res)
    {
        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Add call returned failure\n");
        }
        else 
        {
#ifdef STREAM_INDEX_DEBUG
            call Console.string("Add success : ");
            call Console.decimal(count+1);
            call Console.string("\n");
            TOSH_uwait(3000);
#endif
            
            if(++count < COUNT)
            {
                if (!(count % 10))
                    post check_si_setTag();
                else
                    /* Keep appending */
                    post check_si_add();
            }
            else
            {
                /* done appending */
                call Leds.greenToggle();
                call Leds.greenToggle();

                call Console.string("done\n");
                count =0;
            }
        }
    }


    event void StreamIndex.setTagDone(result_t res, uint16_t tag)
    {
        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Set tag call failed\n");
        }
        else 
        {
#ifdef STREAM_INDEX_DEBUG
            call Console.string("Set tag success : ");
            call Console.decimal(tag);
            call Console.string("\n");
            TOSH_uwait(3000);
#endif
            post check_si_add();
        }
    }

    task void check_si_getTag()
    {
        if (SUCCESS != call StreamIndex.getTag(count, i_, &len))
        {
            call Leds.redOn();
#ifdef STREAM_INDEX_DEBUG
            call Console.string("Error getting tag on SI...\n");
#endif
        }
        else
        {
#ifdef STREAM_INDEX_DEBUG
            call Console.string("getting tag on SI...\n");
#endif
        }
    }

    event void StreamIndex.getTagDone(result_t res)
    {
        if (res == FAIL)
        {
            call Leds.redOn();
            call Console.string("Get tag call returned failure\n");
        }
        else 
        {
#ifdef STREAM_INDEX_DEBUG
            call Console.string("Get tag success : ");
            call Console.decimal(count);
            call Console.string("\n");
            TOSH_uwait(3000);
#endif
            
            if(++count < (COUNT / 10))
            {
                post check_si_getTag();
            }
            else
            {
                /* done getting */
                call Leds.greenToggle();
                call Leds.greenToggle();

                call Console.string("done\n");
                count =0;
            }
        }
    }

    event void StreamIndex.nextDone(result_t res)
    {}

    event void StreamIndex.initDone(result_t res)
    {}

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
            someptr.page = 2;
            someptr.offset = 0;
            call Leds.greenToggle();
            call Leds.greenToggle();

            post check_read();
        }


        if ((s[0] == 's') && (s[1] == 'i'))
            call Stack.init(FALSE);

        if ((s[0] == 's') && (s[1] == 'p'))
        {
            call Leds.greenToggle();
            call Leds.greenToggle();

            post check_stack_push();
        }
 
        if ((s[0] == 's') && (s[1] == 'o'))
        {
            call Leds.greenToggle();
            call Leds.greenToggle();

            post check_stack_pop();
        }

        if ((s[0] == 'q') && (s[1] == 'i'))
            call Queue.init(FALSE);

        if ((s[0] == 'q') && (s[1] == 'e'))
        {
            call Leds.greenToggle();
            call Leds.greenToggle();

            post check_queue_enqueue();
        }
 
        if ((s[0] == 'q') && (s[1] == 'd'))
        {
            call Leds.greenToggle();
            call Leds.greenToggle();

            post check_queue_dequeue();
        }

        if ((s[0] == 'd') && (s[1] == 'i'))
            call Stream.init(FALSE);

        if ((s[0] == 'd') && (s[1] == 's'))
            call Stream.start_traversal(NULL);

        if ((s[0] == 'd') && (s[1] == 'a'))
        {
            call Leds.greenToggle();
            call Leds.greenToggle();

            post check_stream_append();
        }
 
        if ((s[0] == 'd') && (s[1] == 'n'))
        {
            call Leds.greenToggle();
            call Leds.greenToggle();

            post check_stream_next();
        }

        if ((s[0] == 't') && (s[1] == 'i'))
            call StreamIndex.init(FALSE);

        if ((s[0] == 't') && (s[1] == 'a'))
        {
            call Leds.greenToggle();
            call Leds.greenToggle();

            post check_si_add();
        }

        if ((s[0] == 't') && (s[1] == 'g'))
        {
            call Leds.greenToggle();
            call Leds.greenToggle();

            post check_si_getTag();
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

}

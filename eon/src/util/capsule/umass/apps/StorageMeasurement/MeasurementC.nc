/*
 * Measuring the performance of the data structures
 */
includes chunk_header;
includes sizes;

#define FORCE_FLUSH 1

module MeasurementC {
    provides interface StdControl;
    
    uses {
        interface ChunkStorage;
        interface Leds;
        interface Console;
        interface GenericFlash;
        interface Stack;
        interface Stream;
        interface Queue;
        interface Array;
        interface Index;
        interface Checkpoint;
        interface Timer;
    }
}

implementation {
    flashptr_t fd[100];
    uint8_t i_[LEN], i__[LEN];
    uint8_t i[LEN];

    bool ecc, busy, flush = TRUE;
    datalen_t len;
    int count = 1;
    uint16_t pages, current;
    uint8_t z=0;
    flashptr_t arrptr;
    uint16_t something = 1;

    task void format();
    task void check_chunk_read();

    
    task void check_chunk_write()
    {
         call Leds.greenToggle();
         call Leds.greenToggle();

         if (SUCCESS != call ChunkStorage.write(NULL, 0, i, LEN, FALSE, &(fd[z])))
         {
             call Console.string("Write call failed\n");
             call Leds.redOn();
         }
    }

    task void write_flush()
    {
        //call Leds.greenToggle();
        //call Leds.greenToggle();
        
        if (SUCCESS != call ChunkStorage.flush())
        {
            call Console.string("Flush call failed\n");
            call Leds.redOn();
        }
    }

    event void ChunkStorage.writeDone(result_t res)
    {
        //call Leds.greenToggle();
        //call Leds.greenToggle();

        if (FORCE_FLUSH)
            post write_flush(); 

        if (res == FAIL)
        {
            call Console.string("Write call returned failure\n");
            call Leds.redOn();
        }
    }

   

    task void check_chunk_read()
    {
        call Leds.yellowToggle();
        call Leds.yellowToggle();

        if (SUCCESS != call ChunkStorage.read(&fd[z], NULL, 0, i_, &len, FALSE, &ecc))
        {
            call Console.string("read call failed\n");
            call Leds.redOn();
        }
    }

    event void ChunkStorage.readDone(result_t res)
    {
        call Leds.yellowToggle();
        call Leds.yellowToggle();

        if (res == FAIL)
        {
            call Console.string("Read call returned failure\n");
	    call Leds.redOn();
        }

        if (memcmp(i, i_, LEN) != 0)
        {
#ifdef CHUNK_DEBUG
            int m;

            call Console.string("Data mismatch:\n");
            for(m=0; m<LEN; m++)
            {
                call Console.decimal(m);
                call Console.string(" i=");
                call Console.decimal(i[m]);
                call Console.string(" i_=");
                call Console.decimal(i_[m]);
                call Console.string("\n");
                TOSH_uwait(5000);
            }
            call Leds.redOn();

#endif
            //call Leds.yellowOn();
        }
        else
        {
#ifdef CHUNK_DEBUG
            call Console.string("Data ok\n");
#endif
        }

    }

    task void check_stack_push()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
    
        if (SUCCESS != call Stack.push(i, LEN, NULL))
        {
#ifdef STACK_DEBUG
             call Console.string("ERROR ! Failed pushing Data\n");
#endif
             call Leds.redOn();
        }
    }

    task void check_stack_pop()
    {
        call Leds.yellowToggle();
        call Leds.yellowToggle();

        if (SUCCESS != call Stack.pop(i_, &len))
        {
            call Leds.redOn();
#ifdef STACK_DEBUG
            call Console.string("Failed to pop\n");
#endif
        }
    }


    event void Stack.pushDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (FORCE_FLUSH)
            post write_flush(); 

        if (res == FAIL)
        {
#ifdef STACK_DEBUG
            call Console.string("Push call returned failure\n");
#endif
            call Leds.redOn();
        }
        else
        {
#ifdef STACK_DEBUG
            call Console.string("Push success\n");
#endif
            TOSH_uwait(10000);
        }
    }

    
    event void Stack.popDone(result_t res)
    {
        call Leds.yellowToggle();
        call Leds.yellowToggle();

        if (res == SUCCESS)
        {
#ifdef STACK_DEBUG
            call Console.string("Popped data\n");
#endif
        }
        else
        {
            call Leds.redOn();
#ifdef STACK_DEBUG
            call Console.string("Failure to pop data\n");
#endif
        }

        if ((memcmp(i, i_, LEN) != 0) || (len != LEN))
        {
#ifdef STACK_DEBUG
            call Console.string("Pop Data mismatch:i=\n");
            call Console.decimal(i);
            call Console.string(" i_=");
            call Console.decimal(i_);
            call Console.string(" len=");
            call Console.decimal(len);
            call Console.string(" (should be 2)\n");

            TOSH_uwait(5000);
#endif
            //call Leds.yellowOn();
        }
        else
        {
#ifdef STACK_DEBUG
            call Console.string("Pop ok\n");
#endif
        }
    }

    event void ChunkStorage.flushDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        TOSH_uwait(10000);
        post check_stack_pop();

        if (res == FAIL)
        {
            call Console.string("flush call returned failure\n");
            call Leds.redOn();
        }
    }


    event void Stack.topDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if ((memcmp(i, i_, LEN) != 0) || (len != LEN) || (res != SUCCESS))
        {
#ifdef STACK_DEBUG
            call Console.string("Data mismatch\n");
#endif
            call Leds.redOn();
        }
        else
        {
#ifdef STACK_DEBUG
            call Console.string("Pop ok\n");
#endif
        }
    }

    task void check_stream_append()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (SUCCESS != call Stream.append(i, LEN, NULL))
        {
            call Leds.redOn();
#ifdef STREAM_DEBUG
            call Console.string("Error appending...\n");
#endif
        }
    }

    event void Stream.appendDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (FORCE_FLUSH)
            post write_flush();        

        if (res == FAIL)
        {
            call Leds.redOn();
#ifdef STREAM_DEBUG
            call Console.string("Append call returned failure\n");
#endif
        }
        else 
        {
#ifdef STREAM_DEBUG
            call Console.string("Append success\n");
#endif
        }
    }
        
    task void check_stream_traversal()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (SUCCESS != call Stream.next(i_, &len))
        {
            call Leds.redOn();
#ifdef STREAM_DEBUG
            call Console.string("Error traversing stream\n");
#endif
        }
    }
        
    event void Stream.nextDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (res == FAIL)
        {
            call Leds.redOn();
#ifdef STREAM_DEBUG
            call Console.string("Stream next call returned failure\n");
#endif
        }
        else 
        {
#ifdef STREAM_DEBUG
           call Console.string("Stream next success\n");
#endif
        }

        if ((memcmp(i, i_, LEN) != 0) || (len != LEN))
        {
            call Leds.yellowOn();
#ifdef STREAM_DEBUG
            call Console.string("Error data mismatch\n");
#endif
        }
        else
        {
#ifdef STREAM_DEBUG
           call Console.string("Stream Data match\n");
#endif
        }
    }


    task void check_enqueue()
    {   
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (SUCCESS != call Queue.enqueue(i, LEN, NULL))
        {
#ifdef QUEUE_DEBUG
            call Console.string("ERROR ! Unable to enqueue data\n");
#endif
            call Leds.redOn();
        }
    }

    event void Queue.enqueueDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (FORCE_FLUSH)
            post write_flush(); 

        if (res == FAIL)
        {
            call Leds.redOn();
#ifdef QUEUE_DEBUG
            call Console.string("Enqueue returned failure\n");
#endif
        }
        else 
        {
#ifdef QUEUE_DEBUG
           call Console.string("Enqueue success\n");
#endif
        }

    }
        
    task void check_dequeue()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (SUCCESS != call Queue.dequeue(i_, &len))
        {
#ifdef QUEUE_DEBUG
            call Console.string("ERROR ! Unable to dequeue data\n");
#endif
            call Leds.redOn();
        }
    }
        
    event void Queue.dequeueDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (res == FAIL)
        {
            call Leds.redOn();
#ifdef QUEUE_DEBUG
            call Console.string("Dequeue returned failure\n");
#endif
        }
        else
        {
#ifdef QUEUE_DEBUG
           call Console.string("Dequeue success\n");
#endif
        }

        if ((memcmp(i, i_, LEN) != 0) || (len != LEN))
        {
            call Leds.yellowOn();
#ifdef QUEUE_DEBUG
            call Console.string("ERROR ! Queue data mismatch i=");
            call Console.decimal(i);
            call Console.string(" i_=");
            call Console.decimal(i_);
            call Console.string(" len=");
            call Console.decimal(len);
            call Console.string(" actual=");
            call Console.decimal(2);
            call Console.string("\n");
            TOSH_uwait(5000);
#endif
        }
        else
        {
#ifdef QUEUE_DEBUG
            call Console.string("Queue Data match\n");
            TOSH_uwait(5000);
#endif
        }
    }

    event void Queue.frontDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (res == FAIL)
        {
#ifdef QUEUE_DEBUG
            call Console.string("Front returned failure\n");
#endif
            call Leds.redOn();
        }
        else 
        {
#ifdef QUEUE_DEBUG
            call Console.string("Front success\n");
#endif
        }

        if ((memcmp(i, i_, LEN) != 0) || (len != LEN))
        {
            call Leds.yellowOn();
#ifdef QUEUE_DEBUG
            call Console.string("ERROR ! Queue data mismatch (front) i=\n");
            call Console.decimal(i);
            call Console.string(" i_=");
            call Console.decimal(i_);
            call Console.string("\n");
#endif
        }
        else
        {
#ifdef QUEUE_DEBUG
            call Console.string("Queue Front Data match\n");
#endif
        }
    }

    task void check_array_load()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (SUCCESS != call Array.load(NULL, TRUE, FALSE))
        {
#ifdef ARRAY_DEBUG        
            call Console.string("ERROR ! Unable to load level 1 index\n");
#endif            
            call Leds.redOn();
        }
    }

    event void Array.loadDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (res == FAIL)
        {
#ifdef ARRAY_DEBUG        
            call Console.string("Array loading returned failure\n");
#endif
            call Leds.redOn();            
        }
        else
        {
#ifdef ARRAY_DEBUG        
            call Console.string("Loaded array successfully\n");
#endif            
        }

    }

    task void check_array_set()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (SUCCESS != call Array.set(z, i, LEN, NULL))
        {
#ifdef ARRAY_DEBUG        
            call Console.string("Error setting data\n");
#endif            
            call Leds.redOn();
        }
    }

    event void Array.setDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (FORCE_FLUSH)
            post write_flush();        

        if (res == FAIL)
        {
#ifdef ARRAY_DEBUG        
            call Console.string("Array setting returned failure\n");
#endif
            call Leds.redOn();            
        }
        else
        {
#ifdef ARRAY_DEBUG        
            call Console.string("Setting array successfully\n");
#endif            
        }
    }

    task void check_array_get()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (SUCCESS != call Array.get(z, i_, &len))
        {
#ifdef ARRAY_DEBUG        
            call Console.string("Error getting data\n");
#endif            
            call Leds.redOn();
        }
    }

    event void Array.getDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (res == FAIL)
        {
#ifdef ARRAY_DEBUG        
            call Console.string("Array getting returned failure\n");
#endif            
        }
        else 
        {
#ifdef ARRAY_DEBUG        
            call Console.string("Got array data successfully\n");
#endif

            if ((memcmp(i, i_, LEN) != 0)|| (len != LEN))
            {
#ifdef ARRAY_DEBUG            
            call Console.string ("ERROR ! Array Data mismatch: i=");
            call Console.decimal(i);
            call Console.string(" i_=");
            call Console.decimal(i_);
            call Console.string(" len=");
            call Console.decimal(len);
            call Console.string("(should be 2)\n");
#endif                
                call Leds.yellowOn();
            }
            else
            {
#ifdef ARRAY_DEBUG            
                call Console.string("Data matched\n");
#endif                
            }
        }
    }

    task void check_array_save()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (SUCCESS != call Array.save(&arrptr))
        {
#ifdef ARRAY_DEBUG        
            call Console.string("ERROR ! Unable to save level 1 index\n");
#endif            
            call Leds.redOn();
        }
    }

    event void Array.saveDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
       
        if (FORCE_FLUSH)
            post write_flush(); 

        if (res == FAIL)
        {
#ifdef ARRAY_DEBUG        
            call Console.string("Array saving returned failure\n");
#endif
            call Leds.redOn();            
        }
        else
        {
#ifdef ARRAY_DEBUG        
            call Console.string("Saved array successfully\n");
#endif            
        }
    }

    event void Index.loadDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (res != SUCCESS)
        {
#ifdef INDEX_DEBUG
            call Console.string ("ERROR ! Index load failure\n");
#endif
            call Leds.redOn();
        }
        else
        {
#ifdef INDEX_DEBUG
            call Console.string("Index loaded\n");
#endif
        }
    }

    event void Index.saveDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (FORCE_FLUSH)
            post write_flush(); 
        
        if (res != SUCCESS)
        {
#ifdef INDEX_DEBUG
            call Console.string ("ERROR ! Index save failure\n");
#endif
            call Leds.redOn();
        }
        else
        {
#ifdef INDEX_DEBUG
            call Console.string("Index saved\n");
#endif
        }
    }


    task void check_index_set()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (SUCCESS != call Index.set(z, i, LEN, NULL))
        {
#ifdef INDEX_DEBUG
            call Console.string("ERROR ! Failed to set index Data\n");
#endif
            call Leds.redOn();
        }
    }

    event void Index.setDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (FORCE_FLUSH)
            post write_flush();        

        if (res == FAIL)
        {
#ifdef INDEX_DEBUG
            call Console.string("Array getting returned failure\n");
#endif
            call Leds.redOn();
        }
        else
        {
#ifdef INDEX_DEBUG
            call Console.string("Set index data\n");
            TOSH_uwait(3000);
#endif
        }
    }


    task void check_index_get()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (SUCCESS != call Index.get(z, i_, &len))
        {
#ifdef INDEX_DEBUG
            call Console.string ("ERROR ! Failed to get index Data\n");
#endif
            call Leds.redOn();
        }
    }

    event void Index.getDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if ((memcmp(i, i_, LEN) != 0) || (len != LEN))
        {
#ifdef INDEX_DEBUG
            int m;
            call Console.string ("ERROR ! Index Data mismatch: \n");
            for(m=0; m<LEN; m++)
            {
                call Console.decimal(m);
                call Console.string(" i=");
                call Console.decimal(i[m]);
                call Console.string(" i_=");
                call Console.decimal(i_[m]);
                call Console.string("\n");
                TOSH_uwait(5000);
            }
            call Leds.redOn();

            call Console.string(" len=");
            call Console.decimal(len);
            call Console.string("\n");
#endif
            //call Leds.yellowOn();
        }
        else
        {
#ifdef INDEX_DEBUG
            call Console.string("Index Data match\n");
#endif
        }
    }

    task void check_trans_init()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (SUCCESS != call Checkpoint.init(0))

        {
#ifdef CHECKPOINT_DEBUG
            call Console.string("ERROR ! Unable to init CHECKPOINT\n");
#endif
            call Leds.redOn();
        }
    }

    task void check_trans_start()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (SUCCESS != call Checkpoint.checkpoint())
        {
#ifdef CHECKPOINT_DEBUG
            call Console.string("ERROR ! Unable to start CHECKPOINT\n");
#endif
            call Leds.redOn();
        }
    }

    event void Checkpoint.checkpointDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (SUCCESS != res)
        {
#ifdef CHECKPOINT_DEBUG
            call Console.string("ERROR ! Unable to start CHECKPOINT\n");
#endif
            call Leds.redOn();
        }
        else
        {
#ifdef CHECKPOINT_DEBUG
            call Console.string("Checkpoint done\n");
#endif
        }
    }

    task void check_trans_rollback()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (SUCCESS != call Checkpoint.rollback())
        {
#ifdef CHECKPOINT_DEBUG
            call Console.string("ERROR ! Unable to rollback Checkpoint\n");
#endif
            call Leds.redOn();
        }
    }

    event void Checkpoint.rollbackDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();
        
        if (SUCCESS != res)
        {
#ifdef CHECKPOINT_DEBUG
            call Console.string("ERROR ! Unable to rollback CHECKPOINT\n");
#endif
            call Leds.redOn();
        }
        else
        {
#ifdef CHECKPOINT_DEBUG
            call Console.string("Rolled back CHECKPOINT\n");
#endif
        }
    }

    command result_t StdControl.init() 
    {
        busy = 0;
        current = pages = 0;
	memset(i, 0, LEN);
	memset(i_, 0, LEN);
	memset(i__, 0, LEN);
   
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
/*
        if ((s[0] == 'c') && (s[1] == 'w'))
        {
            call Console.string("chunk write test...\n");
            post check_chunk_write();
        }

        if (s[0] == 'f')
        {
            call Console.string("write flush test...\n");
            post write_flush();
        }
        
        if ((s[0] == 'c') && (s[1] == 'r'))
        {
            call Console.string("chunk read test...\n");
            post check_chunk_read();
        }

        if ((s[0] == 's') && (s[1] == 'i'))
            call Stack.init(FALSE);

        if ((s[0] == 's') && (s[1] == 'p'))
        {
            call Console.string("stack push test...\n");
            post check_stack_push();
        }

        if ((s[0] == 's') && (s[1] == 'o'))
        {
            call Console.string("stack pop test...\n");
            post check_stack_pop();
        }
        
        if ((s[0] == 'd') && (s[1] == 'i'))
            call Stream.init(FALSE);

        if ((s[0] == 'd') && (s[1] == 'a'))
        {
            call Console.string("stream append test...\n");
            post check_stream_append();
        }
 
        if ((s[0] == 'd') && (s[1] == 's'))
            call Stream.start_traversal();
 
        if ((s[0] == 'd') && (s[1] == 'n'))
        {
            call Console.string("stream traversal test...\n");
            post check_stream_traversal();
        }

        if ((s[0] == 'q') && (s[1] == 'i'))
            call Queue.init(FALSE);

        if ((s[0] == 'q') && (s[1] == 'e'))
            post check_enqueue();

        if ((s[0] == 'q') && (s[1] == 'd'))
            post check_dequeue();


        if (s[0] == 'z')
        {
            z = s[1] - '0';
            call Console.string("z = ");
            call Console.decimal(z);
            call Console.string("\n");
        }

        if ((s[0] == 'a') && (s[1] == 'l'))
            post check_array_load();
       
        if ((s[0] == 'a') && (s[1] == 's'))
            post check_array_save();

        if ((s[0] == 'a') && (s[1] == 'g'))
            post check_array_get();

        if ((s[0] == 'a') && (s[1] == 'p'))
            post check_array_set();

        if ((s[0] == 'i') && (s[1] == 'g'))
            post check_index_get();
        
        if ((s[0] == 'i') && (s[1] == 'p'))
            post check_index_set();

        if ((s[0] == 't') && (s[1] == 'i'))
            post check_trans_init();

        if ((s[0] == 't') && (s[1] == 's'))
            post check_trans_start();

        if ((s[0] == 't') && (s[1] == 'c'))
            post check_trans_commit();

        if ((s[0] == 't') && (s[1] == 'r'))
            post check_trans_rollback();

        if ((s[0] == 't') && (s[1] == 't'))
            post check_trans_restore();

        call Console.string("ok...\n");
*/  
    }

    task void format()
    {
        if (SUCCESS != call GenericFlash.erase(current))
        {
            TOSH_uwait(1000);
            call Console.string("ERROR ! erase call failed\n");
            call Leds.redOn();
        }

        current += TOS_NAND_ERASE_SIZE;
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

                TOSH_uwait(10000);

                //post check_chunk_write();
                post check_stack_push();
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


    event result_t Timer.fired()
    {
        call Console.string("Timer fired...");

        switch(something)
        {
            case(1):
                z = 1;
                post check_chunk_write();
//                post check_index_set();
//                post check_stack_push();
//                  post check_array_set();
                break;
            case(2):
                post check_chunk_read();
//                post check_array_save();
                break;
            case(3):
                z = 1;
//                post check_index_get();
//                post check_stack_pop();
//                  post check_array_get();
                break;
        }

    	something++;        
        return (SUCCESS);
    }


}

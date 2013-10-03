/*
 * file:        NandFlashC.nc
 * description: implementation of NAND flash driver
 *
 * $Id: NandFlashC.nc,v 1.6 2005/09/16 17:49:59 pjd Exp $
 */
includes chunk_header;
includes msg;

module TestNandBasicFSC {
    provides interface StdControl;
    
    uses {
        interface ChunkStorage;
		interface Stack;
		interface Queue;
		interface Stream;
		interface Array;
		interface Index;
		interface Leds;
		interface Console;
    }
}

implementation {
    flashptr_t fd[70];
    uint16_t i=0, i_, i__;
	bool ecc, busy;
	datalen_t len;


    void check_chunk_storage()
    {	
		for (i = 0; i < 65; i++)
		{
			if (SUCCESS != call ChunkStorage.write(1, &i, 2, &i, 2, FALSE, &(fd[i])))
			{
				call Leds.redOn();
			}
			else
			{
#ifdef X
				call Console.string("Written chunk headw=dataw:");
				call Console.decimal(i);
				call Console.string(" len:2");
				call Console.string(" page:");
				call Console.decimal(fd[i].page);
				call Console.string(" offset:");
				call Console.decimal(fd[i].offset);
				call Console.string("\n");

				TOSH_uwait(10000);
#endif
			}
		}

		for (i=0; i< 65; i++)
		{
	        if (SUCCESS != call ChunkStorage.read(1, &fd[i], &i_, 2, &i__, &len, FALSE, &ecc))
			{
				call Leds.redOn();
			}

	        if ((i != i_) || (i != i__) || (len != 2))
			{
        	    dbg(DBG_USR1, "ERROR ! Data mismatch: headw %d headr %d dataw %d datar %d datalen %d page:%d offset:%d\n",                    i, i_, i, i__, len, fd[i].page, fd[i].offset);
				call Leds.yellowOn();
				call Console.string("Mismatch headw:");
				call Console.decimal(i);
				call Console.string(" headr:");
				call Console.decimal(i_);
				call Console.string(" dataw:");
				call Console.decimal(i);
				call Console.string(" datar:");
				call Console.decimal(i__);
				call Console.string(" len:");
				call Console.decimal(len);
				call Console.string(" page:");
				call Console.decimal(fd[i].page);
				call Console.string(" offset:");
				call Console.decimal(fd[i].offset);
				call Console.string("\n");

				TOSH_uwait(10000);
			}
			else
			{
				dbg(DBG_USR1, "Data match: %d\n", i);
			}
		}
     }

	void check_stack()
	{
		call Stack.init(2, FALSE);
	
		i_ = 0;
		len = 0;
	
		for (i=1; i<100; i++)
		{
			if (SUCCESS == call Stack.push(&i, 2, NULL))
			{
				dbg(DBG_USR1, "Pushed Data: %d\n", i);
			}
			else
			{
				dbg(DBG_USR1, "ERROR ! Failed pushing Data: %d\n", i);
				call Leds.redOn();
				return;
			}
		}
		
		for (i=99; i>0; i--)
		{
			if (SUCCESS == call Stack.pop(&i_, &len))
			{
				dbg(DBG_USR1, "Popped Data: %d\n", i);
			}
			else
			{
				dbg(DBG_USR1, "ERROR ! Failed popping Data: %d\n", i);
				call Leds.redOn();
				return;
			}
		
			if ((i != i_) || (len != 2))
			{
                dbg(DBG_USR1, "ERROR ! Data mismatch: i %d i_ %d\n",
                    i, i_);
				//call Leds.yellowOn();
			}
			else
			{
				dbg(DBG_USR1, "Stack Data match: %d\n", i);
			}
		}
	}


	void check_queue()
	{
		call Queue.init(3, FALSE);
		
		for (i=1; i<100; i++)
		{
            if (SUCCESS == call Queue.enqueue(&i, 2, NULL))
			{
				dbg(DBG_USR1, "Enqueued Data: %d\n", i);
			}
			else
			{
				dbg(DBG_USR1, "ERROR ! Failed Enqueued Data: %d\n", i);
				call Leds.redOn();
			}
		}
		
		for (i=1; i<100; i++)
		{
			if (SUCCESS == call Queue.dequeue(&i_, &len))
			{
				dbg(DBG_USR1, "Dequeued Data: %d\n", i);
			}
			else
			{
				dbg(DBG_USR1, "ERROR ! Failed Dequeuing Data: %d\n", i);
				call Leds.redOn();
			}
		
			if ((i != i_) || (len != 2))
			{
                dbg(DBG_USR1, "ERROR ! Data mismatch: i %d i_ %d\n",
                    i, i_);
				call Leds.yellowOn();
			}
			else
			{
				dbg(DBG_USR1, "Queue Data match: %d\n", i);
			}
		}
	}

	void check_stream()
	{
		call Stream.init(4, FALSE);
	
		for (i=1; i<100; i++)
		{
			if (SUCCESS == call Stream.append(&i, 2, NULL))
			{
				dbg(DBG_USR1, "Appended Data: %d\n", i);
			}
			else
			{
				dbg(DBG_USR1, "ERROR ! Failed appending Data: %d\n", i);
				call Leds.redOn();
			}
		}
		
		call Stream.start_traversal();
		
		for (i=99; i>0; i--)
		{
			if (SUCCESS == call Stream.next(&i_, &len))
			{
				dbg(DBG_USR1, "Got Data: %d\n", i);
			}
			else
			{
				dbg(DBG_USR1, "ERROR ! Failed reading stream Data: %d\n", i);
				call Leds.redOn();
			}
		
			if ((i != i_) || (len != 2))
			{
                dbg(DBG_USR1, "ERROR ! Data mismatch: i %d i_ %d\n",
                    i, i_);
				call Leds.yellowOn();
			}
			else
			{
				dbg(DBG_USR1, "Stream Data match: %d\n", i);
			}
		}
	}

	void check_array()
	{
		call Array.init(5, NULL, TRUE, FALSE);
		
		for (i=0; i<10; i++)
		{
            if (SUCCESS == call Array.set(i, &i, 2, NULL))
			{
				dbg(DBG_USR1, "Set array index & Data: %d\n", i);
			}
			else
			{
				dbg(DBG_USR1, "ERROR ! Failed to set array Data: %d\n", i);
				call Leds.redOn();
			}
		}
		
		for (i=0; i<10; i++)
		{
			if (SUCCESS == call Array.get(i, &i_, &len))
			{
				dbg(DBG_USR1, "Got array index and Data: %d\n", i);
			}
			else
			{
				dbg(DBG_USR1, "ERROR ! Failed to get array Data: %d\n", i);
				call Leds.redOn();
			}
		
			if ((i != i_) || (len != 2))
			{
                dbg(DBG_USR1, "ERROR ! Data mismatch: i %d i_ %d\n",
                    i, i_);
				call Leds.yellowOn();
			}
			else
			{
				dbg(DBG_USR1, "Array Data match: %d\n", i);
			}
		}
	}

	void check_index()
	{
		call Index.init(6, FALSE);
		
		for (i=0; i<100; i++)
		{
            if (SUCCESS == call Index.set(i, &i, 2, NULL))
			{
				dbg(DBG_USR1, "Set index & Data: %d\n", i);
			}
			else
			{
				dbg(DBG_USR1, "ERROR ! Failed to set index Data: %d\n", i);
				call Leds.redOn();
			}
		}
		
		for (i=0; i<100; i++)
		{
			if (SUCCESS == call Index.get(i, &i_, &len))
			{
				dbg(DBG_USR1, "Got index and Data: %d\n", i);
			}
			else
			{
				dbg(DBG_USR1, "ERROR ! Failed to get index Data: %d\n", i);
				call Leds.redOn();
			}
		
			if ((i != i_) || (len != 2))
			{
                dbg(DBG_USR1, "ERROR ! Index Data mismatch: i %d i_ %d\n",
                    i, i_);
				call Leds.yellowOn();
			}
			else
			{
				dbg(DBG_USR1, "Index Data match: %d\n", i);
			}
		}
	}

	command result_t StdControl.init() 
	{
		busy = 0;

		call Console.init();
		
        return SUCCESS;
    }

    command result_t StdControl.start() 
	{    
		call Console.string("Ready\n");
		
        return SUCCESS;
    }
    
    command result_t StdControl.stop() 
	{
        return SUCCESS;
    }

	event void Console.input(char *s)
	{
		if (s[0] == 'a')
			check_chunk_storage();

		if (s[0] == 'b')
			check_stack();

		if (s[0] == 'c')
			check_queue();
		
		if (s[0] == 'd')
			check_stream();

		if (s[0] == 'e')
			check_array();

		if (s[0] == 'f')
			check_index();
	
		call Leds.greenOn();
	}
}

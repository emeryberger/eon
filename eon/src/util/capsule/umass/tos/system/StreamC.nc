/*
 * file:        StreamC.nc
 * description: Stream implementation
 *
 * author:      Gaurav Mathur, UMass Computer Science Dept.
 * $Id: StackC.nc,v 1.0 2006/05/01 00:00:00 gmathur Exp $
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 */

/*
 * Stream implementation
 */

includes app_header;
includes common_header;

module StreamC {
	provides interface Stream[uint8_t id];
	provides interface Serialize[uint8_t id];
	provides interface Compaction[uint8_t id];
	provides interface StreamExport[uint8_t id];

	uses {
		interface Console;
		interface ChunkStorage;
		interface Leds;
		interface Stack;
	}
}

implementation
{
	enum{TRAVERSE, APPEND, COMPACT_TRAVERSE, COMPACT_TRAVERSE2, CCOMPACT_APPEND};
	uint8_t streamif_id;
	flashptr_t *Tsave_ptr;
    
	/*
	struct _data
	{
	flashptr_t tail;
	bool doEcc;
	flashptr_t traverse;
} local[NUM_STREAMS];
	*/
	
	bool __lock = FALSE;
	stream_t local[NUM_STREAMS];
	uint8_t state;
	stream_header header;
	uint16_t compact_count = 0;

	/* Compaction */
	flashptr_t compact_ptr, ptr;
	uint8_t buff[LEN];
	datalen_t dlen;
	bool compact_first_write = TRUE;

	task void getData();
	task void writeDataStack();
	task void getDataStack();
	task void writeDataStream();

    /*
     * Stream structure:
	* 
	* a <- b <- c <- d <- tail
	* addition: a <- b <- c <- d <- e <- tail
	* deletion: not supported
	*/
	
	
	bool lock()
	{
		bool result = FALSE;
		atomic {
			if (__lock == FALSE)
			{
				result = TRUE;
				__lock = TRUE;
			}
		}
		return result;
	}
	
	bool unlock()
	{
		bool change = FALSE;
		atomic
		{
			if (__lock == TRUE)
			{
				change = TRUE;
			}
			__lock = FALSE;
		}
		return change;
	}

	command result_t Stream.init[uint8_t id](bool ecc)
	{
		local[id].doEcc = ecc;
		/*
		local[id].traverse.page = 0xFFFF;
		local[id].traverse.offset = 0xFF;
		local[id].tail.page = 0xFFFF;
		local[id].tail.offset = 0xFF;
		*/
		
		local[id].traverse.page = local[id].traverse.offset = local[id].tail.page = local[id].tail.offset = ~0;
		
		local[id].tail.page = 0xFFFF;
		/*
		if((local[id].traverse.page == 0xFFFF) && (local[id].traverse.offset == 0xFF))
		call Leds.redToggle();
		*/
		
		return (SUCCESS);
	}

	command result_t Stream.append[uint8_t id](void *data, datalen_t len, 
											   flashptr_t *save_ptr)
	{
		/* Probably buffer some data here as well... */

		if (!lock())
		{
			return (FAIL);
		}
		
		header.prev_ptr.page = local[id].tail.page;
		header.prev_ptr.offset = local[id].tail.offset;
		
		//call Leds.redOn();
		
		if(SUCCESS != call ChunkStorage.write(&header, 
		   sizeof(stream_header), data, 
		   len, local[id].doEcc, 
		   &local[id].tail))
		{
#ifdef STREAM_DEBUG    
			call Console.string("ERROR ! chunk write failed while trying to append to stream\n");
            call Leds.redOn();
#endif
            //call Leds.redOn();
			unlock();
            return (FAIL);
		}
		else
		{
			streamif_id = id;
			Tsave_ptr = save_ptr;
			state = APPEND;

			return (SUCCESS);
		}

	}

	event void ChunkStorage.writeDone(result_t res)
	{
		if (state == APPEND)
		{
			if ((res == SUCCESS) && (Tsave_ptr != NULL))
				memcpy (Tsave_ptr, &local[streamif_id].tail, sizeof(flashptr_t));
            
			unlock();
			signal Stream.appendDone[streamif_id](res);
		}
		else
		{
			/* Now pop next element */
			if(res != SUCCESS)
			{
#ifdef COMPACT_DEBUG
                call Console.string("ERROR ! Stack append failed\n");
                TOSH_uwait(10000);
				call Leds.redOn();
#endif
			}
			else
			{
				post getDataStack();
			}
		}
	}

	command result_t Stream.start_traversal[uint8_t id](flashptr_t *start_ptr)
	{
		if (start_ptr == NULL)
		{
			
			memcpy(&local[id].traverse, &local[id].tail, sizeof(flashptr_t));
		}
		else
		{
			memcpy(&local[id].traverse, start_ptr, sizeof(flashptr_t));
		}
		return (SUCCESS);
	}
    
	command result_t Stream.next[uint8_t id](void *data, datalen_t *len)
	{
		uint8_t ecc;
		*len = 0;
		
		if (!lock())
		{
			*len = 3;
			return FAIL;
		}
		
		/*
		if (local[id].traverse.page == 0xFFFF)
			call Leds.redToggle();

		if (local[id].traverse.offset == 0xFF)
			call Leds.redToggle();
		
		*/
#ifdef STREAM_DEBUG
		call Console.string("Traversing stream from- page:");
		call Console.decimal(local[id].traverse.page);
		call Console.string(" off:");
		call Console.decimal(local[id].traverse.offset);
		call Console.string("\n");
		TOSH_uwait(40000L);
#endif
		
		if((local[id].traverse.page == 0xFFFF) && (local[id].traverse.offset == 0xFF))
		//if((local[id].traverse.page == ~0) && (local[id].traverse.offset == ~0))
		{
#ifdef STREAM_DEBUG
            call Console.string("No more data in the stream\n");
            TOSH_uwait(40000L);
			TOSH_uwait(40000L);
#endif


			*len = 1; //need a way to differentiate between end and error
			unlock();
            return (FAIL);
		}
		
#ifdef STREAM_DEBUG
		call Console.string("Traversing stream from- page:");
		call Console.decimal(local[id].traverse.page);
		call Console.string(" off:");
		call Console.decimal(local[id].traverse.offset);
		call Console.string("\n");
		TOSH_uwait(40000L);
#endif
        if (SUCCESS != call ChunkStorage.read(&local[id].traverse, 
			&local[id].traverse, sizeof(stream_header),
			data, len, local[id].doEcc, &ecc))
		
{
#ifdef STREAM_DEBUG
            call Console.string("ERROR ! chunk read failed while trying to get data while traversing stream\n");
            call Leds.redOn();
#endif
            unlock();
            return (FAIL);
}
        else
{
	streamif_id = id;
	state = TRAVERSE;
            
	return (SUCCESS);
}
	}

	event void ChunkStorage.readDone(result_t res)
	{
		if (res != SUCCESS)
		{
			call Console.string("Read call failure\n");
			TOSH_uwait(40000L);
			TOSH_uwait(40000L);
			
#ifdef COMPACT_DEBUG
			call Leds.redOn();
            call Console.string("Read call failure\n");
#endif
		}
		else
		{
			if (state == TRAVERSE)
			{
				unlock();
				signal Stream.nextDone[streamif_id](res);
			} else if (state == COMPACT_TRAVERSE)
			{
				memcpy(&compact_ptr, &ptr, sizeof(flashptr_t));

#ifdef COMPACT_DEBUG
//                call Console.string("ReadDone ok\n");
//                TOSH_uwait(2000);
#endif

                /* Reading data headers */
                if((compact_ptr.page == 0xFFFF) && (compact_ptr.offset == 0xFF))
				{
                    /* Finished copying data pointers into the stack ->
						Now pop it out and re-write it
					*/
#ifdef COMPACT_DEBUG
                    call Console.string("No more data to push\n");
                    TOSH_uwait(3000);
#endif
                    post getDataStack();
				}	
                else
				{
					/* write the retrieved data onto the stack */
					post writeDataStack();
				}
			}
			else if (state == COMPACT_TRAVERSE2)
			{
				/* Reading data pointed to by the header */
#ifdef COMPACT_DEBUG
                call Console.string("Read data for element: ");
                call Console.decimal(compact_count);
				call Console.string("\n");
				TOSH_uwait(2000);
#endif
                post writeDataStream();
			}
		}
	}

    event void ChunkStorage.flushDone(result_t res)
{}

	command result_t Serialize.checkpoint[uint8_t id](uint8_t *buffer, datalen_t *len)
	{
#ifdef CHECKPOINT_DEBUG
        call Console.string("Checkpointing Stream, len=");
        call Console.decimal(*len);
		call Console.string(" pg=");
		call Console.decimal(local[id].tail.page);
		call Console.string(" off=");
		call Console.decimal(local[id].tail.offset);
		call Console.string("\n");
		TOSH_uwait(50000L);
#endif

        memcpy (&buffer[*len], &local[id].tail, sizeof(flashptr_t));
        *len += sizeof(flashptr_t);
        
		return (SUCCESS);
	}

	command result_t Serialize.restore[uint8_t id](uint8_t *buffer, datalen_t *len)
	{
		memcpy (&local[id].tail, &buffer[*len], sizeof(flashptr_t));
		*len += sizeof(flashptr_t);

#ifdef CHECKPOINT_DEBUG
        call Console.string("Restored Stream, id=");
        call Console.decimal(id);
		call Console.string(" pg=");
		call Console.decimal(local[id].tail.page);
		call Console.string(" off=");
		call Console.decimal(local[id].tail.offset);
		call Console.string("\n");
		TOSH_uwait(50000L);
#endif
        
        return (SUCCESS);
	}

	default event void Stream.nextDone[uint8_t id](result_t res)
	{}

	event void Console.input(char *s)
	{
	}

	task void getData()
	{
		/* Read header of the chunk */
		if (SUCCESS != call ChunkStorage.read(&compact_ptr, 
			&ptr, sizeof(stream_header),
			NULL, 0, FALSE, FALSE))
		{
#ifdef COMPACT_DEBUG
            call Console.string("ERROR ! Header read failed\n");
            call Leds.redOn();
#endif
            
		}
		else
		{
			state = COMPACT_TRAVERSE;

#ifdef COMPACT_DEBUG
        call Console.string("Getting stream pointer:");
        call Console.decimal(compact_count+1);
		call Console.string("\n");
		TOSH_uwait(2000);
#endif
		}
	}

	task void writeDataStack()
	{
		if (SUCCESS != call Stack.push(&compact_ptr, sizeof(flashptr_t), NULL))
		{
#ifdef COMPACT_DEBUG
            call Console.string("ERROR ! Push onto stack failed\n");
            call Leds.redOn();
#endif
            //TODO:  Should we signal some failure here?!?!
		}
		else
		{
			compact_count++;
#ifdef COMPACT_DEBUG
            call Console.string("Pushing pointer:");
            call Console.decimal(compact_count);
			call Console.string("\n");
			TOSH_uwait(2000);
#endif
		}
	}

	event void Stack.pushDone(result_t res)
	{
		if(res != SUCCESS)
		{
#ifdef COMPACT_DEBUG
            call Console.string("ERROR ! Stack push failed\n");
            call Leds.redOn();
#endif
            //TODO Again should we post a failure here?  Looks like a very bad thing could happen
		}
		else
		{
			/* Get next item of the stream */
#ifdef COMPACT_DEBUG
            call Console.string("Pushed element:");
            call Console.decimal(compact_count);
			call Console.string(" page:");
			call Console.decimal(compact_ptr.page);
			call Console.string(" off:");
			call Console.decimal(compact_ptr.offset);
			call Console.string("\n");
			TOSH_uwait(4000);
#endif

            post getData();
		}
	}

	task void getDataStack()
	{
		if (compact_count == 0)
		{
#ifdef COMPACT_DEBUG
            call Console.string("Signaling compaction done\n");
#endif
            /* XXX Check this up */
            compact_first_write = TRUE;
			unlock();
            signal Compaction.compactionDone[streamif_id](SUCCESS);
		}
		else
		{
			if (SUCCESS != call Stack.pop(&compact_ptr, NULL))
			{
#ifdef COMPACT_DEBUG
                call Console.string("ERROR ! Stack pop failed\n");
                call Leds.redOn();
#endif
                //TODO:  this appears to be another dangling error condition!!!!

			}
			else
			{
				compact_count--;
#ifdef COMPACT_DEBUG
                call Console.string("Popping stream pointer:");
                call Console.decimal(compact_count);
				call Console.string("\n");
				TOSH_uwait(2000);
#endif
			}
		}
	}

	task void getDataStack2()
	{
		/* Read the actual data */
		if (SUCCESS != call ChunkStorage.read(&compact_ptr, 
			&ptr, sizeof(stream_header),
			buff, &dlen, FALSE, FALSE))
		{
#ifdef COMPACT_DEBUG
            call Console.string("ERROR ! Data read failed\n");
            call Leds.redOn();
#endif
            //TODO:  this appears to be another dangling error condition!!!!
		}
		else
		{
#ifdef COMPACT_DEBUG
                call Console.string("Reading element data:");
                call Console.decimal(compact_count);
				call Console.string("\n");
				TOSH_uwait(2000);
#endif
            state = COMPACT_TRAVERSE2;
		}
	}


	event void Stack.popDone(result_t res)
	{
		if(res != SUCCESS)
		{
#ifdef COMPACT_DEBUG
            call Console.string("ERROR ! Stack pop failed\n");
            call Leds.redOn();
#endif
            //TODO:  this appears to be another dangling error condition!!!!
		}
		else
		{
			/* Now retrieve the data associated with the pointer */
#ifdef COMPACT_DEBUG
            call Console.string("Popped element:");
            call Console.decimal(compact_count);
			call Console.string(" page:");
			call Console.decimal(compact_ptr.page);
			call Console.string(" off:");
			call Console.decimal(compact_ptr.offset);
			call Console.string("\n");
			TOSH_uwait(5000);
#endif

            post getDataStack2();
		}
	}

	task void writeDataStream()
	{
#ifdef COMPACT_DEBUG
//            call Console.string("Writing data to stream\n");
//            TOSH_uwait(2000);
#endif

        if(compact_first_write == TRUE)
{
	local[streamif_id].tail.page = ~0;
	local[streamif_id].tail.offset = ~0;
	compact_first_write = FALSE;
}

        header.prev_ptr.page = local[streamif_id].tail.page;
		header.prev_ptr.offset = local[streamif_id].tail.offset;

		if(SUCCESS != call ChunkStorage.write(&header, sizeof(stream_header), 
		   buff, dlen, local[streamif_id].doEcc, 
		   &local[streamif_id].tail))
{
#ifdef COMPACT_DEBUG
            call Console.string("ERROR ! chunk write failed while trying to append to stream\n");
            call Leds.redOn();
#endif
            //TODO:  this appears to be another dangling error condition!!!!
}
        else
{
#ifdef COMPACT_DEBUG
                call Console.string("Writing new stream element:");
                call Console.decimal(compact_count);
				call Console.string("\n");
				TOSH_uwait(4000);
#endif
}
	}

	default event void Stream.appendDone[uint8_t id](result_t res)
{
}

    task void trivialReturn()
{
	unlock();
	signal Compaction.compactionDone[streamif_id](SUCCESS);
}


    command result_t Compaction.compact[uint8_t id](uint8_t againgHint)
{

	if (!lock())
	{
		return FAIL;
	}

#ifdef COMPACT_DEBUG
        call Console.string("Compact request on if :");
        call Console.decimal(id);
		call Console.string("\n");
#endif

        streamif_id = id;
        
        if((local[id].tail.page == 0xFFFF) &&
			(local[id].tail.offset == 0xFF))
		{
			/* Nothing to compact */
			post trivialReturn();
			return (SUCCESS);
		}

		/* Get start pointer */
		memcpy(&compact_ptr, &local[id].tail, sizeof(flashptr_t));
		compact_count = 0;

		/* Now start the traversal */
		post writeDataStack();

		return(SUCCESS);
}

    default event void Compaction.compactionDone[uint8_t id](result_t res)
{}

	command result_t StreamExport.export[uint8_t id](stream_t *stream_ptr)
	{
		if((local[id].tail.page == 0xFFFF) &&
				  (local[id].tail.offset == 0xFF))
		{
			//empty stream
			//no point exporting
			return FAIL;
		}
		
		memcpy(stream_ptr, &local[id], sizeof(stream_t));
		return SUCCESS;
	}
	
	event void Stack.topDone(result_t res)
	{}
}

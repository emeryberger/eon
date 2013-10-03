/*
 * file:        CheckpointC.nc
 * description: Checkpoint - restore implementation
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
 * Checkpoint implementation
 */

includes app_header;
includes common_header;

module CheckpointC {
	provides interface Checkpoint;
	
	uses {
		interface RootDirectory;
		interface ChunkStorage;
		interface Stack;
		interface Serialize;
		interface Leds;
		interface Console;
		interface RootPtrAccess;
	}
}

implementation 
{
	enum {CHECKPOINTING, ROLLING_BACK};
	bool busy;
	result_t tempResult;
	
	struct _data
	{
		uint8_t trans_state;
		flashptr_t root;
		checkpoint_header state;
		uint8_t id;
	}local[1];

	result_t saveData();
	task void signaler();

    /*********************************************
	************** Lock / Unlock ****************
	*********************************************/
	result_t lock()
	{
		bool localBusy;

		atomic 
		{
			localBusy = busy;
			busy = TRUE;
		}
        
		if (!localBusy)
		{
			return (SUCCESS);
		}
		else
		{
			return (FAIL);
		}
	}

	void unlock()
	{
		busy = FALSE;
	}
    
	command result_t Checkpoint.init(uint8_t id_)
	{
		unlock();
		local[0].id = id_;
		call Stack.init(FALSE);
        
		return (SUCCESS);
	}

	event void RootDirectory.initDone(result_t res)
	{
		/* We shouldnt init the root dir component */
	}

	task void signaler()
	{
		unlock();
        
		switch(local[0].trans_state)
		{
			case (CHECKPOINTING):
				signal Checkpoint.checkpointDone(tempResult);
				break;
            
			case (ROLLING_BACK):
				signal Checkpoint.rollbackDone(tempResult);
				break;
		}
	}


	/******* Roll back *****/
	task void rollBack()
	{
		/* Get the current root */
		local[0].trans_state = ROLLING_BACK;

#ifdef CHECKPOINT_DEBUG
            call Console.string("Task rollback:\n");
            call Console.string("local[0].id :");
			call Console.decimal(local[0].id);
			call Console.string("\nlocal[0].root.page :");
			call Console.decimal(local[0].root.page);
			call Console.string("\nlocal[0].root.offset :");
			call Console.decimal(local[0].root.offset);
			call Console.string("\n");
#endif
		
		
		if (SUCCESS != call RootDirectory.getRoot(local[0].id, &local[0].root))
		{
#ifdef CHECKPOINT_DEBUG
            call Console.string("ERROR ! Unable to get root dir data\n");
#endif

            tempResult = FAIL;
            post signaler();
		}
	}

    /***********
	* This performs rollback to a previous checkpoint
	***********/
	command result_t Checkpoint.rollback()
	{
		if (lock() != SUCCESS)
		{
#ifdef CHECKPOINT_DEBUG
           // call Console.string("ERROR ! Unable to acquire lock\n");
#endif
            return (FAIL);
		}
    
		post rollBack();

		return (SUCCESS);
	}


	event void RootDirectory.restore(flashptr_t *restore_ptr)
	{    
		lock();

		/* Copy the head ptr of the stack into the root here */
		memcpy(&local[0].root, &restore_ptr[local[0].id], sizeof(flashptr_t));

#ifdef CHECKPOINT_DEBUG
            call Console.string("RootDirecory.restore\n");
            call Console.decimal(local[0].root.page);
			call Console.string("\n");
			call Console.decimal(local[0].root.offset);
			call Console.string("\n");
			TOSH_uwait(50000L);
#endif 

		/* Perform a rollback */
		post rollBack();
	}

	event void RootDirectory.getRootDone(result_t res)
	{
		if (res != SUCCESS)
		{   
			tempResult = res;
			post signaler();
			return;
		}

        /* Slight hack -> over-write the Stack pointers in the stack 
		object to seed the transaction stack ! */
		
#ifdef CHECKPOINT_DEBUG
            call Console.string("RootPtrAccess.setPtr:");
			TOSH_uwait(50000L);            
			call Console.string("\nlocal[0].root.page :");
			call Console.decimal(local[0].root.page);
			
			TOSH_uwait(50000L);
			call Console.string("\nlocal[0].root.offset :");
			call Console.decimal(local[0].root.offset);
			call Console.string("\n");
			TOSH_uwait(50000L);
			TOSH_uwait(50000L);
#endif
		
		// NOTE: for testing only
		//local[0].root.page = 514;
		//local[0].root.offset = 82;
		call RootPtrAccess.setPtr(&local[0].root);

		/* Pop the data structure state from flash */
		if (SUCCESS != call Stack.pop(local[0].state.state_buffer, NULL))
		{
#ifdef CHECKPOINT_DEBUG
            call Console.string("ERROR ! Unable to pop state stack\n");
#endif
            tempResult = FAIL;
            post signaler();
		}
	}

	event void Stack.popDone(result_t res)
	{
		flashptr_t temp_root;
#ifdef CHECKPOINT_DEBUG
		{
		int i;
		call Console.string("popDone Saved state: ");
		for (i=0; i < MAX_STATE; i++)
		{
		call Console.decimal(local[0].state.state_buffer[i]);
		call Console.string("\n");
		TOSH_uwait(1000);
	}
		call Console.string("\n");
		TOSH_uwait(10000);
	}
#endif


		if (res == SUCCESS)
		{
			datalen_t len = 0;
			call Serialize.restore(local[0].state.state_buffer, &len);
		}

        /* In this process the Stack's root will get updated
		Hack -> Get the stack's root and copy it to our own */
		//call RootPtrAccess.getPtr(&local[0].root);

		call RootPtrAccess.getPtr(&temp_root);
		
		memcpy(&local[0].root, &temp_root, sizeof(flashptr_t) );
		/*
#ifdef CHECKPOINT_DEBUG
		call Console.string("Stack.popDone:");
		call Console.string("\ntemp_root.page: ");
		call Console.decimal(temp_root.page);
		call Console.string("\ntemp_root.offset: ");
		call Console.decimal(temp_root.offset);
		call Console.string("\n");
		
#endif
		*/
		/* Save the updated root */
		if (SUCCESS != call RootDirectory.setRoot(local[0].id, &local[0].root))
		{
#ifdef CHECKPOINT_DEBUG
            call Console.string("ERROR ! Root dir set failed\n");
#endif
            tempResult = res;
            post signaler();
		}
	}

    /**********************************************************************************************
	* This performs a checkpoint
	**********************************************************************************************/
	command result_t Checkpoint.checkpoint()
	{
		if (lock() != SUCCESS)
		{
#ifdef CHECKPOINT_DEBUG
            //call Console.string("ERROR ! Unable to acquire lock\n");
#endif
            return (FAIL);
		}
    
		local[0].trans_state = CHECKPOINTING;
        
		if (SUCCESS != saveData())
		{
			unlock();
#ifdef CHECKPOINT_DEBUG
            call Console.string("ERROR ! Unable to save state\n");
#endif
            call Leds.redOn();
            return (FAIL);
		}

		return (SUCCESS);
	}

	result_t saveData()
	{
		datalen_t len = 0;

#ifdef CHECKPOINT_DEBUG
	int i;
	/*
		call Console.string("calling serialize.checkpoint: \n");
		call Console.string("local[0].state.state_buffer \n");
		call Console.decimal(local[0].state.state_buffer);
		call Console.string("len: ");
		call Console.decimal(len);
		call Console.string("\n");
		TOSH_uwait(40000L);
	*/
#endif

    
		/* Pull object data together */
		
	call Serialize.checkpoint(local[0].state.state_buffer, &len);

#ifdef CHECKPOINT_DEBUG
		//{
		
		call Console.string("saveData() Saved state: len:");
		call Console.decimal(len);
		call Console.string(" ");
		TOSH_uwait(10000);
		for (i=0; i < len; i++)
		{
		call Console.decimal(local[0].state.state_buffer[i]);
		call Console.string("\n");
		TOSH_uwait(10000);
	}
		call Console.string("\n");
		TOSH_uwait(10000L);
	//}
#endif

        /* Data from linked objects is now in the buffer -> flush the 
		Checkpoint to flash */
		if (SUCCESS != call Stack.push(local[0].state.state_buffer, 
			len, &local[0].root))
		{
#ifdef CHECKPOINT_DEBUG
            call Console.string("ERROR ! Unable to push data on the state stack. len:");
            call Console.decimal(len);
			call Console.string("\n");
			TOSH_uwait(10000L);
#endif
            return (FAIL);
            
		}

		return (SUCCESS);
	}

	event void Stack.pushDone(result_t res)
	{
		if (res == FAIL)
		{
#ifdef CHECKPOINT_DEBUG
            call Console.string("ERROR ! Stack state pushing failed\n");
#endif
            tempResult = res;
            post signaler();
			return;
		}
        
		/* Flush all chunks everything to flash */
		if (SUCCESS != (tempResult = call ChunkStorage.flush()))
		{
#ifdef CHECKPOINT_DEBUG
            call Console.string("ERROR ! Chunk flush failed\n");
#endif
            post signaler();
            return;
		}
	}

	event void ChunkStorage.flushDone(result_t res)
	{
		if (res != SUCCESS)
		{
#ifdef CHECKPOINT_DEBUG
            call Console.string("ERROR ! Chunk flush failure\n");
#endif
            tempResult = res;
            post signaler();
		}
		else
		{
			/* Save the location of the saved Checkpoint chunk in the root page */
			if (SUCCESS != call RootDirectory.setRoot(local[0].id, &local[0].root))
			{
#ifdef CHECKPOINT_DEBUG
                call Console.string("ERROR ! Root dir set failed\n");
#endif
                tempResult = res;
                post signaler();
			}
		}
	}

	event void RootDirectory.setRootDone(result_t result)
	{
		tempResult = result;
        
#ifdef CHECKPOINT_DEBUG
		call Console.string("setRootDone\n");
		call Console.string("local[0].id: ");
		call Console.decimal(local[0].id);
		
		call Console.string("\n trans_state: ");
		call Console.decimal(local[0].trans_state);
		
		call Console.string("\n root[0].page: ");
		call Console.decimal(local[0].root.page);
		
		call Console.string("\n root[0].offset: ");
		call Console.decimal(local[0].root.offset);
		call Console.string("\n ");
/*
struct _data
{
	uint8_t trans_state;
	flashptr_t root;
	checkpoint_header state;
	uint8_t id;
}local[1];		

		struct flashptr_t
		{
		pageptr_t page;
		offsetptr_t offset;
	};

		
local[0].id, &local[0].root
*/
		
		
		TOSH_uwait(40000L);
		TOSH_uwait(40000L);
#endif

		
		post signaler();
	}
    
	default event void Checkpoint.checkpointDone(result_t result)
	{
	}
    
	default event void Checkpoint.rollbackDone(result_t result)
	{
	}

	event void Console.input(char *s)
	{
	}

	event void ChunkStorage.writeDone(result_t res)
	{
	}

	event void ChunkStorage.readDone(result_t res)
	{
	}

	event void Stack.topDone(result_t res)
	{}

}

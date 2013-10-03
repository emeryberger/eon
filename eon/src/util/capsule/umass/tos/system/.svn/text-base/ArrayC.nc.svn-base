/*
 * file:        ArrayC.nc
 * description: Array implementation
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
 * Array implementation
 */

includes app_header;
includes common_header;

module ArrayC {
    provides interface Array[uint8_t id];
    
    uses {
        interface ChunkStorage;
        interface Leds;
        interface Console;
    }
}

implementation 
{
    enum {SETTING, SAVING, GETTING, LOADING};
    uint8_t state;
    flashptr_t *Tsave_ptr;
    uint8_t arrayif_id;
    struct 
    {
        flashptr_t head;
        bool doEcc;
        array_header buffer;
        unsigned int Tarr_index;
    }local[NUM_ARRAYS];
    bool arrbusy = FALSE;
	uint8_t *tmpptr;
    /*********************************************
     ************** Lock / Unlock ****************
     *********************************************/
    result_t lock()
    {
        bool localBusy;

        atomic 
        {
            localBusy = arrbusy;
            arrbusy = TRUE;
        }

        if (TRUE != localBusy)
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
        arrbusy = FALSE;
    }


    task void loadDoneRespond()
    {
        unlock();
        signal Array.loadDone[arrayif_id](SUCCESS);
    }

    command result_t Array.load[uint8_t id](flashptr_t *head_, 
                                            bool first_write, bool ecc)
    {
        if (lock() != SUCCESS)
        {
#ifdef LOCK_DEBUG
            call Console.string("RR! Unble 2 acqr array ld lck\n");
            TOSH_uwait(30000L);
#endif
            return (FAIL);
        }
#ifdef LOCK__DEBUG
        call Console.string("Acqrd arry ld lck\n");
#endif
#ifdef ARRAY_DEBUG
        call Console.string("Array: Ldng lvl 1 ndx pg - pg:");
        call Console.decimal(head_->page);
        call Console.string(" off: ");
        call Console.decimal(head_->offset);
		call Console.string(" id: ");
		tmpptr = (uint8_t*)3305;
		call Console.decimal(*tmpptr);
		call Console.string("\n");
		
        TOSH_uwait(50000L);
		
		
		
#endif

        local[id].doEcc = ecc;

        if (first_write == TRUE)
        {
#ifdef ARRAY_DEBUG
			call Console.string("ndx pg dsn't xst on flsh\n");
			 TOSH_uwait(50000L);
#endif
            // Index page does not exist on the flash
            post loadDoneRespond();
            return(SUCCESS);
        }
        else
        {
            memcpy (&local[id].head, head_, sizeof(flashptr_t));

#ifdef ARRAY_DEBUG
			call Console.string("id1: ");
			tmpptr = (uint8_t*)3305;
			call Console.decimal(*tmpptr);
			call Console.string("\n");
			 TOSH_uwait(50000L);
#endif
            // Load the array page from flash
            if (SUCCESS != call ChunkStorage.read(&local[id].head, 
                                                  NULL, 0,
												  &local[id].buffer, NULL, 
												  FALSE, &ecc))
            {
#ifdef ARRAY_DEBUG
                call Console.string("RR! Unbl 2 rd arry hdr frm flsh\n");
                TOSH_uwait(30000L);
#endif       
                unlock();
                return (FAIL);
            }
            else
            {
                state = LOADING;
                arrayif_id = id;
#ifdef ARRAY_DEBUG
			call Console.string("id3: ");
			tmpptr = (uint8_t*)3305;
			call Console.decimal(*tmpptr);
			call Console.string("\n");
			TOSH_uwait(50000L);
#endif                
			return(SUCCESS);
            }
        }
        
    }

    event void ChunkStorage.readDone(result_t res)
    {   
        unlock();

#ifdef ARRAY_DEBUG
			call Console.string("id: ");
			tmpptr = (uint8_t*)3305;
			call Console.decimal(*tmpptr);
			call Console.string("\n");
			call Console.string("arrayif_id: ");
			call Console.decimal(arrayif_id);
			call Console.string("\n");
			
			TOSH_uwait(50000L);
#endif
		
        if (state == GETTING)
        {            
            signal Array.getDone[arrayif_id](res);
        }
        else if (state == LOADING)
        {
            signal Array.loadDone[arrayif_id](res);
        }
    }

    command result_t Array.save[uint8_t id](flashptr_t *save_ptr)
    {
        if (lock() != SUCCESS)
        {
#ifdef LOCK_DEBUG
            call Console.string("RR! Unable to acquire array save lock\n");
            TOSH_uwait(30000L);
#endif
            return (FAIL);
        }
#ifdef LOCK_DEBUG
        call Console.string("Acquired array save lock\n");
        TOSH_uwait(30000L);
#endif

        if (SUCCESS != call ChunkStorage.write(&local[id].buffer, sizeof(array_header),
                                               NULL, 0, FALSE, &local[id].head))
        {
#ifdef ARRAY_DEBUG
            call Console.string("RR! Unbl 2 wrt array hdr 2 flsh\n");
            TOSH_uwait(30000L);
#endif
            unlock();
            return (FAIL);
        }
        else
        {
            Tsave_ptr = save_ptr;
            state = SAVING;
            arrayif_id = id;
            
            return (SUCCESS);
        }
    }

    event void ChunkStorage.writeDone(result_t res)
    {   
        unlock();

		//call Leds.redToggle();
		
        if (state == SETTING)
        {
			
            /* Modify it to reflect new data */
            memcpy(Tsave_ptr, 
                   &local[arrayif_id].buffer.ptr[local[arrayif_id].Tarr_index],
                   sizeof(flashptr_t));
            signal Array.setDone[arrayif_id](res);
        }
        else if (state == SAVING)
        {
            if ((res == SUCCESS) && (Tsave_ptr != NULL))
                memcpy(Tsave_ptr, &local[arrayif_id].head, sizeof(flashptr_t));
        
#ifdef ARRAY_DEBUG
        {
            int i;

            call Console.string("Arr: Svd lvl1 ndx pg -pg:");
            call Console.decimal(local[arrayif_id].head.page);
            call Console.string(" off:");
            call Console.decimal(local[arrayif_id].head.offset);
            call Console.string("\n");
            TOSH_uwait(40000L);

            for (i=0; i < ARRAY_ELEMENTS_PER_CHUNK; i++)
            {
				call Console.string("(ARR)Elmnt:");
                call Console.decimal(i);
                call Console.string(" pg: ");
                call Console.decimal(local[arrayif_id].buffer.ptr[i].page);
                call Console.string(" off: ");
                call Console.decimal(local[arrayif_id].buffer.ptr[i].offset);
                call Console.string("\n");
                TOSH_uwait(40000L);
            }
        }
#endif

            signal Array.saveDone[arrayif_id](res);
        }
#ifdef ARRAY_DEBUG
            call Console.string("ChnkSt.wrteDone hndlr fnshd\n");
            TOSH_uwait(30000L);
#endif           
    }


    command result_t Array.set[uint8_t id](unsigned int arr_index, void *data, 
                                           datalen_t len, flashptr_t *save_ptr)
    {	
        if (lock() != SUCCESS)
        {
#ifdef LOCK_DEBUG
            call Console.string("ERROR ! Unable to acquire array set lock\n");
            TOSH_uwait(30000L);
#endif
            return (FAIL);
        }
#ifdef LOCK_DEBUG
        call Console.string("Acquired array set lock\n");
        TOSH_uwait(30000L);
#endif
        /* Write the data */
        if(SUCCESS != call ChunkStorage.write(NULL, 0,
                                              data, len, 
                                              local[id].doEcc, 
                                              &local[id].buffer.ptr[arr_index]))
        {
#ifdef ARRAY_DEBUG
            call Console.string("RR! Unbl 2 wrt chnk n array.set\n");
            TOSH_uwait(30000L);
#endif           

			unlock();
            return (FAIL);
        }
        else
        {
			call Leds.redToggle();
            Tsave_ptr = save_ptr;
            state = SETTING;
            arrayif_id = id;
            local[id].Tarr_index = arr_index;
            return (SUCCESS);
        }
    }

    event void ChunkStorage.flushDone(result_t res)
    {
    }

    command result_t Array.get[uint8_t id](unsigned int arr_index, 
                                           void *data, datalen_t *len)
    {
        uint8_t ecc;

        if (lock() != SUCCESS)
        {
#ifdef LOCK_DEBUG
            call Console.string("ERROR ! Unable to acquire array get lock\n");
            TOSH_uwait(30000L);
#endif
            return (FAIL);
        }
#ifdef LOCK_DEBUG
        call Console.string("Acqrd array gt lck\n");
#endif
#ifdef ARRAY_DEBUG
        call Console.string("Array: Getting element:");
        call Console.decimal(arr_index);
        call Console.string(" from page:");
        call Console.decimal(local[id].buffer.ptr[arr_index].page);
        call Console.string(" off: ");
        call Console.decimal(local[id].buffer.ptr[arr_index].offset);
        call Console.string("\n");
        TOSH_uwait(30000L);
#endif

    	//check for null pointer
		if (local[id].buffer.ptr[arr_index].page == 0xFFFF && 
			local[id].buffer.ptr[arr_index].offset == 0xFF)
		{
			*len = 0;
			unlock();
			signal Array.getDone[id](SUCCESS);
			return SUCCESS;
		}
		
        /* Now get the data */
        if (SUCCESS != call ChunkStorage.read(&local[id].buffer.ptr[arr_index],
                                              NULL, 0,
                                              data, len, FALSE, &ecc))
        {
#ifdef ARRAY_DEBUG
            call Console.string("RR! Unbl 2 rd chnk date n array.get\n");
            TOSH_uwait(30000L);
#endif             
            unlock();
            return (FAIL);
        }
        else
        {
            state = GETTING;
            arrayif_id = id;
            
            return (SUCCESS);
        }
    }
	
	
	command result_t Array.delete[uint8_t id](unsigned int arr_index)
    {
        /* Delete the data */
        memset (&local[arrayif_id].buffer.ptr[arr_index], 0xFF, sizeof(flashptr_t));

        return (SUCCESS);
    }
	

    default event void Array.setDone[uint8_t id](result_t r)
    {}

    default event void Array.getDone[uint8_t id](result_t r)
    {}

    default event void Array.saveDone[uint8_t id](result_t r)
    {}
    
    default event void Array.loadDone[uint8_t id](result_t r)
    {}

    event void Console.input(char *s)
    {
    }
}

/*
 * file:        BundleIndexC.nc
 * description: BundleIndex object implementation
 *
 * author:      Gaurav Mathur, UMass Computer Science Dept.
 * author:      Jacob Sorber, UMass Computer Science Dept.
 * $Id: BundleIndexC.nc,v 1.0 2006/05/01 00:00:00 sorber Exp $
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
 * BundleIndex implementation
 */

includes app_header;
includes common_header;
includes SingleStream;

module BundleIndexC {
    provides interface Index[uint8_t id];
    provides interface Serialize[uint8_t id];
    provides interface Compaction[uint8_t id];

    uses {
        interface ChunkStorage;
        interface Array;
        interface Leds;
        interface Console;
		interface SingleCompaction;
    }
}

implementation 
{
    enum{SETTING, GETTING, SAVING, LOADING};
    flashptr_t *Tsave_ptr;
    unsigned int Tarrindex, Tindex;
    void *Tdata;
    datalen_t Tlen, *Tlen_;
#ifdef INDEX_DEBUG
    datalen_t *Tlen__;
#endif
    uint8_t indexif_id;
    uint8_t state, state2;
    bool compacting;
    struct _data
    {
        flashptr_t head; // back this up
        bool doEcc;
        index_header buffer;
        bool written;
        pageptr_t old_indexptr;
    }local[NUM_BUNDLE_INDEXES];
    bool indexbusy;

    /* Compaction data */
    datalen_t clen = 0;
    uint16_t compactptr = 0;
    uint8_t buff[LEN];
    bool buffModify = FALSE;

    task void loadData();
    task void saveData();
    task void compact_get();
    task void compact_set();
	task void compact_stream();
	task void compact_finish();

    /*********************************************
     ************** Lock / Unlock ****************
     *********************************************/
    result_t lock()
    {
        bool localBusy;

        atomic 
        {
            localBusy = indexbusy;
            indexbusy = TRUE;
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
        indexbusy = FALSE;
    }

    task void SuccessRespond()
    {
        unlock();
        call Leds.redOn();

        if(state == SAVING)
            signal Index.saveDone[indexif_id](SUCCESS);
        else if(state == LOADING)
            signal Index.loadDone[indexif_id](SUCCESS);
    }

    task void FailRespond()
    {
        unlock();
        call Leds.redOn();

        if(state2 == SETTING)
            signal Index.setDone[indexif_id](FAIL);
        else if(state2 == GETTING)
            signal Index.getDone[indexif_id](FAIL);
        else
            signal Index.saveDone[indexif_id](FAIL);
    }

    task void FailRespond2()
    {
        unlock();

        if(state == SAVING)
            signal Index.saveDone[indexif_id](FAIL);
        else if(state == LOADING)
            signal Index.loadDone[indexif_id](FAIL);
    }


    task void loadTask()
    {
        uint8_t ecc;

        if (local[indexif_id].written == TRUE)
        {
            if (SUCCESS != call ChunkStorage.read(&local[indexif_id].head, 
                                                  NULL, 0,
                                                  &local[indexif_id].buffer, NULL,
                                                  FALSE, &ecc))
            {
#ifdef INDEX_DEBUG
                call Console.string("ERROR ! Unable to read in the index\n");
                TOSH_uwait(3000);
#endif
                post FailRespond2();
            }
        }
        else
        {
            memset(&local[indexif_id].buffer, 0xFF, sizeof(index_header));
            post SuccessRespond();
        }

    }

    /***********
     * This loads the index from flash to memory
     ***********/
    command result_t Index.load[uint8_t id](bool ecc)
    {
        if (lock() != SUCCESS)
        {
#ifdef LOCK_DEBUG
            call Console.string("ERROR ! Unable to acquire index load lock\n");
            TOSH_uwait(3000);
#endif
            return (FAIL);
        }
#ifdef LOCK_DEBUG
        call Console.string("Acquired index load lock\n");
        TOSH_uwait(3000);
#endif

        local[id].doEcc = ecc;        
        state = LOADING;
        indexif_id = id;

        post loadTask();

        return (SUCCESS);
    }

    task void saveTask()
    {
        if (SUCCESS != call ChunkStorage.write(NULL, 0,
                                               &local[indexif_id].buffer, sizeof(index_header), 
                                               FALSE, &local[indexif_id].head))
        {
#ifdef INDEX_DEBUG
            call Console.string("Failed to save index to flash\n");
            TOSH_uwait(3000);
#endif
            post FailRespond2();
        }        
    }

    /***********
     * This saves the index from memory to flash
     ***********/
    task void save_l1_index()
    {
        /* Save the current page */
        if (buffModify == TRUE)
        {
            if (SUCCESS != call Array.save(&local[indexif_id].buffer.ptr[local[indexif_id].old_indexptr]))
            {
#ifdef INDEX_DEBUG
                call Console.string("Saving current level 1 index failed\n");
                TOSH_uwait(3000);
#endif
                post FailRespond();
            }
        }
        else if (state == SAVING)
            post saveTask();
    }


    command result_t Index.save[uint8_t id](flashptr_t *save_ptr)
    {
        if (lock() != SUCCESS)
        {
#ifdef LOCK_DEBUG
            call Console.string("ERROR ! Unable to acquire index save lock\n");
            TOSH_uwait(3000);
#endif
            return (FAIL);
        }
#ifdef LOCK_DEBUG
        call Console.string("Acquired index save lock\n");
        TOSH_uwait(3000);
#endif

        Tsave_ptr = save_ptr;
        indexif_id = id;

        state2 = state = SAVING;

        post save_l1_index();

        return (SUCCESS);
    }
    
    /***********
     * This sets a (key, value) pair into the Index
     ***********/
    command result_t Index.set[uint8_t id](unsigned int arr_index, void *data, 
                                           datalen_t len, flashptr_t *save_ptr)
    {
        if (lock() != SUCCESS)
        {
#ifdef LOCK_DEBUG
            call Console.string("ERROR ! Unable to acquire index set lock\n");
            TOSH_uwait(3000);
#endif
            return (FAIL);
        }
#ifdef LOCK_DEBUG
        call Console.string("Acquired index set lock\n");
        TOSH_uwait(3000);
#endif
#ifdef INDEX_DEBUG
        call Console.string("Set index: ");
        call Console.decimal(arr_index);
        call Console.string("\n");
        TOSH_uwait(3000);
#endif

        /* Calculate data storage location */
        Tindex = arr_index / ARRAY_ELEMENTS_PER_CHUNK;
        Tarrindex = arr_index % ARRAY_ELEMENTS_PER_CHUNK;

        Tdata = data;
        Tlen = len;
        Tsave_ptr = save_ptr;
        indexif_id = id;
        
        /* If new page being accessed is different -> 
              save currently loaded page and load relevant page */
        if(local[id].old_indexptr != Tindex)
        {
#ifdef INDEX_DEBUG
            call Console.string("Will have to load page...\n");
            TOSH_uwait(3000);
#endif
            state2 = state = SETTING;
            post save_l1_index();
        }
        else
        {
#ifdef INDEX_DEBUG
            call Console.string("Page already loaded. saving data...\n");
            TOSH_uwait(3000);
#endif
       
            /* Relevant page is already loaded */
            post saveData();
        }

        return (SUCCESS);
    }


    task void loadArrPage()
    {
        /* Check if the lower level array page exists */
        if ((local[indexif_id].buffer.ptr[Tindex].page == 0xFFFF) && 
            (local[indexif_id].buffer.ptr[Tindex].offset == 0xFF))
        {
            /* Lower level array page does not exist -> load a new one */
            if (SUCCESS != call Array.load(NULL, TRUE, local[indexif_id].doEcc))
            {
#ifdef LOCK_DEBUG
                call Console.string("Level 1 index load failed\n");
                TOSH_uwait(3000);
#endif
                post FailRespond();
            }
        }
        else
        {
#ifdef INDEX_DEBUG
            call Console.string("Loading level 1 index page : ");
            call Console.decimal(Tindex);
            call Console.string(" if: ");
            call Console.decimal(indexif_id);
            call Console.string(" from page: ");
            call Console.decimal(local[indexif_id].buffer.ptr[Tindex].page);
            call Console.string(" off: ");
            call Console.decimal(local[indexif_id].buffer.ptr[Tindex].offset);
            call Console.string("\n");
            TOSH_uwait(4000);
#endif

            /* Load level 1 index */
            if (SUCCESS != call Array.load(&local[indexif_id].buffer.ptr[Tindex],
                                            FALSE, FALSE))
            {
#ifdef INDEX_DEBUG
                call Console.string("Loading the level 1 index failed\n");
                TOSH_uwait(3000);
#endif
                post FailRespond();
            }
        }
    }

    event void Array.saveDone(result_t res)
    {
        if (res == SUCCESS)
        {
            local[indexif_id].written = TRUE;
            buffModify = FALSE;

            if (state == SAVING)
                post saveTask();
            else
                post loadArrPage();

#ifdef INDEX_DEBUG
            call Console.string("Saved level 1 index page : ");
            call Console.decimal(Tindex);
            call Console.string(" to page: ");
            call Console.decimal(local[indexif_id].buffer.ptr[local[indexif_id].old_indexptr].page);
            call Console.string(" off: ");
            call Console.decimal(local[indexif_id].buffer.ptr[local[indexif_id].old_indexptr].offset);
            call Console.string("\n");
            TOSH_uwait(6000);

            {
                int i;

                for (i=0; i < INDEX_ELEMENTS_PER_CHUNK; i++)
                {
                    call Console.string("Element:");
                    call Console.decimal(i);
                    call Console.string(" page: ");
                    call Console.decimal(local[indexif_id].buffer.ptr[i].page);
                    call Console.string(" off: ");
                    call Console.decimal(local[indexif_id].buffer.ptr[i].offset);
                    call Console.string("\n");
                    TOSH_uwait(4000);
                }
            }
#endif
        }
        else
        {
#ifdef INDEX_DEBUG
            call Console.string("Saving level 1 index failure\n");
            TOSH_uwait(3000);
#endif
            post FailRespond();
        }
    }

    task void saveData()
    {
#ifdef INDEX_DEBUG
        call Console.string("In Index.savedata : Tarrindex ");
        call Console.decimal(Tarrindex);
        call Console.string(" Tdata ");
        call Console.decimal(Tdata);
        call Console.string(" Tlen ");
        call Console.decimal(Tlen);
        call Console.string(" indexif_id ");
        call Console.decimal(indexif_id);
        call Console.string(" Tindex ");
        call Console.decimal(Tindex);
        call Console.string("\n");
        TOSH_uwait(5000);
#endif

        buffModify = TRUE;

        /* Write the data */
        if(SUCCESS != call Array.set(Tarrindex, Tdata, Tlen, 
                                     &local[indexif_id].buffer.ptr[Tindex]))
        {
#ifdef INDEX_DEBUG
            call Console.string("Setting index data failed\n");
            TOSH_uwait(3000);
#endif
            post FailRespond();
        }
    }

    event void Array.setDone(result_t res)
    {
#ifdef INDEX_DEBUG
        if (res == SUCCESS)
            call Console.string("Setting array success\n");
        else
            call Console.string("Setting array failed\n");
        TOSH_uwait(3000);
#endif

        if ((res == SUCCESS) && (Tsave_ptr != NULL))
            memcpy (Tsave_ptr, &local[indexif_id].buffer.ptr[Tindex], sizeof(flashptr_t));
        
        unlock();
#ifdef LOCK_DEBUG
        call Console.string("Released index set lock\n");
        TOSH_uwait(3000);
#endif
        if (!compacting)
            signal Index.setDone[indexif_id](res);
        else
        {
			post compact_stream();
            
        }
    }

    /***********
     * This gets the value associated with a key
     ***********/
    command result_t Index.get[uint8_t id](unsigned int arr_index, void *data, 
                                           datalen_t *len)
    {
        if (lock() != SUCCESS)
        {
#ifdef LOCK_DEBUG
            call Console.string("ERROR ! Unable to acquire index get lock\n");
            TOSH_uwait(3000);
#endif
            return (FAIL);
        }
#ifdef LOCK_DEBUG
        call Console.string("Acquired index get lock\n");
#endif
#ifdef INDEX_DEBUG
        call Console.string("Get index: ");
        call Console.decimal(arr_index);
        call Console.string("\n");
        TOSH_uwait(3000);
#endif

        /* Calculate data storage location */
        Tindex = arr_index / ARRAY_ELEMENTS_PER_CHUNK;
        Tarrindex = arr_index % ARRAY_ELEMENTS_PER_CHUNK;
        Tdata = data;
        Tlen_ = len;
        indexif_id = id;
       
        state2 = state = GETTING;
        if (Tindex == local[indexif_id].old_indexptr)
        {
            /* Level 1 index is already loaded */
            post loadData();
        }
        else
        {
            /* Save the current page */
            if (SUCCESS != call Array.save(&local[id].buffer.ptr[Tindex]))
            {
#ifdef INDEX_DEBUG
                call Console.string("Saving current level 1 index failed\n");
                TOSH_uwait(3000);
#endif
                unlock();
                return (FAIL);
            }
        }
        
        return (SUCCESS);
    }

    event void Array.loadDone(result_t res)
    {
        if (res == SUCCESS)
        {
            local[indexif_id].old_indexptr = Tindex;
            buffModify = FALSE;

            if (state == SETTING)
            {
                post saveData();
            }
            else if (state == GETTING)
            {
                post loadData();
            }
        }
        else
        {
#ifdef INDEX_DEBUG
            call Console.string("Loading level 1 index failure\n");
            TOSH_uwait(3000);
#endif
            post FailRespond();
        }
    }

    task void loadData()
    {
        /* Now get the data */
#ifdef INDEX_DEBUG
        Tlen__ = Tlen_;
#endif
        if (SUCCESS != call Array.get(Tarrindex, Tdata, Tlen_))
        {
#ifdef INDEX_DEBUG
            call Console.string("Level 1 index loading failure\n");
            TOSH_uwait(3000);
#endif
            post FailRespond();
        }

    }

    event void Array.getDone(result_t res)
    {
#ifdef INDEX_DEBUG
        call Console.string("In Array.getDone : Tarrindex ");
        call Console.decimal(Tarrindex);
        call Console.string(" Tlen_ ");
        call Console.decimal(*Tlen_);
        call Console.string(" Data len:");
        call Console.decimal(*Tlen__);
        call Console.string("\n");
        TOSH_uwait(3000);
#endif

        unlock();
#ifdef LOCK_DEBUG
        call Console.string("Released index get lock\n");
        TOSH_uwait(3000);
#endif

        if (!compacting)
            signal Index.getDone[indexif_id](res);
        else
            post compact_set();
    }

    event void ChunkStorage.writeDone(result_t result)
    {
        /* Just saved the index page */
        if (result == SUCCESS)
        {
            if(Tsave_ptr != NULL)
                memcpy(Tsave_ptr, &local[indexif_id].head, sizeof(flashptr_t));
      
#ifdef INDEX_DEBUG
            call Console.string("Saved level 2 index page : ");
#endif
        }
        else
        {
#ifdef INDEX_DEBUG
            call Console.string("ERROR ! While saving level 2 index page : ");
#endif
        }

        unlock();

        signal Index.saveDone[indexif_id](result);
    }

    event void ChunkStorage.readDone(result_t result)
    {
        /* Just read in the index page */
        if (result == SUCCESS)
        {
#ifdef INDEX_DEBUG
            call Console.string("Loaded level 2 index page : ");
#endif
        }
        else
        {
#ifdef INDEX_DEBUG
            call Console.string("ERROR ! While loading level 2 index page : ");
#endif
        }

        unlock();

        signal Index.loadDone[indexif_id](result);
    }

    event void ChunkStorage.flushDone(result_t result)
    {
    }

    /*
     * Checkpoint / restore
     */
    command result_t Serialize.checkpoint[uint8_t id](uint8_t *buffer, datalen_t *len)
    {
#ifdef CHECKPOINT_DEBUG
        call Console.string("Checkpointing Index, id=");
        call Console.decimal(id);
        call Console.string("\n");
        TOSH_uwait(3000);
#endif

        memcpy (&buffer[*len], &local[id].head, sizeof(flashptr_t));
        *len += sizeof(flashptr_t);

        return (SUCCESS);
    }

    command result_t Serialize.restore[uint8_t id](uint8_t *buffer, datalen_t *len)
    {
#ifdef CHECKPOINT_DEBUG
        call Console.string("Restoring Index, id=");
        call Console.decimal(id);
        call Console.string("\n");
        TOSH_uwait(3000);
#endif
        memcpy (&local[id].head, &buffer[*len], sizeof(flashptr_t));
        *len += sizeof(flashptr_t);

        return (SUCCESS);
    }

    task void compact_get()
    {
        if (SUCCESS != call Index.get[indexif_id](compactptr, buff, &clen))
        {
#ifdef COMPACT_DEBUG
            call Console.string("ERROR ! Unable to get index data\n");
            TOSH_uwait(3000);
#endif
        }
    }

    task void compact_set()
    {
        if (SUCCESS != call Index.set[indexif_id](compactptr, buff, clen, NULL))
        {
#ifdef COMPACT_DEBUG
            call Console.string("ERROR ! Unable to get index data\n");
            TOSH_uwait(3000);
#endif
        }
    }
	
	task void compact_finish()
	{
		compactptr++;

		if (compactptr < COUNT)
		{
        	post compact_get();
        } else {
			compacting = FALSE;
			signal Compaction.compactionDone[indexif_id](SUCCESS);
		}
	}
	
	task void compact_stream()
	{
		if (clen < sizeof(stream_t))
		{
			post compact_finish();
			return;
		}
		
		//call SingleCompaction...blah
		if (FAIL == call SingleCompaction.compact((stream_t*)buff, 0))
		{
#ifdef COMPACT_DEBUG
            call Console.string("ERROR ! Unable to compact substream data\n");
            TOSH_uwait(3000);
#endif
		}
	}
	
	event void SingleCompaction.compactionDone(stream_t * stream_ptr, result_t res)
	{
		if (stream_ptr == (stream_t*)buff)
		{
			post compact_finish();
		}
	}

    command result_t Compaction.compact[uint8_t id](uint8_t againgHint)
    {
        indexif_id = id;
        compacting = TRUE;
		
		//Waiting to hear from Gaurav about this
		compactptr = 0;
        
		post compact_get();

        return (SUCCESS);
    }

    event void Console.input(char *s)
    {
    }

    default event void Index.setDone[uint8_t id](result_t res)
    {
    }

    default event void Index.getDone[uint8_t id](result_t res)
    {}
    
    default event void Index.loadDone[uint8_t id](result_t res)
    {}

    default event void Index.saveDone[uint8_t id](result_t res)
    {}

    default event void Compaction.compactionDone[uint8_t id](result_t res)
    {}
}

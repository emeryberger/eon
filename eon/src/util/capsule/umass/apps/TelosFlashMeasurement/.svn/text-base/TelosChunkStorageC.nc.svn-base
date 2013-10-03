/*
 * This module provides a Chunk-based interface to read and write data
 * to the NAND Flash
 */
includes chunk_header;
includes common_header;


module TelosChunkStorageC {
    provides interface ChunkStorage;
    provides interface StdControl;

    uses {
		interface Mount;
        interface BlockRead;
    	interface BlockWrite;
		interface Leds;
#ifdef X
		interface Console;
#endif
    }
}

implementation {
    
    pageptr_t page_ptr; /* Maintains a pointer to the next page to be 
                           written to in the flash */
    offsetptr_t offset_ptr; /* Maintains a pointer to the next offset to be 
                               written to in the current page */
	offsetptr_t cache_ptr; /* This is the pointer into the current write buffer 
							  where the next chunk will be written */
	
	uint8_t write_buffer[NAND_BUFFER_SIZE]; /* This is the page buffer used to 
                                               cache data that is to be 
                                               written to the flash */

    bool busy;            /* Used to lock the write page cache and flash */
    pageptr_t total_pages;

	/* Local functions */
	bool verifyEcc();
	result_t readBuffer(uint8_t type, offsetptr_t ptr, 
						void *data1, datalen_t len1, 
						void *data2, datalen_t *len2, 
						bool checkEcc, bool *ecc);
						
    command result_t StdControl.init() 
    {
        busy = 0;
        page_ptr = 1;
        offset_ptr = 0;
		cache_ptr = 0;

		/* Fill write buffer with 1s */
		memset (write_buffer, 0xFF, NAND_BUFFER_SIZE);

		call Leds.init();

        if (SUCCESS != call PageNAND.init())
		{
			call Leds.redOn();
	        dbg(DBG_USR1, "ERROR ! Failed to Initialize PageNAND\n");
			return (FAIL);
		}
        dbg(DBG_USR1, "Initialized PageNAND\n");
        
        total_pages = call PageNAND.numPages();
        dbg(DBG_USR1, "Number of pages = %d\n", total_pages);
    
        return SUCCESS;
    }

    command result_t StdControl.start() 
	{
        return SUCCESS;
    }

    command result_t StdControl.stop() 
	{
        return SUCCESS;
    }

    event result_t PageNAND.initDone(result_t r)
    {
		if (SUCCESS != r)
		{
			call Leds.redOn();
	        dbg(DBG_USR1, "ERROR ! Failed to Initialize PageNAND\n");
			return (FAIL);
		}
			
        /* Check flash for bad pages and skip forward accordingly... */
        dbg(DBG_USR1, "System will start writing at page %d\n", page_ptr);

        return (SUCCESS);
    }
	
	
	/* 
	 * Flushes the write buffer to flash 
	 * Note : this assumes that locking has already been handled
	 */
	
	result_t flush_write_buffer()
	{
#ifdef X
			/* Print out the current write buffer on the serial port */
			int i;
#endif

			if (cache_ptr == 0)
				/* Nothing to write */
				return (SUCCESS);

#ifdef X
			call Console.string("Cache being written to page:");
			call Console.decimal(page_ptr);
			call Console.string(" offset:");
			call Console.decimal(offset_ptr);
			call Console.string("\n");
		    for (i = 0; i < NAND_BUFFER_SIZE; i++)
			{
		    	call Console.decimal(write_buffer[i]);
				if (!(i % 80))
					call Console.string("\n");
				TOSH_uwait(1000);
			}
			call Console.string("\n");
#endif

			/* Flush data to the flash */
			if (SUCCESS == call BlockWrite.write(page_ptr, write_buffer, 
												cache_ptr))
			{
				/* Fill write buffer with 1s */
				memset (write_buffer, 0xFF, cache_ptr);
	
				/* Increment pointers */
				offset_ptr += cache_ptr;
				cache_ptr = 0;
				
				if ((NAND_PAGE_SIZE - offset_ptr) < NAND_BUFFER_SIZE)
				{
					offset_ptr = 0;
					page_ptr++;
					if (page_ptr == total_pages)
					{
						/* TODO Start erasing */
						page_ptr = 0;
					}
				}

				return (SUCCESS);
			}
			else
			{
				call Leds.redOn();
           		dbg(DBG_USR1, "Error ! Flush to flash failed\n");
				return (FAIL);
        	}
	}
    
	
	/* 
	 * Flush current write buffer to flash
     */
    command result_t ChunkStorage.flush()
	{
		result_t res;
		
		if (busy)
        {
            dbg(DBG_USR1, "Write busy !\n");
            return (FAIL);
        }
        busy = 1;

		res = flush_write_buffer();

		busy = 0;

		return(res);
	}

	
    /* Writes a record into Flash
     * NOTE : Internally, part of one page is cached before writing to 
     *        flash
     */
	command result_t ChunkStorage.write(uint8_t type, void *data1, datalen_t len1,
						   				void *data2, datalen_t len2, bool computeEcc, 
										flashptr_t *save_ptr)
    {
		uint8_t ecc = 0xFF;
		chunk_header* header;
		datalen_t chunk_len = len1 + len2 + sizeof(chunk_header);
		//dbg(DBG_USR1, "%d %d\n", len, sizeof(chunk_header));

		if (busy)
        {
            dbg(DBG_USR1, "Write busy !\n");
            return (FAIL);
        }
        busy = 1;

       	/*
		 * Check if the chunk size is ok.
		 */
        if (chunk_len > NAND_BUFFER_SIZE)
        {
            /* Max length supported */
            dbg(DBG_USR1, "Error ! Write data %d > %d write buffer !\n", 
				chunk_len, NAND_BUFFER_SIZE);
			busy = 0;
            return (FAIL);
        }

        /*
		 * Flush the current page write cache if there isnt enough place
		 * to hold the new chunk
         */
		if (chunk_len > (NAND_BUFFER_SIZE - cache_ptr))
        {
			dbg(DBG_USR1, "flushing write cache - %d space left, chunk len = %d\n", 
				(NAND_BUFFER_SIZE - cache_ptr), chunk_len);
			
			if(flush_write_buffer() != SUCCESS)
			{
           		dbg(DBG_USR1, "Error ! Flush to flash failed\n");
				busy = 0;
				return (FAIL);
        	}
        }

        /* Return handle to where data will be written in flash */
        save_ptr->page = page_ptr;
        save_ptr->offset = (offset_ptr + cache_ptr);
		header = (chunk_header*) &write_buffer[cache_ptr];

        dbg(DBG_USR1, "Writing data to cache - page:%d off:%d chunk len:%d Data type:%d len:%d\n",
            page_ptr, (offset_ptr + cache_ptr), chunk_len, type, (len1 + len2));
			
        /* Copy data to the page cache */
		header->type = type;
		header->data_len = len1 + len2;
		header->ecc = ecc;
		cache_ptr += sizeof(chunk_header);
		if (len1 > 0)
		{
        	memcpy(&write_buffer[cache_ptr], data1, len1);
			cache_ptr += len1;
		}
		if (len2 > 0)
		{
        	memcpy(&write_buffer[cache_ptr], data2, len2);
			cache_ptr += len2;
		}

		/* Compute ECC */
		if (computeEcc)
		{
			/* TODO: ECC needs to be computed */
		}

        /* Unlock and return */
        busy = 0;

        return (SUCCESS);
    }
    
    /* Reads a page from flash
     * NOTE : This is probably insufficient, but we expect a higher
     *        level file system interface to be using this
     */
 	command result_t ChunkStorage.read(uint8_t type, flashptr_t *ptr, 
									   void *data1, datalen_t len1, 
						  			   void *data2, datalen_t *len2, 
									   bool checkEcc, bool *ecc) 
	{
		uint8_t header_buffer[MAX_HEADERS_LEN];
		chunk_header *header;
		datalen_t datalen;
		
		if ( (ptr->page == page_ptr) && (ptr->offset >= offset_ptr) &&
		     (ptr->offset < (offset_ptr + NAND_BUFFER_SIZE)) )
		{
			/* Data is in the write cache */
			return(readBuffer(type, (ptr->offset - offset_ptr), data1, len1, 
						 	  data2, len2, checkEcc, ecc));
		}
		
        dbg(DBG_USR1, "Reading header chunk from flash - p:%d o:%d len:%d\n",
            ptr->page, ptr->offset, sizeof(chunk_header) + len1);

        /* First get the header of the chunk */
        if (SUCCESS != call PageNAND.read(ptr->page, ptr->offset,
										  header_buffer, sizeof(chunk_header) + len1))
        {
            dbg(DBG_USR1, "Error ! Read from flash failed.\n");
            return (FAIL);
        }
		header = (chunk_header *) header_buffer;

		/* Check if this is the chunk that we are expecting */
		if (header->type != type)
		{
			dbg(DBG_USR1, "Unexpected chunk type !\n");
			return (FAIL);
		}

		/* Now retrieve the chunk data */
		datalen = header->data_len - len1;
		dbg(DBG_USR1, "Reading data chunk from flash - p:%d o:%d len:%d\n",
        			    ptr->page, ptr->offset, datalen);
		
		if ((datalen > 0) && (data2 != NULL))
		{
        	if (SUCCESS != call PageNAND.read(ptr->page,
											  ptr->offset + sizeof(chunk_header) + len1, 
											  data2, datalen ))
	        {
    	        dbg(DBG_USR1, "Error ! Read from flash failed.\n");
        	    return (FAIL);
        	}
		}

		if (len2 != NULL)
			*len2 = datalen;
		
		/* Copy the header data */
		if (len1 > 0)
			memcpy (data1, &header_buffer[sizeof(chunk_header)], len1);

		/* TODO Check the ECC */
		if(checkEcc)
			*ecc = verifyEcc();

        return (SUCCESS);
    }
	
	/* 
	 * Reads a chunk still present in the write cache
     */
	result_t readBuffer(uint8_t type, offsetptr_t bufptr, 
					void *data1, datalen_t len1, 
					void *data2, datalen_t *len2, 
					bool checkEcc, bool *ecc)
	{
		chunk_header *header;
		datalen_t temp;
		
		dbg(DBG_USR1, "Reading header chunk from page cache - o:%d\n", bufptr);

        /* First get the header of the chunk */
		header = (chunk_header *) &write_buffer[bufptr];

		/* Check if this is the chunk that we are expecting */
		if (header->type != type)
		{
			dbg(DBG_USR1, "Unexpected chunk type !\n");
			return (FAIL);
		}
		
		/* Now retrieve the chunk data */
		temp = header->data_len - len1;
		dbg(DBG_USR1, "Reading data chunk from write cache - o:%d header->data_len:%d len1:%d len:%d\n",
        			    bufptr, header->data_len, len1, temp);
		if ((temp > 0) && (data2 != NULL))
			memcpy (data2, &write_buffer[bufptr + sizeof(chunk_header) + len1], temp);

		if (len2 != NULL)
			*len2 = temp;

		/* Copy the header data */
		if (len1 > 0)
			memcpy (data1, &write_buffer[bufptr + sizeof(chunk_header)], len1);
		
		/* TODO Check the ECC */
		if(checkEcc)
			*ecc = verifyEcc();

		return (SUCCESS);
	}
	
	bool verifyEcc()
	{
		return (TRUE);
	}

    event result_t PageNAND.eraseDone(result_t result)
    {
        /* Check for 0xFF at byte 517 on the first 2 pages of the
           erase block */
        return (SUCCESS);
    }

#ifdef X
	event void Console.input(char *s)
	{
	}
#endif

}

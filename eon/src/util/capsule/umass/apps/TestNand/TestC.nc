/*
 * file:        TestC.nc
 * Test read / write of data to the NAND flash
 */
includes chunk_header;

module TestC {
    provides interface StdControl;
    
    uses {
		interface Leds;
		interface GenericFlash;
		interface Console;
        interface Timer;
    }
}

implementation {

	pageptr_t page = 1; offsetptr_t offset = 0;
	uint8_t buffer[256], buffer2[256];
	uint16_t pages, current;
	uint16_t value = 1;
    uint16_t something = 1;

   command result_t StdControl.init() 
   {
        pages = current = 0;
	
	    call Console.init();

        call Leds.init();
	
	    memset(buffer, 0, sizeof(buffer));
		
        return SUCCESS;
    }

    command result_t StdControl.start() 
    {    
        if (SUCCESS != call GenericFlash.init())
    	{
		    call Leds.redOn();
    		return (FAIL);
	    }

        TOSH_uwait(60000);
        TOSH_uwait(60000);
	    call Console.string("Ready\n");
        TOSH_uwait(3000);

        return SUCCESS;
    }
   
   void write()
   {
    	if (SUCCESS != call GenericFlash.write(page, offset, buffer, value))
	    {
    		call Leds.redOn();
	    	call Console.string("Failed to write data\n");
    	}
   }

   event result_t GenericFlash.writeDone(result_t res)
   {
   	    if (res == SUCCESS)
    		call Console.string("Write success\n");
	    else
        {
	    	call Console.string("Write failed\n");
            call Leds.redOn();
        }

    	return (SUCCESS);
   }

   void read()
   {
    	if (SUCCESS != call GenericFlash.read(page, offset, buffer2, value))
	    {
		    call Leds.redOn();
    		call Console.string("Failed to read data\n");	
	    }
    }

   event result_t GenericFlash.readDone(result_t res)
   {
       	int i;
	
   	    if (res == SUCCESS)
		    call Console.string("Read success\n");
    	else
        {
            call Leds.redOn();
		    call Console.string("Read failed\n");
        }

	    for(i=0; i < value; i++)
//		    if(buffer2[i] != buffer[i])
    		{
    			call Console.decimal(i);
	    		call Console.string(":  ");
		    	call Console.decimal(buffer2[i]);
    			call Console.string("\n");
                TOSH_uwait(5000);
	    	}

    	return (SUCCESS);
   }


   task void format()
   {
        if (SUCCESS != call GenericFlash.erase(page))
    	{
    		call Leds.redOn();
    		call Console.string("Failed to erase\n");
    	}
   }
   
    event result_t GenericFlash.eraseDone(result_t r)
    {
    	if (SUCCESS != r)
    	{
    		call Leds.redOn();
    		call Console.string("Erase failed\n");
    		return (FAIL);
    	}
    	else
    	{
            call Console.string("Format done\n");
    	}
    }
	
    event result_t GenericFlash.initDone(result_t r)
    {
    	if (SUCCESS != r)
    	{
    		call Leds.redOn();
    		return (FAIL);
    	}

    	pages = call GenericFlash.numPages();

    	//post format();

        return (SUCCESS);
    }
		
    command result_t StdControl.stop() 
    {
        return SUCCESS;
    }

    event result_t Timer.fired()
    {
        return (SUCCESS);
    }

	event void Console.input(char *s)
	{
        int size = 0; 

		if (s[0] == 'w')
			write();

		if (s[0] == 'r')
			read();

		if (s[0] == 'f')
			post format();

		if (s[1] == 'v')
            size = atoi(&s[2]);


        if (s[0] == 'p')
        {
            page = size;
            call Console.string("Page value=");
            call Console.decimal(page);
            call Console.string("\n");
		}
        if (s[0] == 'o')
	    {
            offset = size;
            call Console.string("Offset value=");
            call Console.decimal(offset);
            call Console.string("\n");
		}

        if (s[0] == 'v')
        {
            value = size;
            call Console.string("Operation size=");
            call Console.decimal(value);
            call Console.string("\n");
		}

		call Console.string("ok...\n");
	
	}

    event result_t GenericFlash.falReadDone(result_t res)
    {
        return (SUCCESS);
    }
}

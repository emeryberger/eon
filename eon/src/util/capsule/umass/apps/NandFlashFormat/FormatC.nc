/*
 * file:        FormatC.nc
 *
 */
includes PageNAND;

module FormatC {
    provides interface StdControl;
    
    uses {
		interface Leds;
		interface PageNAND;
    }
}

implementation {

	uint16_t pages, current;

	command result_t StdControl.init() 
	{
		pages = current = 0;
	
        return SUCCESS;
    }

    command result_t StdControl.start() 
	{    
		call Leds.init();

		pages = call PageNAND.numPages();

        if (SUCCESS != call PageNAND.init())
		{
			call Leds.redOn();
			return (FAIL);
		}
	
        return SUCCESS;
    }
   
   task void format()
   {
   		if (SUCCESS != call PageNAND.erase(current))
		{
			call Leds.redOn();
		}

		current += TOS_NAND_ERASE_SIZE;
   }
   
	event result_t PageNAND.eraseDone(result_t r)
    {
		if (SUCCESS != r)
		{
			call Leds.redOn();
	        dbg(DBG_USR1, "ERROR ! Failed to erase\n");
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
				call Leds.yellowOff();
				call Leds.greenOn();
			}
		}
	}
	
	event result_t PageNAND.initDone(result_t r)
    {
		if (SUCCESS != r)
		{
			call Leds.redOn();
	        dbg(DBG_USR1, "ERROR ! Failed to Initialize PageNAND\n");
			return (FAIL);
		}

		/* Start formatting the flash */
		call Leds.yellowOn();
		post format();

        return (SUCCESS);
    }
		
    command result_t StdControl.stop() 
	{
        return SUCCESS;
    }
}

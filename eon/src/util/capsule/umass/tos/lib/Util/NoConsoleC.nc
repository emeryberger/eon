/*
 * file:        NoConsoleC.nc
 * description: implementation of nonexistent serial console
 *
 * $Id: NoConsoleC.nc,v 1.1 2005/09/16 17:52:16 sorber Exp $
 */

module NoConsoleC {
    provides interface Console;
}



implementation {
    
    command result_t Console.init() {
		return SUCCESS;
    }

   	command result_t Console.string(char *str) 
   	{
		return SUCCESS;
	}
    
    
    command result_t Console.hex(uint32_t n) 
	{
		return SUCCESS;
    }

    command result_t Console.hexnl(int n) 
	{
		return SUCCESS;
	}
    
    command result_t Console.decimal(int32_t n) 
	{
		return SUCCESS;
    }

    command result_t Console.newline() {
	return SUCCESS;
	}

    default event void Console.input(char* s) {
    }

    
}

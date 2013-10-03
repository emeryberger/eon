/*
 * file:        TestC.nc
 * Test read / write of data to the NAND + NOR flash
 */
includes PageNAND;

module TestC {
    provides interface StdControl;
    
    uses {
        interface Leds;
        interface PageNAND;
        interface Console;
        interface PageEEPROM;
    }
}

implementation {

    nandpage_t page = 1, offset = 1;
    uint8_t buffer[512], buffer2[512];
    uint16_t pages, current, size;
    uint16_t value = 1;

   command result_t StdControl.init() 
   {
        pages = current = 0;
        value = 1;
    
        call Console.init();
    
        memset(buffer, 0, 512);
        
        return SUCCESS;
    }

    command result_t StdControl.start() 
    {    
        call Leds.init();

        if (SUCCESS != call PageNAND.init())
        {
            call Leds.redOn();
            return (FAIL);
        }

        call Console.string("Ready\n");

        return SUCCESS;
    }
   
   void write()
   {
    if (SUCCESS != call PageNAND.write(page, offset, buffer, size))
    {
        call Leds.redOn();
        call Console.string("Failed to write data\n");
    }
    else
        call Console.string("Writing data\n");
   }

   void nor_write()
   {
    if (SUCCESS != call PageEEPROM.write(page, offset, buffer, size))
    {
        call Leds.redOn();
        call Console.string("Failed to write data\n");
    }
    else
        call Console.string("Writing data\n");
   }


   event result_t PageNAND.writeDone(result_t res)
   {
       if (res == SUCCESS)
        call Console.string("Write success\n");
       else
        call Console.string("Write failed\n");

    return (SUCCESS);
   }

   event result_t PageEEPROM.writeDone(result_t res)
   {
       if (res)
       {
            if (SUCCESS != call PageEEPROM.sync(page))
            {
                call Leds.redOn();
                call Console.string("Failed to flush data\n");
            }
       }
       else
            call Console.string("Write failed\n");

    return (SUCCESS);
   }

   event result_t PageEEPROM.syncDone(result_t res)
   {
       if (res)
        call Console.string("Page write and Sync success\n");
       else
        call Console.string("Sync failed\n");

    return (SUCCESS);
   }

  event result_t PageEEPROM.flushDone(result_t res)
   {
       if (res)
            call Console.string("Flush success\n");
       else
            call Console.string("Flush failed\n");

    return (SUCCESS);
   }


   void read()
   {
        if (SUCCESS != call PageNAND.read(page, offset, buffer2, size))
        {
            call Leds.redOn();
            call Console.string("Failed to read data\n");    
        }
        else
            call Console.string("Reading data\n");
    }

   void nor_read()
   {
        if (SUCCESS != call PageEEPROM.read(page, offset, buffer2, size))
        {
            call Leds.redOn();
            call Console.string("Failed to read data\n");    
        }
        else
            call Console.string("Reading data\n");
    }


   event result_t PageNAND.readDone(result_t res)
   {
       int i;
    
       if (res == SUCCESS)
            call Console.string("Read success\n");
       else
            call Console.string("Read failed\n");

       for(i=0; i < size; i++)
            if(buffer2[i] != 0)
            {
                call Console.string("Data mismatch at position ");
                call Console.decimal(i);
                call Console.string("\n");
            }

        return (SUCCESS);
   }

   event result_t PageEEPROM.readDone(result_t res)
   {
       int i;
    
       if (res)
            call Console.string("Read success\n");
       else
            call Console.string("Read failed\n");

        for(i=0; i < size; i++)
            if(buffer2[i] != 0)
            {
                call Console.string("Data mismatch at position ");
                call Console.decimal(i);
                call Console.string("\n");
                TOSH_uwait(2000);
            }

        return (SUCCESS);
   }



   task void format()
   {
        if (SUCCESS != call PageNAND.erase(current))
        {
            call Leds.redOn();
            call Console.string("Failed to erase\n");
        }

        current += TOS_NAND_ERASE_SIZE;
   }

   task void nor_format()
   {
        if (SUCCESS != call PageEEPROM.erase(current, TOS_EEPROM_ERASE))
        {
            call Leds.redOn();
            call Console.string("Failed to erase\n");
        }

        current++;
   }

   
    event result_t PageNAND.eraseDone(result_t r)
    {
        if (SUCCESS != r)
        {
            call Leds.redOn();
            call Console.string("Erase failed\n");
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
                current = 0;
                call Console.string("Format done...\n");
            }
        }
    }
    
   event result_t PageEEPROM.eraseDone(result_t res)
   {
        if (!res)
        {
            call Leds.redOn();
            call Console.string("Erase failed\n");
            return (FAIL);
        }
        else
        {
            if (current < 2048)
            {
                post nor_format();
            }
            else
            {
                call Leds.yellowOff();
                call Leds.greenOn();
                current = 0;
                call Console.string("Format done...\n");
            }
        }

        return (SUCCESS);
   }

    
    event result_t PageNAND.initDone(result_t r)
    {
        if (SUCCESS != r)
        {
            call Leds.redOn();
            call Console.string("NAND flash Init failed...\n");
            return (FAIL);
        }

        pages = call PageNAND.numPages();

        return (SUCCESS);
    }
        
    command result_t StdControl.stop() 
    {
        return SUCCESS;
    }

    event void Console.input(char *s)
    {
        if ((s[0] == 'a') && (s[1] == 'w'))
        {
            call Console.string("Writing to NAND flash\n");
            write();
        }
        
        if ((s[0] == 'a') && (s[1] == 'r'))
        {
            call Console.string("Reading from NAND flash\n");
            read();
        }

        if ((s[0] == 'a') && (s[1] == 'f'))
        {
            call Console.string("Formatting NAND flash\n");
            post format();
        }

        if ((s[0] == 'r') && (s[1] == 'w'))
        {
            call Console.string("Writing to NOR flash\n");
            nor_write();
        }

        if ((s[0] == 'r') && (s[1] == 'r'))
        {
            call Console.string("Reading from NOR flash\n");
            nor_read();
        }

        if ((s[0] == 'r') && (s[1] == 'f'))
        {
            call Console.string("Formatting NOR flash\n");
            post nor_format();
        }

        if (s[1] == 'v')
        {
            value = atoi(&s[2]);
/*
            switch(value)
            {
                case 1:
                    value = 8;
                    call Console.string("Changed to 8\n");
                    break;
                case 8:
                    value = 32;
                    call Console.string("Changed to 32\n");
                    break;
                case 32:
                    value = 128;
                    call Console.string("Changed to 128\n");
                    break;
                case 128:
                    value = 256;
                    call Console.string("Changed to 256\n");
                    break;
                case 256:
                    value = 512;
                    call Console.string("Changed to 512\n");
                    break;
                case 512:
                    value = 1024;
                    call Console.string("Changed to 1024\n");
                    break;
                case 1024:
                    value = 2048;
                    call Console.string("Changed to 2048\n");
                    break;
                case 2048:
                    value = 1;
                    call Console.string("Changed to 1\n");
                    break;
            }
*/
        }
        
        if (s[0] == 'p')
        {
            page = value;
            call Console.string("Changed page value to ");
            call Console.decimal(page);
            call Console.string("\n");

        }

        if (s[0] == 'o')
        {
            offset = value;
            call Console.string("Changed offset value to ");
            call Console.decimal(offset);
            call Console.string("\n");
        }

        if (s[0] == 's')
        {
            size = value;
            call Console.string("Changed operation size value to ");
            call Console.decimal(size);
            call Console.string("\n");
        }


        call Console.string("ok...\n");
    
        call Leds.greenOn();
    }

   event result_t PageEEPROM.computeCrcDone(result_t success, uint16_t crc)
   {
        return (SUCCESS);
   }


}

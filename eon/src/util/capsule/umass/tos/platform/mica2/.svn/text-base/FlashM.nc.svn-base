/*
 * file:        FlashM.nc
 * description: Encapsulates the Mica2 NOR flash providing the 
 *              GenericFlash interface
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

includes common_header;

//#define DEBUG

module FlashM {
    provides interface GenericFlash[uint8_t id];

    uses {
        interface PageEEPROM;
#ifdef FLASH_DEBUG
        interface Console;
#endif
    }
}

implementation 
{
    pageptr_t Tpage;
    result_t r;
    uint8_t Tid;
	uint8_t *tmpptr;

    task void initDone()
    {
        signal GenericFlash.initDone[Tid](SUCCESS);
    }

    command result_t GenericFlash.init[uint8_t id]()
    {
        post initDone();
        Tid = id;

        return(SUCCESS);
    }

    command pageptr_t GenericFlash.numPages[uint8_t id]()
    {
        return(2048);
    }
    
    command result_t GenericFlash.write[uint8_t id](pageptr_t page, offsetptr_t offset,
                                        void *data, datalen_t len)
    {
        Tpage = page;
        Tid = id;
        return(call PageEEPROM.write(page, offset, data, len));
    }

    event result_t PageEEPROM.writeDone(result_t res)
    {
        if (res == SUCCESS)
        {
            if (SUCCESS != call PageEEPROM.flush(Tpage))
            {
                signal GenericFlash.writeDone[Tid](FAIL);
            }
        }
        else
        {
            signal GenericFlash.writeDone[Tid](FAIL);
        }

        return (SUCCESS);
    }

    event result_t PageEEPROM.flushDone(result_t res)
    {
        signal GenericFlash.writeDone[Tid](res);

        return (SUCCESS);
    }

    task void readSignal()
    {
        signal GenericFlash.falReadDone[Tid](SUCCESS);
    }

    enum{FAL_ONE, FAL_TWO, READ};
    uint8_t headerBuf[MAX_HEADERS_LEN];
    bool state;
    datalen_t Tdata_len, Tapp_len;
    offsetptr_t Toffset;
    void *Theader, *Tapp_buff, *Tdata_buff;
	
	
    command result_t GenericFlash.falRead[uint8_t id](pageptr_t page, offsetptr_t offset,
                                                      void *header, 
                                                      void *app_buff, datalen_t app_len, 
                                                      void *data_buff)
    {
        state = FAL_ONE;
        Theader = header; Tapp_buff = app_buff; Tdata_buff = data_buff;
        Tapp_len = app_len; Tpage = page; Toffset = offset;
        Tid = id;

#ifdef FLASH_DEBUG
        call Console.string("Read pg:");
        call Console.decimal(page);
        call Console.string(" off:");
        call Console.decimal(offset);
        call Console.string(" len:");
        call Console.decimal(sizeof(chunk_header) + app_len);
        call Console.string("\n");
		call Console.string("ida:");
		tmpptr = (uint8_t*)3305;
		call Console.decimal(*tmpptr);
		call Console.string("\n");
        TOSH_uwait(30000L);
#endif

        return (call PageEEPROM.read(page, offset, headerBuf, sizeof(chunk_header) + app_len));
    }

    task void readData()
    {
#ifdef FLASH_DEBUG
        call Console.string("Read pg:");
        call Console.decimal(Tpage);
        call Console.string(" off:");
        call Console.decimal(Toffset + sizeof(chunk_header) + Tapp_len);
        call Console.string(" len:");
        call Console.decimal(Tdata_len);
        call Console.string("\n");
        TOSH_uwait(30000L);
#endif

        if (SUCCESS != call PageEEPROM.read(Tpage, Toffset + sizeof(chunk_header) + Tapp_len, 
                                            Tdata_buff, Tdata_len))
        {
            signal GenericFlash.falReadDone[Tid](FAIL);
        }
        else
            state = FAL_TWO;
    }

    event result_t PageEEPROM.readDone(result_t res)
    {
#ifdef FLASH_DEBUG
		call Console.string("idb:");
		tmpptr = (uint8_t*)3305;
		call Console.decimal(*tmpptr);
		call Console.string("\n");
		TOSH_uwait(30000L);
#endif

        if (state == FAL_ONE)
        {
            if (res == SUCCESS)
            {
                chunk_header *h = (chunk_header *) Theader;
                memcpy(Theader, headerBuf, sizeof(chunk_header));

                if(Tapp_len > 0)
                {
#ifdef FLASH_DEBUG
                    call Console.string("Obj hdr len:");
                    call Console.decimal(Tapp_len);
                    call Console.string("\n");
                    TOSH_uwait(30000L);
#endif

                    memcpy(Tapp_buff, &headerBuf[sizeof(chunk_header)], Tapp_len);
                }

#ifdef FLASH_DEBUG
                call Console.string("Chnk ln:");
                call Console.decimal(h->data_len);
                call Console.string("\n");
                TOSH_uwait(30000L);
#endif

                /* Now retrieve the chunk data */
                Tdata_len = h->data_len - Tapp_len;

#ifdef FLASH_DEBUG
                call Console.string("Data len to read:");
                call Console.decimal(Tdata_len);
                call Console.string("\n");
                TOSH_uwait(30000L);
#endif

                if (Tdata_len > 0)
                    post readData();
                else if (Tdata_len == 0)
					signal GenericFlash.falReadDone[Tid](SUCCESS);
				else if (Tdata_len < 0)
					signal GenericFlash.falReadDone[Tid](FAIL);
            }
            else
                signal GenericFlash.falReadDone[Tid](FAIL);
        }
        else if (state == FAL_TWO)
        {
            /* Just finished reading the data also */
            signal GenericFlash.falReadDone[Tid](res);
        }
        else if (state == READ)
        {
            /* Just finished reading the data also */
            signal GenericFlash.readDone[Tid](res);
        }

        return (SUCCESS);
    }

    command result_t GenericFlash.read[uint8_t id](pageptr_t page, offsetptr_t offset,
                                       void *app_buff, datalen_t app_len)
    {
        state = READ;
        Tid = id;

#ifdef FLASH_DEBUG
        call Console.string("Read pg:");
        call Console.decimal(page);
        call Console.string(" off:");
        call Console.decimal(offset);
        call Console.string(" hdr len:");
        call Console.decimal(app_len);
        call Console.string("\n");
        TOSH_uwait(30000L);
#endif

        return(call PageEEPROM.read(page, offset, app_buff, app_len));
    }

    command result_t GenericFlash.erase[uint8_t id](pageptr_t page)
    {
#ifdef FLASH_DEBUG
        call Console.string("Erase pg:");
        call Console.decimal(page);
        call Console.string("\n");
        TOSH_uwait(30000L);
#endif
        Tid = id;

        return(call PageEEPROM.erase(page, TOS_EEPROM_ERASE));
    }

    event result_t PageEEPROM.eraseDone(result_t res)
    {
        signal GenericFlash.eraseDone[Tid](res);

        return (SUCCESS);
    }

    event result_t PageEEPROM.syncDone(result_t result)
    {
        return (SUCCESS);
    }

    event result_t PageEEPROM.computeCrcDone(result_t result, uint16_t crc)
    {
        return (SUCCESS);
    }

    default event result_t GenericFlash.initDone[uint8_t id](result_t result)
    {
        return (SUCCESS);
    }

    default event result_t GenericFlash.writeDone[uint8_t id](result_t result)
    {
        return (SUCCESS);
    }

    default event result_t GenericFlash.readDone[uint8_t id](result_t result)
    {
        return (SUCCESS);
    }

    default event result_t GenericFlash.eraseDone[uint8_t id](result_t result)
    {
        return (SUCCESS);
    }

    default event result_t GenericFlash.falReadDone[uint8_t id](result_t result)
    {
        return (SUCCESS);
    }

#ifdef FLASH_DEBUG
    event void Console.input(char *s)
    {}
#endif
}

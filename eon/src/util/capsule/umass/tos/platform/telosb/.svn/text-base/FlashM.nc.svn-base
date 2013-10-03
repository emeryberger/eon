/*
 * file:        FlashM.nc
 * description: Component that abstracts the NOR flash
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

module FlashM {
    provides interface GenericFlash[uint8_t id];

    uses {
        interface HALSTM25P;
    }
}

implementation 
{
    uint8_t Tid;

    task void initDone()
    {
        signal GenericFlash.initDone[Tid](SUCCESS);
    }

    command result_t GenericFlash.init[uint8_t id]()
    {
        Tid = id;
        post initDone();

        return (SUCCESS);
    }

    command pageptr_t GenericFlash.numPages[uint8_t id]()
    {
        return(4096);
    }
    
    command result_t GenericFlash.write[uint8_t id](pageptr_t page, offsetptr_t offset,
                                        void *data, offsetptr_t len)
    {
        Tid = id;
        return(call HALSTM25P.pageProgram((page * 256) + offset, data, len));
    }

    event void HALSTM25P.pageProgramDone()
    {
        signal GenericFlash.writeDone[Tid](SUCCESS);
    }

    task void readSignal()
    {
        signal GenericFlash.readDone[Tid](SUCCESS);
    }

    task void falReadSignal()
    {
        signal GenericFlash.falReadDone[Tid](SUCCESS);
    }


    uint8_t headerBuf[MAX_HEADERS_LEN];
    command result_t GenericFlash.falRead[uint8_t id](pageptr_t page, offsetptr_t offset,
                                          void *header, 
                                          void *app_buff, offsetptr_t app_len, 
                                          void *data_buff)
    {
        uint32_t accessLocation = (page * 256) + offset;

        Tid = id;

        if (SUCCESS != call HALSTM25P.read(accessLocation, headerBuf, 
                                                  sizeof(chunk_header) + app_len))
        {
            return (FAIL);
        }
        else
        {
            chunk_header *h;

            memcpy(header, headerBuf, sizeof(chunk_header));
            h = (chunk_header *) &header;

            if(app_len > 0)
            {
                memcpy(app_buff, &headerBuf[sizeof(chunk_header)], app_len);
            }

            /* Now retrieve the chunk data */
            if ( (h->data_len - app_len) && 
                 (SUCCESS != call HALSTM25P.read(accessLocation + sizeof(chunk_header) + app_len, 
                                                 data_buff, h->data_len - app_len)) )
            {
                return (FAIL);
            }
            else
            {
                post falReadSignal();
            }
        }

        return (SUCCESS);
    }

    command result_t GenericFlash.read[uint8_t id](pageptr_t page, offsetptr_t offset,
                                                   void *buff, offsetptr_t app_len)
    {
        uint32_t accessLocation = (page * 256) + offset;

        Tid = id;

        if (SUCCESS != call HALSTM25P.read(accessLocation, buff, app_len))
        {
            return (FAIL);
        }
        else
        {
            post readSignal();
        }

        return (SUCCESS);
    }


    command result_t GenericFlash.erase[uint8_t id](pageptr_t page)
    {
        Tid = id;
        return(call HALSTM25P.sectorErase(page * 256));
    }

    event void HALSTM25P.sectorEraseDone()
    {
        signal GenericFlash.eraseDone[Tid](SUCCESS);
    }

    event void HALSTM25P.bulkEraseDone()
    {}

    event void HALSTM25P.writeSRDone()
    {}

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

#ifdef DEBUG
    event void Console.input(char *s)
    {}
#endif
}

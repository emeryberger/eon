/*
 * file:        NANDFlashM.nc
 * description: Abstracts the NAND flash, providing the GenericFlash interface
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

module NANDFlashM {
    provides interface GenericFlash;

    uses {
        interface PageNAND;
    }
}

implementation 
{
    command result_t GenericFlash.init()
    {
        return(call PageNAND.init());
    }

    event result_t PageNAND.initDone(result_t r)
    {
        signal GenericFlash.initDone(r);
        return(SUCCESS);
    }

    command pageptr_t GenericFlash.numPages()
    {
        return(call PageNAND.numPages());
    }
    
    command result_t GenericFlash.write(pageptr_t page, offsetptr_t offset,
                                        void *data, datalen_t len)
    {
        return(call PageNAND.write(page, offset, data, len));
    }

    event result_t PageNAND.writeDone(result_t r)
    {
        signal GenericFlash.writeDone(r);
        return(SUCCESS);
    }

    command result_t GenericFlash.falRead(pageptr_t page, offsetptr_t offset,
                                          void *header, 
                                          void *app_buff, datalen_t app_len, 
                                          void *data_buff)
    {
        return(call PageNAND.falRead(page, offset, header, app_buff, app_len, data_buff));
    }

    event result_t PageNAND.falReadDone(result_t r)
    {
        signal GenericFlash.falReadDone(r);
        return(SUCCESS);
    }

    command result_t GenericFlash.read(pageptr_t page, offsetptr_t offset,
                                       void *app_buff, datalen_t app_len)
    {
        return(call PageNAND.read(page, offset, app_buff, app_len));
    }

    event result_t PageNAND.readDone(result_t r)
    {
        signal GenericFlash.readDone(r);
        return(SUCCESS);
    }

    command result_t GenericFlash.erase(pageptr_t page)
    {
        return(call PageNAND.erase(page));
    }

    event result_t PageNAND.eraseDone(result_t result)
    {
        signal GenericFlash.eraseDone(result);
        return(SUCCESS);
    }
}

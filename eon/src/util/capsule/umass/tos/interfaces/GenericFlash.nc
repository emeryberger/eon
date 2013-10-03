/*
 * file:        GenericFlash.nc
 * description: This provides the interface that any flash device should 
 *              implement in order to be able to be used by Capsule
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

interface GenericFlash 
{
    command result_t init();
    event result_t initDone(result_t r);

    command pageptr_t numPages();
    
    command result_t write(pageptr_t page, offsetptr_t offset,
                           void *data, datalen_t len);
    event result_t writeDone(result_t r);

    command result_t falRead(pageptr_t page, offsetptr_t offset,
                             void *header, 
                             void *app_buff, datalen_t app_len, 
                             void *data_buff);
    event result_t falReadDone(result_t r);

    command result_t read(pageptr_t page, offsetptr_t offset,
                          void *app_buff, datalen_t app_len);
    event result_t readDone(result_t r);

    command result_t erase(pageptr_t page);
    event result_t eraseDone(result_t result);
}

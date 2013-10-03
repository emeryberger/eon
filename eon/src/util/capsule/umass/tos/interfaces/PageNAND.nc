/*
 * file:        PageNAND.nc
 * description: interface for accessing UMass NAND flash board
 *
 * author:      Peter Desnoyers, UMass Computer Science Dept.
 * $Id: PageNAND.nc,v 1.3 2005/10/13 04:56:25 pjd Exp $
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

includes PageNAND;
interface PageNAND {
    command nandpage_t numPages();

    command result_t init();
    event result_t initDone(result_t r);
    
    command result_t write(nandpage_t page, nandoffset_t offset,
                           void *data, nandoffset_t len);
    event result_t writeDone(result_t r);

    command result_t read(nandpage_t page, nandoffset_t offset,
                          void *buffer, nandoffset_t len);
    event result_t readDone(result_t r);

    command result_t falRead(nandpage_t page, nandoffset_t offset,
                          void *header, void *app_buff, nandoffset_t len, void *data_buff);
    event result_t falReadDone(result_t r);


    command result_t erase(nandpage_t page);
    event result_t eraseDone(result_t result);

    command result_t generateECC(void *data, nandoffset_t len, uint8_t *ecc);
    command result_t checkECC(void *data, nandoffset_t len, uint8_t *ecc);
    command result_t id(uint8_t *id);
}

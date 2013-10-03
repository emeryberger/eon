/*
 * file:        ChunkStorage.nc
 * description: provides the FAL interface
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

/*
 * file:        ChunkStorage.nc
 *
 */
includes chunk_header;
includes PageNAND;

interface ChunkStorage {
    /* Initialize NAND flash memory */
    
    /* 
     * Writes a record into Flash
     */
    command result_t write(void *data1, datalen_t len1,
                           void *data2, datalen_t len2, 
                           bool computeEcc, flashptr_t *save_ptr);
    event void writeDone(result_t res);

    /* 
     * Reads a page from flash
     */
    command result_t read(flashptr_t *ptr, 
                          void *data1, datalen_t len1, 
                          void *data2, datalen_t *len2, 
                          bool checkEcc, bool *ecc);
    event void readDone(result_t res);
    
    /* 
     * Flush current write buffer to flash
     */
    command result_t flush();
    event void flushDone(result_t res);

    command uint8_t percentagefull();

    /* NOTE : There is no erase supported on this interface */
}

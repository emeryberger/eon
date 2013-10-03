/*
 * file:        Array.nc
 * description: Array interface
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
 * The array storage object
 * Note: this storage object is used internally by the index
 */
includes app_header;

/* 
 * Note this array structure does not span multiple blocks - this assumes that the
 * entire array fits in one chunk.
 */
interface Array 
{
    command result_t load(flashptr_t *head_, bool first_write, bool ecc);

    event void loadDone(result_t res);

    command result_t save(flashptr_t *save_ptr);

    event void saveDone(result_t res);

    /* Set an array index */
    /* Note that save_ptr returns a pointer to the object only (no app level headers) */
    command result_t set(unsigned int arr_index, void *data, datalen_t len, 
                         flashptr_t *save_ptr);

    event void setDone(result_t res);

    /* Get an object from the flash */
    command result_t get(unsigned int arr_index, void *data, datalen_t *len);

    event void getDone(result_t res);
	
	command result_t delete(unsigned int arr_index);
}

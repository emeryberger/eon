/*
 * file:        Queue.nc
 * description: Queue interface
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
 * The queue storage object
 */
includes app_header;

interface Queue 
{
    command result_t init(bool ecc);

    /* Push an object at the end */
    command result_t enqueue(void *data, datalen_t len, flashptr_t *save_ptr);

    event void enqueueDone(result_t res);

    /* Remove first object */
    command result_t dequeue(void *data, datalen_t *len);

    event void dequeueDone(result_t res);

    /* Retrieve front-most object, but do not remove it from the queue */
    command result_t front(void *data, datalen_t *len);

    event void frontDone(result_t res);
}

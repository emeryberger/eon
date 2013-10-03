/*
 * file:        RootDirectory.nc
 * description: Root Directory interface
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
 * The RootDirectory object
 */
includes app_header;

interface RootDirectory
{
    command result_t init();

    event void initDone(result_t result);

    command result_t setRoot(uint8_t id, flashptr_t *save);

    event void setRootDone(result_t result);

    command result_t getRoot(uint8_t id, flashptr_t *ptr);

    event void getRootDone(result_t res);

    /* 
       This event is triggered when the root dir discovers a crash has
       occurred -> it restores the state of the checkpoint component. 
       (The checkpoint component in turn is supposed to restore the state
        of the storage objects linked to it...)
     */
    event void restore(flashptr_t *restore_ptr);
}

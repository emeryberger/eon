/*
 * file:        Serialize.nc
 * description: Serialize interface that helps save object state
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
 * The serialization interface used to save / recover objects
 */
includes app_header;

interface Serialize 
{
	command result_t checkpoint(uint8_t *buffer, datalen_t *len);

	command result_t restore(uint8_t *buffer, datalen_t *len);
}

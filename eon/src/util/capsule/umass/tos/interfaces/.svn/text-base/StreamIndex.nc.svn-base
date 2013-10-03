/*
 * file:        StreamIndex.nc
 * description: Stream-Index interface
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
 * The stream storage object
 */
includes app_header;
includes sizes;

interface StreamIndex
{
    command result_t init(bool ecc);

    event void initDone(result_t res);

    /* Write more data to the stream */
    command result_t add(void *data, datalen_t len);

    event void addDone(result_t res);

    /* Tag the chunk just stored */
    command result_t setTag();

    event void setTagDone(result_t res, uint16_t tag);

    /* Start traversal at most recently written chunk */
    command result_t start_traversal(flashptr_t *start_ptr);

    /* Get previous stream chunk */
    command result_t next(void *data, datalen_t *len);

    event void nextDone(result_t res);

    /* Get data associated with the tag */
    command result_t getTag(uint16_t tag, void *data, datalen_t *len);

    event void getTagDone(result_t res);
}

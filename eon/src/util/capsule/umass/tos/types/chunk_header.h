/*
 * file:        chunk_header.h
 * description: Chunk header stamped on every chunk written by FAL
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
 * Header present for every chunk on the flash
 */

#ifndef CHUNK_HEADER_H
#define CHUNK_HEADER_H

#include "common_header.h"

/*
 * The structure of one write buffer looks like:
 * -------------------------------------------------
 * | chunk 1 | chunk 2 | ... |
 * -------------------------------------------------
 */

struct chunk_header
{
    datalen_t data_len;
    uint8_t ecc;
};
typedef struct chunk_header chunk_header;

#endif

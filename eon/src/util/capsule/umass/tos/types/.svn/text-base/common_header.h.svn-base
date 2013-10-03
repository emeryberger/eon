/*
 * file:        common_header.h
 * description: common headers
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
 * Common declarations
 */

#ifndef COMMON_HEADER_H
#define COMMON_HEADER_H

#include "platform.h"

struct flashptr_t
{
	pageptr_t page;
	offsetptr_t offset;
};

typedef struct flashptr_t flashptr_t;

/*
 * The following is just a temp buffer that is used to read the headers
 * - it should be >= size of the chunk header + the max {app_headers}
 */
#define MAX_HEADERS_LEN 10

/*
 * The following is just a temp buffer used to hold the memory state of 
 * each storage object for checkpointing / restore purposes. Needs to be
 * set manually unfortunately because we dont know how much state each
 * storage object needs.
 */
#define MAX_STATE 32



#endif

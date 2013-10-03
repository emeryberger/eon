/*
 * file:        app_header.h
 * description: Application level headers used by Capsule
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
 * Application level headers used by the different storage objects
 */

#ifndef APP_HEADER_H
#define APP_HEADER_H

#include "common_header.h"

// Stack header
struct stack_header
{
    flashptr_t prev_ptr;
};
typedef struct stack_header stack_header;


// Queue header
struct queue_header
{
    flashptr_t prev_ptr;
};
typedef struct queue_header queue_header;


// Stream header
struct stream_header
{
    flashptr_t prev_ptr;
};
typedef struct stream_header stream_header;


// Array header
//
struct array_header
{
    flashptr_t ptr[ARRAY_ELEMENTS_PER_CHUNK];
};
typedef struct array_header array_header;


// Index header
//
struct index_header
{
    flashptr_t ptr[INDEX_ELEMENTS_PER_CHUNK];
};
typedef struct index_header index_header;


// Transaction data header
// - Stores memory state for various storage objects
//
struct checkpoint_header
{
    uint8_t state_buffer[MAX_STATE];
};
typedef struct checkpoint_header checkpoint_header;


// Root data header
// - This data is stored in the root area of the flash
//
struct root_header
{
    uint8_t crc;
    uint16_t timestamp;
    flashptr_t root[NUM_CHECKPOINTS];
};
typedef struct root_header root_header;


bool cmpflashptr(flashptr_t *ptr1, flashptr_t *ptr2)
{
    if ( (ptr1->page == ptr2->page) && (ptr1->offset == ptr2->offset))
        return (TRUE);
    else
        return (FALSE);
}

#endif

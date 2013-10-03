/*
 * file:        StackC.nc
 * description: Stack implementation
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
 * Stack implementation
 */

includes app_header;
includes common_header;


module StackC {
    provides interface Stack[uint8_t id];
    provides interface Serialize[uint8_t id];
    provides interface RootPtrAccess[uint8_t id];
    
    uses {
        interface ChunkStorage;
        interface Leds;
        interface Console;
    }
}

implementation 
{
    enum {POP, TOP, PUSH};

    flashptr_t *Tsave_ptr;
    uint8_t stackif_id;
    uint8_t state;
    result_t Tresult;
    struct _data
    {
        flashptr_t head;
        bool doEcc;
    }local[NUM_STACKS];
    stack_header header;

#ifdef STACK_DEBUG
    datalen_t *Tlen;
#endif

    command result_t Stack.init[uint8_t id](bool ecc)
    {
        local[id].doEcc = ecc;
        local[id].head.page = ~0;
        local[id].head.offset = ~0;
        
        return (SUCCESS);
    }

    /***********
     * This adds an element to the top of the stack
     ***********/
    command result_t Stack.push[uint8_t id](void *data, datalen_t len, 
                                            flashptr_t *save_ptr)
    {
        header.prev_ptr.page = local[id].head.page;
        header.prev_ptr.offset = local[id].head.offset;

        if(SUCCESS != call ChunkStorage.write(&header, sizeof(stack_header), 
                                              data, len, 
                                              local[id].doEcc, &local[id].head))
        {
#ifdef STACK_DEBUG
            call Console.string("ERROR ! Unable to write stack push to flash\n");
            TOSH_uwait(30000L);
#endif
            call Leds.redOn();
            return (FAIL);
        }
        else
        {
            Tsave_ptr = save_ptr;
            stackif_id = id;
            state = PUSH;
            return (SUCCESS);
        }
    }

    task void stackRespond()
    {
        switch(state)
        {
            case(POP):
                signal Stack.popDone[stackif_id](Tresult);
                break;
            case(TOP):
                signal Stack.topDone[stackif_id](Tresult);
                break;
            case(PUSH):
                signal Stack.pushDone[stackif_id](Tresult);
        }
    }
        
    event void ChunkStorage.writeDone(result_t res)
    {
        if ((res == SUCCESS) && (Tsave_ptr != NULL))
		{
            memcpy (Tsave_ptr, &local[stackif_id].head, sizeof(flashptr_t));
		}
        Tresult = res;
#ifdef STACK_DEBUG
            call Console.string("1Stack header - page:");
            call Console.decimal(local[stackif_id].head.page);
            TOSH_uwait(30000L);
            call Console.string(" offset:");
            call Console.decimal(local[stackif_id].head.offset);
            TOSH_uwait(30000L);
            call Console.string(" id:");
            call Console.decimal(stackif_id);       
            call Console.string("\n");
            TOSH_uwait(30000L);
#endif

        post stackRespond();
    }

    /***********
     * This removes the item at the top of the stack
     ***********/
    command result_t Stack.pop[uint8_t id](void *data, datalen_t *len)
    {
        uint8_t ecc;
    
        if ((local[id].head.page == 0xFFFF) && (local[id].head.offset == 0xFF))
        {
#ifdef STACK_DEBUG
            call Console.string("Nothing more in the stack\n");
            TOSH_uwait(30000L);
#endif
            return (FAIL);
        }
    
#ifdef STACK_DEBUG
        call Console.string("Calling ChunkStorage.read in Stack.pop\n");
        call Console.string("2Stack header - page:");
        call Console.decimal(local[id].head.page);
        call Console.string(" offset:");
        call Console.decimal(local[id].head.offset);
        call Console.string(" id:");
        call Console.decimal(id);

        call Console.string("\n");
        TOSH_uwait(30000L);
#endif
        if (SUCCESS != call ChunkStorage.read(&local[id].head, 
                                              &local[id].head, sizeof(stack_header),
                                              data, len, FALSE, &ecc))
        {
#ifdef STACK_DEBUG
            call Console.string("ERROR ! Read failed while tryin to pop data\n");
            TOSH_uwait(30000L);
#endif
            call Leds.redOn();
            return (FAIL);
        }
        else
        {
            stackif_id = id;
            state = POP;
#ifdef STACK_DEBUG
            Tlen = len;
#endif
            return (SUCCESS);
        }
    }


    event void ChunkStorage.readDone(result_t res)
    {
        Tresult = res;

#ifdef STACK_DEBUG
        call Console.string("res: ");
        call Console.decimal(res);
		call Console.string("\nPopped data length:");
        call Console.decimal(*Tlen);
        call Console.string("\n");
        TOSH_uwait(30000L);
#endif

        post stackRespond();
    }

    /***********
     * This retrieves the element at the top of the stack without removing it
     ***********/
    command result_t Stack.top[uint8_t id](void *data, datalen_t *len)
    {
        uint8_t ecc;
    
        if (SUCCESS != call ChunkStorage.read(&local[id].head, 
                                              &header, sizeof(stack_header),
                                              data, len, FALSE, &ecc))
        {
#ifdef STACK_DEBUG
            call Console.string("ERROR ! Read failed while tryin to top data\n");
#endif
            call Leds.redOn();
            return (FAIL);
        }
        else
        {
            stackif_id = id;
            state = TOP;
            return (SUCCESS);
        }
    }

    /***********
     * This gets data for checkpoint / restore 
     ***********/
    command result_t Serialize.checkpoint[uint8_t id](uint8_t *buffer, datalen_t *len)
    {
#ifdef CHECKPOINT_DEBUG
        call Console.string("Checkpointing Stack, len=");
        call Console.decimal(*len);
        call Console.string(" pg=");
        call Console.decimal(local[id].head.page);
        call Console.string(" off=");
        call Console.decimal(local[id].head.offset);
        call Console.string("\n");
        TOSH_uwait(30000L);
#endif

        memcpy (&buffer[*len], &local[id].head, sizeof(flashptr_t));
        *len += sizeof(flashptr_t);
        
        return (SUCCESS);
    }

    command result_t Serialize.restore[uint8_t id](uint8_t *buffer, datalen_t *len)
    {
        memcpy (&local[id].head, &buffer[*len], sizeof(flashptr_t));
        *len += sizeof(flashptr_t);

#ifdef CHECKPOINT_DEBUG
        call Console.string("Restored Stack, id=");
        call Console.decimal(id);
        call Console.string(" pg=");
        call Console.decimal(local[id].head.page);
        call Console.string(" off=");
        call Console.decimal(local[id].head.offset);
        call Console.string("\n");
        TOSH_uwait(30000L);
#endif
        
        return (SUCCESS);
    }

    command void RootPtrAccess.setPtr[uint8_t id](flashptr_t *setPtr)
    {
#ifdef CHECKPOINT_DEBUG
		call Console.string("id = ");
        call Console.decimal(id);
		call Console.string("\nSetting stack root ptr, pg=");
        call Console.decimal(setPtr->page);
        call Console.string(" off=");
        call Console.decimal(setPtr->offset);
        call Console.string("\n");
        TOSH_uwait(30000L);
#endif

        memcpy(&local[id].head, setPtr, sizeof(flashptr_t));
/*        
#ifdef CHECKPOINT_DEBUG
		call Console.string("\nlocal[id].head.page ");
		call Console.decimal(local[id].head.page);
		call Console.string(" local[id].head.offset ");
		call Console.decimal(local[id].head.offset);
		call Console.string("\n");
		TOSH_uwait(30000L);
#endif
*/
    }

    command void RootPtrAccess.getPtr[uint8_t id](flashptr_t *getPtr)
    {
        memcpy(getPtr, &local[id].head, sizeof(flashptr_t));

#ifdef CHECKPOINT_DEBUG
		call Console.string("Got stack root ptr, id=");
		call Console.decimal(id);
        call Console.string(", pg=");
        call Console.decimal(local[id].head.page);
        call Console.string(" off=");
        call Console.decimal(local[id].head.offset);
        call Console.string("\n");
        TOSH_uwait(30000L);
#endif
    }

    event void ChunkStorage.flushDone(result_t res)
    {}

    event void Console.input(char *s)
    {
    }

    default event void Stack.pushDone[uint8_t id](result_t res)
    {}

    default event void Stack.popDone[uint8_t id](result_t res)
    {}

    default event void Stack.topDone[uint8_t id](result_t res)
    {}

}

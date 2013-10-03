/*
 * file:        QueueC.nc
 * description: Queue implementation
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
 * Queue implementation
 */

includes app_header;
includes common_header;


module QueueC {
    provides interface Queue[uint8_t id];
    provides interface Serialize[uint8_t id];
    
    uses {
        interface ChunkStorage;
        interface Leds;
        interface Console;
    }
}

implementation 
{
    enum {FRONTING, DEQUEUING, DEQUEUING2};
    uint8_t queueif_id;
    flashptr_t *Tsave_ptr;
    flashptr_t temp;
    uint8_t state;
    queue_header header;
    struct _data
    {
        flashptr_t head;
        flashptr_t tail;
        bool doEcc;
        bool isEmpty;
    }local[NUM_QUEUES];
    result_t result;

    /*
     * Queue structure:
     * 
     * head -> a <- b <- c <- d <- tail
     * addition: head -> a <- b <- c <- d <- e <- tail (e.prev = tail)
     * deletion: head -> b <- c <- d <- tail (traverse queue from tail until b.prev == head)
     */

    task void frontRespond()
    {
        signal Queue.frontDone[queueif_id](result);
    }

    task void dequeueRespond()
    {
        signal Queue.dequeueDone[queueif_id](result);
    }

    task void enqueueRespond()
    {
        signal Queue.enqueueDone[queueif_id](result);
    }


    void dump_ptr(uint8_t id)
    {
#ifdef QUEUE_DEBUG
        call Console.string("Queue ptrs... head page:");
        call Console.decimal(local[id].head.page);
        call Console.string(" off:");
        call Console.decimal(local[id].head.offset);
        call Console.string(" tail page:");
        call Console.decimal(local[id].tail.page);
        call Console.string(" off:");
        call Console.decimal(local[id].tail.offset);
        call Console.string("\n");
        TOSH_uwait(5000);
#endif
    }

    command result_t Queue.init[uint8_t id](bool ecc)
    {
        local[id].doEcc = ecc;
        local[id].isEmpty = TRUE;

        return (SUCCESS);
    }

    /***********
     * This adds data to the front of the queue 
     ***********/
    command result_t Queue.enqueue[uint8_t id](void *data, datalen_t len, 
                                               flashptr_t *save_ptr)
    {
        header.prev_ptr.page = local[id].tail.page;
        header.prev_ptr.offset = local[id].tail.offset;

        if(SUCCESS != call ChunkStorage.write(&header, sizeof(queue_header), 
                                              data, len, 
                                              local[id].doEcc, &local[id].tail))
        {
#ifdef QUEUE_DEBUG
            call Console.string("ERROR ! chunk write failed while enqueuing\n");
#endif
            return FAIL;
        }
        else
        {
            queueif_id = id;
            Tsave_ptr = save_ptr;
                     
            return (SUCCESS);
        }
    }

    event void ChunkStorage.writeDone(result_t res)
    {
#ifdef QUEUE_DEBUG
        call Console.string("Queue: write returned\n");
#endif
        if (res == SUCCESS)
        {
            if (local[queueif_id].isEmpty == TRUE)
            {
                memcpy (&local[queueif_id].head, &local[queueif_id].tail, sizeof(flashptr_t));
                local[queueif_id].isEmpty = FALSE;
            }

            if (Tsave_ptr != NULL)
                memcpy (Tsave_ptr, &local[queueif_id].tail, sizeof(flashptr_t));
        }

#ifdef QUEUE_DEBUG
        dump_ptr(queueif_id);
#endif

        result = res;
        post enqueueRespond();
    }

    /***********
     * This removes an item from the back of the queue
     ***********/
    command result_t Queue.dequeue[uint8_t id](void *data, datalen_t *len)
    {
        uint8_t ecc;

        // Get the data
        if (local[id].isEmpty == TRUE)
        {
#ifdef QUEUE_DEBUG
            call Console.string("Nothing in the queue\n");
#endif
            return (FAIL);
        }

        if (SUCCESS != call ChunkStorage.read(&local[id].head,
                                              &header, sizeof(queue_header), data, 
                                              len, local[id].doEcc, &ecc))
        {
#ifdef QUEUE_DEBUG
            call Console.string("ERROR ! Dequeue command failed on queue\n");
#endif
            return (FAIL);
        }
        else
        {
            // Now move the pointers around
            queueif_id = id;
            state = DEQUEUING;

            return (SUCCESS);
        }
    }

    task void dequeue_cont()
    {   
        uint8_t ecc;

#ifdef QUEUE_DEBUG
        call Console.string("Dequeuing temp page:");
        call Console.decimal(temp.page);
        call Console.string(" off:");
        call Console.decimal(temp.offset);
        call Console.string("\n");
#endif

        if (SUCCESS != call ChunkStorage.read(&temp, 
                                              &header, sizeof(queue_header),
                                              NULL, NULL, FALSE, &ecc))
        {
#ifdef QUEUE_DEBUG
            call Console.string("ERROR ! read command failed while dequeuing\n");
#endif
            result = FAIL;
            post dequeueRespond();
        }
    }

    /***********
     * This retrieves the data at the front of the queue without removing it
     ***********/
    command result_t Queue.front[uint8_t id](void *data, datalen_t *len)
    {
        uint8_t ecc;
    
        if (local[id].isEmpty == TRUE)
        {
#ifdef QUEUE_DEBUG
            call Console.string("ERROR ! No data in the queue\n");
#endif
            return (FAIL);
        }
    
        if (SUCCESS != call ChunkStorage.read(&local[id].head, 
                                              &header, sizeof(queue_header),
                                              data, len, local[id].doEcc, &ecc))
        {
#ifdef QUEUE_DEBUG
            call Console.string("ERROR ! error reading chunk data in queue.front\n");
#endif       
            return (FAIL);
        }
        else
        {
            queueif_id = id;
            state = FRONTING;
            return (SUCCESS);
        }
    }

    /*
     * This event is triggered when reading from flash.
     * This is triggered when dequeuing or getting data from front of queue.
     */
    event void ChunkStorage.readDone(result_t res)
    {
#ifdef QUEUE_DEBUG
        dump_ptr(queueif_id);
#endif
    
        if (state == FRONTING)
        {
            result = res;
            post frontRespond();
        }
        else if (state == DEQUEUING)
        {
            if (res != SUCCESS)
            {
                result = FAIL;
                post dequeueRespond();
            }

            /* Now traverse from the tail to the head and set new head */   
            if (cmpflashptr(&local[queueif_id].tail, &local[queueif_id].head) == TRUE)
            {
                // Special case when there is only one node in queue
                local[queueif_id].isEmpty = TRUE;
                result = res;
                post dequeueRespond();
            }
            else
            {
                // > 1 nodes in the queue
                memcpy (&temp, &local[queueif_id].tail, sizeof(flashptr_t));
                
                state = DEQUEUING2;

                post dequeue_cont();
            }
        }
        else if (state == DEQUEUING2)
        {
            if (res != SUCCESS)
            {
                result = FAIL;
                post dequeueRespond();
            }

            //      head |    | tail
            // Check if  a <- b
            //                ^ temp
            if (cmpflashptr(&header.prev_ptr, &local[queueif_id].head) == TRUE)
            {
                // Move head ptr forward
                memcpy (&local[queueif_id].head, &temp, sizeof(flashptr_t));
                
                result = res;
                post dequeueRespond();
            }
            else
            {
                // Move temp ptr back by one
                // continue to dequeue
                memcpy (&temp, &header.prev_ptr, sizeof(flashptr_t));
                
                post dequeue_cont();
            }
        }            
    }

    event void ChunkStorage.flushDone(result_t res)
    {}

    /***********
     * This performs a checkpoint / restore
     ***********/
    command result_t Serialize.checkpoint[uint8_t id](uint8_t *buffer, datalen_t *len)
    {
#ifdef CHECKPOINT_DEBUG
        call Console.string("Checkpointing Queue, id=");
        call Console.decimal(id);
        call Console.string("\n");
#endif

        memcpy (&buffer[*len], &local[id].head, sizeof(flashptr_t));
        *len += sizeof(flashptr_t);
        memcpy (&buffer[*len], &local[id].tail, sizeof(flashptr_t));
        *len += sizeof(flashptr_t);
        
        return (SUCCESS);
    }

    command result_t Serialize.restore[uint8_t id](uint8_t *buffer, datalen_t *len)
    {
#ifdef CHECKPOINT_DEBUG
        call Console.string("Restoring Queue, id=");
        call Console.decimal(id);
        call Console.string("\n");
#endif

        memcpy (&local[id].head, &buffer[*len], sizeof(flashptr_t));
        *len += sizeof(flashptr_t);
        memcpy (&local[id].tail, &buffer[*len], sizeof(flashptr_t));
        *len += sizeof(flashptr_t);
        
        return (SUCCESS);
    }

    default event void Queue.enqueueDone[uint8_t id](result_t r)
    {}

    default event void Queue.dequeueDone[uint8_t id](result_t r)
    {}

    default event void Queue.frontDone[uint8_t id](result_t r)
    {}

    event void Console.input(char *s)
    {
    }

}

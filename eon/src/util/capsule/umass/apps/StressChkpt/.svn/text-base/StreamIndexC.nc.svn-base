/*
 * file:        StackIndexC.nc
 * description: Stream-Index composite object implementation
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
 * StreamIndex implementation
 */

includes app_header;
includes common_header;

module StreamIndexC {
    provides interface StreamIndex[uint8_t id];
    provides interface Serialize[uint8_t id];

    uses {
        interface Console;
        interface Leds;
        interface Stream;
        interface Index;
        interface ChunkStorage;
    }
}

implementation
{
    uint8_t streamif_id;
    flashptr_t *Tsave_ptr;
    struct _data
    {
        bool doEcc;
        flashptr_t last_write;
        int last_set;
    }local[NUM_STREAM_INDEXES];

    /*
     * Stream structure:
     */
    command result_t StreamIndex.init[uint8_t id](bool ecc)
    {
        local[id].doEcc = ecc;
        local[id].last_set = 0;
        streamif_id = id;

        call Index.load(ecc);

        return (SUCCESS);
    }

    command result_t StreamIndex.add[uint8_t id](void *data, datalen_t len)
    {
        if(SUCCESS != call Stream.append(data, len, &local[id].last_write))
        {
#ifdef STREAM_INDEX_DEBUG
            call Console.string("ERROR ! chunk write to stream failed\n");
#endif
            call Leds.redOn();
            return (FAIL);
        }
        else
        {
            streamif_id = id;
            
            return (SUCCESS);
        }
    }

    event void Stream.appendDone(result_t res)
    {
        signal StreamIndex.addDone[streamif_id](res);
    }

    command result_t StreamIndex.setTag[uint8_t id]()
    {
        if(SUCCESS != call Index.set(local[id].last_set, &local[id].last_write, 
                                     sizeof(flashptr_t), NULL))
        {
#ifdef STREAM_INDEX_DEBUG
            call Console.string("ERROR ! tag set failed\n");
#endif
            call Leds.redOn();
            return (FAIL);
        }
        else
        {
            streamif_id = id;
#ifdef STREAM_INDEX_DEBUG
            call Console.string("setting tag...\n");
#endif

        }

        return(SUCCESS);
    }

    event void Index.setDone(result_t res)
    {
#ifdef STREAM_INDEX_DEBUG
        call Console.string("Signaling set tag done...\n");
#endif

        if (res == SUCCESS)
            signal StreamIndex.setTagDone[streamif_id](res, local[streamif_id].last_set++);
        else
            signal StreamIndex.setTagDone[streamif_id](res, -1);
    }

    command result_t StreamIndex.start_traversal[uint8_t id](flashptr_t *start_ptr)
    {
        return(call Stream.start_traversal(start_ptr));
    }
    
    command result_t StreamIndex.next[uint8_t id](void *data, datalen_t *len)
    {
        if(SUCCESS != call Stream.next(data, len))
        {
#ifdef STREAM_INDEX_DEBUG
            call Console.string("ERROR ! next data traversal failed\n");
#endif
            call Leds.redOn();
            return (FAIL);
        }
        else
        {
            streamif_id = id;
        }

        return(SUCCESS);
    }

    event void Stream.nextDone(result_t res)
    {
        signal StreamIndex.nextDone[streamif_id](res);
    }

    /* Get data associated with the tag */
    flashptr_t ptr;
    void *Tdata; datalen_t *Tlen;
    command result_t StreamIndex.getTag[uint8_t id](uint16_t tag, void *data, datalen_t *len)
    {
        if(SUCCESS != call Index.get(tag, &ptr, NULL))
        {
#ifdef STREAM_INDEX_DEBUG
            call Console.string("ERROR ! get tag failed\n");
#endif
            call Leds.redOn();
            return (FAIL);
        }
        else
        {
            streamif_id = id;
            Tdata = data;
            Tlen = len;
        }

        return(SUCCESS);
    }

    task void getStreamData()
    {
        if(SUCCESS != call ChunkStorage.read(&ptr, &ptr, sizeof(flashptr_t), 
                                             Tdata, Tlen, FALSE, NULL))
        {
#ifdef STREAM_INDEX_DEBUG
            call Console.string("ERROR ! stream data read failed\n");
#endif
            call Leds.redOn();
            signal StreamIndex.getTagDone[streamif_id](FAIL);
        }
    }

    event void Index.getDone(result_t res)
    {
#ifdef STREAM_INDEX_DEBUG
        call Console.string("In get tag done...\n");
#endif

        if (res == SUCCESS)
        {
            post getStreamData();
        }
        else
            signal StreamIndex.getTagDone[streamif_id](FAIL);
    }

    event void ChunkStorage.readDone(result_t res)
    {
        signal StreamIndex.getTagDone[streamif_id](res);
    }

    event void ChunkStorage.writeDone(result_t res)
    {}

    event void ChunkStorage.flushDone(result_t res)
    {}

    event void Index.loadDone(result_t res)
    {
#ifdef STREAM_INDEX_DEBUG
        call Console.string("Signaling StreamIndex.initDone...\n");
#endif
        signal StreamIndex.initDone[streamif_id](res);
    }

    event void Index.saveDone(result_t res)
    {}

    command result_t Serialize.checkpoint[uint8_t id](uint8_t *buffer, datalen_t *len)
    {
        return (SUCCESS);
    }

    command result_t Serialize.restore[uint8_t id](uint8_t *buffer, datalen_t *len)
    {
        return (SUCCESS);
    }
   

    default event void StreamIndex.nextDone[uint8_t id](result_t res)
    {}

    default event void StreamIndex.initDone[uint8_t id](result_t res)
    {}

    default event void StreamIndex.addDone[uint8_t id](result_t res)
    {}

    default event void StreamIndex.setTagDone[uint8_t id](result_t res, uint16_t tag)
    {}

    default event void StreamIndex.getTagDone[uint8_t id](result_t res)
    {}

    event void Console.input(char *s)
    {
    }
}

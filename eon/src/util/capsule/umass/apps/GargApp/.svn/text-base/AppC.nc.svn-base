/*
 * Measuring the performance of the data structures
 */
includes chunk_header;
includes sizes;

//#define APP_DEBUG
#define BUF_LEN 60
#define TOPK 10
#define FFT_THRESH 20
#define TAG_THRESH 1
#define TOTAL 13000

module AppC {
    provides interface StdControl;
    
    uses {
        interface Leds;
        interface Console;
        interface GenericFlash;
        interface StreamIndex;
        interface Index;
        interface ADC;
        interface StdControl as SensorControl;
        interface StdControl as CommControl;
        interface SendMsg as SendData;
//        interface ReceiveMsg as RecvData;
        interface Timer;
        command result_t SetTransmitMode(uint8_t power);
        command result_t SetListeningMode(uint8_t power);
    }
}

implementation {
    uint16_t pages, current, tag, count, fftCount, tagCount, summaryCount, traverseIndex, setCount, totalCount;
    //flashptr_t save;
    datalen_t len;

    task void format();
    task void stick_in_val();
    task void stick_in_tag();
    task void do_query();
    task void xmit_summary();

    uint16_t data[BUF_LEN], dataR[BUF_LEN], topk[TOPK];
    TOS_Msg msg;

    // green: storage
    // yellow: sensor
    // red: commn
 
    /**********************************/
    /************ Storage *************/
    /**********************************/
    task void do_traversal()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if(SUCCESS != call Index.get(traverseIndex, dataR, NULL))
        {
#ifdef APP_DEBUG
            call Console.string("Index get failed\n");
            TOSH_uwait(3000);
#endif
        }
        else
        {
#ifdef APP_DEBUG
            call Console.string("Index getting...\n");
            TOSH_uwait(3000);
#endif
        }
    }


    task void stick_in_val()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if(SUCCESS != call StreamIndex.add(data, sizeof(data)))
        {
#ifdef APP_DEBUG
            call Console.string("SI add failed\n");
            TOSH_uwait(3000);
#endif
        }
        else
        {
#ifdef APP_DEBUG
            call Console.string("SI adding...\n");
            TOSH_uwait(3000);
#endif
        }
    }

    task void stick_into_index()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if(SUCCESS != call Index.set(setCount, data, sizeof(data), NULL))
        {
#ifdef APP_DEBUG
            call Console.string("Index set failed\n");
            TOSH_uwait(3000);
#endif
        }
        else
        {
#ifdef APP_DEBUG
            call Console.string("Index setting...\n");
            TOSH_uwait(3000);
#endif
        }
    }


    task void stick_in_tag()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if(SUCCESS != call StreamIndex.setTag())
        {
#ifdef APP_DEBUG
            call Console.string("SI tagging failed\n");
            TOSH_uwait(3000);
#endif
        }
        else
        {
#ifdef APP_DEBUG
            call Console.string("SI tagging...\n");
            TOSH_uwait(3000);
#endif
        }
    }

    /*
    task void getTheTag()
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if(SUCCESS != call StreamIndex.getTag(tag, dataR, NULL))
        {
#ifdef APP_DEBUG
            call Console.string("SI get tag failed\n");
            TOSH_uwait(3000);
#endif
        }
        else
        {
#ifdef APP_DEBUG
            call Console.string("SI getting tag...\n");
            TOSH_uwait(3000);
#endif

            // XXX Send out on the radio
        }
    }
    */



    event void Index.setDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (res == FAIL)
        {
            //call Leds.redOn();
            call Console.string("Index set call returned failure:");
            call Console.decimal(fftCount);
            call Console.string("\n");
            TOSH_uwait(5000);
        }
        else 
        {
#ifdef APP_DEBUG
            call Console.string("set success : ");
            call Console.decimal(fftCount);
            call Console.string("\n");
            TOSH_uwait(5000);
#endif

            /* If the number of captured readings is == FFT_THRESH, then
               do a traversal of the index and stick in a tag */
            if (++setCount > FFT_THRESH)
                setCount = 0;

            if(!(++fftCount % FFT_THRESH))
            {
                fftCount = traverseIndex = 0;
                post do_traversal(); 
            }

        }
    }

    event void Index.getDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (res == FAIL)
        {
            //call Leds.redOn();
            call Console.string("Index get call returned failure:");
            call Console.decimal(traverseIndex);
            call Console.string("\n");
            TOSH_uwait(5000);

        }
        else 
        {
            int i, j;
#ifdef APP_DEBUG
            call Console.string("Get success : ");
            call Console.decimal(traverseIndex);
            call Console.string("\n");
            TOSH_uwait(5000);
#endif

            /* Keep updating top k*/
            for(i=0; i<BUF_LEN; i++)
                 for(j=0; j<TOPK; j++)
                    // worst case
                    topk[j] = dataR[i];

            if(++traverseIndex < FFT_THRESH)
            {
                post do_traversal(); 
            }
            else
            {
                /* Looked through temp data -> create event */
                traverseIndex = 0;
                //if(++tagCount < TAG_THRESH)
                //{
                    post stick_in_tag();
                    tagCount = 0;
                //}
            }
        }
    }


    event void Index.loadDone(result_t res)
    {}

    event void Index.saveDone(result_t res)
    {}

    event void StreamIndex.initDone(result_t res)
    {}

    event void StreamIndex.addDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (res == FAIL)
        {
            //call Leds.redOn();
            call Console.string("SI Add call returned failure\n");
        }
        else 
        {
#ifdef APP_DEBUG
            call Console.string("Add success : ");
            call Console.string("\n");
            TOSH_uwait(3000);
#endif
            /* Now insert this into the index as well... */
            post stick_into_index();
        }
    }

    event void StreamIndex.nextDone(result_t res)
    {
    }

    event void StreamIndex.setTagDone(result_t res, uint16_t tag_)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (res == FAIL)
        {
            //call Leds.redOn();
            call Console.string("SI set tag call returned failure\n");
        }
        else 
        {
#ifdef APP_DEBUG
            call Console.string("Set tag success : ");
            call Console.decimal(tag_);
            call Console.string("\n");
            TOSH_uwait(3000);
#endif
            tag = tag_;
            if(!(++summaryCount % TAG_THRESH))
            {
                summaryCount = 0;
                call Leds.greenOn();
            }
        }
    }

    event void StreamIndex.getTagDone(result_t res)
    {
        call Leds.greenToggle();
        call Leds.greenToggle();

        if (res == FAIL)
        {
            //call Leds.redOn();
            call Console.string("SI get tag call returned failure\n");
        }
        else 
        {
#ifdef APP_DEBUG
            call Console.string("Get tag success : ");
            call Console.decimal(tag);
            call Console.string("\n");
            TOSH_uwait(3000);
#endif
        }

    }

    /**********************************/
    /******** Communication ***********/
    /**********************************/
    task void xmit_summary()
    {
        call Leds.redToggle();
        call Leds.redToggle();

        /* Xmit on the radio */
#ifdef APP_DEBUG
        call Console.string("Xmiting on radio...\n");
        TOSH_uwait(3000);
#endif
        
        if(SUCCESS != call SendData.send(TOS_BCAST_ADDR, 20, &msg))
        {
            call Console.string("Send data failed\n");
            TOSH_uwait(5000);
            call Leds.redOn();
        }
    }

    event result_t SendData.sendDone(TOS_MsgPtr sent, result_t suc) 
    {
        call Leds.redToggle();
        call Leds.redToggle();

        if(SUCCESS != suc)
        {
            call Console.string("Sending of data failed\n");
            TOSH_uwait(5000);
            call Leds.redOn();
        }

        return SUCCESS;
    }

/*
    event TOS_MsgPtr RecvData.receive(TOS_MsgPtr recv) 
    {
        call Leds.redToggle();
        call Leds.redToggle();

        return recv;
    }
*/

    /**********************************/
    /************* Sensor *************/
    /**********************************/
    event result_t Timer.fired() 
    {
        return(SUCCESS);
    }

    task void getSensed()
    {
        call Leds.yellowToggle();
        call Leds.yellowToggle();

        call ADC.getData();
    }

    async event result_t ADC.dataReady(uint16_t data_)
    {
        call Leds.yellowToggle();
        call Leds.yellowToggle();

        atomic
        {
            data[count] = data_;
        }

        /* Got sensor data */
#ifdef APP_DEBUG
//        call Console.string("Got sensor data : ");
//        call Console.decimal(data);
//        call Console.string("\n");
//        TOSH_uwait(3000);
#endif

        /* If buffer has accumulated enough readings -> save it to
           the stream index */
        if (++totalCount < TOTAL)
        {
            post getSensed();
        }
        else
        {
            call Leds.yellowOn();
        }

        if (!(++count % BUF_LEN))
        {
            count = 0;
            post stick_in_val();
        }

        return (SUCCESS);
    }

    command result_t StdControl.init() 
    {
        tagCount = fftCount = count = current = pages = 0;

        if (SUCCESS != call SensorControl.init())
        {
#ifdef APP_DEBUG
            call Console.string("ERROR ! Sensor Control failed\n");
            TOSH_uwait(4000);
#endif
            //call Leds.redOn();
        }

        if (SUCCESS != call CommControl.init())
        {
#ifdef APP_DEBUG
            call Console.string("ERROR ! Comm Control failed\n");
            TOSH_uwait(4000);
#endif
            //call Leds.redOn();
        }

        //call GenericFlash.init();

        call Console.init();

        call Leds.init();

#ifdef APP_DEBUG
        call Console.string("Init done\n");
        TOSH_uwait(5000);
#endif
       

        return SUCCESS;
    }

    command result_t StdControl.start() 
    {    
        pages = 384;

        call SensorControl.start();
        
        call CommControl.start();

        call Index.load(FALSE);

        call StreamIndex.init(FALSE);

        //call Timer.start(TIMER_REPEAT, 100);

        call SetListeningMode(6);
    
        call SetTransmitMode(6);

        post format();
        
        return SUCCESS;
    }
    
    command result_t StdControl.stop() 
    {
        return SUCCESS;
    }

    event void Console.input(char *s)
    {
    }

    task void format()
    {
        call Console.string("Formatting...\n");
        TOSH_uwait(3000);

        if (SUCCESS != call GenericFlash.erase(current))
        {
            call Console.string("ERROR ! erase call failed\n");
            TOSH_uwait(4000);
            //call Leds.redOn();
        }

        current += 1;
    }

    event result_t GenericFlash.eraseDone(result_t r)
    {
        call Console.string("done\n");
        TOSH_uwait(4000);


        if (SUCCESS != r)
        {
            //call Leds.redOn();
            call Console.string("ERROR ! erase call failure\n");
            TOSH_uwait(4000);
            return (FAIL);
        }
        else
        {
            if (current < pages)
            {
                post format();
            }
            else
            {
                call Console.string("Flash formatted... Ready\n");
                TOSH_uwait(3000);

                current = 0;
                post getSensed();
           }
        }

        return (SUCCESS);
    }
    
    event result_t GenericFlash.initDone(result_t r)
    {
        call Console.string("GenericFlash Init done\n");
        TOSH_uwait(4000);
        return (SUCCESS);
    }

    event result_t GenericFlash.writeDone(result_t r)
    {
        return (SUCCESS);
    }

    event result_t GenericFlash.readDone(result_t r)
    {
        return (SUCCESS);
    }

    event result_t GenericFlash.falReadDone(result_t r)
    {
        return (SUCCESS);
    }

}

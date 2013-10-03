/*
 * Measuring the performance of the data structures
 */

module AppC {
    provides interface StdControl;
    
    uses {
        interface Leds;
        interface SendMsg as SendData;
        command result_t SetTransmitMode(uint8_t power);
        command result_t SetListeningMode(uint8_t power);
    }
}

implementation {

    TOS_Msg msg;

    task void xmit_summary();

    /**********************************/
    /******** Communication ***********/
    /**********************************/
    task void xmit_summary()
    {
        call Leds.redToggle();
        call Leds.redToggle();
        
        if(SUCCESS != call SendData.send(TOS_BCAST_ADDR, 20, &msg))
        {
            call Leds.redOn();
        }
    }

    event result_t SendData.sendDone(TOS_MsgPtr sent, result_t suc) 
    {
        call Leds.redToggle();
        call Leds.redToggle();

        if(SUCCESS != suc)
        {
            call Leds.redOn();
        }

        return SUCCESS;
    }

    command result_t StdControl.init() 
    {
        call Leds.init();

        return SUCCESS;
    }

    command result_t StdControl.start() 
    {    
        call SetListeningMode(6);
    
        call SetTransmitMode(6);

        post xmit_summary();
        
        return SUCCESS;
    }
    
    command result_t StdControl.stop() 
    {
        return SUCCESS;
    }
}

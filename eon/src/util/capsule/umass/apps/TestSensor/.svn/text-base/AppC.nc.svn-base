/*
 * Measuring the performance of the data structures
 */

module AppC {
    provides interface StdControl;
    
    uses {
        interface Leds;
        interface ADC;
    }
}

implementation {

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

        post getSensed();

        return (SUCCESS);
    }


    command result_t StdControl.init() 
    {
        call Leds.init();

        return SUCCESS;
    }

    command result_t StdControl.start() 
    {    
        post getSensed();
        
        return SUCCESS;
    }
    
    command result_t StdControl.stop() 
    {
        return SUCCESS;
    }
}

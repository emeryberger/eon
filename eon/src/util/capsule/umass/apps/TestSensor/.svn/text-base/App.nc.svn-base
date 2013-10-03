/*
 * Gargantuan Application
 */
configuration App {
}

implementation {
    components Main, AppC, LedsC, DemoSensorC as Sensor;

    Main.StdControl -> AppC;
    Main.StdControl -> Sensor;
    
    /* Testing */
    AppC.Leds -> LedsC;
    AppC.ADC -> Sensor;
}

/*
 * Gargantuan Application
 */
configuration App {
}

implementation {
    components Main, AppC, GenericComm as Comm, CC1000RadioIntM as Radio, LedsC;

    Main.StdControl -> AppC;
    Main.StdControl -> Comm;
    
    /* Testing */
    AppC.Leds -> LedsC;
    AppC.SendData -> Comm.SendMsg[0];
    AppC.SetTransmitMode -> Radio.SetTransmitMode;
    AppC.SetListeningMode -> Radio.SetListeningMode;
}

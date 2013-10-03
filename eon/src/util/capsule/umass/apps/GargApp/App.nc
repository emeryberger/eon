/*
 * Gargantuan Application
 */
includes common_header;
includes sizes;

configuration App {
}

implementation {
    components Main, AppC, ChunkStorageC, FalC, ConsoleC, TimerC,
               LedsC, StackC, HPLUARTC, QueueC, StreamC, StreamIndexC,
               IndexC, ArrayC, DemoSensorC as Sensor, GenericComm as Comm, 
               SomeShitC, CC1000RadioIntM as Radio, CompactionAbsorbC;

    Main.StdControl -> AppC;
    Main.StdControl -> FalC;
    Main.StdControl -> ChunkStorageC;

    /* Wire the chunk storage system */
    ChunkStorageC.GenericFlash -> FalC.GenericFlash[unique("Fal")];
    ChunkStorageC.Leds -> LedsC;

    /* Wire the data structures */
    StackC.ChunkStorage -> ChunkStorageC.ChunkStorage[1];
    QueueC.ChunkStorage -> ChunkStorageC.ChunkStorage[2];
    StreamC.ChunkStorage -> ChunkStorageC.ChunkStorage[3];
    ArrayC.ChunkStorage -> ChunkStorageC.ChunkStorage[4];
    IndexC.ChunkStorage -> ChunkStorageC.ChunkStorage[5];
    ChunkStorageC.Compaction -> CompactionAbsorbC;

    StreamIndexC.ChunkStorage -> ChunkStorageC.ChunkStorage[6];
    StreamC.Stack -> StackC.Stack[1];
    StreamIndexC.Stream -> StreamC.Stream[0];
    StreamIndexC.Index -> IndexC.Index[0];
    IndexC.Array -> ArrayC.Array[0];
    StackC.Console -> ConsoleC;
    ChunkStorageC.Console -> ConsoleC;
    //PageNANDM.Console -> ConsoleC;

    StackC.Leds -> LedsC;
    StreamC.Leds -> LedsC;
    ArrayC.Leds -> LedsC;
    IndexC.Leds -> LedsC;
    StreamIndexC.Leds -> LedsC;
    
    /* Debugging */
    AppC.Console -> ConsoleC;
    QueueC.Console -> ConsoleC;
    StreamC.Console -> ConsoleC;
    StackC.Console -> ConsoleC;
    IndexC.Console -> ConsoleC;
    ArrayC.Console -> ConsoleC;
    StreamIndexC.Console -> ConsoleC;
    ConsoleC.HPLUART -> HPLUARTC;
    
    /* Testing */
    AppC.Leds -> LedsC;
    AppC.GenericFlash -> FalC.GenericFlash[unique("Fal")];
    AppC.StreamIndex -> StreamIndexC.StreamIndex[0];
    AppC.Index -> IndexC.Index[1];
    //AppC.SensorControl -> Sensor;
    //AppC.ADC -> Sensor;
    AppC.SensorControl -> SomeShitC;
    AppC.ADC -> SomeShitC;
    AppC.Timer -> TimerC.Timer[0];
    AppC.CommControl -> Comm;
    AppC.SendData -> Comm.SendMsg[3];
    AppC.SetTransmitMode -> Radio.SetTransmitMode;
    AppC.SetListeningMode -> Radio.SetListeningMode;
}

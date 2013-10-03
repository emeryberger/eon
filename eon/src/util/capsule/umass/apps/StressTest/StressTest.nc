/*
 * Test Compaction
 */
includes common_header;
includes sizes;

configuration StressTest {
}

implementation {
    components Main, StressTestC, ChunkStorageC, FalC, ConsoleC, Crc8C,
               LedsC, StackC, HPLUARTC, StreamC, CheckpointC,
               IndexC, ArrayC, StreamIndexC, QueueC, CompactionAbsorbC;

    Main.StdControl -> StressTestC;
    Main.StdControl -> FalC;
    Main.StdControl -> ChunkStorageC;

    /* Wire the chunk storage system */
    ChunkStorageC.GenericFlash -> FalC.GenericFlash[unique("Flash")]; 
    ChunkStorageC.Leds -> LedsC;
    ChunkStorageC.Compaction -> CompactionAbsorbC;
    ChunkStorageC.Crc8 -> Crc8C;

    /* Wire the data structures */
    StackC.ChunkStorage -> ChunkStorageC.ChunkStorage[1];
    StreamC.ChunkStorage -> ChunkStorageC.ChunkStorage[2];
    QueueC.ChunkStorage -> ChunkStorageC.ChunkStorage[2];
    ArrayC.ChunkStorage -> ChunkStorageC.ChunkStorage[4];
    IndexC.ChunkStorage -> ChunkStorageC.ChunkStorage[5];
    StreamIndexC.ChunkStorage -> ChunkStorageC.ChunkStorage[6];
    StreamIndexC.Stream -> StreamC.Stream[0];
    StreamIndexC.Index -> IndexC.Index[1];
    IndexC.Array -> ArrayC.Array[0];
    StreamC.Stack -> StackC.Stack[0];
    StackC.Console -> ConsoleC;
    ChunkStorageC.Console -> ConsoleC;
    //PageNANDM.Console -> ConsoleC;


    StackC.Leds -> LedsC;
    StreamC.Leds -> LedsC;
    ArrayC.Leds -> LedsC;
    IndexC.Leds -> LedsC;
    StreamIndexC.Leds -> LedsC;
    
    /* Debugging */
    StressTestC.Console -> ConsoleC;
    QueueC.Console -> ConsoleC;
    StreamC.Console -> ConsoleC;
    StackC.Console -> ConsoleC;
    IndexC.Console -> ConsoleC;
    ArrayC.Console -> ConsoleC;
    StreamIndexC.Console -> ConsoleC;
    ConsoleC.HPLUART -> HPLUARTC;
    
    /* Testing */
    StressTestC.ChunkStorage -> ChunkStorageC.ChunkStorage[1];
    StressTestC.Leds -> LedsC;
    StressTestC.Stack -> StackC.Stack[0];
    StressTestC.GenericFlash -> FalC.GenericFlash[unique("Flash")];
    StressTestC.Queue -> QueueC.Queue[0];
    StressTestC.StreamIndex -> StreamIndexC.StreamIndex[0];
    StressTestC.Index -> IndexC.Index[0];
    StressTestC.Stream -> StreamC.Stream[0];
}

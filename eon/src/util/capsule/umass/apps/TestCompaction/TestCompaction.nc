/*
 * Test Compaction
 */
includes common_header;
includes sizes;
 
configuration TestCompaction {
}

implementation {
    components Main, TestCompactionC, ChunkStorageC, ConsoleC,
               LedsC, StackC, StreamC, HPLUARTC, TimerC, IndexC, ArrayC,
               QueueC, FalC, CompactionAbsorbC;

    Main.StdControl -> TestCompactionC;
    Main.StdControl -> FalC;
    Main.StdControl -> ChunkStorageC;

    /* Wire the chunk storage system */
    ChunkStorageC.GenericFlash -> FalC.GenericFlash[unique("Fal")];
    ChunkStorageC.Leds -> LedsC;
    ChunkStorageC.Compaction -> CompactionAbsorbC;

    /* Wire the data structures */
    StackC.ChunkStorage -> ChunkStorageC.ChunkStorage[1];    
    StreamC.ChunkStorage -> ChunkStorageC.ChunkStorage[2];
    StreamC.Stack -> StackC.Stack[0];
    IndexC.ChunkStorage -> ChunkStorageC.ChunkStorage[3];
    ArrayC.ChunkStorage -> ChunkStorageC.ChunkStorage[4];
    IndexC.Array -> ArrayC.Array[0];

    StackC.Console -> ConsoleC;
    StreamC.Console -> ConsoleC;
    ChunkStorageC.Console -> ConsoleC;
    IndexC.Console -> ConsoleC;
    ArrayC.Console -> ConsoleC;

    StackC.Leds -> LedsC;
    StreamC.Leds -> LedsC;
    IndexC.Leds -> LedsC;
    ArrayC.Leds -> LedsC; 
    
    /* Debugging */
    TestCompactionC.Console -> ConsoleC;
    ConsoleC.HPLUART -> HPLUARTC;
    //PageNANDM.Console -> ConsoleC;
    
    /* Testing */
    TestCompactionC.ChunkStorage -> ChunkStorageC.ChunkStorage[0];
    TestCompactionC.Stream -> StreamC.Stream[0];
    TestCompactionC.Compaction -> IndexC.Compaction[0];
//    TestCompactionC.Compaction -> StreamC.Compaction[0];
    TestCompactionC.Leds -> LedsC;
    TestCompactionC.GenericFlash -> FalC.GenericFlash[unique("Fal")];
    TestCompactionC.Timer -> TimerC.Timer[unique("Timer")];
    TestCompactionC.Index -> IndexC.Index[0];

}

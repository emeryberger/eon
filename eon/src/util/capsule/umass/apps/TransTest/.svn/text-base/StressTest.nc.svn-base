/*
 * Test Compaction
 */
includes common_header;
includes sizes;

configuration StressTest {
}

implementation {
    components Main, StressTestC, ChunkStorageC, FalC, ConsoleC,
               LedsC, StackC, HPLUARTC, QueueC, StreamC,
               IndexC, ArrayC, CheckpointC, RootDirectoryC, SysTimeC, CompactionAbsorbC;

    Main.StdControl -> StressTestC;
    Main.StdControl -> FalC;
    Main.StdControl -> ChunkStorageC;

    /* Wire the chunk storage system */
    ChunkStorageC.GenericFlash -> FalC.GenericFlash[unique("Fal")];
    ChunkStorageC.Leds -> LedsC;
    ChunkStorageC.Compaction -> CompactionAbsorbC;
    RootDirectoryC.GenericFlash -> FalC.GenericFlash[unique("Fal")];
    RootDirectoryC.Leds -> LedsC;
    RootDirectoryC.Console -> ConsoleC;
    RootDirectoryC.SysTime -> SysTimeC;

    /* Wire the data structures */
    StackC.ChunkStorage -> ChunkStorageC.ChunkStorage[1];
    StreamC.ChunkStorage -> ChunkStorageC.ChunkStorage[2];
    ArrayC.ChunkStorage -> ChunkStorageC.ChunkStorage[3];
    IndexC.ChunkStorage -> ChunkStorageC.ChunkStorage[4];
    StreamC.Stack -> StackC.Stack[1];
    IndexC.Array -> ArrayC.Array[0];
    StackC.Console -> ConsoleC;
    
    CheckpointC.ChunkStorage -> ChunkStorageC.ChunkStorage[5];
    CheckpointC.Stack -> StackC.Stack[0];
    CheckpointC.RootPtrAccess -> StackC.RootPtrAccess[0];
    CheckpointC.RootDirectory -> RootDirectoryC;
    CheckpointC.Serialize -> IndexC.Serialize[0];
    CheckpointC.Serialize -> StreamC.Serialize[0];

    StackC.Leds -> LedsC;
    StreamC.Leds -> LedsC;
    ArrayC.Leds -> LedsC;
    IndexC.Leds -> LedsC;
    CheckpointC.Leds -> LedsC;
    
    /* Debugging */
    StressTestC.Console -> ConsoleC;
    StreamC.Console -> ConsoleC;
    StackC.Console -> ConsoleC;
    IndexC.Console -> ConsoleC;
    ArrayC.Console -> ConsoleC;
    IndexC.Console -> ConsoleC;
    ConsoleC.HPLUART -> HPLUARTC;
    ChunkStorageC.Console -> ConsoleC;
    CheckpointC.Console -> ConsoleC;

    /* Testing */
    //StressTestC.ChunkStorage -> ChunkStorageC.ChunkStorage[0];
    StressTestC.Leds -> LedsC;
    //StressTestC.Stack -> StackC.Stack[0];
    StressTestC.GenericFlash -> FalC.GenericFlash[unique("Fal")];
    //StressTestC.StreamIndex -> StreamIndexC.StreamIndex[0];
    //StressTestC.Index -> IndexC.Index[0];
    //StressTestC.Stream -> StreamC.Stream[1];
    StressTestC.Checkpoint -> CheckpointC.Checkpoint;
}

/*
 * Test Compaction
 */
includes common_header;
includes sizes;

configuration StressTest {
}

implementation {
    components Main, StressTestC, ChunkStorageC, FlashM, FalC, 
#ifdef CONSOLE_DEBUG
				ConsoleC as Console, HPLUARTC,
#else
				NoConsoleC as Console,
#endif
               LedsC, StackC, Crc8C,
               StreamC, CheckpointC, RootDirectoryC;

    Main.StdControl -> StressTestC;
    Main.StdControl -> FalC;
    Main.StdControl -> ChunkStorageC;

    /* Wire the chunk storage system */
    //FlashM -> PageEEPROMC.PageEEPROM[unique("FAL")];
    ChunkStorageC.GenericFlash -> FalC.GenericFlash[unique("Flash")]; 
    ChunkStorageC.Leds -> LedsC;
    ChunkStorageC.Crc8 -> Crc8C;

    /* Wire the data structures */
    StreamC.ChunkStorage -> ChunkStorageC.ChunkStorage[unique("Fal")];
    StreamC.Stack -> StackC.Stack[1];
    StackC.ChunkStorage -> ChunkStorageC.ChunkStorage[unique("Fal")];

    /* Debugging */
    StackC.Leds -> LedsC;
    StreamC.Leds -> LedsC;
    CheckpointC.Leds -> LedsC;
    
    StressTestC.Console -> Console;
    StreamC.Console -> Console;
    StackC.Console -> Console;
    ChunkStorageC.Console -> Console;
    RootDirectoryC.Console -> Console;
    CheckpointC.Console -> Console;
#ifdef CONSOLE_DEBUG
    ConsoleC.HPLUART -> HPLUARTC;
#endif
    
    /* Checkpointing */
    CheckpointC.ChunkStorage -> ChunkStorageC.ChunkStorage[unique("Fal")];
    CheckpointC.Stack -> StackC.Stack[0];
    CheckpointC.RootPtrAccess -> StackC.RootPtrAccess[0];
    CheckpointC.RootDirectory -> RootDirectoryC;

    CheckpointC.Serialize -> ChunkStorageC.Serialize;
    CheckpointC.Serialize -> StreamC.Serialize[0];

    /* Compaction */
    ChunkStorageC.Compaction -> StreamC.Compaction[0];

    /* Application */
    StressTestC.ChunkStorage -> ChunkStorageC.ChunkStorage[unique("Fal")];
    StressTestC.Leds -> LedsC;
    StressTestC.GenericFlash -> FlashM.GenericFlash[unique("Flash")];
    StressTestC.Stream -> StreamC.Stream[0];
    StressTestC.Checkpoint -> CheckpointC.Checkpoint;
    StressTestC.RootDirectory -> RootDirectoryC;
}

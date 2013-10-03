/*
 * Test Compaction
 */
includes common_header;
includes sizes;

configuration StressTest {
}

implementation {
    components Main, StressTestC, ChunkStorageC, ConsoleC,
               LedsC, StackC, HPLUARTC, 
               StreamC, CheckpointC, RootDirectoryC, SysTimeC, DummyC,
               PageEEPROMC, FlashM;

    FlashM.PageEEPROM -> PageEEPROMC.PageEEPROM[unique("PageEEPROM")];

    Main.StdControl -> StressTestC;
    Main.StdControl -> PageEEPROMC.StdControl;
    Main.StdControl -> ChunkStorageC;

    /* Wire the chunk storage system */
    ChunkStorageC.GenericFlash -> FlashM.GenericFlash[unique("Flash")]; 
    ChunkStorageC.Leds -> LedsC;
    ChunkStorageC.Compaction -> DummyC;

    /* Debugging */
    ChunkStorageC.Leds -> LedsC;
    
    StressTestC.Console -> ConsoleC;
    ChunkStorageC.Console -> ConsoleC;
    //FlashM.Console -> ConsoleC;
    ConsoleC.HPLUART -> HPLUARTC;
    
    /* Application */
    StressTestC.ChunkStorage -> ChunkStorageC.ChunkStorage[unique("Fal")];
    StressTestC.Leds -> LedsC;
    StressTestC.GenericFlash -> FlashM.GenericFlash[unique("Flash")];
}

/*
 * Measurements
 */
includes common_header;
includes sizes;
 
configuration Measurement {
}

implementation {
    components Main, MeasurementC, ChunkStorageC, FalC, ConsoleC,
               LedsC, HPLUARTC, StackC, StreamC, QueueC, ArrayC, IndexC,
               CheckpointC, RootDirectoryC, TimerC, SysTimeC, CompactionAbsorbC;

    Main.StdControl -> MeasurementC;
    Main.StdControl -> FalC;
    Main.StdControl -> ChunkStorageC;
    Main.StdControl -> TimerC;

    /* Wire the chunk storage system */
    ChunkStorageC.GenericFlash -> FalC.GenericFlash[unique("Fal")];
    RootDirectoryC.GenericFlash -> FalC.GenericFlash[unique("Fal")];
    RootDirectoryC.Leds -> LedsC;
    RootDirectoryC.Console -> ConsoleC;
    ChunkStorageC.Leds -> LedsC;

    /* Wire the data structures */
    StackC.ChunkStorage -> ChunkStorageC.ChunkStorage[1];
    StreamC.ChunkStorage -> ChunkStorageC.ChunkStorage[2];
    StreamC.Stack -> StackC.Stack[2];
    QueueC.ChunkStorage -> ChunkStorageC.ChunkStorage[3];
    ArrayC.ChunkStorage -> ChunkStorageC.ChunkStorage[4];
    IndexC.ChunkStorage -> ChunkStorageC.ChunkStorage[5];
    ChunkStorageC.Compaction -> CompactionAbsorbC;
    IndexC.Array -> ArrayC.Array[1];

    StackC.Console -> ConsoleC;
    StreamC.Console -> ConsoleC;
    QueueC.Console -> ConsoleC;
    ArrayC.Console -> ConsoleC;
    ChunkStorageC.Console -> ConsoleC;
    IndexC.Console -> ConsoleC;
    CheckpointC.Console -> ConsoleC;

    StackC.Leds -> LedsC;
    StreamC.Leds -> LedsC;
    QueueC.Leds -> LedsC;
    ArrayC.Leds -> LedsC;
    IndexC.Leds -> LedsC;
    CheckpointC.Leds -> LedsC;
    
    /* Transaction support */
    /* 
       NOTE: The Transaction interface has to be wired to the correct storage
             object interfaces. The interface number of the storage object 
             should be the same as that of the object whose state needs to 
             be saved
     */
    CheckpointC.ChunkStorage -> ChunkStorageC.ChunkStorage[6];
    CheckpointC.Stack -> StackC.Stack[1];
    CheckpointC.RootDirectory -> RootDirectoryC;
    CheckpointC.RootPtrAccess -> StackC.RootPtrAccess[1];
    CheckpointC.Serialize -> QueueC.Serialize[0];
    CheckpointC.Serialize -> StreamC.Serialize[0];
    CheckpointC.Serialize -> StackC.Serialize[0];

    RootDirectoryC.SysTime -> SysTimeC;

    /* Debugging */
    MeasurementC.Console -> ConsoleC;
    ConsoleC.HPLUART -> HPLUARTC;
    
    /* Testing */
    MeasurementC.ChunkStorage -> ChunkStorageC.ChunkStorage[0];
    MeasurementC.Stack -> StackC.Stack[0];
    MeasurementC.Stream -> StreamC.Stream[0];  
    MeasurementC.Queue -> QueueC.Queue[0];
    MeasurementC.Leds -> LedsC;
    MeasurementC.GenericFlash -> FalC.GenericFlash[unique("Fal")];
    MeasurementC.Array -> ArrayC.Array[0];
    MeasurementC.Index -> IndexC.Index[0];
    MeasurementC.Checkpoint -> CheckpointC.Checkpoint;
    MeasurementC.Timer -> TimerC.Timer[unique("Timer")];
}

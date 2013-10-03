/*
 * Telos Measurements
 */
includes common_header;
 
configuration TelosMeasurement {
}

implementation {
    components Main, MeasurementC, TelosChunkStorageC, ConsoleC,
               LedsC, StackC, QueueC, StreamC, ArrayC, IndexC, HPLUARTC,
               BlockStorage;

    Main.StdControl -> MeasurementC;
    Main.StdControl -> TelosChunkStorageC;
    
    TelosChunkStorageC.Mount -> BlockStorageC.Mount[1];
    TelosChunkStorageC.BlockRead -> BlockStorageC.BlockRead[1];
    TelosChunkStorageC.BlockWrite -> BlockStorageC.BlockWrite[1];
    TelosChunkStorageC.Leds -> LedsC;

    StackC.ChunkStorage -> TelosChunkStorageC;
    QueueC.ChunkStorage -> TelosChunkStorageC;
    StreamC.ChunkStorage -> TelosChunkStorageC;
    ArrayC.ChunkStorage -> TelosChunkStorageC;
    IndexC.ChunkStorage -> TelosChunkStorageC;
    IndexC.Array -> ArrayC;
    
    MeasurementC.Console -> ConsoleC;
    ConsoleC.HPLUART -> HPLUARTC;
    
    MeasurementC.ChunkStorage -> TelosChunkStorageC;
    MeasurementC.Stack -> StackC;
    MeasurementC.Queue -> QueueC;
    MeasurementC.Stream -> StreamC;
    MeasurementC.Array -> ArrayC;
    MeasurementC.Index -> IndexC;
    MeasurementC.Leds -> LedsC;
}

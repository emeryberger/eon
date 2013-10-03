/*
 * file:        NandFlash.nc
 * description:
 *
 * $Id: NandFlash.nc,v 1.4 2005/09/16 17:49:59 pjd Exp $
 */
includes common_header;
 
configuration TestNandBasicFS {
}

implementation {
    components Main, TestNandBasicFSC, ChunkStorageC, PageNANDM, ConsoleC,
			   LedsC, StackC, QueueC, StreamC, ArrayC, IndexC, HPLUARTC;

    Main.StdControl -> TestNandBasicFSC;
	Main.StdControl -> PageNANDM;
    Main.StdControl -> ChunkStorageC;
	
    ChunkStorageC.PageNAND -> PageNANDM.PageNAND;
	ChunkStorageC.Leds -> LedsC;
//	ChunkStorageC.Console -> ConsoleC;

	StackC.ChunkStorage -> ChunkStorageC;
	QueueC.ChunkStorage -> ChunkStorageC;
	StreamC.ChunkStorage -> ChunkStorageC;
	ArrayC.ChunkStorage -> ChunkStorageC;
	IndexC.ChunkStorage -> ChunkStorageC;
	IndexC.Array -> ArrayC;
	
	TestNandBasicFSC.Console -> ConsoleC;
	ConsoleC.HPLUART -> HPLUARTC;
	
	TestNandBasicFSC.ChunkStorage -> ChunkStorageC;
	TestNandBasicFSC.Stack -> StackC;
	TestNandBasicFSC.Queue -> QueueC;
	TestNandBasicFSC.Stream -> StreamC;
	TestNandBasicFSC.Array -> ArrayC;
	TestNandBasicFSC.Index -> IndexC;
	TestNandBasicFSC.Leds -> LedsC;
}

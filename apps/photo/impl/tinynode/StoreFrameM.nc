includes structs;

module StoreFrameM
{
  provides
  {
    interface StdControl;
    interface IStoreFrame;
  }
  uses
  {
  	interface PageEEPROM;
  }
}
implementation
{
#include "fluxconst.h"

StoreFrame_in * node_in;
StoreFrame_out * node_out;

int curpage = 0;
uint16_t startpage;
uint16_t erasepage;
uint16_t writepage;

  command result_t StdControl.init ()
  {
    return SUCCESS;
  }

  command result_t StdControl.start ()
  {
    return SUCCESS;
  }

  command result_t StdControl.stop ()
  {
    return SUCCESS;
  }

  command bool IStoreFrame.ready ()
  {
//PUT READY IMPLEMENTATION HERE

    return TRUE;
  }

  task void StorePage()
  {
  	result_t res;
	
	uint16_t thepage;
	uint16_t bufoffset;
	
	thepage = ((startpage + writepage) % PAGES_TO_USE) + PAGE_OFFSET;
	bufoffset = (writepage * 255);
	
  	res = call PageEEPROM.write(thepage, 0, node_in->frame + bufoffset, 255);
	if (res != SUCCESS)
	{
		signal IStoreFrame.nodeDone(node_in, node_out, ERR_USR);
		return;
	}
  }
  
  task void ErasePage()
  {
  	result_t res;
	
	uint16_t thepage;
	
	thepage = ((startpage + erasepage) % PAGES_TO_USE) + PAGE_OFFSET;
	
  	res = call PageEEPROM.erase(thepage, TOS_EEPROM_ERASE);
	if (res != SUCCESS)
	{
		signal IStoreFrame.nodeDone(node_in, node_out, ERR_USR);
		return;
	}
  }
  
  command result_t IStoreFrame.nodeCall (StoreFrame_in * in,
					 StoreFrame_out * out)
  {
//PUT NODE IMPLEMENTATION HERE
	node_in = in;
	node_out = out;

	curpage = 0;
	//figure out which page start at
	startpage = ((g_numframes * 14L) % PAGES_TO_USE) + PAGE_OFFSET;
	erasepage = 0;
	post ErasePage();
//Done signal can be moved if node makes split phase calls.
    //signal IStoreFrame.nodeDone (in, out, ERR_OK);
    return SUCCESS;
  }
  
  event result_t PageEEPROM.eraseDone(result_t res)
    {
		erasepage++;
		if (erasepage >= 14)
		{
			writepage = 0;
			post StorePage();
		} else {
			post ErasePage();
		}
		return SUCCESS;
	}
	
	event result_t PageEEPROM.writeDone(result_t res)
    {	
		writepage++;
		if (writepage >= 14)
		{
			writepage = 0;
			erasepage = 0;
			signal IStoreFrame.nodeDone(node_in, node_out, ERR_OK);
		} else {
			post StorePage();
		}
		return SUCCESS;
	}
	
	event result_t PageEEPROM.readDone(result_t res)
	{
		return SUCCESS;
	}
	
	event result_t PageEEPROM.syncDone(result_t result)
	{
		return SUCCESS;
	}
	
	event result_t PageEEPROM.computeCrcDone(result_t result, uint16_t crc)
	{
		return SUCCESS;
	}
	
	event result_t PageEEPROM.flushDone(result_t res)
	{
		return SUCCESS;
	}
}

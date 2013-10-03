includes structs;

module FetchPageM
{
  provides
  {
    interface StdControl;
    interface IFetchPage;
  }
  uses
  {
  	interface PageEEPROM;
  }
}
implementation
{
#include "fluxconst.h"
FetchPage_in *node_in;
FetchPage_out *node_out;

uint8_t mypage[256];

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

  command bool IFetchPage.ready ()
  {
//PUT READY IMPLEMENTATION HERE

    return TRUE;
  }

  task void ReadPage()
  {
  	result_t res;
  	static int retries = 0;
  	uint16_t whichpage;
	
	if (g_numframes <= node_in->frame)
	{
		//don't have it.
		signal IFetchPage.nodeDone(node_in, node_out, ERR_USR);
		return;
	}
	whichpage = (((g_numframes - node_in->frame) * 14L) % PAGES_TO_USE) + PAGE_OFFSET;
	res = call PageEEPROM.read(whichpage, 0, mypage, 256);
	if (res == FAIL)
	{
		retries++;
		if (retries > 5)
		{
			signal IFetchPage.nodeDone(node_in, node_out, ERR_USR);
			return;
		}
		post ReadPage();
		return;
	}
	retries = 0;
  }
  
  command result_t IFetchPage.nodeCall (FetchPage_in * in,
					FetchPage_out * out)
  {
//PUT NODE IMPLEMENTATION HERE
	node_in = in;
	node_out = out;
	
	post ReadPage();
//Done signal can be moved if node makes split phase calls.
    //signal IFetchPage.nodeDone (in, out, ERR_OK);
    return SUCCESS;
  }
  
  event result_t PageEEPROM.eraseDone(result_t res)
    {
		return SUCCESS;
	}
	
	event result_t PageEEPROM.writeDone(result_t res)
    {	
		return SUCCESS;
	}
	
	event result_t PageEEPROM.readDone(result_t res)
	{
		node_out->addr = node_in->addr;
		node_out->frame = node_in->frame;
		node_out->page = node_in->page;
		node_out->pagedata = mypage;
		signal IFetchPage.nodeDone(node_in, node_out, ERR_OK);
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

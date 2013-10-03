includes structs;

module SendPageM
{
  provides
  {
    interface StdControl;
    interface ISendPage;
  }
  uses
  {
  	interface Timer;
	interface SendMsg;
  }
}
implementation
{
#include "fluxconst.h"
SendPage_in* node_in;
SendPage_out *node_out;

uint16_t offset;
TOS_Msg msg;


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

  command bool ISendPage.ready ()
  {
//PUT READY IMPLEMENTATION HERE

    return TRUE;
  }

  command result_t ISendPage.nodeCall (SendPage_in * in, SendPage_out * out)
  {
//PUT NODE IMPLEMENTATION HERE
	node_in = in;
	node_out = out;
	offset = 0;
	call Timer.start(TIMER_ONE_SHOT, 100);
//Done signal can be moved if node makes split phase calls.
    //signal ISendPage.nodeDone (in, out, ERR_OK);
    return SUCCESS;
  }
  
  event result_t Timer.fired()
  {
  	int byteoffset;
  	DataMsg_t *body = (DataMsg_t*)msg.data;
	
	body->src_addr = node_in->addr;
	body->ago = node_in->frame;
	body->page = node_in->page;
	body->offset = offset;
	
	byteoffset = offset * PAY_SIZE;
	memcpy(body->data, node_in->pagedata + byteoffset, PAY_SIZE);
  	call SendMsg.send(node_in->addr, sizeof(DataMsg_t), &msg );
	offset++;
	if (offset >= 16)
	{
		offset = 0;
		signal ISendPage.nodeDone(node_in, node_out, ERR_OK);
		return SUCCESS;
	}
	call Timer.start(TIMER_ONE_SHOT, 100);
	return SUCCESS;
  }
  
  event result_t SendMsg.sendDone( TOS_MsgPtr pmsg, result_t success )
	{
		
		return SUCCESS;
	}
}

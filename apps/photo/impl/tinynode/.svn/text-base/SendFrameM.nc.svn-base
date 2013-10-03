includes structs;

module SendFrameM
{
  provides
  {
    interface StdControl;
    interface ISendFrame;
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

uint16_t seq_num;
TOS_Msg msg;
SendFrame_in *node_in;
SendFrame_out *node_out;

int pagenum;
int offsetnum;

  command result_t StdControl.init ()
  {
  	seq_num = 0;
    return SUCCESS;
  }

  command result_t StdControl.start ()
  {
    return SUCCESS;
  }

  command result_t StdControl.stop ()
  {
  	call Timer.stop();
    return SUCCESS;
  }

  command bool ISendFrame.ready ()
  {
//PUT READY IMPLEMENTATION HERE
    return TRUE;
  }

  task void SendPacket()
  {
  	static int retries = 0;	
	
	if( call SendMsg.send( TOS_BCAST_ADDR, sizeof(StreamMsg_t), &msg ) == SUCCESS )
	{
		retries = 0;
		offsetnum++;
		if (offsetnum >= 16)
		{
			offsetnum = 0;
			pagenum++;
			if (pagenum > 14)
			{
				pagenum = 0;
				node_out->frame = node_in->frame;
				signal ISendFrame.nodeDone(node_in, node_out, ERR_OK);
				return; 
			}
		}
		call Timer.start(TIMER_ONE_SHOT, 50);
	} else {
		retries++;
		if (retries > 20)
		{
			retries = 0;
			signal ISendFrame.nodeDone(node_in, node_out, ERR_USR);
			return;
		}
		post SendPacket();
	}
  	
  }
  
  task void PrepPacket()
  {
  	StreamMsg_t *p_msg = (StreamMsg_t*)msg.data;
	
	p_msg->src_addr = TOS_LOCAL_ADDRESS;
	p_msg->seq_num = seq_num;
	p_msg->page = pagenum;
	p_msg->offset = offsetnum;
	memcpy(p_msg->data, node_in->frame + (pagenum * 256) + (offsetnum * PAY_SIZE), PAY_SIZE);
	
	post SendPacket();
  }
  
  command result_t ISendFrame.nodeCall (SendFrame_in * in,
					SendFrame_out * out)
  {
    node_in = in;
	node_out = out;
	
	pagenum = 0;
	offsetnum = 0;
	
	post PrepPacket();
	//signal ISendFrame.nodeDone (in, out, ERR_OK);
    return SUCCESS;
  }
  
  event result_t Timer.fired()
  {
  	post PrepPacket();
  	return SUCCESS;
  }
  
  event result_t SendMsg.sendDone( TOS_MsgPtr pmsg, result_t success )
	{
		
		return SUCCESS;
	}
}

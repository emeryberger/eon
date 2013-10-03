includes structs;

module ListenRequestM
{
  provides
  {
    interface StdControl;
    interface IListenRequest;
  }
  uses
  {
  	interface ReceiveMsg;
  }
}
implementation
{
#include "fluxconst.h"
ListenRequest_out *node_out;


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

  command result_t IListenRequest.srcStart (ListenRequest_out * out)
  {
  	node_out = out;
    return SUCCESS;
  }
  
  event TOS_MsgPtr ReceiveMsg.receive (TOS_MsgPtr msg)
	{
		QueryMsg_t *body = (QueryMsg_t *) msg->data;

		node_out->addr = body->src_addr;
		node_out->frame = body->ago;
		node_out->page = body->page;
		signal IListenRequest.srcFired(node_out);

		return msg;
	}
}

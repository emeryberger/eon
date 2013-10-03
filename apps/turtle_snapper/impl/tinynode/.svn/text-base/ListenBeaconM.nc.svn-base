includes structs;

module ListenBeaconM
{
	provides
	{
		interface StdControl;
		interface IListenBeacon;
	}
	uses
	{
		interface ReceiveMsg;
		interface ConnMgr;
		interface Leds;	
	}
} 
implementation
{
#include "fluxconst.h"


	ListenBeacon_out *node_out;
	
	command result_t StdControl.init ()
	{
		call Leds.init();
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

	
	
	command result_t IListenBeacon.srcStart (ListenBeacon_out * out)
	{
		node_out = out;
		return SUCCESS;
	}
  
	
	event TOS_MsgPtr ReceiveMsg.receive (TOS_MsgPtr msg)
	{
		BeaconMsg_t *body = (BeaconMsg_t *) msg->data;
			
		
		if (g_in_gps == TRUE)
		{
			
			return msg;
		}
		
		node_out->addr = body->src_addr;
		node_out->delay = body->src_delay;
			
		call ConnMgr.beacon(node_out->addr, node_out->delay);
			
		
		signal IListenBeacon.srcFired(node_out);
		
		return msg;
	}
	
}

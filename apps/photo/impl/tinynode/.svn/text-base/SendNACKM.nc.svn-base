includes structs;

module SendNACKM
{
  provides
  {
    interface StdControl;
    interface ISendNACK;
  }
}
implementation
{
#include "fluxconst.h"

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

  command bool ISendNACK.ready ()
  {
//PUT READY IMPLEMENTATION HERE

    return TRUE;
  }

  command result_t ISendNACK.nodeCall (SendNACK_in * in, SendNACK_out * out)
  {
//PUT NODE IMPLEMENTATION HERE
	//actually don't send anything
//Done signal can be moved if node makes split phase calls.
    signal ISendNACK.nodeDone (in, out, ERR_OK);
    return SUCCESS;
  }
}

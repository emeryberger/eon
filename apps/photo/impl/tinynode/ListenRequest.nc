configuration ListenRequest
{
  provides
  {
    interface StdControl;
    interface IListenRequest;
  }
}
implementation
{
  components ListenRequestM, GenericComm as Comm;

  StdControl = ListenRequestM.StdControl;
  StdControl = Comm.Control;
  IListenRequest = ListenRequestM.IListenRequest;
  ListenRequestM.ReceiveMsg -> Comm.ReceiveMsg[AM_QUERYMSG];
}

configuration SendFrame
{
  provides
  {
    interface StdControl;
    interface ISendFrame;
  }
}
implementation
{
  components SendFrameM, GenericComm as Comm, TimerC;

  StdControl = SendFrameM.StdControl;
  StdControl = TimerC.StdControl;
  StdControl = Comm.Control;
  
  
  ISendFrame = SendFrameM.ISendFrame;
  
  SendFrameM.SendMsg -> Comm.SendMsg[AM_STREAMMSG];
  SendFrameM.Timer -> TimerC.Timer[unique("Timer")];
  
}

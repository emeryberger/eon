configuration SendPage
{
  provides
  {
    interface StdControl;
    interface ISendPage;
  }
}
implementation
{
  components SendPageM, GenericComm as Comm, TimerC;

  StdControl = SendPageM.StdControl;
  StdControl = Comm.Control;
  StdControl = TimerC.StdControl;
  
  ISendPage = SendPageM.ISendPage;
  SendPageM.SendMsg -> Comm.SendMsg[AM_DATAMSG];
  SendPageM.Timer -> TimerC.Timer[unique("Timer")];
}

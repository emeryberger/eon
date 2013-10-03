configuration SendNACK
{
  provides
  {
    interface StdControl;
    interface ISendNACK;
  }
}
implementation
{
  components SendNACKM;

  StdControl = SendNACKM.StdControl;
  ISendNACK = SendNACKM.ISendNACK;
}

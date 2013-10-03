configuration ListenBeacon
{
  provides
  {
    interface StdControl;
    interface IListenBeacon;
  }
}
implementation
{
  components ListenBeaconM, RadioComm, ConnMgrC, NoLeds as Leds;
  StdControl = ListenBeaconM.StdControl;
  IListenBeacon = ListenBeaconM.IListenBeacon;
  
  StdControl = RadioComm;
  ListenBeaconM.ReceiveMsg -> RadioComm.ReceiveMsg[AM_BEACONMSG];
  ListenBeaconM.ConnMgr -> ConnMgrC.ConnMgr;
  ListenBeaconM.Leds -> Leds;
    
}



configuration GpsC 
{

  provides
    {
      interface StdControl;
      interface GpsFix;
    }
}

implementation
{
  components GpsM, MyGpsPacketC; 

  StdControl = GpsM;
  GpsFix = GpsM;
  GpsM.SubControl -> MyGpsPacketC.GpsControl;
  GpsM.GpsReceive -> MyGpsPacketC.GpsReceive;
}

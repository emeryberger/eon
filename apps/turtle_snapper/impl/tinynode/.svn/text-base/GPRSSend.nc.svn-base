

configuration GPRSSend
{
	provides
	{
		interface StdControl;
		interface IGPRSSend;
	}
}
implementation
{
  components GPRSSendM, TimerC, AckStoreC, ObjLogC, HPLUARTC; 

  StdControl = TimerC.StdControl;
  StdControl = GPRSSendM.StdControl;
  
  IGPRSSend = GPRSSendM.IGPRSSend;
  GPRSSendM.HPLUART -> HPLUARTC;

  GPRSSendM.Timer -> TimerC.Timer[unique("Timer")];
  GPRSSendM.OKTimer -> TimerC.Timer[unique("Timer")];
  GPRSSendM.AckStore -> AckStoreC.AckStore;
  GPRSSendM.ObjLog -> ObjLogC.ObjLog[unique("ObjLog")];
}

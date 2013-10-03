configuration CaptureFrame
{
  provides
  {
    interface StdControl;
    interface ICaptureFrame;
  }
}
implementation
{
  components CaptureFrameM, LedsC as Leds, HPLUARTC,TimerC;

  StdControl = CaptureFrameM.StdControl;
  StdControl = TimerC.StdControl;
  
  ICaptureFrame = CaptureFrameM.ICaptureFrame;
  CaptureFrameM.HPLUART -> HPLUARTC;
  CaptureFrameM.Timer -> TimerC.Timer[unique("Timer")];
  CaptureFrameM.ToTimer -> TimerC.Timer[unique("Timer")];
  CaptureFrameM.Leds -> Leds;
}

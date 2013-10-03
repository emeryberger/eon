configuration StoreFrame
{
  provides
  {
    interface StdControl;
    interface IStoreFrame;
  }
}
implementation
{
  components StoreFrameM, PageEEPROMC;

  StdControl = PageEEPROMC.StdControl;
  StdControl = StoreFrameM.StdControl;
  
  IStoreFrame = StoreFrameM.IStoreFrame;
  StoreFrameM.PageEEPROM -> PageEEPROMC.PageEEPROM[unique("PageEEPROM")];
}

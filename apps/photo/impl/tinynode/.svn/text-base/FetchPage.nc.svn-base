configuration FetchPage
{
  provides
  {
    interface StdControl;
    interface IFetchPage;
  }
}
implementation
{
  components FetchPageM, PageEEPROMC;

  StdControl = FetchPageM.StdControl;
  IFetchPage = FetchPageM.IFetchPage;
  FetchPageM.PageEEPROM -> PageEEPROMC.PageEEPROM[unique("PageEEPROM")];
}

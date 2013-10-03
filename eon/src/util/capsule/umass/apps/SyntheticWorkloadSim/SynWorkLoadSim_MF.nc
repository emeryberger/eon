/*
 * file:        SynWorkLoadSim.nc
 * description:
 *
 */

configuration SynWorkLoadSim_MF {
}

implementation {
    components Main, SynWorkLoadSim_MFC, PageEEPROMC,
               LedsC, GenericComm, TimerC, HPLPowerManagementM,
               CC2420RadioC;

    Main.StdControl -> SynWorkLoadSim_MFC;
    Main.StdControl -> GenericComm;

    SynWorkLoadSim_MFC.Flash -> PageEEPROMC.PageEEPROM[unique("PageEEPROM")];
    SynWorkLoadSim_MFC.FlashControl -> PageEEPROMC;
    SynWorkLoadSim_MFC.Leds -> LedsC;
    SynWorkLoadSim_MFC.SendRadioMsg -> GenericComm.SendMsg[3];
    SynWorkLoadSim_MFC.Timer -> TimerC.Timer[unique("Timer")];
    SynWorkLoadSim_MFC.PowerManagement -> HPLPowerManagementM;
    SynWorkLoadSim_MFC.RadioControl -> CC2420RadioC;
}

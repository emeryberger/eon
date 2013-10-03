/*
 * file:        SynWorkLoadSim.nc
 * description:
 *
 */

configuration SynWorkLoadSim_cc1000 {
}

implementation {
    components Main, SynWorkLoadSimC_cc1000, PageNANDM, 
               LedsC, GenericComm, TimerC, HPLPowerManagementM;

    Main.StdControl -> SynWorkLoadSimC_cc1000;
    Main.StdControl -> GenericComm;

    SynWorkLoadSimC_cc1000.PageNAND -> PageNANDM;
    SynWorkLoadSimC_cc1000.Leds -> LedsC;
    SynWorkLoadSimC_cc1000.SendMsg -> GenericComm.SendMsg[4];
    SynWorkLoadSimC_cc1000.SendRadioMsg -> GenericComm.SendMsg[3];
    SynWorkLoadSimC_cc1000.Timer -> TimerC.Timer[unique("Timer")];
    SynWorkLoadSimC_cc1000.PowerManagement -> HPLPowerManagementM;
    SynWorkLoadSimC_cc1000.CommControl -> GenericComm;
}

/*
 * file:        SynWorkLoadSim.nc
 * description:
 *
 */

configuration SynWorkLoadSim {
}

implementation {
    components Main, SynWorkLoadSimC, PageNANDM, 
               LedsC, GenericComm, TimerC, HPLPowerManagementM,
               CC2420RadioC;

    Main.StdControl -> SynWorkLoadSimC;
    Main.StdControl -> GenericComm;

    SynWorkLoadSimC.PageNAND -> PageNANDM;
    SynWorkLoadSimC.Leds -> LedsC;
    SynWorkLoadSimC.SendRadioMsg -> GenericComm.SendMsg[3];
    SynWorkLoadSimC.Timer -> TimerC.Timer[unique("Timer")];
    SynWorkLoadSimC.PowerManagement -> HPLPowerManagementM;
    SynWorkLoadSimC.RadioControl -> CC2420RadioC;
}

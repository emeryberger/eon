/*
 * file:        SynWorkLoadSim.nc
 * description:
 *
 */

configuration SynWorkLoadSim_telos {
}

implementation {
    components Main, SynWorkLoadSimC_telos, BlockStorageC,
               LedsC, TimerC;

    Main.StdControl -> SynWorkLoadSimC_telos;

    SynWorkLoadSimC_telos.Mount -> BlockStorageC.Mount[1];
    SynWorkLoadSimC_telos.BlockRead -> BlockStorageC.BlockRead[1];
    SynWorkLoadSimC_telos.BlockWrite -> BlockStorageC.BlockWrite[1];
    SynWorkLoadSimC_telos.Leds -> LedsC;
    SynWorkLoadSimC_telos.Timer -> TimerC.Timer[unique("Timer")];
}

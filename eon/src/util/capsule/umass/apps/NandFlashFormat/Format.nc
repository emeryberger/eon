/*
 * file:        Format.nc
 * description:
 *
 */
 
configuration Format {
}

implementation {
    components Main, FormatC, PageNANDM, LedsC;

    Main.StdControl -> FormatC;
	Main.StdControl -> PageNANDM;

    FormatC.PageNAND -> PageNANDM.PageNAND;
	FormatC.Leds -> LedsC;
}

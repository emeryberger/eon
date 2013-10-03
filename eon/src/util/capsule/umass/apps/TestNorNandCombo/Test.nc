/*
 * description:
 *
 */
 
configuration Test {
}

implementation {
    components Main, TestC, PageNANDM, LedsC, ConsoleC, HPLUARTC, PageEEPROMC;

    Main.StdControl -> TestC;
    Main.StdControl -> PageNANDM;
    Main.StdControl -> PageEEPROMC;

    TestC.Console -> ConsoleC;
    ConsoleC.HPLUART -> HPLUARTC;
    TestC.PageEEPROM -> PageEEPROMC.PageEEPROM[0];
    TestC.PageNAND -> PageNANDM.PageNAND;
    TestC.Leds -> LedsC;
}

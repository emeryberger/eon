/*
 * file:        Console.nc
 * description: simple serial console for mote
 *
 * $Id: Console.nc,v 1.1 2005/09/16 17:52:16 pjd Exp $
 */

interface Console {
    command result_t init();
    command result_t string(char *str);
    command result_t decimal(int32_t n);
    command result_t hex(uint32_t n);
    command result_t hexnl(int n);
    command result_t newline();
    event void input(char *str);
}

/*
 * file:        NandFlashC.nc
 * description: implementation of NAND flash driver
 *
 * author:      Peter Desnoyers, UMass Computer Science Dept.
 * $Id: NandFlashC.nc,v 1.7 2005/10/13 04:55:54 pjd Exp $
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 *
 */

module NandFlashM {
    provides interface StdControl;
    uses {
	interface PageNAND;
	interface Console;
    }
}

implementation {
    
    command result_t StdControl.init() {
	call Console.init();
	return SUCCESS;
    }

    command result_t StdControl.start() {
	call Console.printf0("+\n");
	return SUCCESS;
    }
    
    command result_t StdControl.stop() {
        return SUCCESS;
    }
    
    result_t verifyNAND(uint8_t *buf, uint8_t val) {
	uint16_t i;
	for (i = 0; i < 512; i++)
	    if (buf[i] != val)
		return FAIL;
	return SUCCESS;
    }
    
    uint8_t unhex(char c) {
	if (c >= 'A')
	    return c - 'A' + 10;
	return c - '0';
    }

    uint32_t hex2long(char *s) {
	uint32_t val = 0;
	while (*s >= '0' && *s <= '9' || *s >= 'A' && *s <= 'F') {
	    val = val << 4;
	    val = val + unhex(*s++);
	}
	return val;
    }
    
    /*    
     * i - read and print ID register
     * v xx - set value to hex value
     * w xxxxxx - write block <xxxxxx> with <value>
     * r xxxxxx - read block <xxxxxx> and verify =<value>
     * e xxxxxx - erase block <xxxxxx>
     * I - init
    */

    uint8_t val;
    uint8_t cmd;
    nandpage_t addr;
    uint8_t buf[528];
    int i, last;
    
    task void do_cmd() {
	result_t status = FAIL;

	if (cmd == 'I')
	    status = call PageNAND.init();
	else if (cmd == 'i') {
	    status = call PageNAND.id(buf);
	    for (i = 0; i < 4; i++)
		call Console.printf1(" %x2", buf[i]);
	    call Console.newline();
	}
	else if (cmd == 'w') {
	    call Console.printf2("%x4 <- %x2\n", addr, val);
	    memset(buf, val, sizeof(buf));
	    status = call PageNAND.write(addr, 0, buf, sizeof(buf));
	}
	else if (cmd == 'W') {
	    for (i = 0; i < sizeof(buf); i++) /* set incrementing values */
		buf[i] = val + i;
	    status = call PageNAND.write(addr, 0, buf, sizeof(buf));
	}
	else if (cmd == 'r') {
	    status = call PageNAND.read(addr, 0, buf, sizeof(buf));
	    status = status && verifyNAND(buf, val);
	}
	else if (cmd == 'R') {
	    call Console.printf1("block: %x4\n", addr);

	    memset(buf, 0, sizeof(buf));
	    status = call PageNAND.read(addr, 0, buf, sizeof(buf));
	    for (i = 0, last = -1; i < sizeof(buf); i++)
		if (last != buf[i]) {
		    last = buf[i];
		    call Console.printf2("%d: %x2\n", i, last);
		}
	}
	else if (cmd == 'z') {
	    call Console.printf1("%x4: ", addr);
	    for (i = addr; i < addr+16; i++)
		call Console.printf1(" %x2", buf[i]);
	    call Console.newline();
	    status = SUCCESS;
	}
	else if (cmd == 'e')
	    status = call PageNAND.erase(addr);
	else if (cmd == '?')
	    status = SUCCESS;

	if (status == SUCCESS)
	    call Console.printf0("+\n");
	else
	    call Console.printf0("-\n");
    }

    event result_t PageNAND.initDone(result_t r) {
	return SUCCESS;
    }
    event result_t PageNAND.eraseDone(result_t r) {
	return SUCCESS;
    }
    event result_t PageNAND.writeDone(result_t r) {
	return SUCCESS;
    }
    event result_t PageNAND.readDone(result_t r) {
	return SUCCESS;
    }

    bool unlocked = FALSE;

    event void Console.input(char *s) {
	uint32_t x = 0;

	call Console.printf0(s);
	call Console.newline();
    
    if ((s[0] == 'u') && (s[1] == 'u') && (s[2] == 'u'))
        unlocked = TRUE;

    if (unlocked)
    {
	    if ((cmd = s[0]) == 0)
	       return;

    	if (cmd != 'i' && cmd != 'I')
	        x = hex2long(s+2);

    	if (cmd == 'v') {
	        val = x;
	        call Console.printf0("+\n");
    	}
	    else {
	        addr = x;
	        post do_cmd();
    	}
    }
    }
}

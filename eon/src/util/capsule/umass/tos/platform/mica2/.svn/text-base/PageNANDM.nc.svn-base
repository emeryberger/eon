/*
 * file:        PageNANDM.nc
 * description:
 *
 * author:      Peter Desnoyers, UMass Computer Science Dept.
 * $Id: PageNANDM.nc,v 1.4 2005/11/17 15:31:54 pjd Exp $
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

includes nand;
includes PageNAND;

//#define FAL_DEBUG

module PageNANDM {
    provides {
        interface StdControl;
        interface PageNAND;
    }
//#ifdef DEBUG_NAND
    uses {
	interface Console;
    }
//#endif
}

implementation
{
result_t res;

#define NO_ADDR 0, NULL
#define NO_DATA 0, NULL
    
#define NAND_WE_PORT PORTD
#define NAND_WE_BIT 0
#define NAND_RE_PORT PORTD
#define NAND_RE_BIT 1

#define MAX_ADDR 5

    int addr_len = 5;
    int small_page = 1;
    uint16_t num_pages = 32766;
    
    /* translate page/offset into address for read/write command
     */
    int data_addr(nandpage_t page, nandoffset_t offset, uint8_t *buf) {
	*buf++ = offset; offset = offset >> 8;
	if (!small_page)
	    *buf++ = offset;
	*buf++ = page; page = page >> 8;
	*buf++ = page; page = page >> 8;
	*buf++ = page;
	
	return addr_len;
    }

    /* translate page/offset into address for erase command
     */
    int erase_addr(nandpage_t page, uint8_t *buf) {
	*buf++ = page; page = page >> 8;
	*buf++ = page; page = page >> 8;
	*buf++ = page; page = page >> 8;
	return small_page ? addr_len-1 : addr_len-2;
    }


    /* the all-purpose function to send a command to the flash and get
     * any results.
     */
    result_t SendRcv(uint8_t cmd, int naddr, uint8_t *addr,
		     int nout, uint8_t *out, int nin, uint8_t *in) {
    atomic {
        int i;
        register uint8_t we_hi, we_lo, re_hi, re_lo;
	
        TOSH_SET_NAND_WE_PIN();
        TOSH_SET_NAND_RE_PIN();
        TOSH_CLR_NAND_CE_PIN();	        /* start the transaction */

        TOSH_SET_NAND_CLE_PIN();        /* send the command */
        MAKE_PWBUS_OUTPUT();

	WRITE_PWBUS(cmd);
	TOSH_CLR_NAND_WE_PIN();
	TOSH_SET_NAND_WE_PIN();
#ifdef DEBUG_NAND
	call Console.printf1("cmd: %x2\n", cmd);
#endif

        TOSH_CLR_NAND_CLE_PIN();
	if (naddr > 0)
	    TOSH_SET_NAND_ALE_PIN();

        for (i = 0; i < naddr; i++) {	/* send the address */
            WRITE_PWBUS(addr[i]);
            TOSH_CLR_NAND_WE_PIN();
            TOSH_SET_NAND_WE_PIN();
        }
        TOSH_CLR_NAND_ALE_PIN();        /* redundant clear OK if n=0 */

#ifdef DEBUG_NAND
	if (naddr) {
	    call Console.printf1("addr: ", 0);
	    for (i = 0; i < naddr; i++)
		call Console.printf1("%x2", addr[i]);
	    call Console.newline();
	}
#endif
	    
        we_hi = inp(NAND_WE_PORT) | (1 << NAND_WE_BIT);
        we_lo = we_hi & ~(1 << NAND_WE_BIT);
	
        for (i = 0; i < nout; i++) {	/* send any data */
            WRITE_PWBUS(out[i]);
            outp(we_lo, NAND_WE_PORT);
	    //TOSH_CLR_NAND_WE_PIN(); 
            outp(we_hi, NAND_WE_PORT);
	    //TOSH_SET_NAND_WE_PIN();

        }

#ifdef DEBUG_NAND
	if (nout) {
	    call Console.printf1("%d bytes data:", nout);
	    for (i = 0; i < nout && i < 16; i++)
		call Console.printf1(" %x2", out[i]);
	    call Console.newline();
	}
#endif 

        TOSH_SET_NAND_RY_PIN();		/* set pullup */
	asm __volatile__ ("nop");
	asm __volatile__ ("nop");
        while (!TOSH_READ_NAND_RY_PIN()) /* wait for READY */
            ;
        TOSH_CLR_NAND_RY_PIN();

        re_hi = inp(NAND_RE_PORT) | (1 << NAND_RE_BIT);
        re_lo = re_hi & ~(1 << NAND_RE_BIT);

	
        MAKE_PWBUS_INPUT();
	WRITE_PWBUS(0);		/* no pullups */

	TOSH_CLR_NAND_RE_PIN();
	asm __volatile__ ("nop");
	
        for (i = 0; i < nin; i++) {
	    //TOSH_SET_NAND_RE_PIN();
	asm __volatile__ ("nop");
	asm __volatile__ ("nop");
            outp(re_hi, NAND_RE_PORT);
            in[i] = READ_PWBUS();	
	    //TOSH_CLR_NAND_RE_PIN();
            outp(re_lo, NAND_RE_PORT);
	asm __volatile__ ("nop");
        }
	TOSH_SET_NAND_RE_PIN();

#ifdef DEBUG_NAND
	if (nin) {
	    call Console.printf1("%d bytes in:", nin);
	    for (i = 0; i < nin && i < 16; i++)
		call Console.printf1(" %x2", in[i]);
	    call Console.newline();
	}
#endif
	
        TOSH_SET_NAND_CE_PIN();		/* finish the transaction */
    }

        return SUCCESS;
    }

    /********** Hacked for FAL **************/
    /* the all-purpose function to send a command to the flash and get
     * any results.
     */
    result_t FalReadSendRcv(uint8_t cmd, int naddr, uint8_t *addr,
             uint8_t *in1, int nin2, uint8_t *in2, uint8_t *in3) {    
    bool read_abort = FALSE;
    atomic {
        int i;
        register uint8_t we_hi, we_lo, re_hi, re_lo;
	    int count = 0;
        uint8_t byte; 
        uint16_t *dlen = NULL, tempval;

#ifdef FAL_DEBUG
        uint8_t temp[20];
#endif

       TOSH_SET_NAND_WE_PIN();
        TOSH_SET_NAND_RE_PIN();
        TOSH_CLR_NAND_CE_PIN();	        /* start the transaction */

        TOSH_SET_NAND_CLE_PIN();        /* send the command */
        MAKE_PWBUS_OUTPUT();

	WRITE_PWBUS(cmd);
	TOSH_CLR_NAND_WE_PIN();
	TOSH_SET_NAND_WE_PIN();
#ifdef DEBUG_NAND
	call Console.printf1("cmd: %x2\n", cmd);
#endif

        TOSH_CLR_NAND_CLE_PIN();
	if (naddr > 0)
	    TOSH_SET_NAND_ALE_PIN();

        for (i = 0; i < naddr; i++) {	/* send the address */
            WRITE_PWBUS(addr[i]);
            TOSH_CLR_NAND_WE_PIN();
            TOSH_SET_NAND_WE_PIN();
        }
        TOSH_CLR_NAND_ALE_PIN();        /* redundant clear OK if n=0 */

#ifdef DEBUG_NAND
	if (naddr) {
	    call Console.printf1("addr: ", 0);
	    for (i = 0; i < naddr; i++)
		call Console.printf1("%x2", addr[i]);
	    call Console.newline();
	}
#endif
	    
        we_hi = inp(NAND_WE_PORT) | (1 << NAND_WE_BIT);
        we_lo = we_hi & ~(1 << NAND_WE_BIT);
	
#ifdef DEBUG_NAND
	if (nout) {
	    call Console.printf1("%d bytes data:", nout);
	    for (i = 0; i < nout && i < 16; i++)
		call Console.printf1(" %x2", out[i]);
	    call Console.newline();
	}
#endif 

        TOSH_SET_NAND_RY_PIN();		/* set pullup */
	asm __volatile__ ("nop");
	asm __volatile__ ("nop");
        while (!TOSH_READ_NAND_RY_PIN()) /* wait for READY */
            ;
        TOSH_CLR_NAND_RY_PIN();

        re_hi = inp(NAND_RE_PORT) | (1 << NAND_RE_BIT);
        re_lo = re_hi & ~(1 << NAND_RE_BIT);

	
        MAKE_PWBUS_INPUT();
	WRITE_PWBUS(0);		/* no pullups */

	TOSH_CLR_NAND_RE_PIN();
	asm __volatile__ ("nop");


        /** FAL hack start **/
        asm __volatile__ ("nop");
        asm __volatile__ ("nop");
        while (1) {
            outp(re_hi, NAND_RE_PORT);
            byte = READ_PWBUS();
#ifdef FAL_DEBUG
            temp[count] = byte;
#endif
            tempval = nin2 + 3;
            outp(re_lo, NAND_RE_PORT);
        	//asm __volatile__ ("nop");

            /* Shove into the right buffer */
            if(count < 3)
            {
                /* Part of FAL header */
                in1[count]=byte;

                /* Have read the FAL header completely ->
                       Perform header sanity check */
                if(count == 2)
                {
                    dlen = (uint16_t *) in1;
                    if (*dlen > (TOS_NAND_PAGE_SIZE-3))
                    {
                        /* Dunno what im reading */
                        read_abort = TRUE;
                        break;
                    }
                }
            }
            else if ( (count >= 3) && (count < tempval) )
            {
                /* Part of App header */
                in2[count-3]=byte;

                /* Check for end */
                if (count == (tempval - 1))
                {
                    if( (count == (3 + *dlen -1)) || (in3 == NULL) )
                        /* This is the last byte || We dont want data */
                        break;
                }
            }
            else if ( (count >= tempval) && (count < (3 + *dlen)) )
            {
                /* Part of Data */
                in3[count-tempval]=byte;

                /* Check for end */
                if(count == (3 + *dlen -1))
                    /* This is the last byte */
                    break;
            }
            count++;
        }

	    TOSH_SET_NAND_RE_PIN();

        /** FAL hack end **/

#ifdef FAL_DEBUG
        {
	        call Console.string("Data read:");
	        for (i = 0; i <= count; i++)
            {
        		call Console.decimal(temp[i]);
                call Console.string(" ");
                TOSH_uwait(1000);
            }
	        call Console.newline();
        }
#endif
	
        TOSH_SET_NAND_CE_PIN();		/* finish the transaction */
        }

        if (read_abort == TRUE)
            return (FAIL);
        else
            return SUCCESS;
    }


    result_t InitPort() {
        TOSH_MAKE_NAND_WP_OUTPUT();     /* assert !WP */
        TOSH_SET_NAND_WP_PIN();
        
        TOSH_MAKE_NAND_CE_OUTPUT();     /* set up other pins */
        TOSH_SET_NAND_CE_PIN();
        TOSH_MAKE_NAND_CLE_OUTPUT();
        TOSH_CLR_NAND_CLE_PIN();
        TOSH_MAKE_NAND_ALE_OUTPUT();
        TOSH_CLR_NAND_ALE_PIN();
        TOSH_MAKE_NAND_WE_OUTPUT();
        TOSH_SET_NAND_WE_PIN();
        TOSH_MAKE_NAND_RE_OUTPUT();
        TOSH_SET_NAND_RE_PIN();

        TOSH_MAKE_NAND_RY_INPUT();
        TOSH_CLR_NAND_RY_PIN();         /* no active pullup */

        MAKE_PWBUS_INPUT();

        cbi(EIMSK, 4);                  /* disable RY/BY input */
        EICRB |= 0x03;                  /* make it rising-edge */

        return SUCCESS;
    }

    result_t ResetNAND() {
        return SendRcv(NAND_RESET, NO_ADDR, NO_DATA, NO_DATA);
    }
	
    command result_t StdControl.init() {
        return InitPort();
    }

    command result_t StdControl.start() {
        return SUCCESS;
    }

    command result_t StdControl.stop() {
        return SUCCESS;
    }

    
    command nandpage_t PageNAND.numPages() {
        return num_pages;
    }

    task void initRespond() {
        signal PageNAND.initDone(SUCCESS);
    }

    command result_t PageNAND.init() {
        ResetNAND();
        post initRespond();
        return SUCCESS;
    }

    default event result_t PageNAND.initDone(result_t r) {
        return FAIL;
    }
    
    /* For small-page flash, the address only gives us 8 bits to
     * indicate a beginning offset ranging from 0 to 527, so for both
     * reads and writes we have to use an additional command to set
     * the internal pointer if the start offset * is >= 256.
     */

    uint8_t write_status;
    
    task void WriteRespond() {
        signal PageNAND.writeDone(res);
    }
    
    command result_t PageNAND.write(nandpage_t page, nandoffset_t offset,
                                    void *data, nandoffset_t len) {
        uint8_t xaddr[MAX_ADDR], alen = data_addr(page, offset, xaddr);
        uint8_t cmd;
	    result_t result = FAIL;

        /*if (offset + len > 0x210)
        	  return FAIL;*/

        post WriteRespond();

    	if (small_page) {
	        if (offset > 0x1ff) 
        		cmd = NAND_READ_3;
    	    else if (offset > 0xff)
	        	cmd = NAND_READ_2;
    	    else
	        	cmd = NAND_READ_1;
    	    SendRcv(cmd, NO_ADDR, NO_DATA, NO_DATA);
	    }

    	write_status = 0;
        /* now send the data and program it.
         */
        if (SendRcv(NAND_DATA_IN, alen, xaddr, len, data, NO_DATA) &&
    	    SendRcv(NAND_PROGRAM, NO_ADDR, NO_DATA, NO_DATA) &&
	        SendRcv(NAND_STATUS, NO_ADDR, NO_DATA, 1, &write_status))
	        result = ((write_status & 0xC1) == 0xC0) ? SUCCESS : FAIL;

#ifdef DEBUG_NAND
    	call Console.printf1("status=%x2\n", write_status);
#endif
        res = result;
	    return result;
    }

    task void ReadRespond() {
        signal PageNAND.readDone(res);
    }

    task void FalReadRespond() {
        signal PageNAND.falReadDone(res);
    }


    command result_t PageNAND.read(nandpage_t page, nandoffset_t offset,
                                   void *data, nandoffset_t len) {
        uint8_t xaddr[MAX_ADDR], alen = data_addr(page, offset, xaddr);
        uint8_t cmd;

        post ReadRespond();

	    if (small_page) {
	        if (offset > 0x1ff)
        		cmd = NAND_READ_3;
    	    else if (offset > 0xff)
	        	cmd = NAND_READ_2;
    	    else
	        	cmd = NAND_READ_1;
    	    res = SendRcv(cmd, alen, xaddr, NO_DATA, len, data);
            return (res);
    	}
	    else {
	        SendRcv(NAND_READ_1, alen, xaddr, NO_DATA, NO_DATA);
    	    res = SendRcv(0x30, NO_ADDR, NO_DATA, len, data);
            return (res);
    	}
    }

    command result_t PageNAND.falRead(nandpage_t page, nandoffset_t offset,
                                      void *data1,  // this buffer is a constant 3 bytes (FAL header)
                                      void *data2, nandoffset_t len2,
                                      void *data3) 
    {
        uint8_t xaddr[MAX_ADDR], alen = data_addr(page, offset, xaddr);
        uint8_t cmd;

        if ((len2 > 0) && (data2 == NULL))
            return(FAIL);

	    if (small_page) {
	        if (offset > 0x1ff)
        		cmd = NAND_READ_3;
    	    else if (offset > 0xff)
	        	cmd = NAND_READ_2;
    	    else
	        	cmd = NAND_READ_1;
    	    res = FalReadSendRcv(cmd, alen, xaddr, data1, len2, data2, data3);
        }
	    else {
            SendRcv(NAND_READ_1, alen, xaddr, NO_DATA, NO_DATA);
    	    res = FalReadSendRcv(0x30, 0, NULL, data1, len2, data2, data3);
    	}

        post FalReadRespond();
        return (res);
    }


    command result_t PageNAND.id(uint8_t *id) {
	uint8_t addr = 0, len = small_page ? 2 : 4;
	return SendRcv(NAND_ID_READ, 1, &addr, NO_DATA, len, id);
    }
    

    task void EraseRespond() {
        signal PageNAND.eraseDone(SUCCESS);
    }

    command result_t PageNAND.erase(nandpage_t page) {
        uint8_t xaddr[MAX_ADDR], len = erase_addr(page, xaddr);
        SendRcv(NAND_ERASE, len, xaddr, NO_DATA, NO_DATA);
        SendRcv(NAND_ERASE_CONFIRM, NO_ADDR, NO_DATA, NO_DATA);
        post EraseRespond();
        return SUCCESS;
    }
    default event result_t PageNAND.eraseDone(result_t r) {
        return FAIL;
    }

    /* TODO: do something here
     */
    command result_t PageNAND.generateECC(void *data, nandoffset_t len,
                                          uint8_t *ecc) {
        return SUCCESS;
    }
    command result_t PageNAND.checkECC(void *data, nandoffset_t len,
                                       uint8_t *ecc) {
        return SUCCESS;
    }

//#ifdef DEBUG_NAND
    event void Console.input(char *s) {}
//#endif
}

    
    

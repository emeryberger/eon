/*
 * file:        ConsoleM.nc
 * description: implementation of simple serial console
 *
 * $Id: ConsoleC.nc,v 1.1 2005/09/16 17:52:16 pjd Exp $
 */

module ConsoleC {
    provides interface Console;
    uses interface HPLUART;
}

#define BUFSIZ 128

implementation {
    char buf[BUFSIZ];
    uint8_t head, tail;
    result_t status;
    bool busy;
    
    command result_t Console.init() {
	call HPLUART.init();
	return SUCCESS;
    }

    void buffer(char c) {
	uint8_t next;
	atomic {
	    next = (head+1) % BUFSIZ;
	    if (next == tail)
		status = FAIL;
	    else {
		buf[head] = c;
		head = next;
	    }
	}
    }

    void kick() {
	char c = 0;
	atomic {
	    if (!busy) {
		c = buf[tail];
		tail = (tail+1) % BUFSIZ;
		busy = 1;
	    }
	}
	if (c != 0) 
	    call HPLUART.put(c);
    }

    async event result_t HPLUART.putDone() {
	char c = 0;
	atomic {
	    if (head != tail) {
		c = buf[tail];
		tail = (tail+1) % BUFSIZ;
	    }
	    else
		busy = 0;
	}
	if (c != 0)
	    call HPLUART.put(c);
	return SUCCESS;
    }

    command result_t Console.string(char *str) {
	status = SUCCESS;
	while (*str != 0) {
	    if (*str == '\n') {
		buffer('\r'); buffer(*str++);
	    }
	    else
		buffer(*str++);
	}
	kick();
	return status;
    }
    
    static inline char hex(unsigned a) {
	if (a < 10) return '0' + a;
	return 'A' + a - 10;
    }

    command result_t Console.hex(uint32_t n) {
	status = SUCCESS;

	buffer('0');
	buffer('x');
	buffer(hex((n>>12)&15));
	buffer(hex((n>>8)&15));
	buffer(hex((n>>4)&15));
	buffer(hex(n&15));
	kick();
	
	return status;
    }

    command result_t Console.hexnl(int n) {
	status = SUCCESS;

	buffer(hex((n>>4)&15));
	buffer(hex(n&15));
	buffer('\r');
	buffer('\n');
	kick();
	
	return status;
    }
    
    command result_t Console.decimal(int32_t n) {
	char a, b, c, d, e;
	bool t = 0;

	/* cheesy binary-to-decimal conversion
	 */
	for ( a = '0' - 1; n >= 0; n -= 100000 ) ++a;
	for ( b = '9' + 1; n <  0; n += 10000  ) --b;
	for ( c = '0' - 1; n >= 0; n -= 1000   ) ++c;
	for ( d = '9' + 1; n <  0; n += 100    ) --d;
	for ( e = '0' - 1; n >= 0; n -= 10     ) ++e;
	n = '9' + 1 + n;

	status = SUCCESS;
	
	if (a != '0')	    buffer(a), t=1;
	if (b != '0' || t) buffer(b), t=1;
	if (c != '0' || t) buffer(c), t=1;
	if (d != '0' || t) buffer(d), t=1;
	if (e != '0' || t) buffer(e);
	buffer(n);
	kick();
	
	return status;
    }

    command result_t Console.newline() {
	status = SUCCESS;
	buffer('\r');
	buffer('\n');
	kick();
	return status;
    }

    uint8_t cmd[10], *ptr = cmd;

    task void do_cmd() {
	signal Console.input(cmd);
	atomic {
	    ptr = cmd;
	    *ptr = 0;
	}
    }

    default event void Console.input(char* s) {
    }

    async event result_t HPLUART.get(uint8_t t) {
	if (t == '\r' || t == '\n') 
	    post do_cmd();
	else if (ptr < &cmd[9]) {
	    *ptr++ = t;
	    *ptr = 0;
	}
	return SUCCESS;
    }
}

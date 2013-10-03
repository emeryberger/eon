/* $Id: RandRW.nc,v 1.1 2005/07/11 23:27:38 idgay Exp $
 * Copyright (c) 2005 Intel Corporation
 * All rights reserved.
 *
 * This file is distributed under the terms in the attached INTEL-LICENSE     
 * file. If you do not find these files, copies can be found by writing to
 * Intel Research Berkeley, 2150 Shattuck Avenue, Suite 1300, Berkeley, CA, 
 * 94704.  Attention:  Intel License Inquiry.
 */
/**
 * @author David Gay
 */
/*
  address & 3:
  0, 2: r
  1: w
  3: r&w
*/
module WriteC {
  provides interface StdControl;
  uses {
    interface Leds;
	interface Mount;
    interface BlockRead;
    interface BlockWrite;
  }
}
implementation {
	enum {WRITE = 0, ERASE_, COMMIT, READ};
	stm25p_addr_t addr = 0;
	uint8_t state;
	uint8_t data[256], data2[256];

	command result_t StdControl.init()
	{
		call Leds.init();
		state = READ;
		
		memset(data, 0, 256);

		return (SUCCESS);
	}

	command result_t StdControl.start()
	{
		if (call Mount.mount(1) != SUCCESS)
			call Leds.redOn();

		return (SUCCESS);
	}

	command result_t StdControl.stop()
	{
		return (SUCCESS);
	}

	task void flashtest()
	{
		TOSH_uwait(10000000);
		TOSH_uwait(10000000);
		TOSH_uwait(10000000);
		TOSH_uwait(10000000);
		TOSH_uwait(10000000);

		switch(state)
		{
			case(ERASE_):
				call Leds.greenOn();
				if (SUCCESS != call BlockWrite.write(addr, data, 256))
					call Leds.redOn();
				state = WRITE;
				break;
			case(WRITE):
				if (SUCCESS != call BlockWrite.commit())
					call Leds.redOn();
				state = COMMIT;
				break;
			case(COMMIT):
				call Leds.yellowOn();
				if (SUCCESS != call BlockRead.read(addr, data2, 256))
					call Leds.redOn();
				state = READ;
				break;
			case(READ):
				call Leds.greenOn();
				call Leds.yellowOn();
				if (SUCCESS != call BlockWrite.erase())
					call Leds.redOn();
				state = ERASE_;
				break;
		}
	}

	event void BlockWrite.writeDone(storage_result_t result, block_addr_t x, 
									void* buf, block_addr_t y)
	{
		if (result != STORAGE_OK)
			call Leds.redOn();

		post flashtest();
	}
	
	event void BlockWrite.eraseDone(storage_result_t result)
	{
		call Leds.greenOff();
		call Leds.yellowOff();
		if (result != STORAGE_OK)
			call Leds.redOn();

		post flashtest();
	}

	event void Mount.mountDone(storage_result_t result, volume_id_t id) 
	{
		if (result != STORAGE_OK)
			call Leds.redOn();
	
		post flashtest();
	}

	event void BlockWrite.commitDone(storage_result_t result)
	{
		if (result != STORAGE_OK)
			call Leds.redOn();
			
		call Leds.greenOff();

		post flashtest();
	}

	event void BlockRead.readDone(storage_result_t result, block_addr_t x, 
								  void* buf, block_addr_t rlen)
	{
		if (result != STORAGE_OK)
			call Leds.redOn();
			
		call Leds.yellowOff();

		if (memcmp(data, data2, 256) != 0)
			call Leds.redOn();

		post flashtest();
	}

	event void BlockRead.verifyDone(storage_result_t result) 
	{
	}

	event void BlockRead.computeCrcDone(storage_result_t result, uint16_t z, 
										block_addr_t x, block_addr_t y) 
	{
  	}
}

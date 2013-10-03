includes structs;

module StoreGPSDataM
{
	provides
	{
		interface StdControl;
		interface IStoreGPSData;
	}
	uses 
	{
		interface BitVec;
		command uint16_t getNextSeq();
	}
}
implementation
{
#include "fluxconst.h"

StoreGPSData_in *node_in;
StoreGPSData_out *node_out;

task void prepDateTime();
task void prepFix();

	command result_t StdControl.init ()
	{
		return SUCCESS;
	}
	
	command result_t StdControl.start ()
	{
		return SUCCESS;
	}
	
	command result_t StdControl.stop ()
	{
		return SUCCESS;
	}
	
	 /*
	IN:
		GpsData_t data - the gps reading that was taken
	OUT:
		chunkarr_t chunkarr - the two chunks to be added to the log
	 */
	
	command result_t IStoreGPSData.nodeCall (StoreGPSData_in * in,
											   StoreGPSData_out * out)
	{

		node_in = in;
		node_out = out;

		if (post prepDateTime())
		{
			return SUCCESS;
		} else {
			return FAIL;
		}
	}
  
	bool isdigit(uint8_t val)
	{
		return (val >= '0' && val <= '9');
	}
	
	uint8_t todigit(uint8_t ch)
	{
		return (ch-'0');
	}
	
	uint8_t ctob(char*buf, int start, int num)
	{
		uint8_t ret = 0;
		int i;
		
		for (i=start; i < start+num; i++)
		{
			if (!isdigit(buf[i]))
			{
				return 0xff;
			} 
			ret = (ret * 10) + todigit(buf[i]);
		}
		return ret;	
	}
	
	task void prepDateTime()
	{
		uint8_t *__writebuf;
		
		uint16_t seq;
		
		seq = call getNextSeq();
		__writebuf = node_out->chunkarr.chunks[0].data;
				
		 //pack data into __writebuf
		 //header first
		 __writebuf[0] = TOS_LOCAL_ADDRESS;
		 memcpy(__writebuf+1, &seq, sizeof(seq));
		 __writebuf[3] = BTYPE_GPSFIRST;
		 __writebuf[4] = 0;
		 __writebuf[5] = 0;
		 call BitVec.set16((uint16_t*)(__writebuf+4), TOS_LOCAL_ADDRESS, TRUE);
		//data
		
		__writebuf[6] = ctob(node_in->data.date, 0, 2); //day
		__writebuf[7] = ctob(node_in->data.date, 2, 2); //month
		__writebuf[8] = ctob(node_in->data.date, 4, 2); //year
		__writebuf[9] = node_in->data.fix.valid;		//valid
		__writebuf[10] = node_in->data.fix.hr;			//hour
		__writebuf[11] = node_in->data.fix.min;			//minute
		__writebuf[12] = node_in->data.fix.sats;		//satelites
		__writebuf[13] = node_in->data.fix.hdilution;	//horizontal dilution
		__writebuf[14] = node_in->data.fix.ns;			// 'N' or 'S'
		__writebuf[15] = node_in->data.fix.ew;			// 'E' or 'W'
		memcpy(__writebuf+16, &(node_in->data.fix.altitude), 2);
		__writebuf[18] = node_in->toofew;
		memcpy(__writebuf+19, &(node_in->numsats), 2);
		
		node_out->chunkarr.chunks[0].length = 21; //must be less than 28
		node_out->chunkarr.num = 1;
		
		post prepFix();
	}
  
	
	task void prepFix()
	{
		uint16_t seq;
		uint8_t *__writebuf;
		
		seq = call getNextSeq();
		__writebuf = node_out->chunkarr.chunks[1].data;
				
		 //pack data into __writebuf
		 //header first
		 __writebuf[0] = TOS_LOCAL_ADDRESS;
		 memcpy(__writebuf+1, &seq, sizeof(seq));
		 __writebuf[3] = BTYPE_GPSSECOND;
		 __writebuf[4] = 0;
		 __writebuf[5] = 0;
		 call BitVec.set16((uint16_t*)(__writebuf+4), TOS_LOCAL_ADDRESS, TRUE);
		
		
		//data
		memcpy(__writebuf+6, &(node_in->data.fix.lat_deg), 2);
		memcpy(__writebuf+8, &(node_in->data.fix.lat_min), 4);
		memcpy(__writebuf+12, &(node_in->data.fix.long_deg), 2);
		memcpy(__writebuf+14, &(node_in->data.fix.long_min), 4);
		//18 bytes
		
		node_out->chunkarr.chunks[1].length = 18; //better be less than 28
		node_out->chunkarr.num = 2;
		
		
		signal IStoreGPSData.nodeDone(node_in, node_out, ERR_OK);
		
	}
  
	
}

includes structs;

module StoreRTDataM
{
	provides
	{
		interface StdControl;
		interface IStoreRTData;
	}
	uses 
	{
		interface BitVec;
		command uint16_t getNextSeq();
		//interface IPathDone;
		interface IAccum;
		command bool getLevel(uint16_t *data);
	}
}
implementation
{
#include "fluxconst.h"

StoreRTData_in *node_in;
StoreRTData_out *node_out;


task void prepSingle();




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
	
	
	event void IAccum.update(int32_t inuJ, int32_t outuJ)
	{
  	
  }
	
	
	 /*
	IN:
		GpsData_t data - the gps reading that was taken
	OUT:
		nothing
	 */
	
	command result_t IStoreRTData.nodeCall (StoreRTData_in * in,
											   StoreRTData_out * out)
	{

		node_in = in;
		node_out = out;

		post prepSingle();
		
		return SUCCESS;
	}
  
	
	
	task void prepSingle()
	{		
		
		uint32_t tmp32;
		uint16_t tmp16;
		double tmpgrade;
		uint8_t *__writebuf;
		uint16_t seq;
		uint16_t level;
		seq = call getNextSeq();
		__writebuf = node_out->chunkarr.chunks[0].data;
				
		 //pack data into __writebuf
		 //header first
		 __writebuf[0] = TOS_LOCAL_ADDRESS;
		 memcpy(__writebuf+1, &seq, sizeof(seq));
		 __writebuf[3] = BTYPE_RTSTATE;
		 __writebuf[4] = 0;
		 __writebuf[5] = 0;
		 call BitVec.set16((uint16_t*)(__writebuf+4), TOS_LOCAL_ADDRESS, TRUE);
		//data
		
		tmp32 = call IAccum.getInMicroJoules();
		memcpy(__writebuf+6, &tmp32, 4);
		tmp32 = call IAccum.getOutMicroJoules();
		memcpy(__writebuf+10, &tmp32, 4);
		tmp16 = call IAccum.getVoltage();
		memcpy(__writebuf+14, &tmp16, 2);
		tmp32 = (call IAccum.getReserve() / 1000);
		memcpy(__writebuf+16, &tmp32, 4);
		__writebuf[20] = curstate;
		tmpgrade = curgrade * 100.0;
		__writebuf[21] = (uint8_t)tmpgrade;
		tmp16 = call IAccum.getTemperature();
		memcpy(__writebuf+22, &tmp16, 2);
		call getLevel(&level);
		memcpy(__writebuf+24,&level,2);
		node_out->chunkarr.chunks[0].length = 26; //better be less than 28
		node_out->chunkarr.num = 1;
		
		signal IStoreRTData.nodeDone(node_in, node_out, ERR_OK);
		
	}
  
	

	
}

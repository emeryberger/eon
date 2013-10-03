includes structs;

module GetGPSM
{
  provides
  {
    interface StdControl;
    interface IGetGPS;
  }
  uses
  {
  	interface StdControl as GpsControl;
	
	interface ConnMgr;
  	interface GpsFix;
	
	interface Timer as GpsTimer;
	interface Timer as SNRTimer;
	interface Timer as LockTimer;
	interface SysTime;
	//command bool getLevel(uint16_t *data);
  }
}
implementation
{

#include "GetGPS.h"

#define MAX_HDILUTION	30L
#define VALID_VALUE		0x01

#define LOCK_WAIT		500
#define LOCK_RETRIES	10

GetGPS_in* node_in;
GetGPS_out* node_out;


bool gotfix, gotdatetime;
int snrcount;
int retries;


  command result_t StdControl.init ()
  {
  	call GpsControl.init();
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

  
  
  void signalDone()
  {
  		call ConnMgr.unlock();
  		call LockTimer.stop();
  		call GpsTimer.stop();
		call SNRTimer.stop();
		call GpsControl.stop();
		g_in_gps = FALSE;
		call ConnMgr.radioOn();
		signal IGetGPS.nodeDone(node_in, node_out, ERR_OK);
  }
  
  task void GpsStartTask()
  {
  	//turn on GPS
	call GpsControl.start();
	//turn off radio---maybe
	call ConnMgr.radioOff();
	call GpsTimer.start(TIMER_ONE_SHOT, ((uint32_t)GPS_TIMEOUT)*1000L);
	
	//timer to stop early to do an Signal-to-noise ratio check
	//to see if it makes sense to continue
	call SNRTimer.start(TIMER_ONE_SHOT, ((uint32_t)SNR_TIMEOUT)*1000L);
  }
  
  task void LockTask()
  {
  	if (call ConnMgr.lock() == SUCCESS)
	{
		post GpsStartTask();
	} else {
		retries--;
		if (retries <= 0)
		{
			//try anyway.
			post GpsStartTask();
		} else {
			call LockTimer.start(TIMER_ONE_SHOT, LOCK_WAIT);
		}
	}
  }
  
  event result_t LockTimer.fired()
  {
  	
  	post LockTask();
	return SUCCESS;
  }
  
  //GetGPS
  // IN:	
  // OUT: 	GpsData_t data
  command result_t IGetGPS.nodeCall (GetGPS_in * in, GetGPS_out * out)
  {
//PUT NODE IMPLEMENTATION HERE
	node_in = in;
	node_out = out;
	
	gotfix = FALSE;
	gotdatetime = FALSE;
	
	node_out->toofew = FALSE;
	memset((node_out->data.date), 0, NMEA_CHARS_PER_FIELD);
	memset((node_out->data.time), 0, NMEA_CHARS_PER_FIELD);
	memset(&(node_out->data.fix), 0, sizeof((node_out->data.fix)));

	
#ifdef GPSTEST
	//start_time = call SysTime.getTime32();
	start_time = 0;
#endif
	
	
	node_out->numsats  = 0;
	
	g_in_gps = TRUE;
	retries = LOCK_RETRIES;
	post LockTask();
	
	/*		
	//turn on GPS
	call GpsControl.start();
	//turn off radio
	call ConnMgr.radioOff();
	call GpsTimer.start(TIMER_ONE_SHOT, ((uint32_t)GPS_TIMEOUT)*1000L);
	
	//timer to stop early to do an Signal-to-noise ratio check
	//to see if it makes sense to continue
	call SNRTimer.start(TIMER_ONE_SHOT, ((uint32_t)SNR_TIMEOUT)*1000L);
	*/
	return SUCCESS;
}


  
  task void AreWeDoneYet()
  {

  	if (gotfix 
		 && gotdatetime
		 && node_out->data.fix.hdilution <= MAX_HDILUTION)
	{
		signalDone();
		
	}
  }
  
  event result_t GpsFix.gotFix(GpsFixPtr fix)
  {
  	
	  if (fix->valid == VALID_VALUE) 
	{
		if (!gotfix || 
			fix->hdilution < node_out->data.fix.hdilution
		   )
		{
  		memcpy(&(node_out->data.fix), fix, sizeof(GpsFixData));
		gotfix = TRUE;
		post AreWeDoneYet();
		}
	}
	return SUCCESS;
  }
  
  event result_t GpsFix.gotDateTime(bool valid, char *gpsdate, char *gpstime)
  {
	
  	if (!gotdatetime ||  valid)
	{
  		memcpy((node_out->data.date), gpsdate, NMEA_CHARS_PER_FIELD);
		memcpy((node_out->data.time), gpstime, NMEA_CHARS_PER_FIELD);
	}
	gotdatetime = TRUE;
	
	post AreWeDoneYet();
	return SUCCESS;
  }
  
  
  
  event result_t GpsTimer.fired()
  {
  	signalDone();
	return SUCCESS;
  }
  
  event result_t SNRTimer.fired()
  {
  	int highCount;
  	//time to check the SNR
	highCount = call GpsFix.numSNRHigh(30);
	
	node_out->numsats = highCount;	
	//if SNR is too low, then
	if (highCount < 3)
	{
		node_out->toofew = TRUE;
		signalDone();
	}
	return SUCCESS;
  }
}

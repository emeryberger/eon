includes structs;

module CaptureFrameM
{
  provides
  {
    interface StdControl;
    interface ICaptureFrame;
  }
  uses
  {
  	interface HPLUART;
	interface Timer;
	interface Timer as ToTimer;
	interface Leds;
  }
}
implementation
{
#include "fluxconst.h"

#define NUMCMDS 2
#define BUFSIZE 3584
#define CAPTURE_TIMEOUT (6L * 1024L) //wait 3 seconds

  enum {
		S_INIT,
		S_IDLE,
		S_SEND
	};

	int state;
	int fresh = 0;
	char cmds[NUMCMDS][10] = {"ds 2 2\r","sf 0\r"};
	
	norace int curcmd = 0;
	norace int cmdidx = 0;
	norace int cmdlen = 0;
	
	uint8_t framebuf[BUFSIZE]; //14 256 byte pages
	uint16_t bufidx=0;
 	bool inframe = FALSE; 

	CaptureFrame_in * node_in;
	CaptureFrame_out * node_out;

  command bool ICaptureFrame.ready ()
  {
//PUT READY IMPLEMENTATION HERE

    return TRUE;
  }

  command result_t ICaptureFrame.nodeCall (CaptureFrame_in * in,
					   CaptureFrame_out * out)
  {
//PUT NODE IMPLEMENTATION HERE
	static int lockcount = 0;
	
	atomic {
		node_in = in;
		node_out = out;
	}
	
	
	/*if (framebuf[BUFSIZE-1] == 1)
	{
		lockcount++;
		if (lockcount >= 2)
		{
			framebuf[BUFSIZE-1] = 0;
		} else {
			return FAIL;
		}
	}*/
	lockcount = 0;
	
	//Turn the camera on
	//TOSH_SET_P40_PIN();
	TOSH_SET_P13_PIN();
	
	atomic state = S_SEND;
	atomic curcmd = 0;
	bufidx = 0;
	return call Timer.start(TIMER_ONE_SHOT, 500);

//Done signal can be moved if node makes split phase calls.
    //signal ICaptureFrame.nodeDone (in, out, ERR_OK);
    
  }
  
  command result_t StdControl.init() {
  	atomic state = S_INIT;
	memset(framebuf, 0, BUFSIZE);
    call Leds.init(); 
	call HPLUART.init();
	
	TOSH_MAKE_P40_OUTPUT();
	TOSH_CLR_P40_PIN();
	TOSH_MAKE_P12_OUTPUT();
	TOSH_CLR_P12_PIN();
	TOSH_MAKE_P13_OUTPUT();
	TOSH_CLR_P13_PIN();
	return SUCCESS;
  }

	command result_t StdControl.start()
	{
		atomic state = S_IDLE;
		return SUCCESS;
  	}

  command result_t StdControl.stop() {
  	call HPLUART.stop();
    return call Timer.stop();
	
  }


  task void sendByte()
  {
  	call HPLUART.put(cmds[curcmd][cmdidx]);
	
  }
  
  task void StartTimer()
  {
  	call Timer.start(TIMER_ONE_SHOT, 500);
  }
	async event result_t HPLUART.putDone()
	{
		atomic
		{
			if (state != S_SEND)
			{
				return SUCCESS;
			}
			cmdidx++;
		}
		if (cmdidx < cmdlen)
		{
			post sendByte();
		} else {
			curcmd++;
			post StartTimer();
			
		}
		
		return SUCCESS;
	}
  
  event result_t Timer.fired()
  {
  	atomic {
		if (curcmd >= NUMCMDS)
		{
			//all commands have been sent
			atomic state = S_IDLE;
			return SUCCESS;
		}
		cmdidx = 0;
		cmdlen = strlen(cmds[curcmd]);
	}
  	post sendByte();
    
	call ToTimer.start(TIMER_REPEAT, CAPTURE_TIMEOUT);
    return SUCCESS;
  }
  
  
  
  task void SignalDone()
  {
  	
  	TOSH_SET_P12_PIN();
  	TOSH_CLR_P13_PIN();
	call ToTimer.stop();
	atomic state = S_IDLE;
  	signal ICaptureFrame.nodeDone(node_in, node_out, ERR_OK);
  }
  
  task void SignalError()
  {
  	call Leds.redToggle();
  	TOSH_CLR_P13_PIN();
	call ToTimer.stop();
	atomic state = S_IDLE;
  	signal ICaptureFrame.nodeDone(node_in, node_out, ERR_USR);
  }
  
  event result_t ToTimer.fired()
  {
  	if (fresh == 0)
	{
  		//turn off the camera
		post SignalError();
	}
  	//end node
  	return SUCCESS;
  }
  
  
  
	event async result_t HPLUART.get(uint8_t data) 
	{
		fresh++;
		
		if (data == 1)
		{
			
			inframe = TRUE;
			bufidx = 0;
		}
		//if (inframe)
		{
			framebuf[bufidx] = data;
			bufidx++;
			if(bufidx >= BUFSIZE) 
			{
				bufidx = 0;
				
				
	
				post SignalError();
				return SUCCESS;
			}
		} 
		/*else {
			return SUCCESS;
		}*/
		if (data == 3)
		{
			//frame done
			node_out->frame = framebuf;
			//Turn the camera off
			
			//TOSH_CLR_P40_PIN();
				
			post SignalDone();
			
		}
		
		return SUCCESS;
	}
}

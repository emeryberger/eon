includes structs;	


module GPRSSendM
{
	provides
	{
		interface StdControl;
		interface IGPRSSend;
	}
	uses
	{
		interface HPLUART;
		interface Timer;
		interface Timer as OKTimer;
		interface AckStore;
		interface ObjLog;
	}
}
implementation
{
#include "fluxconst.h"
#define NUMMSG	100
#define NUMSEND	50
#define NUMCMDS	7
#define BUFSIZE 4000
#define RESPONSE_LENGTH 250
#define GPRS_RETRIES	5
	
	GPRSSend_in* node_in;
	GPRSSend_out* node_out;
	
	int msg_count;
	int record_count;
	norace int cmdidx;
	int cmdc;
	int msgidx;
	int failure;
	bool sending;
	norace bool endc = FALSE;
	int retries;

uint16_t turtles[NUMMSG];
uint16_t indices[NUMMSG];

char body[BUFSIZE];

norace char response[RESPONSE_LENGTH];
norace int response_idx;

chunk_t thechunk;


uint32_t cmddelay [NUMCMDS]= {	800L,		//wopen
				50000L,		//cgatt
				2000L,		//cgreg
				10000L,		//connectionstart
				10000L,		//putmail
				800L,		//special
				10000L};		//exit



char cmds[NUMCMDS][40] = {"AT+WOPEN=1\n",
							"AT+CGATT=1\n",
							"AT+CGREG=1\n",
							"AT#CONNECTIONSTART\n",
							"AT#PUTMAIL\n",
							"SPECIAL",
							"\r\n.\r\n",
							};

	result_t addMsg(chunk_t *chunk, uint16_t *spaceleft);
							
	command result_t StdControl.init ()
	{
		call HPLUART.init();
		msg_count = 0;
		body[0]=0;
		cmdidx = 0;
		cmdc = 0;
		failure = 0;		
		msgidx = 0;
		record_count = 0;
		return SUCCESS;
	}

	command result_t StdControl.start ()
	{
		TOSH_MAKE_P12_OUTPUT();
		TOSH_CLR_P12_PIN();	
		return SUCCESS;
	}

	command result_t StdControl.stop ()
	{
		return SUCCESS;
	}

	

	void BodyDone()
	{
		call Timer.start(TIMER_ONE_SHOT, 10000L);
	}
	
	task void readerTask()
  	{
  		result_t res;
		bool eol;
	
			
  		res = call ObjLog.read(1,&eol);
		if (res == FAIL)
		{
			if (eol)
			{
				//no more packets in log 1
				BodyDone();
				return;
			}
			retries--;
			if (retries <= 0)
			{
				BodyDone();
			} else {
				post readerTask();
			}
			return;
		}
  	}
	
	
	event result_t ObjLog.readDone(int logid, uint8_t *buffer, uint16_t numbytes, result_t success)
  	{
		result_t res;
		uint16_t space;
  	
  		if (success == FAIL )
		{
			retries--;
			if (retries <= 0)
			{
				BodyDone();
			} else {
				post readerTask();
			}
			return SUCCESS;
		}
	
		retries = GPRS_RETRIES;

		
		memcpy(thechunk.data, buffer, numbytes);
		thechunk.length = numbytes;

		
		res = addMsg(&thechunk, &space);
		
		if (res == FAIL)
		{
			BodyDone();
		} else {
			if (space > 100)
			{
				post readerTask();
			} else {
				BodyDone();
			}
		}
  		return SUCCESS;
  	}
  
  event result_t ObjLog.appendDone(int logid, result_t success)
  {
  	
	return SUCCESS;
  }
	
	
	command result_t IGPRSSend.nodeCall (GPRSSend_in * in, GPRSSend_out * out)
	{
//PUT NODE IMPLEMENTATION HERE
		TOSH_SET_P12_PIN();
		
		retries = GPRS_RETRIES;
		post readerTask();
		//call Timer.start(TIMER_ONE_SHOT, 10000L);
		return SUCCESS;
	}
	void Cleanup()
	{
		TOSH_CLR_P12_PIN();
		
	}
	
	void SignalSuccess()
	{
		/*int i;
		for (i=0; i < record_count; i++)
		{
			call AckStore.report_ack(turtles[i],indices[i],indices[i]);
		}*/
		record_count = 0;
		body[0] = 0;
		msg_count = 0;
		Cleanup();
		signal IGPRSSend.nodeDone(node_in, node_out, ERR_OK);
	}
	
	void SignalFailure()
	{
		failure++;
			Cleanup();
			signal IGPRSSend.nodeDone(node_in, node_out, ERR_OK);
	}
	
	task void SendCommandChar(){
	  char c;
	  if (cmdidx >= NUMCMDS || cmdc >= 40){
	    SignalFailure();
	    return;			
	  }
	  if (strstr (cmds[cmdidx], "SPECIAL") == NULL){ /* Make sure this isn't the body */
	    c = cmds[cmdidx][cmdc];
	    cmdc++;
	    /* special case for put mail end */
	    if (cmds[cmdidx][0] == '\r'){
	      if (cmdc == 5){
		cmdc = 0;
		msgidx = 0;
		endc = TRUE;
	      }
	    }
	    else if (c == '\n'){ /* Check if this is the last character in the command */
	      cmdc=0;
	      msgidx=0;
	      endc=TRUE;
	    }
	  }
	  else { /* Send the body of the message */
	    c = body[msgidx];
	    msgidx++;
	    if (msgidx >= msg_count || c == 0){ /* Last character of the body*/
	      endc = TRUE;
	      msgidx = 0;
	    }
	  }	    
	  call HPLUART.put(c);
	}
	
	async event result_t HPLUART.putDone()
	{
		if (!endc)
		{
			post SendCommandChar();
		} else {
	                call OKTimer.start(TIMER_ONE_SHOT, cmddelay[cmdidx]);
		}
		return SUCCESS;
	}
	
	event async result_t HPLUART.get(uint8_t data) 
	{
		if ((data!=0) && (response_idx < RESPONSE_LENGTH-2)) //reserve last byte for null-char
		{
			response[response_idx] = data;
			response[response_idx+1] = 0;
			response_idx++;
		}
		return SUCCESS;
	}
	
	event result_t OKTimer.fired()
	{

	    if (cmds[cmdidx][0] == '\r')
		{
			if (!((strstr(response, "OK") != NULL) || (strstr(response, "Ok") != NULL)))
			{
				SignalFailure();
				return SUCCESS;
			} 
		}


		cmdidx++;
		cmdc = 0;
		msgidx = 0;
		endc = 0;
		failure=0;

		if (cmdidx >= NUMCMDS)
		{
			//all commands have been sent and OK'd
			SignalSuccess();
		} else {
			response[0] = 0;
			response_idx = 0;
			post SendCommandChar();
		}
		return SUCCESS;
	}
	
	event result_t Timer.fired()
	{
		failure = 0;
		cmdidx = 0;
		cmdc = 0;
		endc = 0;
		response_idx = 0;
		response[0] = 0;
		post SendCommandChar();
		
		return SUCCESS;
	}

	char inttohexdigit(int val)
	{
		
		if (val >= 0 && val <= 9) return ('0' + val);
		if (val >= 10 && val <= 15) return ('A' + (val-0x0A));
		return '*';
	}
	
	result_t addMsg(chunk_t *chunk, uint16_t *spaceleft)
	{
		uint16_t len;
		int i;

		len = chunk->length;
		if (record_count < NUMMSG-1)
		{
			turtles[record_count] = chunk->data[0];
			indices[record_count] = chunk->data[1] + (chunk->data[2] << 8);
			record_count++;
		}
		
		*spaceleft = 0;
		
		if ((msg_count + (len*3)) > BUFSIZE-3) //leave space for ^Z and null char
		{
			return FAIL;
		}
		
		for (i=0; i < len; i++)
		{
			body[msg_count] = inttohexdigit((chunk->data[i] >> 4) & 0x0F);
			body[msg_count+1] = inttohexdigit(chunk->data[i] & 0x0F);
			body[msg_count+2] = ',';
			msg_count += 3;
		}
		body[msg_count] = '\n';
		msg_count++;
		body[msg_count] = 0;
		*spaceleft = (BUFSIZE-3 - msg_count);
		return SUCCESS;	
	}
  
}

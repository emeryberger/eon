//package net.tinyos.feedback; 

import net.tinyos.util.*; 
import net.tinyos.message.*; 
import java.io.*; 
import java.util.*; 


public class TransData implements MessageListener 
{ 
    private MoteIF mote; 
    private String logFilename;

    public static final short TOS_BCAST_ADDR = (short) 0xffff;

    public void TransData()
    { 
    } 

    public void start(String logFilename_)
    { 
        logFilename = logFilename_;
         
        mote = new MoteIF(); 
        mote.registerListener(new SimMsg(), this);
    } 
     
     
    synchronized public void messageReceived(int dest_addr, Message msg) 
    { 
        SimMsg sim_msg = (SimMsg)msg;
		 
		System.out.println("Page:" + sim_msg.get_page() +
                               " Offset:" + sim_msg.get_offset() +
                               " Expected value:" + sim_msg.get_eval() + 
                               " Got value:" + sim_msg.get_val() + 
							   " Len:" + sim_msg.get_len());
	}
		 

    public static void main(String[] args)
    { 
        TransData transdata; 
     
        transdata = new TransData(); 
		transdata.start(args[0]); 
		 
		return;
    } 
     
} 

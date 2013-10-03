package net.tinyos.feedback; 

import net.tinyos.util.*; 
import net.tinyos.message.*; 
import java.io.*; 
import java.util.*; 


public class TransData implements MessageListener 
{ 
    private long ts; 
    private long samplecount; 
    private MoteIF mote; 
    private String logFilename;

    public static final short TOS_BCAST_ADDR = (short) 0xffff;

    public void TransData()
    { 
    } 

    public void start(String logFilename_)
    { 
        ts = 0;
        samplecount = 0;
        logFilename = logFilename_;
         
        mote = new MoteIF(); 
        mote.registerListener(new SimMsg(), this);
    } 
     
     
    synchronized public void messageReceived(int dest_addr, Message msg) 
    { 
        SimMsg sim_msg = (SimMsg)msg;
		 
		samplecount++;
		 
        if (0 != sim_msg.get_err_type())
        {
            try
            { 
                PrintStream LogOut = new PrintStream(
                    new FileOutputStream(logFilename));
                LogOut.println("" + samplecount + 
                               " Error occurred ! Code : " + 
                               sim_msg.get_err_type());
                LogOut.close();
            } 
            catch(Exception e)
            { 
                System.out.println(e); 
            }
            System.out.println("" + samplecount + 
                               " Error occurred ! Code : " + 
                               sim_msg.get_err_type());
        }
        else
        {
            /*
            LogOut.println("" + samplecount +
                           " Data cycle : " + sim_msg.get_data_cyc() +
                           " Batch cycles : " + sim_msg.get_batch_cyc() +
                           " Flash page : " + sim_msg.get_write_page() + 
                           " offset : " + sim_msg.get_write_offset());
            */
            System.out.println("" + samplecount +
                               " Data cycle : " + sim_msg.get_data_cyc() +
                               " Batch cycles : " + sim_msg.get_batch_cyc() +
                               " Flash page : " + sim_msg.get_write_page() + 
                               " offset : " + sim_msg.get_write_offset());
        }
	} 
		 

    public static void main(String[] args)
    { 
        TransData transdata; 
     
        transdata = new TransData(); 
		transdata.start(args[0]); 
		 
		return;
    } 
     
} 

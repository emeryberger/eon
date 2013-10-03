// -*- C++ -*-

#ifndef _MESSAGEQUEUE_H_
#define _MESSAGEQUEUE_H_

#include "message.h"
#include "queue.h"

namespace markov
{

  template <typename STACKTYPE,
  				  typename DATATYPE,
  				  int NQUEUES>
  class messageQueue
  {
  private:

    markov::queue <message<STACKTYPE, DATATYPE> *> msgQ[NQUEUES];

  public:

    markov::message<STACKTYPE, DATATYPE> * read_message (int index)
    {
      return msgQ[index].fifo_pop ();
    }

    void send_message (int index,
    									 DATATYPE data,
    									 STACKTYPE * progStack)
    {
      if (index != -1)
			{
			  msgQ[index].fifo_push
			   (new markov::message<STACKTYPE,DATATYPE> (progStack, data));
			}
    }
    void send_message (message<STACKTYPE,DATATYPE> *msg, int index, DATATYPE data, STACKTYPE *stack) {
	if (index != -1) {
		msg->data = data;
		msg->stack = stack;
		msgQ[index].fifo_push(msg);
	}
	else {
		delete msg;
	}
}			  
};

};


#endif // _MESSAGEQUEUE_H_

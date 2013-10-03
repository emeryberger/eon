#ifndef __EVENT_H__
#define __EVENT_H__
 
#include "queue.h"
#include <ucontext.h>

namespace markov {
  class event {
  public:
    int type;
    int pathSum;
    queue<int> stack;
    void *in;
    
    inline int pop() { return stack.lifo_pop(); }
    inline void push(int val) { stack.fifo_push(val); }
  };
};

#endif

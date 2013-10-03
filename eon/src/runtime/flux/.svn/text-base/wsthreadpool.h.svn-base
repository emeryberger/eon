// -*- C++ -*-

#ifndef _WSTHREADPOOL_H_
#define _WSTHREADPOOL_H_

#include "queue.h"
#include "fred.h"
#include "random.h"
#include "functionclosure.h"

extern "C"
{
  // Forward declaration (see below).
  void *wsthreadpool_worker (void *tp);

  // The function type invoked by a call to create a thread.
  typedef void *(*wsthreadFunctionType) (void *);
}


namespace markov
{


  class wsthreadpool_base
  {
  public:
    virtual void worker (int index) = 0;
  };

  /**
   *
   * A pool of threads that wait for work and run it.
   * Uses work-stealing.
   *
   * @author Emery Berger
   */

    template < int NTHREADS > class wsthreadpool:public wsthreadpool_base
  {
  public:

    enum
    { THREAD_KILL_FUNCTION = 1 };

      wsthreadpool (void)
    {
      // Fire up all the threads in the pool.
      for (int i = 0; i < NTHREADS; i++)
	{
	  running[i] = true;
	  threads[i].create (wsthreadpool_worker,
			     new std::pair < wsthreadpool *, int >(this, i));
	}
    }

    // Place a task on the work queue to be picked up by a worker.
    inline void queue_task (void *(*fn) (void *), void *data)
    {
      // Put the work on the local queue, using the thread id
      // as the key. It might be better (& cheaper) to pass in
      // the id explicitly.
      task_queue[markov::fred::id () % NTHREADS].fifo_push
	(new functionClosure (fn, data));
    }

    // The actual worker.
    void worker (int myIndex)
    {
      // Look for work to do, first checking the local queue,
      // and then going out and randomly checking other work queues.
      markov::random rng;
      functionClosure *t;
      while (running[myIndex])
	{
	  if (tryLocal (myIndex, t))
	    {
	      runIt (myIndex, t);
	    }
	  else
	    {
	      if (trySteal (rng.next () % NTHREADS, t))
		{
		  runIt (myIndex, t);
		}
	    }
	}
    }

    // Kill one worker thread.
    void killOne (void)
    {
      static int index = 0;
      running[index] = false;
      index++;
    }

    // Wait for all worker threads to terminate.
    void wait (void)
    {
      for (int i = 0; i < NTHREADS; i++)
	{
	  threads[i].join ();
	}
    }

  private:

    void runIt (int myIndex, functionClosure * t)
    {
      if (t == (functionClosure *) THREAD_KILL_FUNCTION)
	{
	  running[myIndex] = false;
	}
      else
	{
	  t->run ();
	  delete t;
	}
    }

    bool tryLocal (int index, functionClosure * &t)
    {
      bool gotWork = task_queue[index].fifo_trypop (t);
      return gotWork;
    }

    bool trySteal (int index, functionClosure * &t)
    {
      bool gotWork = task_queue[index].lifo_trypop (t);
      return gotWork;
    }

    // Run state of each thread.
    volatile bool running[NTHREADS];

    // Queue of work to do.
    markov::queue < functionClosure * >task_queue[NTHREADS];

    // The worker threads.
    markov::fred threads[NTHREADS];
  };

};

// A helper function, to be invoked by a call to pthread_create
// (which requires functions to have C linkage).

extern "C" void *
wsthreadpool_worker (void *tp)
{
  std::pair < markov::wsthreadpool_base *, int >*p =
    (std::pair < markov::wsthreadpool_base *, int >*) tp;
  p->first->worker (p->second);
  delete p;
  return NULL;
}


#endif // _THREADPOOL_H_

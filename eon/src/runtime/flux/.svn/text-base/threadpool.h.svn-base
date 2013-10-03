// -*- C++ -*-

#ifndef _THREADPOOL_H_
#define _THREADPOOL_H_

#include "queue.h"
#include "fred.h"
#include "functionclosure.h"

extern "C"
{
  // Forward declaration (see below).
	void *threadpool_worker (void *tp);
}


namespace markov
{

  /**
	 * Base class for a threadpool
	 * \author Emery Berger
   **/
	class threadpool_base
	{
		public:
			virtual void worker (void) = 0;

    /**
			 * This gives a thread a number
			 * \author Emery Berger
	 **/
			class poolPair:public std::pair < markov::threadpool_base *, int >
			{
				public:
      // Constructor
					poolPair (markov::threadpool_base * b,
							  int n):std::pair < markov::threadpool_base *, int >(b, n)
					{
					}
			};

	};

  /**
	 *
	 * A pool of threads that wait for work and run it.
	 * NOTE: We will probably want a work-stealing variant!
	 *
	 * @author Emery Berger, Brendan Burns
   */
	template < int NTHREADS > class threadpool:public threadpool_base
	{
		public:
  
    // Constructor
			threadpool (void)
			{
      // Fire up all the threads in the pool.
				for (int i = 0; i < NTHREADS; i++)
				{
					threads[i].create (threadpool_worker, (void *) this);
				}
			}

			virtual ~threadpool (void) {}

    /**
			 * Place a task on the work queue to be picked up by a worker.
			 * \param fn The function to execute
			 * \param data Data for the function
	 **/
			inline void queue_task (void *(*fn) (void *), void *data)
			{
				task_queue.lifo_push (new functionClosure (fn, data));
			}
    /**
			 * Do the actual work
	 **/
			void worker (void)
			{
				while (true)
				{
					functionClosure *t = task_queue.fifo_pop ();
					if (t)
					{
	      				t->run ();
						//printf("about to run \n");
						//t->runInt ();
						//printf("run it!\n");
						delete t;
					}
					else
					{
	      // The task queue should return empty iff we are done
	      // executing.
						break;
					}
				}
			}

    // Kill one worker thread by queueing a null task
			void killOne (void)
			{
				task_queue.fifo_push (NULL);
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

    // Queue of work to do.
			markov::queue < functionClosure * >task_queue;

    // Beware - keep the NTHREADS-dependent stuff below here.
			markov::fred threads[NTHREADS];
	};

};

// A helper function, to be invoked by a call to pthread_create
// (which requires functions to have C linkage).

extern "C" void *
		threadpool_worker (void *tp)
{
	markov::threadpool_base * thePool = (markov::threadpool_base *) tp;
	thePool->worker ();
	return NULL;
}


#endif // _THREADPOOL_H_

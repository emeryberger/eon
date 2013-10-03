// -*- C++ -*-

#ifndef _STAGE_H_
#define _STAGE_H_

#include <algorithm>
#include <stdint.h>

#include "fred.h"
#include "queue.h"
#include "timer.h"
#include "random.h"

using namespace std;

extern "C" {
  typedef void * cfunction (void *);
  void * executeStage (void * arg);
}

namespace markov {
	
	class stageBase {
	public:
	
	  stageBase (const char * name,
                     int index)
             : _name (name),
               _index (index),
               _numberOfArrivals (0)
	  {}

		/// Send an event (data item) to the stage.
		/// @return True iff the event was successfully enqueued.
    virtual bool queueEvent (void * datum) = 0;
    
    /// Asynchronously start stage execution.
	  virtual void start (void) = 0;
	  
	  /// Stop stage execution.
    virtual void stop (void) = 0;
    
    /// The synchronous execute loop.
    virtual void execute (void *) = 0;
    
    /// Wait until the stage has finished.
    virtual void wait (void) = 0;   
    
	protected:
        
    /// The name of this stage.        
    const char * _name;
          
    /// The stage's index number.
    const int _index;

    /// How many times this stage has executed.          
    int _numberOfArrivals;
          
    /// How long the stage has spent running.
    markov::Timer _totalServiceTime;
          
    /// How long the stage has spent waiting.
    markov::Timer _totalWaitingTime;
	};

	
  template <class IMPLEMENTATION,
            bool REENTRANT,
            bool REPLICABLE,
            int MAX_THREADS>
  class stage;
        
  /**
   * The non-replicable version (one thread, no locks).
   *
   */
   
  template <class IMPLEMENTATION,
            int MAX_THREADS>
  class stage<IMPLEMENTATION, false, false, MAX_THREADS>
    : public stageBase {
  public:
  
    stage (const char * name, const int index)
      : stageBase (name, index),
        _running (false)
    {}
              
    virtual ~stage (void) {}
    
    bool queueEvent (void * datum) {
    	// Put the event onto the one queue.
      _queue.lifo_push (datum);
      // For now, allow arbitrary queuing.
      return true;
    }
    
    void start (void) {
    	// Spawn exactly one thread,
    	// passing in the stage and no arguments.
    	_running = true;
      _thread.create (executeStage,
                      new pair<stageBase *, void *>(this, NULL));
    }
    
    void stop (void) {
      _running = false;
    }
    
    void wait (void) {
      _thread.join();
    }
      
    void execute (void *) {
      _running = true;
      // Repeatedly wait for work to arrive on the queue,
      // pop it, and run it.
      void * work;
      while (_running) {

				// Now we're waiting -- start the waiting timer.
				// FIXME: This should be wall-clock time rather than virtual time!
        _totalWaitingTime.start();
        work = _queue.fifo_pop();
        
        // Done waiting -- stop the clock.
        _totalWaitingTime.stop();
        
        // Run, and account for the time spent running.
        _totalServiceTime.start();
        _theImplementation.run (work);
        _totalServiceTime.stop();

				// Now we're done running: bump the counter of runs so far.        
        _numberOfArrivals++;
      }
    }
    
  private:

		/// True iff we're still running.  
    bool _running;
    
    /// The single instance of the implementation object.
    IMPLEMENTATION _theImplementation;
    
    /// The queue of 'events'.
    markov::queue<void *> _queue;
    
    /// The thread for this stage.
    markov::fred _thread;
  };
    
  /**
   * The replicable version (any number of threads, no locks needed).
   *
   */
   
  template <class IMPLEMENTATION, int MAX_THREADS>
  class stage<IMPLEMENTATION, true, true, MAX_THREADS>
    : public stageBase {
  public:
    stage (const char * name, const int index)
      : stageBase (name, index),
        _running (false)
    {}
              
    virtual ~stage (void) {}
    
    bool queueEvent (void * datum) {
    	// We leverage the assumption that the data
    	// elements are dynamically allocated.
    	// We get rid of the three least-significant bits
    	// (accounting for double-word alignment),
    	// and hash on the address.
    	// The goal is to distribute load across the queues.
    	int hash = ((size_t) datum >> 3) % MAX_THREADS;
       _queue[hash].lifo_push (datum);
      // For now, allow arbitrary queuing.
      return true;
    }
    
    void start (void) {
    	// Spawn threads, each with their own index.
      _running = true;
      for (long i = 0; i < MAX_THREADS; i++) {
	pair<markov::stageBase *, void *> * p =
	  new pair<markov::stageBase *, void *>(this, (void *)i);
        _thread[i].create (executeStage, (void *) p);
      }
    }
    
    void stop (void) {
      _running = false;
    }
    
    void wait (void) {
      for (int i = 0; i < MAX_THREADS; i++) {
        _thread[i].join();
      }
    }
      
    void execute (void * v) {
    	// Run work until we are done, following
    	// a work-stealing discipline.
      const int myIndex = (const long) v;
      int localNumberOfArrivals;
      markov::Timer localServiceTime, localWaitingTime;
      markov::random rng;
      int msToSleep = 1;
      while (_running) {
      	// Check for work on the local queue.
      	bool gotWork = false;
      	void * work;
        localWaitingTime.start();
				int index = myIndex;
        gotWork = _queue[index].fifo_trypop (work);
        if (gotWork) {
         	 // We got work: reset the backoff timer.
         	 // Execute the work below.
         	 msToSleep = 1;
        } else {
          // Try to steal some work.
          // Pick a random victim queue, and try to pop off
          // work from the back.
          index = rng.next() % MAX_THREADS;
          gotWork = _queue[index].lifo_trypop (work);
				  if (!gotWork) {
            // No work on the victim queue.
            // We'll be yielding since this was a failed steal attempt.
            // Backoff, exponentially.
            msToSleep *= 2;
            if (msToSleep > 64) {
              msToSleep = 1;
            }
            fred::yield (msToSleep);
            continue;
					}
        }
        localNumberOfArrivals++;
        // Do the work, starting and stopping the appropriate timers.
        localWaitingTime.stop();
        localServiceTime.start();
        doThatWork (index, work);
        localServiceTime.stop();
        // Every so often, update global stats.
#if 0 // FIXME!         
        if (localVisitCount % 20 == 0) {
          _numberOfArrivals += localNumberOfArrivals;
          _totalServiceTime += localServiceTime;
          _totalWaitingTime += localWaitingTime;
        }
#endif
      }
    }
    
      
  private:
      
    inline void doThatWork (int index, void * work) {
      // NOTE: We may have to lock here!
      // This depends on whether the implementation objects
      // are reentrant or not.
      _theImplementation[index].run (work);
    }
    
    volatile bool _running;
    markov::fred _thread[MAX_THREADS];
    markov::queue<void *> _queue[MAX_THREADS];
    IMPLEMENTATION _theImplementation[MAX_THREADS];
  };
    
};

extern "C" {

  // This is the C proxy function that invokes a stage.
  // Needed because POSIX doesn't support C++ functions
  // as arguments for thread creation.
  void * executeStage (void * arg) {
  	// Dismantle the arguments into a stageBase and an argument.
    pair<markov::stageBase *, void *>*& v
      = (pair<markov::stageBase *, void *> *&) arg;
    markov::stageBase * s =  v->first;
    s->execute (v->second);
    return NULL;
  }
  
}

#endif // _STAGE_H_

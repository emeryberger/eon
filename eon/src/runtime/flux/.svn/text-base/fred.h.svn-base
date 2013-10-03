// -*- C++ -*-

#ifndef _FRED_H_
#define _FRED_H_

/// A thread-wrapper of childlike simplicity :).

#if defined(_WIN32)

#include <windows.h>
#include <process.h>

#elif defined(__SVR4)

#include <thread.h>
#include <pthread.h>
#include <unistd.h>
#include <sched.h>
#include <time.h>

#else

#include <pthread.h>
#include <unistd.h>
#include <sched.h>
#include <time.h>

#endif


namespace markov
{

  class fred
  {
  public:

    fred (void)
    {
#if defined(_WIN32)
#else
      pthread_attr_init (&attr);
#endif
    }
    inline void detach() {
#if defined(_WIN32)
#else
	pthread_detach(thread);
#endif
    }
    void create (void *(*function) (void *), void *arg, int priority = 0)
    {
#if defined(_WIN32)
      thread =
	CreateThread (0, 0, (LPTHREAD_START_ROUTINE) * function, (LPVOID) arg,
		      0, 0);
#else
      struct sched_param param;
      param.sched_priority = priority;
      pthread_attr_setschedparam (&attr, &param);
      if (pthread_create (&thread, &attr, function, arg))
	perror("Thread create");
#endif
    }

    void join (void)
    {
#if defined(_WIN32)
      WaitForSingleObject (thread, INFINITE);
#else
      pthread_join (thread, NULL);
#endif
    }

    static void yield (int milliseconds = 0)
    {
#if defined(_WIN32)
      Sleep (milliseconds);
#elif defined(__SVR4)
      thr_yield ();
#else
      if (milliseconds) {
        struct timespec rqtp;
        rqtp.tv_sec = 0;
        rqtp.tv_nsec = milliseconds * 1000;
        nanosleep(&rqtp, NULL);
        // sleep (milliseconds / 1000);
      }
      sched_yield ();
#endif
    }

		// Lower the priority of this thread
		// (where lower actually means lower, not the inverse as in UNIX).
	  void lowerPriority (void) {
#if defined(_WIN32)
#elif defined(_POSIX_THREAD_PRIORITY_SCHEDULING)
			struct sched_param param;
			int policy;
			pthread_getschedparam (thread, &policy, &param);
			param.sched_priority++;
	    pthread_setschedparam (thread, policy, &param);
#endif
	  }
	  
	  // Raise the priority of this thread.
	 	void raisePriority (void) {
#if defined(_WIN32)
#elif defined(_POSIX_THREAD_PRIORITY_SCHEDULING)
			struct sched_param param;
			int policy;
			pthread_getschedparam (thread, &policy, &param);
			param.sched_priority--;
	    pthread_setschedparam (thread, policy, &param);
#endif
	 	}

    static void setConcurrency (int n)
    {
#if defined(_WIN32)
#elif defined(__SVR4)
      thr_setconcurrency (n);
#else
      pthread_setconcurrency (n);
#endif
    }

    static unsigned long id (void)
    {
      volatile unsigned long v;
#if defined(_WIN32)
      v = (unsigned long) GetCurrentThreadId ();
#else
      v = (unsigned long) pthread_self () >> 10;
#endif
      return v;
    }

  private:
#if defined(_WIN32)
    typedef HANDLE fredType;
#else
    typedef pthread_t fredType;
    pthread_attr_t attr;
#endif

    fredType thread;
  };

}


#endif

// -*- C++ -*-

#ifndef _LOCH_H_
#define _LOCH_H_

#if defined(_WIN32)

#define _WIN32_WINNT 0x0500
#include <windows.h>
#include <process.h>

#elif defined(__SVR4)

#include <thread.h>
#include <pthread.h>
#include <unistd.h>

#else

#include <pthread.h>
#include <unistd.h>

#endif

namespace markov
{

  class loch
  {
  public:

    loch (void)
    {
#if defined(_WIN32)
      _mutex = CreateMutex (NULL, false, NULL);
      _cond = CreateEvent (NULL, false, false, NULL);
#else
      pthread_cond_init (&_cond, NULL);
      pthread_mutex_init (&_mutex, NULL);
#endif
    }

     ~loch (void)
    {
#if defined(_WIN32)
      CloseHandle (&_mutex);
      CloseHandle (&_cond);
#else
      pthread_cond_destroy (&_cond);
      pthread_mutex_destroy (&_mutex);
#endif
    }

    void lock (void)
    {
#if defined(_WIN32)
      WaitForSingleObject (&_mutex, INFINITE);
#else
      pthread_mutex_lock (&_mutex);
#endif
    }

    void unlock (void)
    {
#if defined(_WIN32)
      ReleaseMutex (&_mutex);
#else
      pthread_mutex_unlock (&_mutex);
#endif
    }

    void wait (void)
    {
#if defined(_WIN32)
      SignalObjectAndWait (_mutex, _cond, INFINITE, FALSE);
#else
      pthread_cond_wait (&_cond, &_mutex);
#endif
    }

    void signal (void)
    {
#if defined(_WIN32)
      SetEvent (_cond);
#else
      pthread_cond_signal (&_cond);
#endif
    }

    void broadcast (void)
    {
#if defined(_WIN32)
      SetEvent (_cond);
#else
      pthread_cond_broadcast (&_cond);
#endif
    }

  private:

#if defined(_WIN32)
    HANDLE _mutex;
    HANDLE _cond;
#else
    pthread_mutex_t _mutex;
    pthread_cond_t _cond;
#endif

  };

};


#endif // _LOCH_H_

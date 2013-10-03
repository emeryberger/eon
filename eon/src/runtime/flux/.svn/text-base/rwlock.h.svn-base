#ifndef _RW_LOCK_H_
#define _RW_LOCK_H_

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
namespace markov {
  class rwlock {
  public:
    rwlock() {
      pthread_rwlock_init(&_lock, NULL);
    }

    ~rwlock() {
      pthread_rwlock_destroy(&_lock);
    }
    
    void readLock() {
      pthread_rwlock_rdlock(&_lock);
    }

    bool tryReadLock() {
      return !pthread_rwlock_tryrdlock(&_lock);
    }

    void writeLock() {
      pthread_rwlock_wrlock(&_lock);
    }

    bool tryWriteLock() {
      return !pthread_rwlock_trywrlock(&_lock);
    }

    void unlock() {
      pthread_rwlock_unlock(&_lock);
    }

  protected:
    pthread_rwlock_t _lock;
  };
};

#endif
    

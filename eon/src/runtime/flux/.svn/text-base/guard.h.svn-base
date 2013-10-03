#ifndef _GUARD_H_
#define _GUARD_H_

#include "loch.h"

namespace markov
{

  // Acquire & release a lock via
  // the magic of stack allocation :)
  class guard
  {
  public:
    guard (markov::loch & l):_lock (l)
    {
      _lock.lock ();
    }
     ~guard ()
    {
      _lock.unlock ();
    }
  private:
      markov::loch & _lock;
  };

};

#endif // _GUARD_H_

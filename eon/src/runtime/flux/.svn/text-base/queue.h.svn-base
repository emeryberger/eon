// -*- C++ -*-

#ifndef _QUEUE_H_
#define _QUEUE_H_

#include <stdlib.h>

#include <list>			// STL

#include "loch.h"
#include "guard.h"

namespace markov
{

  /**
   * A blocking queue / stack.
   */
  template < typename TYPE > class queue
  {
  public:

    /**
     * 	Constructor
     **/
    queue (void)
    {
    }
     ~queue (void)
    {
    }

    /**
     * Add something at the end of the queue
     * \param [in] data The data to add
     **/
    inline void fifo_push (TYPE data)
    {
      markov::guard m (lock);
      q.push_front (data);
      // We've added one: wake up exactly ONE waiting thread.
      lock.signal ();
    }

    inline void lifo_push (TYPE data)
    {
      markov::guard m (lock);
      q.push_back (data);
      // We've added one: wake up exactly ONE waiting thread.
      lock.signal ();
    }

    /**
     * Pop something from the queue in first-in first-out (FIFO) order
     * \return The oldest item in the queue
     **/
    inline TYPE fifo_pop (void)
    {
      markov::guard m (lock);
      while (q.empty ())
	{
	  lock.wait ();
	}
      TYPE result = q.back ();
      q.pop_back ();
      return result;
    }

    inline bool lifo_trypop (TYPE & v)
    {
      markov::guard m (lock);
      if (q.empty ())
	{
	  return false;
	}
      else
	{
	  v = q.front ();
	  q.pop_front ();
	  return true;
	}
    }

    inline bool fifo_trypop (TYPE & v)
    {
      markov::guard m (lock);
      if (q.empty ())
	{
	  return false;
	}
      else
	{
	  v = q.back ();
	  q.pop_back ();
	  return true;
	}
    }

    /**
     * Pop something from the queue in last-in first-out (LIFO) order
     * \return The youngest item in the queue
     **/
    inline TYPE lifo_pop (void)
    {
      markov::guard m (lock);
      while (q.empty ())
	{
	  lock.wait ();
	}
      TYPE result = q.front ();
      q.pop_front ();
      return result;
    }

    inline int size() {
      return q.size();
    }

  private:

    // The list itself.
    // NOTE: For now, assume that the STL allocator is reasonably efficient.
    // We can fix this later if need be.
    std::list < TYPE > q;

    // The lock (& condition variable) that protects the list.
    markov::loch lock;
  };

};

#endif // _QUEUE_H_

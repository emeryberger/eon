// This looks like C but its really -*- C++ -*-

#ifndef _CACHE_H_
#define _CACHE_H_

#include "loch.h"
extern "C"
{
#include "plhash.h"
}
namespace markov
{
  class cache
  {
  public:

    enum { MAX_SIZE = 20 };

    class element
    {
    public:
      element (const char *filename,
	       const char *d,
	       const char *ct,
	       int len)
	: hits (0),
	  refs (0),
	  length (len),
	  name (filename),
	  data (d),
	  content_type (ct)
      {
      }

      ~element (void)
      {
	// NOTE: if the pointers coming in are persistent data...

	// delete name;
	// delete data;
	// delete content_type;
      }
      int hits;
      int refs;
      int length;

      const char *name;
      const char *data;
      const char *content_type;
      
      markov::loch lock;
      element *next;
      element *previous;
    };

    inline cache (void)
      : head (NULL),
	tail (NULL),
	size (0)
    {
      g_hash = PL_NewHashTable
	(100, PL_HashString, PL_CompareStrings, PL_CompareValues, NULL, NULL);
    }

    inline element *get (char *filename)
    {
      element *ele = (element *) PL_HashTableLookupConst (g_hash, filename);
      if (ele)
	{
	  ele->hits++;
	  ele->lock.lock ();
	  ele->refs++;
	  ele->lock.unlock ();
	}
      return ele;
    }

    inline void finish (element * ele)
    {
      ele->lock.lock ();
      ele->refs--;
      if (ele->refs == 0)
	ele->lock.broadcast ();
      ele->lock.unlock ();
    }

    inline void add (char *filename, char *data, char *content, int length)
    {
      
      add_mutex.lock ();
      element *ele;
      if (size == MAX_SIZE)
	{
	  // FIXME: This is broken (copied from original).
	  // Fixed (I think) - BB
	  // Remove the tail element
	  ele = tail;
	  // Wait for users
	  ele->lock.lock ();
	  if (ele->refs > 0)
	    ele->lock.wait ();
	  PL_HashTableRemove (g_hash, filename);

	  // Remove it
	  tail->previous->next = NULL;
	  tail = tail->previous;

	  // Delete old stuff
	  free ((char *) ele->data);
	  free ((char *) ele->content_type);
	  free ((char *) ele->name);

	  // Imprint new stuff
	  ele->name = filename;
	  ele->data = data;
	  ele->content_type = content;
	  ele->length = length;

	}
      else
	{
	  ele = new element (filename, data, content, length);
	  size++;
	}

      ele->next = head;
      ele->previous = NULL;
      if (head)
	head->previous = ele;
      else
	tail = ele;
      head = ele;
      PL_HashTableAdd (g_hash, ele->name, ele);
      add_mutex.unlock ();
    }

    inline void clear (void)
    {
      element *finger = head;
      while (finger)
	{
	  element *tmp = finger;
	  finger = finger->next;
	  delete tmp;
	}
      head = NULL;
      tail = NULL;
    }

  private:

    element * head;

    element *tail;

    int size;

    PLHashTable *g_hash;

    markov::loch add_mutex;
  };
};

#endif // _CACHE_H_

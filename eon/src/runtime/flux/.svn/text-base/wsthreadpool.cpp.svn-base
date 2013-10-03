#include <iostream>
#include <stdio.h>
#include <math.h>
#include <algorithm>		// STL
#include "wsthreadpool.h"

/*
 * This is a unit test for wsthreadpool.
 */

const int numberOfItems = 20;
int items[numberOfItems];
const int numberOfThreads = 4;

extern "C" void *
setValue (void *ind)
{
  std::pair < int, int >*p = (std::pair < int, int >*) ind;
  items[p->first] = p->second;
  for (int i = 0; i < 3000000; i++)
    {
      volatile double d = 1.0 * 2.0 * i * sin (i);
    }
  delete p;
  return NULL;
}

int
main (int argc, char *argv[])
{
  markov::wsthreadpool < numberOfThreads > tp;
  int i;

  // Each thread should set item i to the value i*2.
  for (i = 0; i < numberOfItems; i++)
    {
      std::pair < int, int >*p = new std::pair < int, int >(i, i * 2);
      tp.queue_task (setValue, p);
    }

  sleep (5);

  // Close the waiters.
  for (i = 0; i < numberOfThreads; i++)
    {
      tp.killOne ();
    }

  // Wait for a bit.
  tp.wait ();

  bool passedTests = true;

  // Now check.
  for (int j = 0; j < numberOfItems; j++)
    {
      if (items[j] != j * 2)
	{
	  passedTests = false;
	  std::cerr << "Mismatch: expected " << j * 2
	    << ", got " << items[j] << std::endl;
	}
    }
  if (passedTests)
    {
      fprintf (stderr, "****Passed all tests.***\n");
    }
  else
    {
      fprintf (stderr, "Failed.\n");
    }

  return (passedTests ? 0 : -1);
}

#include <iostream>
#include "queue.h"

/*
 * This is a unit test for queue.
 */

int
main (int argc, char *argv[])
{
  int entries[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
  markov::queue < int *>q;
  for (int n = 0; n < sizeof (entries) / sizeof (int); n++)
    {
      q.fifo_push (&entries[n]);
    }
  bool passedTests = true;
  for (int i = 0; i < sizeof (entries) / sizeof (int); i++)
    {
      int *val = q.fifo_pop ();
      if ((*val) != entries[i])
	{
	  passedTests = false;
	  std::cerr << "Mismatch: expected " << entries[i]
	    << ", got " << (*val) << std::endl;
	}
    }
  if (passedTests)
    {
      std::cerr << "Passed all tests." << std::endl;
    }
  else
    {
      std::cerr << "Failed." << std::endl;
    }
  return (passedTests ? 0 : -1);
}

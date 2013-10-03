#ifndef _RANDOM_H_
#define _RANDOM_H_

#include <stdlib.h>

namespace markov
{

  // Implementation borrowed from Gloger's ptmalloc.
  class random
  {
  public:
    random (unsigned long seed = 0)
    {
      int j;
      unsigned long xv =
	((unsigned long) IC - seed) % (unsigned long) RANDOM_MAX;
      for (j = 0; j < 97; j++)
	{
	  xv = ((unsigned long) IA * xv + (unsigned long) IC)
	    % (unsigned long) RANDOM_MAX;
	  v[j] = xv;
	}
      x = (IA * xv + IC) % RANDOM_MAX;
        y = x;
    }

    unsigned long next (void)
    {
      int j = ((int) y) % 97;
      y = v[j];
      x = (unsigned long) ((IA * x + IC) % RANDOM_MAX);
      v[j] = x;
      return y;
    }

  private:
    enum
    { RANDOM_MAX = 7140251UL };

    // Constants for the random number generator,
    // from Numerical Recipes in C.
    enum
    { IA = 13661UL, IC = 1508891UL };

    unsigned long x;
    unsigned long y;
    unsigned long v[97];
  };

};

#endif // _RANDOM_H_

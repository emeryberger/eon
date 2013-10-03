#include <stdio.h>
#include "stage.h"

class DoSomething {
public:
  DoSomething (void)
    : v (0)
  {}
  
  void run (void *) {
    fprintf (stdout, "v = %d\n", v);
    fflush (stdout);
    v++;
  }
private:
  int v;
};

int main()
{
  markov::stage<DoSomething, true, true, 1> myStage ("me", 1);
  myStage.start();
  for (int i = 0; i < 30; i++) {
    myStage.queueEvent(NULL);
  }
  sleep (1);
  myStage.queueEvent (NULL);
//  myStage.stop();
  myStage.wait();
  return 0;
}


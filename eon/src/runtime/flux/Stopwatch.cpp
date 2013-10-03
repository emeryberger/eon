#include "Stopwatch.h"

#if defined(__unix__)
#include <unistd.h>
#include <pwd.h>
#include <sys/time.h>
#include <sys/times.h>
#include <sys/types.h>
#include <stdio.h>
#endif


#ifdef WIN32
#include <time.h>
#endif

using namespace util;

Stopwatch::Stopwatch() {
  _start = 0;
  _time = 0;
}
    
double Stopwatch::getTime() {
  if (_start!=0) {
    return _time + now()-_start;
  }
  else
    return _time;
}

void Stopwatch::start() {
  _start = now();
}
 
void Stopwatch::stop() {
  double delta = now()-_start;
  if (delta > 0)
    _time += delta;
  _start = 0;
}

void Stopwatch::reset() {
  _start = 0;
  _time = 0;
}


double Stopwatch::now() {
#ifdef __APPLE__
  clock_t time = clock();
  return ((double)time)/CLOCKS_PER_SEC;
#else
#ifdef WIN32
  return (clock()*1000)/CLOCKS_PER_SEC;
#else
#if defined(CLK_TCK)
  long clk_tck = CLK_TCK;
#else
  long clk_tck = sysconf(_SC_CLK_TCK);
#endif
  struct tms t;
  times(&t);
  return float(t.tms_utime)/clk_tck;
#endif
#endif
}

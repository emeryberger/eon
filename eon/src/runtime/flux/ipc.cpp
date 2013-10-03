#include <iostream>
#include "ipc.h"

int
main (int argc, char **argv)
{
  markov::messageQueue mq;
  char *M1 = "Message One";
  char *M2 = "Message One";
  mq.create_queue ("one");
  mq.create_queue ("two");

  markov::queue < char *>*route = new markov::queue < char *>;
  mq.send_message ("one", M1, route);
  mq.send_message ("two", M2, route);

  markov::message * msg = mq.read_message ("one");

  bool passedTests = true;

  if (msg->data != M1)
    {
      std::cerr << "Mismatch, expected: " << M1 << " got: " << ((char *) msg->
								data);
      std::cerr << std::endl;
      passedTests = false;
    }

  delete msg;

  msg = mq.read_message ("two");

  if (msg->data != M2)
    {
      std::cerr << "Mismatch, expected: " << M2 << " got: " << ((char *) msg->
								data);
      std::cerr << std::endl;
      passedTests = false;
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

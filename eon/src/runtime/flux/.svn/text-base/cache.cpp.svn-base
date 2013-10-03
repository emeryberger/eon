#include <iostream>
#include <string.h>

#include "cache.h"

int
main (int argc, char **argv)
{
  markov::cache c;

  bool passedTests = true;

  char *file = "/file.html";
  char *bar = strdup(file);
  char *data = "<html><body>Foo</body></html>";
  char *content = "text/html";
  int len = strlen (data) - 1;

  c.add (file, data, content, len);

  if (c.get ("Foo"))
    {
      std::cerr << "Error, found something not added" << std::endl;
      passedTests = false;
    }

  markov::cache::element * e = c.get (file);
  if (!e)
    {
      std::cerr << "Error, couldn't find file.html" << std::endl;
      passedTests = false;
    }
  else
    {
      if (strcmp (e->name, file))
	{
	  std::cerr << "Error names don't match" << std::endl;
	  passedTests = false;
	}
      if (e->length != len)
	{
	  std::cerr << "Error lengths don't match" << std::endl;
	  passedTests = false;
	}
      if (strncmp (e->data, data, len))
	{
	  std::cerr << "Error data doesn't match" << std::endl;
	  passedTests = false;
	}
      if (strcmp (e->content_type, content))
	{
	  std::cerr << "Error content type doesn't match" << std::endl;
	  passedTests = false;
	}
    }
  e = c.get (bar);
  if (!e)
    {
      std::cerr << "Error, couldn't find file.html" << std::endl;
      passedTests = false;
    }
  else
    {
      if (strcmp (e->name, file))
	{
	  std::cerr << "Error names don't match" << std::endl;
	  passedTests = false;
	}
      if (e->length != len)
	{
	  std::cerr << "Error lengths don't match" << std::endl;
	  passedTests = false;
	}
      if (strncmp (e->data, data, len))
	{
	  std::cerr << "Error data doesn't match" << std::endl;
	  passedTests = false;
	}
      if (strcmp (e->content_type, content))
	{
	  std::cerr << "Error content type doesn't match" << std::endl;
	  passedTests = false;
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

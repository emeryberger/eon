#ifndef __SESSION_MAP__
#define __SESSION_MAP__

#include <map>
#include "loch.h"

namespace markov {
  class session;

  class SessionMap {
  private:
    std::map<int, session *> data;
    markov::loch lk;
    
  public:
    markov::session *getSession(int sessionId) {
      session *s;
      
      lk.lock();
      std::map<int, session *>::iterator it = data.find(sessionId);
      
      if (it == data.end()) {
	s = new markov::session();
	data[sessionId] = s;
      }
      else {
	s = (*it).second;
      }
      lk.unlock();
      return s;
    }

    void destroySession(int sessionId) {
      fprintf(stderr, "Unimplemented!");
    }
  };
};

#endif

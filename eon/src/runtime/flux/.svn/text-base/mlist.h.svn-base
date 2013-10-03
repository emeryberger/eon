#ifndef __MLIST_H__
#define __MLIST_H__

#include "loch.h"

namespace markov {
  template < typename TYPE > class element {
  private:
    TYPE data;
    element< TYPE > *nxt;
        
  public:
    element(TYPE data) {
      this->data = data;
      this->nxt = NULL;
    }
    
    ~element() {
      this->nxt = NULL;
    }
    
    TYPE value() {
      return data;
    }
    
    element< TYPE > *next() {
      return nxt;
    }

    void setNext(element<TYPE> *ele) {
      this->nxt = ele;
    }
  };
  
  template < typename TYPE > class mlist {
  private:
    element<TYPE> *head_ptr;
        
  public:
    loch lock;
    
    mlist() {
      this->head_ptr = NULL;
    }
    
    ~mlist() {
      element<TYPE> *ptr;
      while (this->head_ptr != NULL) {
	ptr = this->head_ptr;
	this->head_ptr = this->head_ptr->next();
	delete(ptr);
      }
    }
    
    void add(TYPE data) {
      element<TYPE> *ptr = new element<TYPE>(data);
      ptr->setNext(this->head_ptr);
      this->head_ptr = ptr;
    }
    
    element<TYPE> *head() {
      return head_ptr;
    }
    
    bool remove(element<TYPE> *ele) {
      element<TYPE> *ptr = this->head_ptr;
      if (head_ptr == ele) {
	head_ptr = head_ptr->next();
	delete ele;
	return true;
      }
      else {
	while (ptr->next() != ele) ptr = ptr->next();
	ptr->setNext(ptr->next()->next());
	delete ele;
	return true;
      }
      return false;
    }
  };
};
#endif
    

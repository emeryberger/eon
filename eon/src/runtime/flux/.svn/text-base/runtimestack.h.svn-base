// -*- C++ -*-

#ifndef _RUNTIMESTACK_H_
#define _RUNTIMESTACK_H_

#include <assert.h>

namespace markov {

	template <int MAXSIZE, typename OBJTYPE>
	class runtimeStack {
	public:
	
		runtimeStack (void)
		  : stackPointer (-1)
		{}
		
		void pop (void) {
			// Defensive programming.
			if (stackPointer >= 0) {
				stackPointer--;
			}
		}

		OBJTYPE top (void) {
			assert (stackPointer != -1);
			return stack[stackPointer];
		}
		
		void push (OBJTYPE obj) {
			stackPointer++;
			stack[stackPointer] = obj;
		}
		
		bool empty (void) const {
			return (stackPointer == -1);
		}
		
	private:
		int stackPointer;
		OBJTYPE stack[MAXSIZE];
	};
		
};

#endif // _RUNTIMESTACK_H_

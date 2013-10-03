// -*- C++ -*-

#ifndef _FUNCTIONCLOSURE_H_
#define _FUNCTIONCLOSURE_H_

extern "C"
{
  // The function type invoked by a call to create a thread.
	typedef void *(*threadFunctionType) (void *);
}

extern "C"
{
  // The function type invoked by a call to create a thread.
	typedef void *(*threadFunctionTypeInt) (void *, void *);
}


namespace markov
{

  /**
	 * A utility class to wrap a function and its argument for later
	 * invocation.
   */
	class functionClosure
	{
		public:
			functionClosure (threadFunctionType fn, void *d):function (fn), data (d)
			{
			}
    
			functionClosure (threadFunctionTypeInt fn, void *d, void *dd):functionInt (fn), data (d), ddata(dd)
			{
			}

			void runInt(void)
			{
				(*functionInt) (data, ddata);
			}

			void run (void)
			{
				(*function) (data);
			}

		private:
			threadFunctionType function;
			threadFunctionTypeInt functionInt;
			void *data;
			void *ddata;
	};

};

#endif // _FUNCTIONCLOSURE_H_

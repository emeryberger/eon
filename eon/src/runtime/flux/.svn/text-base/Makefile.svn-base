all:	wsthreadpool threadpool queue cache stage

# CC = cl /D_WIN32 /MTd /Zi /DEBUG
CXX = g++ -g -D_REENTRANT=1 -I.
CC = gcc -g -D_REENTRANT=1 -I.
LIBS = -lpthread -lstdc++ plhash.o

plhash.o:	plhash.c plhash.h
	$(CC) -c plhash.c

threadpool:	threadpool.cpp threadpool.h loch.h fred.h plhash.o
	$(CXX) threadpool.cpp -o threadpool $(LIBS)

wsthreadpool:	wsthreadpool.cpp wsthreadpool.h loch.h fred.h plhash.o
	$(CXX) wsthreadpool.cpp -o wsthreadpool $(LIBS)

queue: queue.cpp queue.h
	$(CXX) queue.cpp -o queue $(LIBS)

cache: cache.cpp cache.h queue.h plhash.o
	$(CXX) cache.cpp -o cache $(LIBS)

stage: stage.cpp stage.h queue.h fred.h random.h
	$(CXX) stage.cpp -o stage $(LIBS)

clean:
	-rm -f wsthreadpool.exe threadpool.exe queue.exe
	-rm -f wsthreadpool threadpool queue cache stage

#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <ucontext.h>
#include <dlfcn.h> // dlsym
#include <vector>
#include <sys/poll.h>

#include <sys/stat.h>
#include <unistd.h>

#include "messagequeue.h"
#include "queue.h"
#include "event.h"
#include <pthread.h>
#include <map>
#include <queue>
#include <stack>

#include <sys/types.h>
#include <sys/socket.h>
#include <unistd.h>
#include <sys/mman.h>

#define STACK_SIZE      (512*1024)

typedef struct {
	int threads_waiting_to_run;
	int threads_waiting_in_pool;
	pthread_mutex_t *mutex_event_mgr;
	pthread_cond_t *cond_waiting_to_run;
	pthread_cond_t *cond_waiting_in_pool;
	bool *running;
	void * (*event_mgr_fn)(void *);
} eventmgrinfo_t;

typedef struct {
	bool *running;
	bool bootstrap;
} eventmgrargs_t;

eventmgrinfo_t *eminfo = NULL;

std::map <int, bool> is_regular;

typedef ssize_t (*readFnType) (int, void *, size_t);
typedef ssize_t (*writeFnType) (int, const void*, size_t);
typedef int (*openFnType) (const char*, int);
typedef int (*closeFnType) (int fd);
typedef unsigned int (*sleepFnType) (unsigned int);
typedef int (*acceptFnType) (int, struct sockaddr *, socklen_t *);

static readFnType shim_read = NULL;
static closeFnType shim_close = NULL;
static writeFnType shim_write = NULL;
static openFnType shim_open = NULL;
static sleepFnType shim_sleep = NULL;
static acceptFnType shim_accept = NULL;

static int page_size;

extern "C" void initShim(eventmgrinfo_t *eventmgrinfo)
{
    eminfo = eventmgrinfo;
    
    page_size = getpagesize();
    
    shim_read = (ssize_t (*)(int, void *, size_t))dlsym (RTLD_NEXT, "read");
    shim_open = (int (*)(const char*, int))dlsym (RTLD_NEXT, "open");
    shim_write = (ssize_t (*)(int, const void*, size_t))dlsym (RTLD_NEXT, "write");
    shim_close = (int (*)(int)) dlsym (RTLD_NEXT, "close");
    shim_sleep = (unsigned int (*)(unsigned int)) dlsym(RTLD_NEXT, "sleep");
    shim_accept = (int (*) (int, struct sockaddr *, socklen_t *)) dlsym(RTLD_NEXT, "accept");
}

void wake_another_mgr() {
	if (eminfo->threads_waiting_in_pool == 0) {
		pthread_attr_t attr;
		pthread_attr_init(&attr);
		pthread_attr_setstacksize(&attr, STACK_SIZE);
		pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);

		eventmgrargs_t *mgrargs = new eventmgrargs_t;
		mgrargs->running = eminfo->running;
		mgrargs->bootstrap = true;
	
		pthread_t newth;
		pthread_create(&newth, &attr, eminfo->event_mgr_fn, (void *) mgrargs);
	} else {
		pthread_cond_signal(eminfo->cond_waiting_in_pool);
	}
}

void wait_to_run() {
	eminfo->threads_waiting_to_run++;
	pthread_cond_wait(eminfo->cond_waiting_to_run, eminfo->mutex_event_mgr);
	eminfo->threads_waiting_to_run--;
}

extern "C" unsigned int sleep(unsigned int seconds)
{
    if (!eminfo)
    {
		if (!shim_sleep)
			shim_sleep = (unsigned int (*)(unsigned int)) dlsym(RTLD_NEXT, "sleep");
        return ((shim_sleep)(seconds));
	}

	unsigned int ret;
	wake_another_mgr();

	pthread_mutex_unlock(eminfo->mutex_event_mgr);
	ret = ((shim_sleep)(seconds));
	pthread_mutex_lock(eminfo->mutex_event_mgr);

	wait_to_run();

	return ret;
}

extern "C" int accept(int s, struct sockaddr *addr, socklen_t *addrlen)
{
    if (!eminfo)
    {
		if (!shim_accept)
			shim_accept = (int (*) (int, struct sockaddr *, socklen_t *)) dlsym(RTLD_NEXT, "accept");
		return ((shim_accept)(s, addr, addrlen));
	}

	struct pollfd pfd;
	pfd.fd = s;
	pfd.events = POLLIN;
	poll(&pfd, 1, 0);
	if ((pfd.revents & POLLIN) != 0)
		return ((shim_accept)(s, addr, addrlen));

	int ret;
	wake_another_mgr();

	pthread_mutex_unlock(eminfo->mutex_event_mgr);
	ret = ((shim_accept)(s, addr, addrlen));
	pthread_mutex_lock(eminfo->mutex_event_mgr);

	wait_to_run();

	return ret;
}

extern "C" ssize_t read(int fd, void *buf, size_t count)
{
    ssize_t ret;
    
    if (!eminfo)
    {
		if (!shim_read)
        	shim_read = (ssize_t (*)(int, void *, size_t))dlsym (RTLD_NEXT, "read");
        return ((shim_read)(fd, buf, count));
    }

    if (!is_regular[fd])
    {
        struct pollfd pfd;
        pfd.fd = fd;
        pfd.events = POLLIN;
        poll(&pfd, 1, 0);

		if (pfd.revents & POLLIN) // if it won't block
        	return ((shim_read)(fd, buf, count));
    } else {
		/*
			Use mmap and mincore to find out if the page is in memory,
			if YES, then just do the read
			if NO, then use the thread-pool to fake asynch IO
		*/
		off_t off = lseek(fd, 0, SEEK_CUR);
		void *addr = mmap(0, count, PROT_READ|PROT_WRITE, MAP_PRIVATE, fd, off);
		
		int len = (count+page_size-1) / page_size;
		unsigned char *vec = new unsigned char[len];
		int rt = mincore(addr, count, vec);
		munmap(addr, count);
		bool in_memory = true;
		
		for (int i=0; i< len; i++)
		{
			if (vec[i] == 0)
			{
				in_memory = false;
				break;
			}
		}
		
		delete [] vec;
		
		if (in_memory)
			return ((shim_read)(fd, buf, count));
	}

	wake_another_mgr();

	pthread_mutex_unlock(eminfo->mutex_event_mgr);
	ret = ((shim_read)(fd, buf, count));
	pthread_mutex_lock(eminfo->mutex_event_mgr);

	wait_to_run();

	return ret;
}

extern "C" int open(const char *pathname, int flags)
{
    if (!eminfo)
    {
		if (!shim_open)
			shim_open = (int (*)(const char*, int))dlsym (RTLD_NEXT, "open");
		return ((shim_open)(pathname, flags));
	}
	
	
	int fd = ((*shim_open)(pathname, flags));
	is_regular[fd] = true;
	
	if (strcmp("/proc/cpuinfo", pathname) == 0)
		is_regular[fd] = false;
	
	return fd;
}

extern "C" int close(int fd)
{
	if (!eminfo)
	{
		if (!shim_close)
			shim_close = (int (*)(int)) dlsym (RTLD_NEXT, "close");
		return ((shim_close)(fd));
	}
	
	is_regular[fd] = false;
	return ((*shim_close)(fd));
}

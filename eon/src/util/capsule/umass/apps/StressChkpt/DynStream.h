
#ifndef DYN_STREAM_H
#define DYN_STREAM_H


// stream_t
typedef struct stream_t
{
	flashptr_t tail;
	bool doEcc;
	flashptr_t traverse;
} stream_t;


#endif

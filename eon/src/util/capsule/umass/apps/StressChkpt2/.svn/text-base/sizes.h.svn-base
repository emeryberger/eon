#ifndef SIZES_H
#define SIZES_H

/*
 * Debug messages
 */

//#define INDEX_DEBUG
//#define ARRAY_DEBUG
//#define CHUNK_DEBUG
//#define QUEUE_DEBUG
//#define STACK_DEBUG
//#define STREAM_DEBUG
//#define STREAM_INDEX_DEBUG
//#define CHECKPOINT_DEBUG
//#define ROOT_DIR_DEBUG
//#define COMPACT_DEBUG

#if defined(INDEX_DEBUG) || defined(ARRAY_DEBUG) || defined(CHUNK_DEBUG) || defined(QUEUE_DEBUG) || defined(STACK_DEBUG) || \
defined(STREAM_DEBUG) || defined(STREAM_INDEX_DEBUG) || defined(CHECKPOINT_DEBUG) || defined(ROOT_DIR_DEBUG) || \
defined(COMPACT_DEBUG)

#define CONSOLE_DEBUG

#endif
#define COUNT 20
/* Length of the data (compaction expt) */
#define LEN 2


/*
 * TODO
 * The following defines the number of instances of each of these storage 
 * objects being used in the application.
 * The values for these should ideally be set automatically by the compiler
 */

#define NUM_STACKS 2

#define NUM_STREAMS 1

#define NUM_CHECKPOINTS 1

/*
 * This indicates the number of elements in level 1 of the index
 */
#define ARRAY_ELEMENTS_PER_CHUNK 10

/*
 * This indicates the number of index elements in level 2 of the index
 */
#define INDEX_ELEMENTS_PER_CHUNK 10




#endif

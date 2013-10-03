#ifndef _USERSTRUCTS_H_
#define _USERSTRUCTS_H_

typedef uint8_t* frame_ptr_t;
typedef uint8_t* page_ptr_t;

#define PAY_SIZE 16

enum
{
	AM_STREAMMSG = 14,
	AM_QUERYMSG = 15,
	AM_DATAMSG = 17,
};

typedef struct StreamMsg
{
	uint16_t src_addr;
	uint16_t seq_num;
	uint8_t page;
	uint8_t offset;
	uint8_t data[PAY_SIZE];
} StreamMsg_t;

typedef struct QueryMsg
{
	uint16_t src_addr;
	uint16_t ago;
	uint16_t page;
} QueryMsg_t;

typedef struct DataMsg
{
	uint16_t src_addr;
	uint16_t ago;
	uint8_t page;
	uint8_t offset;
	uint8_t data[PAY_SIZE];
} DataMsg_t;

uint16_t g_numframes = 0;
#define PAGES_TO_USE	1024
#define PAGE_OFFSET  5

#endif

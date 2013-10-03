typedef struct SimMsg
{
    uint16_t page;
    uint16_t offset;
    uint16_t eval;
    uint16_t val;
	uint16_t len;
} SimMsg;

enum
{
  AM_SIMMSG = 1
};

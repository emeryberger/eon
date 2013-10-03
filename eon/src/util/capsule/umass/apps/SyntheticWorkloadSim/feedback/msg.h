
typedef struct SimMsg 
{
	uint8_t err_type;
	uint16_t data_cyc;
	uint16_t batch_cyc;
	uint16_t write_page;
	uint16_t write_offset;
} SimMsg;

enum 
{
  AM_SIMMSG = 4
};

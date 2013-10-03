
#ifndef SIM_CONSTANTS_H
#define SIM_CONSTANTS_H

enum application_state
{
    S_RUNNING = 0, 
    S_EXITING
};

enum radio_state
{
    R_TURNING_ON = 0,
    R_ON,
    R_TURNING_OFF,
    R_OFF,
    R_FREE,
    R_BUSY
};

typedef struct SimMsg 
{
	uint8_t err_type;
	uint16_t data_cyc;
	uint16_t batch_cyc;
	uint16_t write_page;
	uint16_t write_offset;
} SimMsg;


#endif 

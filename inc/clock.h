#ifndef CLOCK_H
#define CLOCK_H

#include <stdint.h>

typedef struct
{
	uint8_t hours;
	uint8_t minutes;
	uint8_t seconds;
}clock_time_t;


void clock_init(clock_time_t *clk, uint8_t h, uint8_t m, uint8_t s);
void clock_update_1s(clock_time_t *clk);
void clock_print(const clock_time_t *clk);
 

#endif

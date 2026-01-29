#ifndef CLOCK_H
#define CLOCK_H

#include <stdint.h>

typedef struct
{
	uint8_t hour;
	uint8_t minute;
	uint8_t seconds;
}Clock_time_t;


void Update_Clock(void);
void Config_Time(Clock_time_t *time);
Get_Time(void);

#endif

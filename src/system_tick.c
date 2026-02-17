#include "system_tick.h"
#include <stdint.h>

static volatile uint16_t tick_1ms = 0;

void system_tick_1ms(void)
{
	tick_1ms++;
}

void system_tick_task(void)
{
	static uint16_t last = 0;

	if((tick_1ms - last) >= 1000)
	{
		last += 1000;
		//clock_update_1s();
	}
}

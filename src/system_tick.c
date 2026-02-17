#include "system_tick.h"

static volatile uint16_t tick_1ms = 0;
static volatile uint8_t one_second_flag = 0;

void system_tick_1ms(void)
{
	tick_1ms++;
}

void system_tick_task(void)
{
	if(tick_1ms >= 1000)
	{
		tick_1ms = 0;
		one_second_flag = 1;
	}
}

uint8_t system_tick_is_1s(void)
{
    if (one_second_flag)
    {
        one_second_flag = 0;  // consume event
        return 1;
    }

    return 0;
}

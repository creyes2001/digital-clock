#include "system_tick.h"

static volatile uint16_t pending_ticks = 0;
static volatile uint16_t tick_1ms = 0;
static volatile uint8_t one_second_flag = 0;
static uint8_t flag_1ms = 0;

void system_tick_1ms(void)
{
	if(pending_ticks < 255)
	{
		pending_ticks++;
	}
}

void system_tick_task(void)
{
    if(pending_ticks)
    {
        pending_ticks--;
        flag_1ms = 1;
        tick_1ms++;

        if(tick_1ms >= 1000)
        {
            tick_1ms = 0;
            one_second_flag = 1;
        }
    }
}

uint8_t system_tick_is_1ms(void)
{
	if(flag_1ms)
	{
		flag_1ms = 0;
		return 1;
	}
	return 0;
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

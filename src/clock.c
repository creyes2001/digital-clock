#include "clock.h"
#include "printf.h"
#include "clock_storage.h"

void clock_init(clock_time_t *clk, uint8_t h, uint8_t m, uint8_t s)
{
	clk->hours	 = h % 24;
	clk->minutes = m % 60;
	clk->seconds = s % 60;

	ClockStorage_Init(&clk->hours, &clk->minutes, &clk->seconds);
}

void clock_update_1s(clock_time_t *clk)
{
	clk->seconds++;

    if (clk->seconds >= 60)
    {
        clk->seconds = 0;
        clk->minutes++;

        if (clk->minutes >= 60)
        {
            clk->minutes = 0;
            clk->hours++;

            if (clk->hours >= 24)
            {
                clk->hours = 0;
            }
        }
    }
}

uint16_t get_time(clock_time_t *clk)
{
	return (clk->hours * 100) + clk->minutes;
}
void clock_print(const clock_time_t *clk)
{
	printf("%02u:%02u:%02u\r\n",
			clk->hours,
			clk->minutes,
			clk->seconds);
}

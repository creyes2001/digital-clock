#ifndef SYSTEM_TICK_H
#define SYSTEM_TICK_H

#include <stdint.h>

void system_tick_1ms(void);
void system_tick_task(void);
uint8_t system_tick_is_1ms(void);
uint8_t system_tick_is_1s(void);

#endif

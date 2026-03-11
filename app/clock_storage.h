#ifndef CLOCK_STORAGE_H
#define CLOCK_STORAGE_H

#include <stdint.h>

void ClockStorage_Init(uint8_t *h ,uint8_t *m, uint8_t *s);
void ClockStorage_SaveTime(uint8_t hours, uint8_t minutes, uint8_t seconds);

#endif //CLOCK_STORAGE_H

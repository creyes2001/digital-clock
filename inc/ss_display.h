#ifndef SEVEN_SEGMENTS_DISPLAY_H
#define SEVEN_SEGMENTS_DISPLAY_H

#include <stdint.h>
#include "gpio.h"

typedef enum
{
	COLON_DISABLED = 0,
	COLON_ENABLED
}colon_config_e;

typedef enum
{
	LEVEL_OFF = 0,
	LEVEL_ON
}level_e;

typedef enum
{
	COMMON_CATHODE = 0,
	COMMON_ANODE
}display_type_e;

typedef struct
{
	colon_config_e colon;
	display_type_e display_type;
	uint8_t digit_number;
	gpio_t (*data)[7];
	gpio_t (*control)[4];
	gpio_t *colon_pin;
	gpio_t *colon_control_pin;
}display_t;

void display_init(display_t *display);
void display_update(display_t *display);
void display_task(display_t *display,uint8_t data[4]);

#endif //SEVEN_SEGMENTS_DISPLAY_H

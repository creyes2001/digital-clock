#ifndef SEVEN_SEGMENTS_DISPLAY_H
#define SEVEN_SEGMENTS_DISPLAY_H

#include <stdint.h>
#include "gpio.h"

#define SEGMENTS 7
#define MAX_CONTROL_PINS 4

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
	ACTIVE_LOW = 0,
	ACTIVE_HIGH
}polarity_e;

typedef enum
{
	CONTROL_PIN = 0,
	SEGMENT_PIN
}pin_type_e;

typedef struct
{
	colon_config_e colon;
	polarity_e segment_polarity;
	polarity_e control_polarity;
	uint8_t digit_number;
	gpio_t *data;
	gpio_t *control;
	gpio_t *colon_pin;
	gpio_t *colon_control_pin;
}display_t;

void display_init(display_t *display);
void display_task(void);
void display_push(uint16_t buffer_clk);
void display_set_colon_blink(uint16_t blink_rate);

#endif //SEVEN_SEGMENTS_DISPLAY_H

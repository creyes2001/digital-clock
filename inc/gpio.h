#ifndef GPIO_H
#define GPIO_H

#include <stdint.h>

typedef enum
{
	GPIO_OUTPUT = 0,
	GPIO_INPUT
}gpio_dir_e;

typedef enum
{
	GPIO_LOW = 0,
	GPIO_HIGH
}gpio_level_e;

typedef struct
{
	volatile uint8_t *tris;
	volatile uint8_t *lat;
	volatile uint8_t *port;
	uint8_t pin;
}gpio_t;

void Gpio_Init(gpio_t *gpio, gpio_dir_e dir);
void Gpio_Write(gpio_t *gpio,gpio_level_e level);
gpio_level_e Gpio_Read(gpio_t *gpio);
void Gpio_Toggle(gpio_t *gpio);

#endif

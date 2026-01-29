#include <xc.h>
#include "gpio.h"

void Gpio_Init(gpio_t *gpio, gpio_dir_e dir)
{
	if(dir == GPIO_OUTPUT)
	{
		*(gpio->tris) &= ~(1 << gpio->pin);
	}
	else
	{
		*(gpio->tris) |= (1 << gpio->pin);
	}
}

void Gpio_Write(gpio_t *gpio,gpio_level_e level)
{
	if(level == GPIO_HIGH)
	{
		*(gpio->lat) |= (1 << gpio->pin);
	}
	else
	{
		*(gpio->lat) &= ~(1 << gpio->pin);
	}
}

gpio_level_e Gpio_Read(gpio_t *gpio)
{
	if(*(gpio->port) & (1 << gpio->pin))
	{
		return GPIO_HIGH;
	}
	return GPIO_LOW;
}

void Gpio_Toggle(gpio_t *gpio)
{
	*(gpio->lat) ^= (1 << gpio->pin);
}

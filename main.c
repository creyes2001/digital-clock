#include "uart.h"
#include "gpio.h"
#include "config.h"
#include <xc.h>

gpio_t led = {
	.tris = &TRISD,
	.lat = &LATD,
	.port = &PORTD,
	.pin = 0
};

gpio_t button = {
	.tris = &TRISB,
	.lat = &LATB,
	.port = &PORTB,
	.pin = 0
};

gpio_t uart =
{
	.rx

int main()
{
	Gpio_Init(&led,GPIO_OUTPUT);
	Gpio_Init(&button,GPIO_INPUT);
	gpio_level_e level;
	while(1)
	{
		level = Gpio_Read(&button);

		if(level == GPIO_HIGH)
		{
			Gpio_Write(&led,GPIO_HIGH);
		}
		Gpio_Write(&led,GPIO_LOW);
	}

return 0;
}

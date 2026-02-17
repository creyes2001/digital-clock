#include "isr.h"
#include "gpio.h"
#include "config.h"
#include "printf.h"
#include "timer0.h"
#include "system_tick.h"
#include "clock.h"
#include "uart.h"
#include "button_driver.h"
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

static gpio_t rx = {
	.tris = &TRISC,
	.lat = &LATC,
	.port = &PORTC,
	.pin = 7
};

static gpio_t tx = {
	.tris = &TRISC,
	.lat = &LATC,
	.port = &PORTC,
	.pin = 6
};

uart_config_t uart_config = {
	.rx = &rx,
	.tx = &tx,
	.baud_rate = 9600
};

clock_time_t sys_clock;

button_t btn;

int main()
{
	Gpio_Init(&led,GPIO_OUTPUT);
	button_init(&btn,&button,BUTTON_ACTIVE_LOW,3);
	Uart_Init(&uart_config);
	Uart_Start(&uart_config);
	timer0_init();
	timer0_start();
	button_event_e level;

	/* Enable interrupts */
	isr_init();

	clock_init(&sys_clock,23,59,55);

	char c;
    Gpio_Write(&led, GPIO_LOW);
	while(1)
	{
		system_tick_task();

		if(system_tick_is_1ms())
		{
			button_update(&btn);
		}

		if(system_tick_is_1s())
		{
			clock_update_1s(&sys_clock);
			clock_print(&sys_clock);
		}
		level = button_get_event(&btn);

		if(level == BUTTON_EVENT_PRESSED)
		{

			printf("CRIS %d\n\r",2026);
		}

		if (Uart_Read(&c))
    	{
        	if (c == 'A')
        	{
            	Gpio_Write(&led, GPIO_HIGH);
       		}
        	else if (c == 'B')
        	{
            	Gpio_Write(&led, GPIO_LOW);
        	}
    	}
	}

return 0;
}

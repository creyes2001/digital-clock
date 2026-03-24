#include "app.h"
#include "isr.h"
#include "gpio.h"
#include "config.h"
#include "printf.h"
#include "timer2.h"
#include "system_tick.h"
#include "clock.h"
#include "ss_display.h"
#include "uart.h"
#include <xc.h>

//-----------DISPLAY CONFIG---------------
gpio_t data[7] = {
	{
		.tris = &TRISD,
		.lat = &LATD,
		.port = &PORTD,
		.pin = 0
	},

	{
		.tris = &TRISD,
		.lat = &LATD,
		.port = &PORTD,
		.pin = 1
	},

	{
		.tris = &TRISD,
		.lat = &LATD,
		.port = &PORTD,
		.pin = 2
	},
	
	{
		.tris = &TRISD,
		.lat = &LATD,
		.port = &PORTD,
		.pin = 3
	},
	
	{
		.tris = &TRISD,
		.lat = &LATD,
		.port = &PORTD,
		.pin = 4
	},
	
	{
		.tris = &TRISD,
		.lat = &LATD,
		.port = &PORTD,
		.pin = 5
	},
	
	{
		.tris = &TRISD,
		.lat = &LATD,
		.port = &PORTD,
		.pin = 6
	}
};
	
gpio_t control[4] = {
	{
		.tris = &TRISB,
		.lat = &LATB,
		.port = &PORTB,
		.pin = 4
	},

	{
		.tris = &TRISB,
		.lat = &LATB,
		.port = &PORTB,
		.pin = 5
	},

	{
		.tris = &TRISB,
		.lat = &LATB,
		.port = &PORTB,
		.pin = 6
	},

	{
		.tris = &TRISB,
		.lat = &LATB,
		.port = &PORTB,
		.pin = 7
	}
};

gpio_t colon = {
	.tris = &TRISD,
	.lat = &LATD,
	.port = &PORTD,
	.pin = 7
};

gpio_t colon_control = {
	.tris = &TRISE,
	.lat = &LATE,
	.port = &PORTE,
	.pin = 0
};
	

display_t clk_display = {
	.colon = COLON_ENABLED,
	.segment_polarity = ACTIVE_LOW,
	.control_polarity = ACTIVE_LOW,
	.digit_number = 4,
	.data = data,
	.control = control, 
	.colon_pin = &colon,
	.colon_control_pin = &colon_control
};
//----------------------------------------

//-----------UART CONFIG------------------
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
//---------------------------------------

clock_time_t sys_clock;
app_t app;

/* debug configuration*/
gpio_t debug_pin = {
	.tris = &TRISC,
	.port = &PORTC,
	.lat = &LATC,
	.pin = 0
};

void clock_1hz_debug(gpio_t *debug_p)
{
	static volatile uint16_t ms = 0;

	ms++;
	if(ms>=1)
	{
		ms = 0;
		Gpio_Toggle(debug_p);
	}
}

int main()
{

	App_Init(&app,&sys_clock);

	Uart_Init(&uart_config);
	Uart_Start(&uart_config);

	timer2_init();
	timer2_start();

	display_init(&clk_display);

	/* Enable interrupts */
	isr_init();

	/* CLock initialization */	
	uint8_t hours = 0, minutes = 0, seconds = 0;
	clock_init(&sys_clock,hours,minutes,seconds);

	Gpio_Init(&debug_pin,GPIO_OUTPUT);
	while(1)
	{
		system_tick_task();
		App_Task(&app);

		if(system_tick_is_1ms())
		{
			Button_Task();
			display_task();
	 	//	clock_1hz_debug(&debug_pin);
		}

		if(system_tick_is_1s())
		{
			clock_update_1s(&sys_clock);
			if(app.state == APP_STATE_RUN)
			{
				display_push(get_time(&sys_clock));
				display_set_colon_blink(500);
			}
		}
		
		if(app.state == APP_STATE_SET_HOURS)
		{
			display_set_colon_blink(150);
			display_push(get_time(&sys_clock));
		}

		if(app.state == APP_STATE_SET_MINUTES)
		{
			display_set_colon_blink(150);
			display_push(get_time(&sys_clock));
		}
	}
	return 0;
}

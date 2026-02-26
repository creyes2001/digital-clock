#include "app.h"
#include "isr.h"
#include "gpio.h"
#include "config.h"
#include "printf.h"
#include "timer0.h"
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
	.display_type = COMMON_CATHODE,
	.digit_number = 4,
	.data = &data,
	.control = &control, 
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

int main()
{

	App_Init(&app,&sys_clock);

	Uart_Init(&uart_config);
	Uart_Start(&uart_config);

	timer0_init();
	timer0_start();

	display_init(&clk_display);

	/* Enable interrupts */
	isr_init();

	clock_init(&sys_clock,23,59,55);

	char c;
	while(1)
	{
		system_tick_task();
		App_Task(&app);

		if(system_tick_is_1ms())
		{
			Button_Task();
		}

		if(system_tick_is_1s() && app.state == APP_STATE_RUN)
		{
			clock_update_1s(&sys_clock);
			clock_print(&sys_clock);
		}
		
		if(app.state == APP_STATE_SET_HOURS)
		{
			printf("1\r\n");
		}

		if(app.state == APP_STATE_SET_MINUTES)
		{
			printf("2\r\n");
		}
		if (Uart_Read(&c))
    	{
        	if (c == 'A')
        	{
            	printf("A\r\n");
       		}
        	else if (c == 'B')
        	{
            	printf("B\r\n");
        	}
    	}
	}
	return 0;
}

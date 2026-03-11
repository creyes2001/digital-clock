#include "app.h"
#include "button_driver.h"
#include "gpio.h"
#include "clock_storage.h"

#include <xc.h>

gpio_t button_cfg = {
	.tris = &TRISB,
	.lat = &LATB,
	.port = &PORTB,
	.pin = 0
};

gpio_t button_inc = {
	.tris = &TRISB,
	.lat = &LATB,
	.port = &PORTB,
	.pin = 1
};

gpio_t button_dcr = {
	.tris = &TRISB,
	.lat = &LATB,
	.port = &PORTB,
	.pin = 2
};

button_t btn_cfg;
button_t btn_inc;
button_t btn_dcr;

void App_Init(app_t *app,clock_time_t *clk)
{
	app->clock = clk;
	app->state = APP_STATE_RUN;

	button_init(&btn_cfg,&button_cfg,BUTTON_ACTIVE_LOW,25);
	button_init(&btn_inc,&button_inc,BUTTON_ACTIVE_LOW,25);
	button_init(&btn_dcr,&button_dcr,BUTTON_ACTIVE_LOW,25);
}

void Button_Task(void)
{
	button_update(&btn_cfg);
	button_update(&btn_inc);
	button_update(&btn_dcr);
}


void App_Task(app_t *app)
{

	if(button_get_event(&btn_cfg) == BUTTON_EVENT_RELEASED)
	{
		switch(app->state)
		{
		case APP_STATE_RUN:
			app->state = APP_STATE_SET_HOURS;
			break;
		case APP_STATE_SET_HOURS:
			app->state = APP_STATE_SET_MINUTES;
			break;
		case APP_STATE_SET_MINUTES:
			app->state = APP_STATE_RUN;
			ClockStorage_SaveTime(app->clock->hours, app->clock->minutes, app->clock->seconds);
			break;
		}
	}
	
	if(button_get_event(&btn_inc) == BUTTON_EVENT_RELEASED)
	{
		if(app->state == APP_STATE_SET_HOURS)
		{
			app->clock->hours++;
			if(app->clock->hours == 24)
			{
				app->clock->hours = 0;
			}
		}

		if(app->state == APP_STATE_SET_MINUTES)
		{
			app->clock->minutes++;
			if(app->clock->minutes == 60)
			{
				app->clock->minutes = 0;
			}
		}	
	}

	if(button_get_event(&btn_dcr) == BUTTON_EVENT_RELEASED)
	{
		if(app->state == APP_STATE_SET_HOURS)
		{
			if(app->clock->hours == 0)
			{
				app->clock->hours = 24;
			}
			app->clock->hours--;
		}

		if(app->state == APP_STATE_SET_MINUTES)
		{
			if(app->clock->minutes == 0)
			{
				app->clock->minutes = 60;
			}
			app->clock->minutes--;
		}	
	}
		
}

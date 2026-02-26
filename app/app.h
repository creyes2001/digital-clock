#ifndef APP_H
#define APP_H

#include "button_driver.h"
#include "clock.h"

typedef enum
{
	APP_STATE_RUN = 0,
	APP_STATE_SET_HOURS,
	APP_STATE_SET_MINUTES
}app_states_e;

typedef struct
{
	clock_time_t *clock;
	app_states_e state;
}app_t;

void App_Init(app_t *app,clock_time_t *clk);
void App_Task(app_t *app);
void Button_Task(void);

#endif //APP_H

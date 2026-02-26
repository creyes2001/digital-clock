#include "ss_display.h"
#define SEGMENTS 7

static uint8_t current_digit = 0;
static uint8_t last_digit = 0;
static display_type_e display_type_flag;

const uint8_t numbers[10][SEGMENTS] = {
	{1,1,1,1,1,1,0},
	{0,1,1,0,0,0,0},
	{1,1,0,1,1,0,1},
	{1,1,1,1,0,0,1},
	{0,1,1,0,0,1,1},
	{1,0,1,1,0,1,1},
	{1,0,1,1,1,1,0},
	{1,1,1,0,0,0,0},
	{1,1,1,1,1,1,1},
	{1,1,1,0,0,1,1}
};

static void level_write(gpio_t *gpio,level_e level)
{
	gpio_level_e gpio_level;

	if(display_type_flag == COMMON_ANODE)
	{
		gpio_level = (level = LEVEL_ON) ? GPIO_LOW : GPIO_HIGH; 
		Gpio_Write(gpio,gpio_level);
	}
	else
	{
		gpio_level = (level = LEVEL_OFF) ? GPIO_LOW : GPIO_HIGH; 
		Gpio_Write(gpio,gpio_level);
	}
}

void display_init(display_t *display)
{
	display_type_flag = display->display_type;

	for(uint8_t i = 0; i < SEGMENTS; i++)
	{
		Gpio_Init(display->data[i],GPIO_OUTPUT);
		level_write(display->data[i],LEVEL_OFF);
	}

	for(uint8_t i = 0; i < display->digit_number; i++)
	{
		Gpio_Init(display->control[i],GPIO_OUTPUT);
		level_write(display->control[i],LEVEL_OFF);
	}
	
	if(display->colon == COLON_ENABLED)
	{
		Gpio_Init(display->colon_pin,GPIO_OUTPUT);
		level_write(display->colon_pin,LEVEL_OFF);
		Gpio_Init(display->colon_control_pin,GPIO_OUTPUT);
		level_write(display->colon_control_pin,LEVEL_OFF);
	}
}

void display_update(display_t *display)
{

	if(display->digit_number == 1)
	{
		level_write(display->control[current_digit],LEVEL_ON);
	}
	else
	{
		level_write(display->control[current_digit],LEVEL_OFF);
		if(current_digit == (display->digit_number - 1))
		{
			current_digit = 0;
		}
		else
		{
			current_digit++;
		}
		level_write(display->control[current_digit],LEVEL_ON);
	}
}

void display_task(display_t *display,uint8_t data[4])
{
	for(uint8_t i = 0; i < SEGMENTS; i++){
		if(numbers[data[current_digit]][i] == 1)
		{
			level_write(display->data[i],LEVEL_ON);
		}
		else
		{
			level_write(display->data[i],LEVEL_OFF);
		}
	}
}

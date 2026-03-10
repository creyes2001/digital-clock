#include "ss_display.h"
#include <xc.h>
#define _XTAL_FREQ 20000000

static colon_config_e colon_status;
static polarity_e segment_polarity;
static polarity_e control_polarity;
static gpio_t *data;
static gpio_t *control; 
static gpio_t *colon_control;
static gpio_t *colon_pin;
static uint8_t digit_number;

static volatile uint8_t buffer[MAX_CONTROL_PINS] = {0,0,0,0};

static uint8_t digit_flag = 0;

static const uint8_t numbers[10] = {
	0b0111111, //0
	0b0000110, //1
	0b1011011, //2
	0b1001111, //3
	0b1100110, //4
	0b1101101, //5
	0b1111101, //6
	0b0000111, //7
	0b1111111, //8
	0b1100111  //9
};

static void level_write(gpio_t *gpio,level_e level,pin_type_e pin_type)
{
	gpio_level_e gpio_level;
	if(pin_type == CONTROL_PIN)
	{
		if(control_polarity == ACTIVE_HIGH)
		{
			gpio_level = (level == LEVEL_ON) ? GPIO_HIGH : GPIO_LOW;
		}
		else
		{
			gpio_level = (level == LEVEL_OFF) ? GPIO_HIGH : GPIO_LOW;
		}
	}

	else
	{
		if(segment_polarity == ACTIVE_HIGH)
		{
			gpio_level = (level == LEVEL_ON) ? GPIO_HIGH : GPIO_LOW;
		}
		else
		{
			gpio_level = (level == LEVEL_OFF) ? GPIO_HIGH : GPIO_LOW;
		}
	}
		
	Gpio_Write(gpio,gpio_level);
}

void display_init(display_t *display)
{
	data = display->data;
	control = display->control;
	colon_control = display->colon_control_pin;
	colon_pin = display->colon_pin;
	colon_status = display->colon;
	segment_polarity = display->segment_polarity;
	control_polarity = display->control_polarity;
	digit_number = display->digit_number;
	
	for(uint8_t i = 0; i < SEGMENTS; i++)
	{
		Gpio_Init(&data[i],GPIO_OUTPUT);
		level_write(&data[i],LEVEL_OFF,SEGMENT_PIN);		
	}

	for(uint8_t i = 0; i < digit_number; i++)
	{
		Gpio_Init(&control[i],GPIO_OUTPUT);
		level_write(&control[i],LEVEL_OFF,CONTROL_PIN);		
	}

	if(colon_status == COLON_ENABLED)
	{
		Gpio_Init(colon_pin,GPIO_OUTPUT);
		level_write(colon_pin,LEVEL_OFF,SEGMENT_PIN);		
		Gpio_Init(colon_control,GPIO_OUTPUT);
		level_write(colon_control,LEVEL_OFF,CONTROL_PIN);		
	}
}

//The driver assume that the application will call the funtion every 1ms
void display_task(void)
{
	static uint16_t ms = 0;
	ms++;

	if(ms >= 1000)
	{
		ms = 0;
	}

	for(uint8_t i = 0; i < digit_number; i++)
    {
        level_write(&control[i], LEVEL_OFF, CONTROL_PIN);
    }

	if(colon_status == COLON_ENABLED)
	{
		level_write(colon_control,LEVEL_ON,CONTROL_PIN);
		level_write(&control[0],LEVEL_OFF,CONTROL_PIN);
		level_write(&control[1],LEVEL_OFF,CONTROL_PIN);
		level_write(&control[2],LEVEL_OFF,CONTROL_PIN);
		level_write(colon_pin,LEVEL_OFF,SEGMENT_PIN);
		if(ms < 500)
		{
			level_write(colon_pin,LEVEL_ON,SEGMENT_PIN);
		}	
		else
		{
			level_write(colon_pin,LEVEL_OFF,SEGMENT_PIN);
		}
	}

	digit_flag++;
	if(digit_flag >= digit_number)
	{
		digit_flag = 0;
	}

	for(uint8_t i = 0; i < SEGMENTS; i++)
	{
		level_write(&data[i],LEVEL_OFF,SEGMENT_PIN);
		
		if(numbers[buffer[digit_flag]] & (1 <<  i))
		{
			level_write(&data[i],LEVEL_ON,SEGMENT_PIN);
		}
		else
		{
			level_write(&data[i],LEVEL_OFF,SEGMENT_PIN);
		}
	}

	level_write(&control[digit_flag],LEVEL_ON,CONTROL_PIN);
}

void display_push(uint16_t buffer_clk)
{
	uint8_t dig;
	for(uint8_t i = 0; i < digit_number; i++)
	{
		dig = buffer_clk % 10;
		buffer[digit_number - i - 1] = dig;
		buffer_clk = buffer_clk / 10;
	}
}


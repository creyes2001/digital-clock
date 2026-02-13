#include "uart.h"
#include "gpio.h"
#include "config.h"
#include <xc.h>
#define _XTAL_FREQ 20000000

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

void __interrupt() ISR(void)
{
	if(PIR1bits.RCIF)
	{
		Uart_InterruptHandler();
	}
}

int main()
{
	Gpio_Init(&led,GPIO_OUTPUT);
	Gpio_Init(&button,GPIO_INPUT);
	Uart_Init(&uart_config);
	Uart_Start(&uart_config);
	gpio_level_e level;

	/* Enable interrupts */
	INTCONbits.GIE = 1;
	INTCONbits.PEIE = 1;

	char c;
    Gpio_Write(&led, GPIO_LOW);
	while(1)
	{
		Uart_TxTask();

		level = Gpio_Read(&button);

		if(level == GPIO_LOW)
		{

			Uart_Tx('H');
			Uart_Tx('i');
			Uart_Tx('\r');
			Uart_Tx('\n');


			__delay_ms(500);
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

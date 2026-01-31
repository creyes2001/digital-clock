#include "uart.h"
#include <xc.h>

/* Configure UART module for asynchronous 8-bit communication at 9600 baud */
void Uart_Init(const uart_config_t *uart)
{
	TXSTAbits.TX9 = 0; 	//8-bit transmission
	RCSTAbits.RX9 = 0;	//8-bit reception
	TXSTAbits.SYNC = 0; //Asynchronous mode
	
	if(uart->baud_rate == 9600)
	{
		TXSTAbits.BRGH = 1;	//High-speed baud rate
		BAUDCONbits.BRG16 = 0;	//8-bit baud rate generator
	
		SPBRGH = 0;
		SPBRG = 129;	//9600 baud @ 20 MHz
	}
	else
	{
		/* Unsuported baud rate */
	}
} 

/* Initialize pins and enable serial port */
void Uart_Start(const uart_config_t *uart)
{
	Gpio_Init(*(uart->rx),GPIO_INPUT);
	Gpio_Init(*(uart->tx),GPIO_INPUT);

	RCSTAbits.SPEN = 1; //Enable serial port
	TXSTAbits.TXEN = 1; //Enable transmitter
	RCSTAbits.CREN = 1; //Enable receiver
	

}

/* Disable serial port */
void Uart_Stop(void)
{
	RCSTAbits.SPEN = 0; //Disable serial port
	TXSTAbits.TXEN = 0; //Disable transmitter
	RCSTAbits.CREN = 0; //Disable receiver
}

char Uart_Rx(void)
{
	 
}

void Uart_Tx(char c)
{
	if(TXSTAbits.TRMT == 1)
	{
		/* wait */
	}
		TXREG = c;
}

void Uart_SendString(char msg)
{

}

#include "uart.h"
#include "buffer.h"
#include <xc.h>

/* Configure UART module for asynchronous 8-bit communication at 9600 baud */

static buffer_t tx_buffer;
static buffer_t rx_buffer;

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
	Gpio_Init(uart->rx,GPIO_INPUT);
	Gpio_Init(uart->tx,GPIO_INPUT);
	
	Buffer_Init(&tx_buffer);
	Buffer_Init(&rx_buffer);

	RCSTAbits.SPEN = 1; //Enable serial port
	TXSTAbits.TXEN = 1; //Enable transmitter
	RCSTAbits.CREN = 1; //Enable receiver
	
	PIR1bits.TXIF = 0;	//Clear interrupt flag
//	PIE1bits.TXIE = 1;	//Enable transmission interrupt 				   
	
	/* clear rx interrupt flag*/
	if (PIR1bits.RCIF)
	{
    	char dummy = RCREG; 
		(void)dummy; 
	}
	PIE1bits.RCIE = 1; //Enable reception interrupt

}

/* Disable serial port */
void Uart_Stop(void)
{
	RCSTAbits.SPEN = 0; //Disable serial port
	TXSTAbits.TXEN = 0; //Disable transmitter
	RCSTAbits.CREN = 0; //Disable receiver
}

void Uart_InterruptHandler(void)
{
	char c;
		if(RCSTAbits.OERR)
		{
			//Clear overrun error
			RCSTAbits.CREN = 0;
			RCSTAbits.CREN = 1;
			return;
		}

		if(RCSTAbits.FERR)
		{
			//Read and discard corrupted byte
			c = RCREG;
			return;
		}
	
		c = RCREG;
		Buffer_Add(&rx_buffer,c);
}


void Uart_Tx(char c)
{
	(void)Buffer_Add(&tx_buffer, c);
}

void Uart_TxTask(void)
{
	char c;

	if(PIR1bits.TXIF && Buffer_Get(&tx_buffer, &c))
	{
		TXREG = c;
	}
}


bool Uart_Read(char *data)
{
	return Buffer_Get(&rx_buffer, data);
}

void Uart_SendString(const char *msg)
{
	while(*msg != '\0')
	{
		Uart_Tx(*msg);
		msg++;
	}
}

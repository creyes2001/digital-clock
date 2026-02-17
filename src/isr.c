#include "isr.h"
#include "uart.h"
#include "timer0.h"
#include <xc.h>

void __interrupt() ISR(void)
{
	if(PIR1bits.RCIF | PIR1bits.TXIF)
	{
		Uart_InterruptHandler();
	}
}

void isr_init(void)
{
	RCONbits.IPEN = 0;		// Disable priority levels
	INTCONbits.PEIE = 1;	// Peripherial interrupts enable
	INTCONbits.GIE = 1; 	// Global interrupt enable
}

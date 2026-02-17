#include "isr.h"
#include "uart.h"
#include "timer0.h"
#include "system_tick.h"
#include <xc.h>

void __interrupt() ISR(void)
{
	//UART interrupts
	if(PIR1bits.RCIF | PIR1bits.TXIF)
	{
		Uart_InterruptHandler();
	}
	
	//Timer 0 interrupts
	if(INTCONbits.TMR0IF && INTCONbits.TMR0IE)
	{
		timer0_reload();
		INTCONbits.TMR0IF = 0;
		system_tick_1ms();
	}

}

void isr_init(void)
{
	RCONbits.IPEN = 0;		// Disable priority levels
	INTCONbits.PEIE = 1;	// Peripherial interrupts enable
	INTCONbits.GIE = 1; 	// Global interrupt enable
}

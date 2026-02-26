#include "isr.h"
#include "uart.h"
#include "timer0.h"
#include "system_tick.h"
#include <stdint.h>
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

		INTCONbits.TMR0IF = 0;
		
		//T0CONbits.TMR0ON = 0;	//timer0 stop
		
		TMR0H = 0xFB;
		TMR0L = 0x1E;
		
		//T0CONbits.TMR0ON = 1;	//timer0 start

		system_tick_1ms();
	}

}

void isr_init(void)
{
	RCONbits.IPEN = 0;		// Disable priority levels
	INTCONbits.PEIE = 1;	// Peripherial interrupts enable
	INTCONbits.GIE = 1; 	// Global interrupt enable
}

#include "timer2.h"
#include <xc.h>

void timer2_init(void)
{

	T2CONbits.T2CKPS = 0b01;
	T2CONbits.TOUTPS = 0b1001;

    // Period register
    PR2 = 124;

    // Clear interrupt flag
    PIR1bits.TMR2IF = 0;

    // Enable interrupt
    PIE1bits.TMR2IE = 1;

    // Start Timer2
    T2CONbits.TMR2ON = 1;
}

void timer2_start(void)
{
 T2CONbits.TMR2ON = 1;
}

void timer2_stop(void)
{
 T2CONbits.TMR2ON = 0;
}


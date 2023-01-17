#include <xc.h>
#include "main.h"

void timer0_config(void)
{

	/*
	 * Setting instruction cycle clock (Fosc / 4) as the source of
	 * timer0
	 */
//	TMR1CS = 0;
	
  TMR0=6;

  // reading in 16-bit operations
  //T08BIT = 0;
  // timer 1 uses internal instruction cycle clock CLKO
  T0CS = 0;

  // Prescaler value of 1:4
	TMR0IF = 0;

	PSA = 0;
	T0PS2 = 0;
	T0PS1 = 1;
	T0PS0 = 1;
  // disable timer 1 oscillator
  //T1CONbits.T1OSCEN = 0;

 

  // enable interrupt flag for timer 1
  TMR0IE = 1;

  // turn timer 1 on
  TMR0ON = 1;

  // enable peripheral interrupts
  PEIE = 1;
  

}


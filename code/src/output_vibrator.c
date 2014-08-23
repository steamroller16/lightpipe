//-----------------------------------------------------------
//-----------------------------------------------------------
// output_vibrator.c
#include "output_vibrator.h"
//-----------------------------------------------------------
void output_vibrator_init(void)
{
//P3.7/TA1CLK
	///VIBRATOR
	P3DIR |= BIT7;
	output_vibrate_stop();
}

void output_vibrate_start(void)
{
	P3OUT |= ( BIT7 );
}

void output_vibrate_stop(void)
{
	P3OUT &= ~( BIT7 );
}
//-----------------------------------------------------------
//-----------------------------------------------------------
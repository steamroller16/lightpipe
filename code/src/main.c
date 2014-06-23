#include "main.h"

int main(void)
{
	// Stop the watch dog timer
	WDTCTL = WDTPW + WDTHOLD;
	
	// Set LFXT1 (ACLK) to Low-frequency mode
	BCSCTL1 &= ~XTS;
	// ACLK /8
	BCSCTL1 |= DIVA_3;
	// Set LFXT1 source to VLO (~12kHz)
	BCSCTL3 = LFXT1S_2;
	
	// Set watch dog timer to interval timer
	// Source ACLK @ 12 kHz
	// WDTPW+WDTTMSEL+WDTCNTCL+WDTSSEL+WDTIS1
	WDTCTL = WDT_ADLY_16; // 512 counts per interval
	// WDTCTL = WDT_ADLY_250; // 8192 counts per interval
	// WDTCTL = WDT_ADLY_1000; // 32768 counts per interval
	
	// Enable watchdog timer interval interrupt
	IE1 |= WDTIE;
	
	_BIS_SR(GIE);
	while(1);
}

#pragma vector=WDT_VECTOR
__interrupt void watchdog_timer(void)
{
	__delay_cycles(1);
}
//-----------------------------------------------------------
//-----------------------------------------------------------
// util_wdt.c
#include "util_wdt.h"
//-----------------------------------------------------------
void util_wdt_init(void)
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
	WDTCTL = WDT_ADLY_16; // 512 counts per interval
	// WDTCTL = WDT_ADLY_250; // 8192 counts per interval
	// WDTCTL = WDT_ADLY_1000; // 32768 counts per interval
	
	// Enable watchdog timer interval interrupt
	IE1 |= WDTIE;
}

void util_wdt_pause(void)
{
	// Stop the watch dog timer
	WDTCTL = WDTPW + WDTHOLD;
}

void util_wdt_resume(void)
{
	// Set watch dog timer to interval timer
	// Source ACLK @ 12 kHz
	WDTCTL = WDT_ADLY_16; // 512 counts per interval
}
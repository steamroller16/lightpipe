//-----------------------------------------------------------
//-----------------------------------------------------------
// chip_AT42QT1011.c
//-----------------------------------------------------------
// This is the touch sensing chip
// It is running in low power mode because SYNC is pulled to ground
// Inputs on P2.1, 2.2, 2.3, with interrupts enabled
// Interrupts appear on PxIFG. These bits must be reset in the ISR
// Default behavior PxIFGx is interrupt on low to high transition
init_AT42QT1011(void)
{
	
}
ISR_adc(void)
{

}


void util_timer_timer0_a1_isr(void)
{
	switch(__even_in_range(TA0IV,0x0A))
	{
		case TA0IV_NONE: break;		// Vector  0:  No interrupt
		case TA0IV_TACCR1:			// Vector  2:  TACCR1 CCIFG
		{
			util_timer_rgb_mux_isr_green(void)
			break;
		}
		case TA0IV_TACCR2:			// Vector  4:  TACCR2 CCIFG
		{
			util_timer_rgb_mux_isr_blue(void)
			break;
		}
		case TA0IV_6: break;		// Vector  6:  Reserved CCIFG
		case TA0IV_8: break;		// Vector  8:  Reserved CCIFG
		case TA0IV_TAIFG: break;	// Vector 10:  TAIFG
		default: break;
	}
}
//-----------------------------------------------------------
//-----------------------------------------------------------
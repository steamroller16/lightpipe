//-----------------------------------------------------------
//-----------------------------------------------------------
// util_timer.c
//-----------------------------------------------------------
util_timer_init(void)
{
	// setup the two timers for the led colors and the led time muxing
}

//-----------------------------------------------------------
//-----------------------------------------------------------

// LED_EN_FRONT
// TA1.0
// LED_EN_MID
// TA1.1
// LED_EN_REAR
// TA1.2
// 190Hz

// R
// TA0.0
// G
// TA0.1
// B
// TA0.2
// 97kHz

// Click sound
// 1661.2 Hz


// Timer in UP MODE
// CCR0 sets the period
// CCR1 / CCR0 = duty cycle of output TAx.1 in OUTMODE7 (reset/set)
// CCR2 / CCR0 = duty cycle of output TAx.2 in OUTMODE7 (reset/set)
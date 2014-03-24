//-----------------------------------------------------------
//-----------------------------------------------------------
// util_timer.c
//-----------------------------------------------------------
void util_timer_init(void)
{
util_timer_rgb_mux_init(void);
util_timer_pos_mux_init(void);
// Register the interrupt service routines with the isr module
isr_add_handler(&util_timer_timer0_a0_isr, ISR_INTERRUPT_SOURCE_TIMER0_A0);
isr_add_handler(&util_timer_timer0_a1_isr, ISR_INTERRUPT_SOURCE_TIMER0_A1);
isr_add_handler(&util_timer_timer1_a0_isr, ISR_INTERRUPT_SOURCE_TIMER1_A0);
isr_add_handler(&util_timer_timer1_a1_isr, ISR_INTERRUPT_SOURCE_TIMER1_A1);
}

void util_timer_rgb_mux_init(void)
{
	// ----Set TA0CTL----
	// Set TA0 to run on TACLK, ACLK, [SMCLK] -> TASSEL_2
	// Set TA0 to Continuous Mode -> MC_2
	// Set TA0 to clk divide by 1,2,4,8 -> ID_x
	// Clear TA0 Clk divider, count dir, counter -> TACLR
	// (Enable TAIFG interrupt -> TAIE) - not used
	TA0CTL = TASSEL_2 + MC_2 + TACLR;

	// ----Set TA0CCTL0----(Red Channel)
	// Set CCR0 output to Manual -> OUTMOD_0
	// Set manual output to low -> (default)
	// Enable CCR0 interrupt -> CCIE
	TA0CCTL0 = OUTMOD_0 + CCIE;

	// ----Set TA0CCTL1----(Blue Channel)
	// Set CCR0 output to Manual -> OUTMOD_0
	// Set manual output to low -> (default)
	// Enable CCR0 interrupt -> CCIE
	TA0CCTL1 = OUTMOD_0 + CCIE;

	// ----Set TA0CCTL2----(Green Channel)
	// Set CCR0 output to Manual -> OUTMOD_0
	// Set manual output to low -> (default)
	// Enable CCR0 interrupt -> CCIE
	TA0CCTL2 = OUTMOD_0 + CCIE;

	TA0CCR0 = main_feedback_red_off_time;
	TA0CCR1 = main_feedback_green_off_time;
	TA0CCR2 = main_feedback_blue_off_time;

	main_feedback_red_status = 0;
	main_feedback_green_status = 0;
	main_feedback_blue_status = 0;
}

void util_timer_pos_mux_init(void)
{
	/// Setup the timer for front, middle, rear feedback LED time multiplexing
	// ----Set TA1CTL----
	// Set TA1 to run on TACLK, ACLK, [SMCLK] -> TASSEL_2
	// Set TA1 to Continuous Mode -> MC_2
	// Set TA1 to clk divide by [1],2,4,8 -> ID_0
	// Clear TA1 Clk divider, count dir, counter -> TACLR
	// (Enable TAIFG interrupt -> TAIE) - not used
	TA1CTL = TASSEL_2 + MC_2 + ID_0 + TACLR;
	
	// ----Set TA0CCTL0----(Front LED)
	// Manual Mode, Force output high to start -> OUTMOD_0 + OUT
	// Enable CCR0 interrupt -> CCIE
	TA1CCTL0 = OUTMOD_0 + OUT + CCIE;
	// Produce color for front LED
	output_feedback_lights_set_color(main_feedback_front_color[3]);
	
	// ----Set TA0CCTL1----(Middle LED)
	// Manual Mode, Force output low to start -> OUTMOD_0
	// Enable CCR1 interrupt -> CCIE
	TA1CCTL1 = OUTMOD_0 + CCIE;
	
	// ----Set TA0CCTL2----(Rear LED)
	// Manual Mode, Force output low to start -> OUTMOD_0
	// Enable CCR2 interrupt -> CCIE
	TA1CCTL2 = OUTMOD_0 + CCIE;
	
	TA1CCR0 = UTIL_TIMER_FEEDBACK_SINGLE_LED_ON_TIME;
	TA1CCR1 = UTIL_TIMER_FEEDBACK_SINGLE_LED_ON_TIME * 2;
	TA1CCR2 = UTIL_TIMER_FEEDBACK_SINGLE_LED_ON_TIME * 3;
}

void util_timer_rgb_mux_isr_red(void)
{
	if(main_feedback_red_status) // If LED was on...
	{
		if(main_feedback_red_off_time) // and off-time is non-zero...
		{
			TA0CCR0 = main_feedback_red_off_time;
			TA0CCTL0 &= ~OUT; // Turn off output
			main_feedback_red_status = 0;
		}
		// If LED was on, but off-time is zero, do nothing (just stay on)
	}
	// else LED was off...
	else if(main_feedback_red_on_time) // If on-time is non-zero...
	{
		TA0CCR0 = main_feedback_red_on_time;
		TA0CCTL0 |= OUT; // Turn on output
		main_feedback_red_status = 1;
	}
	// If LED was off, but on-time is zero, do nothing (just stay off)
}

void util_timer_rgb_mux_isr_green(void)
{
	if(main_feedback_green_status) // If LED was on...
	{
		if(main_feedback_green_off_time) // and off-time is non-zero...
		{
			TA0CCR1 = main_feedback_green_off_time;
			TA0CCTL1 &= ~OUT; // Turn off output
			main_feedback_green_status = 0;
		}
		// If LED was on, but off-time is zero, do nothing (just stay on)
	}
	// else LED was off...
	else if(main_feedback_green_on_time) // If on-time is non-zero...
	{
		TA0CCR1 = main_feedback_green_on_time;
		TA0CCTL1 |= OUT; // Turn on output
		main_feedback_green_status = 1;
	}
	// If LED was off, but on-time is zero, do nothing (just stay off)
}

void util_timer_rgb_mux_isr_blue(void)
{
	if(main_feedback_blue_status) // If LED was on...
	{
		if(main_feedback_blue_off_time) // and off-time is non-zero...
		{
			TA0CCR2 = main_feedback_blue_off_time;
			TA0CCTL2 &= ~OUT; // Turn off output
			main_feedback_blue_status = 0;
		}
		// If LED was on, but off-time is zero, do nothing (just stay on)
	}
	// else LED was off...
	else if(main_feedback_blue_on_time) // If on-time is non-zero...
	{
		TA0CCR2 = main_feedback_blue_on_time;
		TA0CCTL2 |= OUT; // Turn on output
		main_feedback_blue_status = 1;
	}
	// If LED was off, but on-time is zero, do nothing (just stay off)
}

void util_timer_pos_mux_isr_1(void)
{
	// Turn Front LED off
	TA1CCTL0 &= ~OUT;
	// Produce color for middle LED
	output_feedback_lights_set_color(main_feedback_middle_color[3]);
	// Turn Middle LED on
	TA1CCTL1 |= OUT;
}

void util_timer_pos_mux_isr_2(void)
{
	// Turn Middle LED off
	TA1CCTL1 &= ~OUT;
	// Produce color for rear LED
	output_feedback_lights_set_color(main_feedback_rear_color[3]);
	// Turn Rear LED on
	TA1CCTL2 |= OUT;
}

void util_timer_pos_mux_isr_3(void)
{
	// Turn Rear LED off
	TA1CCTL2 &= ~OUT;
	// Produce color for front LED
	output_feedback_lights_set_color(main_feedback_front_color[3]);
	TA1CCR0 = UTIL_TIMER_FEEDBACK_SINGLE_LED_ON_TIME;
	TA1CCR1 = UTIL_TIMER_FEEDBACK_SINGLE_LED_ON_TIME * 2;
	TA1CCR2 = UTIL_TIMER_FEEDBACK_SINGLE_LED_ON_TIME * 3;
	// Turn Front LED on
	TA1CCTL0 |= OUT;
}

//-----------------------------------------------------------
// util_timer_rgb_mux ISR
//-----------------------------------------------------------
// #pragma vector=TIMER0_A0_VECTOR
// __interrupt void TIMER0_A0_ISR (void)
void util_timer_timer0_a0_isr(void)
{
	// TACCR0 CCIFG Interrupt
	util_timer_rgb_mux_isr_red(void)
}

// #pragma vector = TIMER0_A1_VECTOR
// __interrupt void TIMER0_A1_ISR (void)
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
// util_timer_pos_mux ISR
//-----------------------------------------------------------
// #pragma vector=TIMER1_A0_VECTOR
// __interrupt void TIMER1_A0_ISR (void)
void util_timer_timer1_a0_isr(void)
{
	// TACCR0 CCIFG Interrupt
	util_timer_pos_mux_isr_1(void)
}

// #pragma vector = TIMER1_A1_VECTOR
// __interrupt void TIMER1_A1_ISR (void)
void util_timer_timer1_a1_isr(void)
{
	switch(__even_in_range(TA1IV,0x0A))
	{
		case TA1IV_NONE: break;		// Vector  0:  No interrupt
		case TA1IV_TACCR1:			// Vector  2:  TACCR1 CCIFG
		{
			util_timer_pos_mux_isr_2(void)
			break;
		}
		case TA1IV_TACCR2:			// Vector  4:  TACCR2 CCIFG
		{
			util_timer_pos_mux_isr_3(void)
			break;
		}
		case TA1IV_6: break;		// Vector  6:  Reserved CCIFG
		case TA1IV_8: break;		// Vector  8:  Reserved CCIFG
		case TA1IV_TAIFG: break;	// Vector 10:  TAIFG
		default: break;
	}
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


/* init
(to be accessed in ISRs)
global red_off_time
global red_on_time
global green_off_time
global green_on_time
global blue_off_time
global blue_on_time

RGB values, {[0,255],[0,255],[0,255]}
func update_feedback_color(R,G,B)
	red_on_time = R/255*65535;
	red_off_time = 65535-red_on_time;
	green_on_time = G/255*65535;
	green_off_time = 65535-green_on_time;
	blue_on_time = B/255*65535;
	blue_off_time = 65535-blue_on_time;


TA0.x
Pins all = 0 
timer continuous mode
toggle mode
color_freq = clk/65535
ccr0(red) = red_off_time
ccr1(green) = green_off_time
ccr2(blue) = blue_off_time

ISRs
EQU0 -> 	if TAIFG(skip) CCR0 = red_on_time
EQU1 -> 	if TAIFG(skip) CCR1 = green_on_time
EQU2 -> 	if TAIFG(skip) CCR2 = blue_on_time
TAIFG -> 	CCR0 = red_off_time
			CCR1 = green_off_time
			CCR2 = blue_off_time

TA1.x
up mode
on_time = user_def (non-critical)
CCR0 = on_time
CCR1 = on_time*2
CCR2 = on_time*3

ISRs
EQU0 -> 	FRONT off
			MID on
EQU1 -> 	MID off
			BACK on
EQU2 -> 	BACK off
			FRONT on






*/
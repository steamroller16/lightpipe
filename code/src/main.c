
/*

Guiding principle: device should require NO instruction to use

How device is supposed to behave:

When device is stationary:
	after few seconds, device goes to sleep.
	if device moving, device activates

When device is activated (moving):
	battery level shown in color on front feedback LED at all times
		COLORMAP: Red (depleted) <-> Green (full), mirror visible spectrum color change. Red (flashing) is crisis mode - brake lights flash then go double flash at night (no solid), signal light duty cycle reduced.
	ready for touch inputs
	ready for brake maneuver

When touched:
	touch 1 -> toggles turn signal
	touch 2 (non-critical) -> checks orientation
		increases/decreases brightness of turn and brake lights
	touch 3 (non-critical) -> checks orientation
		increases/decreases brightness of turn and brake lights

When signaling turns:
	turn signal LED's flash 
	middle feedback LED flashes yellow in unison with turn signal LED's
	speaker produces click sounds in unison with turn signal LED's
	(non-critical) vibrator vibrates in unison with turn signal LED's

When brake maneuver detected:
	in daytime, brake LED's (normally off) turn on
	in nighttime, brake LED's (normally dimly glowing or flashing) turn on 
	rear feedback LED's lights up red/glows in unison with brake light
	brake maneuver remains active until next forward acceleration


NOTES:
just like how in a car the driver can not control the brightness of the brake lights or signal lights, I don't think that the operator should be able to control those brightnesses either. Those settings are just for debug.

Possibly the only controls which should be user adjustable are trigger sensitivity and MAYBE brake sensitivity





main.c
-inits
-go to sleep

isr.c
-SAM

util_adc.c
-util_adc_init
-util_adc_start(channel)
-util_adc_read(channel)

util_i2c.c
-util_i2c_init
-util_i2c_write(slave_address, msg)
-util_i2c_read(slave_address, msg)

util_uart.c
-util_uart_init
-util_uart_send(msg)
-util_uart_parse
-util_uart_add_char_to_buffer

util_gpio.c
-util_gpio_init
-util_gpio_set_pin_dir(channel, pin, dir)
-util_gpio_write_pin(channel, pin, state)

sensor_battery_voltage.c
sensor_ambient_light.c
sensor_accelerometer.c
sensor_battery_charger.c

chip_TLC59108IPWR.c
output_signal_lights.c
output_brake_lights.c

chip_AT42QT1011.c
sensor_touch_sensor.c

output_speaker.c
output_indicator_lights.c
output_vibrator.c







-------------------------------------------
Peripherals:

ADC
	[A0] Read battery voltage
		Adjust behavior to maximize battery life
		Warn user of imminent battery depletion
		Adjust battery fuel gauge LED color
	[A3] Read light sensor voltage ()
		Adjust behavior in accordance with ambient lighting

I2C [UCB0SCL, UCB0SDA]
	[P2.0][100 1100 - 0x4C] Accelerometer (w/ interrupt)
	[P2.5][110 1011 - 0x6B] Battery charger (w/ interrupt)
	[100 0001 - 0x41] Signal LEDs (front)
	[100 0010 - 0x42] Signal LEDs (back)
	[100 0011 - 0x43] Brake LEDs (back)
	[100 1000 - 0x48] LED All Call
	[100 1011 - 0x4B] LED Software Reset

UART [UCA0RXD, UCA0TXD]
	USB connectivity

GPIO (Inputs)
	[P2.1, P2.2, P2.3] Touch sensors (x3)

GPIO (Outputs)
	[P2.6, P2.7] Control light sensor gain (x2)
	[P2.4] Speaker
	[P3.4, P3.5, P3.6] General RGB LED color (R, G, B)
	[P3.1, P3.2, P3.3] General RGB LED select (x3)
	[P3.7] Vibrator

Debug (JTAG)
	[SBWTDIO, SBWTCK] 2-wire TCK, TDIO

-------------------------------------------
Use vertical acceleration to synchronize flashing?

*/


// Beginning of main.c
//------------------------------------------------------------------------------
// main.c
//------------------------------------------------------------------------------
// Init and main loop functions (if necessary).
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// Includes
//------------------------------------------------------------------------------
#include "main.h"
// #include "util_adc.h"
// #include "util_i2c.h"
//------------------------------------------------------------------------------
// Defines and typedefs
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
// Public global variables
//------------------------------------------------------------------------------
int Debug1;
int Debug2;

int main_feedback_red_on_time;
int main_feedback_red_off_time;
int main_feedback_red_status;

int main_feedback_green_on_time;
int main_feedback_green_off_time;
int main_feedback_green_status;

int main_feedback_blue_on_time;
int main_feedback_blue_off_time;
int main_feedback_blue_status;

int main_feedback_front_color[3];
int main_feedback_middle_color[3];
int main_feedback_rear_color[3];

// Default state is turn signal off
int main_turnsignal_is_on = 0;
int main_orientation[3];

//------------------------------------------------------------------------------
// Private global variables
//------------------------------------------------------------------------------
unsigned int main_turnsignal_flash_counter = 0;

//------------------------------------------------------------------------------
// Private function prototypes
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Functions
//------------------------------------------------------------------------------
int main(void)
{
	main_watchdog_init();
	
	main_debug_led_init();
	main_debug_touch_init();
	// main_debug_vibrator_init();
	main_speaker_init();
	main_turnsignal_is_on = 1;
	main_go_to_sleep();
	
	// Turn signal loop
	// {
		// Make sound
		// Vibrate
		// Toggle signal lights
		// Toggle middle feedback light
		// wait 1sec (or whatever)
	// }
}
//--------------------------------------------
// Setup watchdog interval timer
//--------------------------------------------
void main_watchdog_init(void)
{
	// Stop the watch dog timer
	// WDTCTL = WDTPW + WDTHOLD;
	
	// Set watch dog timer to interval timer @ 250ms
	// Source ACLK @ 32768 Hz
	// WDTCTL = WDT_ADLY_250;
	WDTCTL = WDT_ADLY_1000;
	// Enable watchdog timer interval interrupt
	IE1 |= WDTIE;
}
//--------------------------------------------
// Put the processor to sleep
//--------------------------------------------
void main_go_to_sleep(void)
{
	// // Make LED's white
	// P3OUT |= ( BIT6 + BIT5 + BIT4 );
	// P3OUT |= ( BIT3 + BIT2 + BIT1 );
	
		// // Make LED's blue
	// P3OUT |= ( BIT6 );
	// P3OUT &= ~( BIT5 + BIT4 );
	
		// // Make LED's red
	// P3OUT |= ( BIT4 );
	// P3OUT &= ~( BIT6 + BIT5 );
	
		// // Make LED's green
	// P3OUT |= ( BIT5 );
	// P3OUT &= ~( BIT6 + BIT4 );
	
	// Enter LPM3 (only ACLK active)
	// General purpose interrupts enabled
	_BIS_SR(LPM3_bits + GIE);
	while(1);
}
//--------------------------------------------
//--------------------------------------------
// Setup bare-bones debug functionality to test circuitry
//--------------------------------------------
// LED, SIGNAL FLASH DEBUG--------------------
//--------------------------------------------
void main_debug_led_init(void)
{
//P3.1/TA1.0
	///LED_1
	P3DIR |= BIT1;	//Set as output
//P3.2/TA1.1
	///LED_2
	P3DIR |= BIT2;	//Set as output
//P3.3/TA1.2
	///LED_3
	P3DIR |= BIT3;	//Set as output
//P3.4/TA0.0
	///R_CTRL
	P3DIR |= BIT4;	//Set as output
//P3.5/TA0.1
	///G_CTRL
	P3DIR |= BIT5;	//Set as output
//P3.6/TA0.2
	///B_CTRL
	P3DIR |= BIT6;	//Set as output
// Initialize LED's to off
	P3OUT &= ~( BIT3 + BIT2 + BIT1 );
}
// Watchdog Timer interrupt service routine
#pragma vector=WDT_VECTOR
__interrupt void watchdog_timer(void)
{
	if( main_turnsignal_is_on )
	{
		// Toggle signal lights every 500ms (250ms * 2)
		if ( (main_turnsignal_flash_counter & 0x01) | (main_turnsignal_flash_counter & 0x80))
		{
			// Turn on vibrator
			main_vibrate_start();
			// Flick speaker
			main_speaker_flick();
			// Change color to white
			P3OUT |= ( BIT5 + BIT4 + BIT6);
			//Toggle LED's 1,2,3
			P3OUT ^= ( BIT3 + BIT2 + BIT1 );
		}
		else
		{
			// Turn off vibrator
			main_vibrate_stop();
		}
		main_turnsignal_flash_counter++;
	}
	main_go_to_sleep();
}
//--------------------------------------------
//--------------------------------------------
// TOUCH SENSE DEBUG--------------------------
//--------------------------------------------
void main_debug_touch_init(void)
{
//P2.1/TA1.1
	///TOUCH_1
	P2DIR &= ~BIT1;	//Set as input
	P2REN |=  BIT1;	//Enable pullup/down resistor
	P2OUT &= ~BIT1;	//Select pulldown resistor
	P2IES &= ~BIT1;	//Trigger on rising edge
	P2IE  |=  BIT1;	//Enable pin interrupt
	P2IFG &= ~BIT1;	//Clear interrupt flag
//P2.2/TA1.1
	///TOUCH_2
	P2DIR &= ~BIT2;	//Set as input
	P2REN |=  BIT2;	//Enable pullup/down resistor
	P2OUT &= ~BIT2;	//Select pulldown resistor
	P2IES &= ~BIT2;	//Trigger on rising edge
	P2IE  |=  BIT2;	//Enable pin interrupt
	P2IFG &= ~BIT2;	//Clear interrupt flag
//P2.3/TA1.0
	///TOUCH_3
	P2DIR &= ~BIT3;	//Set as input
	P2REN |=  BIT3;	//Enable pullup/down resistor
	P2OUT &= ~BIT3;	//Select pulldown resistor
	P2IES &= ~BIT3;	//Trigger on rising edge
	P2IE  |=  BIT3;	//Enable pin interrupt
	P2IFG &= ~BIT3;	//Clear interrupt flag
	P2IFG=0;
}
// (Main touch pad) Turn signal -> on (green LED)
void main_sensor_touch_1_isr(void)
{
	// Flick speaker
	main_speaker_flick();
	// Turn on vibrator
	main_vibrate_start();
	// Make LED's green
	P3OUT |= ( BIT5 );
	P3OUT &= ~( BIT6 + BIT4 );
	// Turn on LED 1
	P3OUT |= ( BIT1 );
	// Turn signal -> on
	main_turnsignal_is_on = 1;
	// Turn off LED 1
	P3OUT &= ~( BIT1 );
	// Turn off vibrator
	main_vibrate_stop();
}
// (Auxillary touch pad) Turn signal -> off (red LED)
void main_sensor_touch_2_isr(void)
{
	// Flick speaker
	main_speaker_flick();
	// Turn on vibrator
	main_vibrate_start();
	// Make LED's red
	P3OUT |= ( BIT4 );
	P3OUT &= ~( BIT6 + BIT5 );
	// Turn on LED 1
	P3OUT |= ( BIT1 );
	// Turn signal -> off
	main_turnsignal_is_on = 0;
	// Turn off LED 1
	P3OUT &= ~( BIT1 );
	// Turn off vibrator
	main_vibrate_stop();
}
// (Auxillary touch pad) Turn signal -> off (blue LED)
void main_sensor_touch_3_isr(void)
{
	// Flick speaker
	main_speaker_flick();
	// Turn on vibrator
	main_vibrate_start();
	// Make LED's blue
	P3OUT |= ( BIT6 );
	P3OUT &= ~( BIT5 + BIT4 );
	// Turn on LED 1
	P3OUT |= ( BIT1 );
	// Turn signal -> off
	main_turnsignal_is_on = 0;
	// Turn off LED 1
	P3OUT &= ~( BIT1 );
	// Turn off vibrator
	main_vibrate_stop();
}
#pragma vector=PORT2_VECTOR
__interrupt void PORT2_ISR(void)
{
/*
	switch(P2IFG)
	{
		case BIT0: break;	//P2.0 Interrupt
		case BIT1: 			//P2.1 Interrupt
		{					//Main touch input
			main_sensor_touch_1_isr();
			P2IFG &= ~BIT1;
			break;
		}
		case BIT2: 			//P2.2 Interrupt
		{
			main_sensor_touch_2_isr();
			P2IFG &= ~BIT2;
			break;
		}
		case BIT3: 			//P2.3 Interrupt
		{
			main_sensor_touch_3_isr();
			P2IFG &= ~BIT3;
			break;
		}
		case BIT4: break;	//P2.4 Interrupt
		case BIT5: break;	//P2.5 Interrupt
		case BIT6: break;	//P2.6 Interrupt
		case BIT7: break;	//P2.7 Interrupt
		default: P2IFG=0;
	}
*/
	if(P2IFG & BIT1)//P2.1 Interrupt
	{
		main_sensor_touch_1_isr();
	}
	if(P2IFG & BIT2)//P2.2 Interrupt
	{
		main_sensor_touch_2_isr();
	}
	if(P2IFG & BIT3)//P2.3 Interrupt
	{
		main_sensor_touch_3_isr();
	}
	P2IFG = 0;//Clear all flags
	main_go_to_sleep();
}
//--------------------------------------------
//--------------------------------------------
// VIBRATOR DEBUG-----------------------------
//--------------------------------------------
void main_debug_vibrator_init(void)
{
//P3.7/TA1CLK
	///VIBRATOR
	P3DIR |= BIT7;
	main_vibrate_stop();
}
void main_vibrate_start(void)
{
	P3OUT |= ( BIT7 );
}
void main_vibrate_stop(void)
{
	P3OUT &= ~( BIT7 );
}
//--------------------------------------------
//--------------------------------------------
// SPEAKER DEBUG-----------------------------
//--------------------------------------------
void main_speaker_init(void)
{
//P2.4/TA1.2
	///SPEAKER
	P2DIR |= BIT4;
}
void main_speaker_flick(void)
{
	P2OUT ^= ( BIT4 );
}




// End of main.c





/* 
//-----------------------------------------------------------
//-----------------------------------------------------------
// util_i2c.c
//-----------------------------------------------------------
init_i2c(void)
{
	// (GLOBAL i2c SETTING)
	
	// ----Set P1SEL, P1SEL2----
	// Enabling I2C functionality on P1.6, P1.7
	P1SEL |= BIT6 + BIT7;
	P1SEL2|= BIT6 + BIT7;
	

	
	init_sensor_accel(void)
	init_sensor_batteryCharger
	init_output_signalFront
	init_output_signalBack
	init_output_brake
  
  
  
  
  
	// Initialize i2c modules
	init_sensor_light(void)
	init_sensor_batteryVoltage(void)
}
ISR_i2c(void)
{
	// Turn CPU back on when exiting
	__bic_SR_register_on_exit(CPUOFF);
}
//-----------------------------------------------------------
//-----------------------------------------------------------

UCB0I2CSA = 0x4e;                         // Set slave address
  UCB0CTL1 &= ~UCSWRST;                     // Clear SW reset, resume operation
  IE2 |= UCB0RXIE;                          // Enable RX interrupt

//-----------------------------------------------------------
//-----------------------------------------------------------
// util_i2c.c
//-----------------------------------------------------------
//-----------------------------------------------------------
// sensor_accel.c
//-----------------------------------------------------------
// Peripheral(s) used: ADC
// Pin(s) used: [A3] Read light sensor voltage (0V - 3.3V)
// Function(s): Adjust behavior in accordance with ambient lighting
//-----------------------------------------------------------

//-----------------------------------------------------------
//-----------------------------------------------------------
// util_i2c.c
//-----------------------------------------------------------






  ADC10CTL0 = ADC10SHT_2 + ADC10ON + ADC10IE; // ADC10ON, interrupt enabled
  ADC10CTL1 = INCH_1;                       // input A1
  ADC10AE0 |= 0x02;                         // PA.1 ADC option select
  P1DIR |= 0x01;                            // Set P1.0 to output direction
  P1SEL |= BIT6 + BIT7;                     // Assign I2C pins to USCI_B0
  P1SEL2|= BIT6 + BIT7;                     // Assign I2C pins to USCI_B0
  P1SEL |= BIT6 + BIT7;                     // Assign I2C pins to USCI_B0
  P1SEL2|= BIT6 + BIT7;                     // Assign I2C pins to USCI_B0
  UCB0CTL1 |= UCSWRST;                      // Enable SW reset
  UCB0CTL0 = UCMST + UCMODE_3 + UCSYNC;     // I2C Master, synchronous mode
  UCB0CTL1 = UCSSEL_2 + UCSWRST;            // Use SMCLK, keep SW reset
  UCB0BR0 = 12;                             // fSCL = SMCLK/12 = ~100kHz
  UCB0BR1 = 0;
  UCB0I2CSA = 0x4c;                         // Set slave address
  UCB0CTL1 &= ~UCSWRST;                     // Clear SW reset, resume operation
  IE2 |= UCB0TXIE;                          // Enable TX ready interrupt
  UCB0CTL1 |= UCTR + UCTXSTT;               // I2C TX, start condition
  UCB0TXBUF = 0x010;                        // Write DAC control byte
  __bis_SR_register(CPUOFF + GIE);          // Enter LPM0 w/ interrupts
  P1DIR |= 0x01;                            // Set P1.0 to output direction
  P1DIR |= BIT0;                            // Set P1.0 to output direction
  P1IE |=  BIT3;                            // P1.3 interrupt enabled
  P1IES |= BIT3;                            // P1.3 Hi/lo edge
  P1REN |= BIT3;							// Enable Pull Up on SW2 (P1.3)
  P1IFG &= ~BIT3;                           // P1.3 IFG cleared
  P1OUT ^= BIT0;                            // P1.0 = toggle
  P1IFG &= ~BIT3;                           // P1.3 IFG cleared
  
  

 */






// OUTLINE
// --------------------
// Touching the device:

// -these keep track of how many touch events occur for the different sensors-
// global touch_1_counts
// global touch_2_counts
// global touch_3_counts

// -this threshold sets the "sensitivity" of the touch input-
// touch_count_threshold

// -the feedback lights are glowing this color nominally-
// color_nominal

// -the feedback lights glow this color when the device is flashing its turn signal-
// color_turning

// ---pseudo code---

// *GPIO INTERRUPT FIRES - TOUCH INPUT DETECTED!*
// parse PxIFG to see where touch occured
// switch(TOUCH TYPE)
// {
// case TOUCH1 TOUCH
	// touch_1_counts++
	// feedback_light_update(FRONT, touch_1_counts, touch_count_threshold)
// case TOUCH2 TOUCH
	// touch_2_counts++
	// feedback_light_update(BACK, touch_2_counts, touch_count_threshold)
// case TOUCH3 TOUCH
	// touch_3_counts++
	// feedback_light_update(BACK, touch_2_counts, touch_count_threshold)
// }


// feedback_light_update(POSITION, num_counts, count_threshold)
// {
	// duty cycle = count_threshold / 

// as touch_count increases towards touch_count_threshold, feedback lights change color from color_1 to color_2
// }

	// if user removes touch input, touch_count decays over time, feedback lights reflect this change
// when touch_count reaches touch_count_threshold, trigger signal

	// to deactivate signal, same process repeats, touches are counted,colors go from 2 to 1

	// accel orientation?
		// adjust brightness up if 2 is on top
		// adjust brightness down if 2 is on bottom

	// accel orientation?
		// adjust brightness up if 2 is on top
		// adjust brightness down if 2 is on bottom




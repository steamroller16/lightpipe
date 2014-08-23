#include "main.h"
// ---------------------
// Utilities Used
// ---------------------
#include "util_i2c.h"
#include "util_wdt.h"
// ---------------------
// Chips Used
// ---------------------
// #include "chip_BQ24190.h"	// Charger
#include "chip_TLC59108.h"	// LED Driver
// #include "chip_MMA7660FC.h"	// Accelerometer
// #include "chip_BH1620FVC.h"	// Light Sensor
// ---------------------
// Outputs Used
// ---------------------
#include "output_speaker.h"
#include "output_vibrator.h"
#include "output_feedback_lights.h"
// ---------------------
char main_led_i2c_tx_buffer[9];
int main_led_i2c_tx_length;

char main_led_i2c_rx_buffer[9];
int main_led_i2c_rx_length;

char dummy = 0;

char xyz_accel[3];

int main_turnsignal_is_on = 0;
int main_brake_is_on = 0;
unsigned int main_turnsignal_flash_counter = 0;

int main(void)
{
	// Stop the watch dog timer
	WDTCTL = WDTPW + WDTHOLD;
	// ---------------------
	// Setup I2C Pins
	// -----
	//P1.6/TA0.1/A6/UCB0SOMI/UCB0SCL/TDI/TCLK
	///SCL
	P1SEL |= BIT6;
	P1SEL2|= BIT6;
	//P1.7/A7/UCB0SIMO/UCB0SDA/TDO/TDI
	///SDA
	P1SEL |= BIT7;
	P1SEL2|= BIT7;
	// -----
	// Initialize I2C settings
	util_i2c_init();
	// ---------------------
	// ---------------------
	// ---------------------
	// DEMO: Touch Pads
	// ---------------------
	// Setup Touch Input Pins
	// -----
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
	// Clear Interrupt Flags
	P2IFG=0;
	// -----
	// Initialize LED driver IC
	chip_TLC59108_init();
	// Initialize WDT timer
	util_wdt_init();
	// Initialize Output Feedback Lights
	output_feedback_lights_init();
	// Initialize Output Vibrator
	output_vibrator_init();
	// Initialize Output Speaker
	output_speaker_init();
	// Flash LED's
	chip_TLC59108_update_pwm( 0x00 , I2C_SLAVE_ADR_LED_ALL_CALL );
	chip_TLC59108_update_pwm( 0x05 , I2C_SLAVE_ADR_LED_ALL_CALL );
	chip_TLC59108_update_pwm( 0x00 , I2C_SLAVE_ADR_LED_ALL_CALL );
	chip_TLC59108_update_pwm( 0xFF , I2C_SLAVE_ADR_LED_ALL_CALL );
	chip_TLC59108_led_disable( I2C_SLAVE_ADR_LED_ALL_CALL );
	
	_BIS_SR(LPM3_bits + GIE);
	while(1);
	// ---------------------
	// DEMO: Batt charger comms
	// ---------------------
	/*chip_BQ24190_init();
	while(1)
	{
		dummy = chip_BQ24190_fault_check();
		__no_operation();
		
		dummy = chip_BQ24190_status_check();
		__no_operation();
		
		dummy = chip_BQ24190_part_check();
		__no_operation();
	}*/
	// ---------------------
	// ---------------------
	// DEMO: LED Flash over I2C
	// ---------------------
	/*// chip_MMA7660FC_init();
	chip_TLC59108_init();
	chip_TLC59108_update_pwm( 0x05 , I2C_SLAVE_ADR_LED_ALL_CALL );
	// while(1)
	// {
		chip_TLC59108_led_disable( I2C_SLAVE_ADR_LED_FRONT_SIGNAL );
		__delay_cycles(30000);

		chip_TLC59108_led_enable_pwm( I2C_SLAVE_ADR_LED_FRONT_SIGNAL );
		__delay_cycles(30000);
		
		chip_TLC59108_led_disable( I2C_SLAVE_ADR_LED_REAR_SIGNAL );
		__delay_cycles(30000);

		chip_TLC59108_led_enable_pwm( I2C_SLAVE_ADR_LED_REAR_SIGNAL );
		__delay_cycles(30000);
		
		chip_TLC59108_led_disable( I2C_SLAVE_ADR_LED_REAR_BRAKE );
		__delay_cycles(30000);

		chip_TLC59108_led_enable_pwm( I2C_SLAVE_ADR_LED_REAR_BRAKE );
		__delay_cycles(30000);
	// }*/
	// ---------------------
	// ---------------------
	// DEMO: Measure accelerations
	// ---------------------
	/*//P2.0/TA1.0
	///~INT_ACCEL
	P2DIR	&= ~BIT0;
	P2REN	|=  BIT0;
	P2OUT	|=  BIT0;
	P2IE	|=  BIT0;
	P2IES	|=  BIT0;
	P2IFG	&= ~BIT0;
	
	chip_MMA7660FC_init();
	while(1)
	{
		chip_MMA7660FC_isr(xyz_accel);
		// __bis_SR_register(LPM3_bits + GIE);
		__no_operation(); // Check xyz_accel here
		
		chip_TLC59108_led_disable( I2C_SLAVE_ADR_LED_FRONT_SIGNAL );
		__delay_cycles(300000);

		chip_TLC59108_led_enable_pwm( I2C_SLAVE_ADR_LED_FRONT_SIGNAL );
		__delay_cycles(300000);
	}*/
	// ---------------------
	// ---------------------
	// DEMO: Measure ambient illumination
	// ---------------------
	/*//P1.3/ADC10CLK/A3/VREF-/VEREF-
	/// ADC_LIGHT
	/// Set A3 as analog input (disable CMOS buffer)
	// ADC10AE0 |= BIT3;
	P1DIR &= ~BIT3;
	P1REN |=  BIT3;
	P1OUT &= ~BIT3;
	//XIN/P2.6/TA0.1
	///LIGHT_CTRL_1
	P2DIR |= BIT6;
	P2SEL &= ~BIT6;
	P2SEL2 &= ~BIT6;
	//XOUT/P2.7
	///LIGHT_CTRL_2
	P2DIR |= BIT7;
	P2SEL &= ~BIT7;
	P2SEL2 &= ~BIT7;
	// chip_BH1620FVC_init();
	// chip_BH1620FVC_write(CHIP_BH1620FVC_SHUTDOWN);
	chip_BH1620FVC_write(CHIP_BH1620FVC_HIGH_GAIN);
	// chip_BH1620FVC_write(CHIP_BH1620FVC_MED_GAIN);
	// chip_BH1620FVC_write(CHIP_BH1620FVC_LOW_GAIN);
	while(1)
	{
		dummy = chip_BH1620FVC_read();
		if(dummy)
		{
		chip_TLC59108_update_pwm( 0xFF , I2C_SLAVE_ADR_LED_ALL_CALL );
		}
		else
		{
		chip_TLC59108_update_pwm( 0x05 , I2C_SLAVE_ADR_LED_ALL_CALL );
		}
		__delay_cycles(30000);
		__no_operation(); // Check dummy here
	}*/
}

// (Main touch pad) Turn signal -> on
void main_sensor_touch_1_isr(void)
{
	if( main_turnsignal_is_on == 0 )
	{
		// Turn signal -> on
		main_turnsignal_is_on = 1;
		main_turnsignal_flash_counter = 0;

		// Trigger WDT interrupt
		IFG1 |= WDTIFG;
		// Reset WDT counter
		WDTCTL = WDTCNTCL + WDT_ADLY_16;
		// Start watchdog interval timer
		util_wdt_resume();
	}
	// Turn on back feedback light
	output_feedback_lights_back_on();
	// Flick speaker
	output_speaker_flick();
	// Turn on vibrator
	output_vibrate_start();
	// Turn off vibrator
	output_vibrate_stop();
	// Turn off back feedback light
	output_feedback_lights_back_off();
}
// (Auxillary touch pad) Turn signal -> off
void main_sensor_touch_2_isr(void)
{
	if( main_turnsignal_is_on )
	{
		// Stop the watch dog timer
		util_wdt_pause();
		
		// Turn off front feedback light
		output_feedback_lights_front_off();
		// Turn off signals
		chip_TLC59108_led_disable( I2C_SLAVE_ADR_LED_FRONT_SIGNAL );
		chip_TLC59108_led_disable( I2C_SLAVE_ADR_LED_REAR_SIGNAL );
		
		// Turn signal -> off
		main_turnsignal_is_on = 0;
	}
	// Turn on back feedback light
	output_feedback_lights_back_on();
	// Flick speaker
	output_speaker_flick();
	// Turn on vibrator
	output_vibrate_start();
	// Turn off vibrator
	output_vibrate_stop();
	// Turn off back feedback light
	output_feedback_lights_back_off();
}
// (Auxillary touch pad) Toggle brake light
void main_sensor_touch_3_isr(void)
{
	if( main_brake_is_on )
	{
		// Turn off middle feedback light
		output_feedback_lights_middle_off();
		chip_TLC59108_led_disable( I2C_SLAVE_ADR_LED_REAR_BRAKE );
		
		// Brake light -> off
		main_brake_is_on = 0;
	}
	else // Brake light was off...
	{
		// Turn on middle feedback light
		output_feedback_lights_middle_on();
		chip_TLC59108_led_enable_pwm( I2C_SLAVE_ADR_LED_REAR_BRAKE );
		
		// Brake light -> on
		main_brake_is_on = 1;
	}
	// Turn on back feedback light
	output_feedback_lights_back_on();
	// Flick speaker
	output_speaker_flick();
	// Turn on vibrator
	output_vibrate_start();
	// Turn off vibrator
	output_vibrate_stop();
	// Turn off back feedback light
	output_feedback_lights_back_off();
}

#pragma vector=PORT2_VECTOR
__interrupt void PORT2_ISR(void)
{
	if(P2IFG & BIT0) 			//P2.0 Interrupt
	{					//Accelerometer interrupt
		// chip_MMA7660FC_isr(xyz_accel);
		// chip_TLC59108_update_pwm( dummy++ , I2C_SLAVE_ADR_LED_ALL_CALL );
		P2IFG &= ~BIT0;
		// __bic_SR_register_on_exit(LPM3_bits);
		// break;
	}
	if(P2IFG & BIT1) 			//P2.1 Interrupt
	{					//Main touch input
		
		P2IFG &= ~BIT1;
		main_sensor_touch_1_isr();
		// break;
	}
	if(P2IFG & BIT2) 			//P2.2 Interrupt
	{
		
		P2IFG &= ~BIT2;
		main_sensor_touch_2_isr();
		// break;
	}
	if(P2IFG & BIT3) 			//P2.3 Interrupt
	{
		
		P2IFG &= ~BIT3;
		main_sensor_touch_3_isr();
		// break;
	}
	if(P2IFG & (BIT4 | BIT5 | BIT6 | BIT7))
	{
		P2IFG &= ~(BIT4 | BIT5 | BIT6 | BIT7);
	}
	// case BIT4: break;	//P2.4 Interrupt
	// case BIT5: break;	//P2.5 Interrupt
	// case BIT6: break;	//P2.6 Interrupt
	// case BIT7: break;	//P2.7 Interrupt
	// default: P2IFG = 0;
	__bis_SR_register_on_exit(LPM3_bits + GIE);
}
#pragma vector=WDT_VECTOR
__interrupt void watchdog_timer(void)
{
	if( main_turnsignal_is_on )
	{
		// Flick speaker
		output_speaker_flick();
		
		// Toggle signal lights
		if (main_turnsignal_flash_counter == 0)
		{
			// Turn on vibrator
			output_vibrate_start();
			// Turn on LED 1
			output_feedback_lights_front_on();
			chip_TLC59108_led_enable_pwm( I2C_SLAVE_ADR_LED_FRONT_SIGNAL );
			chip_TLC59108_led_enable_pwm( I2C_SLAVE_ADR_LED_REAR_SIGNAL );
			main_turnsignal_flash_counter++;
		}
		else
		{
			// Turn off vibrator
			output_vibrate_stop();
			
			// Turn off LED 1
			output_feedback_lights_front_off();
			chip_TLC59108_led_disable( I2C_SLAVE_ADR_LED_FRONT_SIGNAL );
			chip_TLC59108_led_disable( I2C_SLAVE_ADR_LED_REAR_SIGNAL );
			main_turnsignal_flash_counter = 0;
		}
	}
	__bis_SR_register_on_exit(LPM3_bits + GIE);
}
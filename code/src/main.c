#include "main.h"
#include "util_i2c.h"
#include "chip_BQ24190.h"	// Charger
#include "chip_TLC59108.h"	// LED Driver
#include "chip_MMA7660FC.h"	// Accelerometer
#include "chip_BH1620FVC.h"	// Light Sensor

char main_led_i2c_tx_buffer[9];
int main_led_i2c_tx_length;

char main_led_i2c_rx_buffer[9];
int main_led_i2c_rx_length;

char dummy = 0;

char xyz_accel[3];

int main(void)
{
	// Stop the watch dog timer
	WDTCTL = WDTPW + WDTHOLD;
	
	// Setup I2C Pins -----
	
	//P1.6/TA0.1/A6/UCB0SOMI/UCB0SCL/TDI/TCLK
	///SCL
	P1SEL |= BIT6;
	P1SEL2|= BIT6;
	//P1.7/A7/UCB0SIMO/UCB0SDA/TDO/TDI
	///SDA
	P1SEL |= BIT7;
	P1SEL2|= BIT7;
	
	// ---------------------
	// Initialize I2C settings
	util_i2c_init();
	
	// ---------------------
	// DEMO: Batt charger comms
	// ---------------------
	// chip_BQ24190_init();
	// while(1)
	// {
		// dummy = chip_BQ24190_fault_check();
		// __no_operation();
		
		// dummy = chip_BQ24190_status_check();
		// __no_operation();
		
		// dummy = chip_BQ24190_part_check();
		// __no_operation();
	// }
	// ---------------------
	// ---------------------
	// DEMO: LED Flash over I2C
	// ---------------------
	// chip_MMA7660FC_init();
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
	// }
	// ---------------------
	// ---------------------
	// DEMO: Measure accelerations
	// ---------------------
	// //P2.0/TA1.0
	// ///~INT_ACCEL
	// P2DIR	&= ~BIT0;
	// P2REN	|=  BIT0;
	// P2OUT	|=  BIT0;
	// P2IE	|=  BIT0;
	// P2IES	|=  BIT0;
	// P2IFG	&= ~BIT0;
	
	// chip_MMA7660FC_init();
	// while(1)
	// {
		// chip_MMA7660FC_isr(xyz_accel);
		// // __bis_SR_register(LPM3_bits + GIE);
		// __no_operation(); // Check xyz_accel here
		
		// chip_TLC59108_led_disable( I2C_SLAVE_ADR_LED_FRONT_SIGNAL );
		// __delay_cycles(300000);

		// chip_TLC59108_led_enable_pwm( I2C_SLAVE_ADR_LED_FRONT_SIGNAL );
		// __delay_cycles(300000);
	// }
	// ---------------------
	// ---------------------
	// DEMO: Measure ambient illumination
	// ---------------------
	//P1.3/ADC10CLK/A3/VREF-/VEREF-
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
	}
}

#pragma vector=PORT2_VECTOR
__interrupt void PORT2_ISR(void)
{
	switch(P2IFG)
	{
		case BIT0: 			//P2.0 Interrupt
		{					//Accelerometer interrupt
			chip_MMA7660FC_isr(xyz_accel);
			chip_TLC59108_update_pwm( dummy++ , I2C_SLAVE_ADR_LED_ALL_CALL );
			P2IFG &= ~BIT0;
			__bic_SR_register_on_exit(LPM3_bits);
			break;
		}
		case BIT1: 			//P2.1 Interrupt
		{					//Main touch input
			// sensor_touch_1_isr(void)
			// P2IFG &= ~BIT1;
			break;
		}
		case BIT2: 			//P2.2 Interrupt
		{
			// sensor_touch_2_isr(void)
			// P2IFG &= ~BIT2;
			break;
		}
		case BIT3: 			//P2.3 Interrupt
		{
			// sensor_touch_3_isr(void)
			// P2IFG &= ~BIT3;
			break;
		}
		case BIT4: break;	//P2.4 Interrupt
		case BIT5: break;	//P2.5 Interrupt
		case BIT6: break;	//P2.6 Interrupt
		case BIT7: break;	//P2.7 Interrupt
	}
}
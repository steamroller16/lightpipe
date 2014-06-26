#include "main.h"
#include "util_i2c.h"
#include "chip_BQ24190.h"
#include "chip_TLC59108.h"

char main_led_i2c_tx_buffer[9];
int main_led_i2c_tx_length;

char main_led_i2c_rx_buffer[9];
int main_led_i2c_rx_length;

char dummy;
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
	chip_TLC59108_init();
	chip_TLC59108_update_pwm( 0x05 , I2C_SLAVE_ADR_LED_FRONT_SIGNAL );
	while(1)
	{
		chip_TLC59108_led_disable( I2C_SLAVE_ADR_LED_FRONT_SIGNAL );
		__delay_cycles(300000);

		chip_TLC59108_led_enable_pwm( I2C_SLAVE_ADR_LED_FRONT_SIGNAL );
		__delay_cycles(300000);
	}
	// ---------------------
}
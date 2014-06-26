#include "main.h"
#include "util_i2c.h"

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
	
	// Set I2C slave address
	util_i2c_set_slave_adr(I2C_SLAVE_ADR_LED_ALL_CALL);
	// util_i2c_set_slave_adr(I2C_SLAVE_ADR_LED_FRONT_SIGNAL);
	// util_i2c_set_slave_adr(I2C_SLAVE_ADR_LED_REAR_SIGNAL);
	// util_i2c_set_slave_adr(I2C_SLAVE_ADR_LED_REAR_BRAKE);
	// -----------------------------------------------------
	util_i2c_set_slave_adr(I2C_SLAVE_ADR_LED_REAR_BRAKE);
	// Generate command array to be sent (Read MODE1 of rear brake (should be 0x11))
	main_led_i2c_tx_length = 1;
	main_led_i2c_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_NONE + I2C_TLC59108_REG_MODE1);
	// Transmit command array to device
	util_i2c_write(
		main_led_i2c_tx_buffer,
		main_led_i2c_tx_length,
		I2C_CONTINUOUS
	);
	main_led_i2c_rx_length = 1;
	// Transmit command array to device
	util_i2c_read(
		main_led_i2c_rx_buffer,
		main_led_i2c_rx_length
	);
	dummy = main_led_i2c_rx_buffer[0];
	__no_operation();
	// -----------------------------------------------------
	// Generate command array to be sent (Read GRPPWM of rear brake (should be 0xFF))
	main_led_i2c_tx_length = 1;
	main_led_i2c_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_NONE + I2C_TLC59108_REG_GRPPWM);
	// Transmit command array to device
	util_i2c_write(
		main_led_i2c_tx_buffer,
		main_led_i2c_tx_length,
		I2C_CONTINUOUS
	);
	main_led_i2c_rx_length = 1;
	// Transmit command array to device
	util_i2c_read(
		main_led_i2c_rx_buffer,
		main_led_i2c_rx_length
	);
	dummy = main_led_i2c_rx_buffer[0];
	__no_operation();
	// -----------------------------------------------------
	// -----------------------------------------------------
	// -----------------------------------------------------
	// Generate command array to be sent (turn on LED Driver Oscillators)
	main_led_i2c_tx_length = 2;
	main_led_i2c_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_NONE + I2C_TLC59108_REG_MODE1);
	main_led_i2c_tx_buffer[1] = 0x01;
	
	// Transmit command array to device
	util_i2c_write(
		main_led_i2c_tx_buffer,
		main_led_i2c_tx_length,
		I2C_SEND_STOP
	);
	// -----------------------------------------------------
	// -----------------------------------------------------
	// Generate command array to be sent (LED's All on)
	// // main_led_i2c_tx_length = 3;
	// // main_led_i2c_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_ALL + I2C_TLC59108_REG_LEDOUT0);
	// // main_led_i2c_tx_buffer[1] = 0x55;
	// // main_led_i2c_tx_buffer[2] = 0x55;
	// Generate command array to be sent (LED's All PWM)
		main_led_i2c_tx_length = 3;
	main_led_i2c_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_ALL + I2C_TLC59108_REG_LEDOUT0);
	main_led_i2c_tx_buffer[1] = 0xAA;
	main_led_i2c_tx_buffer[2] = 0xAA;
	// Transmit command array to device
	util_i2c_write(
		main_led_i2c_tx_buffer,
		main_led_i2c_tx_length,
		I2C_SEND_STOP
	);
	// -----------------------------------------------------
	// -----------------------------------------------------
	// Generate command array to be sent (LED's All PWM)
		main_led_i2c_tx_length = 9;
	main_led_i2c_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_ALL + I2C_TLC59108_REG_PWM0);
	main_led_i2c_tx_buffer[1] = 0x05;
	main_led_i2c_tx_buffer[2] = 0x05;
	main_led_i2c_tx_buffer[3] = 0x05;
	main_led_i2c_tx_buffer[4] = 0x05;
	main_led_i2c_tx_buffer[5] = 0x05;
	main_led_i2c_tx_buffer[6] = 0x05;
	main_led_i2c_tx_buffer[7] = 0x05;
	main_led_i2c_tx_buffer[8] = 0x05;
	// Transmit command array to device
	util_i2c_write(
		main_led_i2c_tx_buffer,
		main_led_i2c_tx_length,
		I2C_SEND_STOP
	);
	
	util_i2c_set_slave_adr(I2C_SLAVE_ADR_LED_REAR_BRAKE);
	// -----------------------------------------------------
	// Generate command array to be sent (Read All PWM of rear brake (should be 9 of 0x05))
	main_led_i2c_tx_length = 1;
	main_led_i2c_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_ALL + I2C_TLC59108_REG_PWM0);
	// Transmit command array to device
	util_i2c_write(
		main_led_i2c_tx_buffer,
		main_led_i2c_tx_length,
		I2C_CONTINUOUS
	);
	main_led_i2c_rx_length = 8;
	// Transmit command array to device
	util_i2c_read(
		main_led_i2c_rx_buffer,
		main_led_i2c_rx_length
	);
	dummy = main_led_i2c_rx_buffer[0];
	__no_operation();
	// -----------------------------------------------------
	
	
	
	
	
	
	// main_led_i2c_tx_length = 1;
	// main_led_i2c_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_ALL + I2C_TLC59108_REG_LEDOUT0);
	// // Transmit command array to device
	// util_i2c_write(
		// main_led_i2c_tx_buffer,
		// main_led_i2c_tx_length,
		// I2C_CONTINUOUS
	// );
	// main_led_i2c_rx_length = 2;
	// // Transmit command array to device
	// util_i2c_read(
		// main_led_i2c_rx_buffer,
		// main_led_i2c_rx_length
	// );
	
	
	while(1)
	{
		// -----------------------------------------------------
		// -----------------------------------------------------
		// Generate command array to be sent (turn off LED outputs)
		main_led_i2c_tx_length = 3;
		main_led_i2c_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_ALL + I2C_TLC59108_REG_LEDOUT0);
		main_led_i2c_tx_buffer[1] = 0x00;
		main_led_i2c_tx_buffer[2] = 0x00;
		
		// Transmit command array to device
		util_i2c_write(
			main_led_i2c_tx_buffer,
			main_led_i2c_tx_length,
			I2C_SEND_STOP
		);
		__delay_cycles(300000);
		// -----------------------------------------------------
		// -----------------------------------------------------
		// Generate command array to be sent (turn on LED outputs PWM Mode)
		main_led_i2c_tx_length = 3;
		main_led_i2c_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_ALL + I2C_TLC59108_REG_LEDOUT0);
		main_led_i2c_tx_buffer[1] = 0xAA;
		main_led_i2c_tx_buffer[2] = 0xAA;
		
		// Transmit command array to device
		util_i2c_write(
			main_led_i2c_tx_buffer,
			main_led_i2c_tx_length,
			I2C_SEND_STOP
		);
		__delay_cycles(300000);
	}
		// -----------------------------------------------------
	// -----------------------------------------------------
	// Generate command array to be sent (turn off LED Driver Oscillators)
	// -> Works but causes glitches if this is toggled
	main_led_i2c_tx_length = 2;
	main_led_i2c_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_NONE + I2C_TLC59108_REG_MODE1);
	main_led_i2c_tx_buffer[1] = 0x11;
	
	// Transmit command array to device
	util_i2c_write(
		main_led_i2c_tx_buffer,
		main_led_i2c_tx_length,
		I2C_SEND_STOP
	);
	__delay_cycles(1000000);
		// -----------------------------------------------------
	// -----------------------------------------------------
	// Generate command array to be sent (turn off LED Driver Oscillators)
	main_led_i2c_tx_length = 2;
	main_led_i2c_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_NONE + I2C_TLC59108_REG_MODE1);
	main_led_i2c_tx_buffer[1] = 0x01;
	
	// Transmit command array to device
	util_i2c_write(
		main_led_i2c_tx_buffer,
		main_led_i2c_tx_length,
		I2C_SEND_STOP
	);
	// -----------------------------------------------------
	// -----------------------------------------------------
	// Generate command array to be sent (LED's All off)
	main_led_i2c_tx_length = 3;
	main_led_i2c_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_ALL + I2C_TLC59108_REG_LEDOUT0);
	main_led_i2c_tx_buffer[1] = 0x00;
	main_led_i2c_tx_buffer[2] = 0x00;
	
		// Transmit command array to device
	util_i2c_write(
		main_led_i2c_tx_buffer,
		main_led_i2c_tx_length,
		I2C_SEND_STOP
	);
}
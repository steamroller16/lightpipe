//-----------------------------------------------------------
//-----------------------------------------------------------
// chip_TLC59108.c
//-----------------------------------------------------------
#include "chip_TLC59108.h"
#include "util_i2c.h"

//-----------------------------------------------------------
// Make sure I2C has been initialized before using
// Supports up to 100kbits or 400kbits or 1000kbits
// Supports Single and Multi-byte reads/writes w/ adjustable auto-increment
//-----------------------------------------------------------

char 	chip_TLC59108_tx_buffer[9];
int 	chip_TLC59108_tx_length;

// char 	chip_TLC59108_rx_buffer[9];
// int 	chip_TLC59108_rx_length;

void chip_TLC59108_init(void)
{
// Set Address to the LED Drivers
util_i2c_set_slave_adr(I2C_SLAVE_ADR_LED_ALL_CALL);
// util_i2c_set_slave_adr(I2C_SLAVE_ADR_LED_FRONT_SIGNAL);
// util_i2c_set_slave_adr(I2C_SLAVE_ADR_LED_REAR_SIGNAL);
// util_i2c_set_slave_adr(I2C_SLAVE_ADR_LED_REAR_BRAKE);
// -----------------------
// Turn on all LED Driver Oscillators
// LED All Call: enabled
chip_TLC59108_tx_length = 2;
chip_TLC59108_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_NONE + I2C_TLC59108_REG_MODE1);
chip_TLC59108_tx_buffer[1] = 0x01;
// Transmit command array to device
util_i2c_write(
	chip_TLC59108_tx_buffer,
	chip_TLC59108_tx_length,
	I2C_SEND_STOP
);
// -----------------------
// Set all LED's control mode to PWM
chip_TLC59108_tx_length = 3;
chip_TLC59108_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_ALL + I2C_TLC59108_REG_LEDOUT0);
chip_TLC59108_tx_buffer[1] = 0xAA;
chip_TLC59108_tx_buffer[2] = 0xAA;
// Transmit command array to device
util_i2c_write(
	chip_TLC59108_tx_buffer,
	chip_TLC59108_tx_length,
	I2C_SEND_STOP
);
// -----------------------
// Set all LED's Dutycycle to 0%
chip_TLC59108_tx_length = 9;
chip_TLC59108_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_ALL + I2C_TLC59108_REG_PWM0);
chip_TLC59108_tx_buffer[1] = 0x00;
chip_TLC59108_tx_buffer[2] = 0x00;
chip_TLC59108_tx_buffer[3] = 0x00;
chip_TLC59108_tx_buffer[4] = 0x00;
chip_TLC59108_tx_buffer[5] = 0x00;
chip_TLC59108_tx_buffer[6] = 0x00;
chip_TLC59108_tx_buffer[7] = 0x00;
chip_TLC59108_tx_buffer[8] = 0x00;
// Transmit command array to device
util_i2c_write(
	chip_TLC59108_tx_buffer,
	chip_TLC59108_tx_length,
	I2C_SEND_STOP
);
}
void chip_TLC59108_update_pwm(char pwm_dutycycle, unsigned int device_adr)
{
// Set the I2C address
util_i2c_set_slave_adr(device_adr);
// Set all LED's Dutycycle to pwm_dutycycle
chip_TLC59108_tx_length = 9;
chip_TLC59108_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_ALL + I2C_TLC59108_REG_PWM0);
chip_TLC59108_tx_buffer[1] = pwm_dutycycle;
chip_TLC59108_tx_buffer[2] = pwm_dutycycle;
chip_TLC59108_tx_buffer[3] = pwm_dutycycle;
chip_TLC59108_tx_buffer[4] = pwm_dutycycle;
chip_TLC59108_tx_buffer[5] = pwm_dutycycle;
chip_TLC59108_tx_buffer[6] = pwm_dutycycle;
chip_TLC59108_tx_buffer[7] = pwm_dutycycle;
chip_TLC59108_tx_buffer[8] = pwm_dutycycle;
// Transmit command array to device
util_i2c_write(
	chip_TLC59108_tx_buffer,
	chip_TLC59108_tx_length,
	I2C_SEND_STOP
);
}
void chip_TLC59108_led_disable(unsigned int device_adr)
{
// Set the I2C address
util_i2c_set_slave_adr(device_adr);
// Turn off all LED outputs
chip_TLC59108_tx_length = 3;
chip_TLC59108_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_ALL + I2C_TLC59108_REG_LEDOUT0);
chip_TLC59108_tx_buffer[1] = 0x00;
chip_TLC59108_tx_buffer[2] = 0x00;
// Transmit command array to device
util_i2c_write(
	chip_TLC59108_tx_buffer,
	chip_TLC59108_tx_length,
	I2C_SEND_STOP
);
}
void chip_TLC59108_led_enable_pwm(unsigned int device_adr)
{
// Set the I2C address
util_i2c_set_slave_adr(device_adr);
// Turn on PWM control for LED outputs
chip_TLC59108_tx_length = 3;
chip_TLC59108_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_ALL + I2C_TLC59108_REG_LEDOUT0);
chip_TLC59108_tx_buffer[1] = 0xAA;
chip_TLC59108_tx_buffer[2] = 0xAA;
// Transmit command array to device
util_i2c_write(
	chip_TLC59108_tx_buffer,
	chip_TLC59108_tx_length,
	I2C_SEND_STOP
);
}
//-----------------------------------------------------------
//-----------------------------------------------------------
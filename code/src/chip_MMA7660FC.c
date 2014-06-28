//-----------------------------------------------------------
//-----------------------------------------------------------
// chip_MMA7660FC.c
//-----------------------------------------------------------
#include "chip_MMA7660FC.h"
#include "util_i2c.h"

//-----------------------------------------------------------
// Make sure I2C has been initialized before using
// Supports up to 400kbits
// Supports Single and Multi-byte reads/writes w/ auto-increment
//-----------------------------------------------------------

char 	chip_MMA7660FC_tx_buffer[9];
int 	chip_MMA7660FC_tx_length;

char 	chip_MMA7660FC_rx_buffer[11];
int 	chip_MMA7660FC_rx_length;

void chip_MMA7660FC_init(void)
{
// Set Address to the Accelerometer
util_i2c_set_slave_adr(I2C_SLAVE_ADR_ACCEL);
// -----------------------
// Successful tap detection causes an interrupt
// Exiting Auto-sleep causes an interrupt
// Set automatic interrupt to fire after every accel update of XOUT, YOUT, ZOUT
// -----------------------
// Set mode to active
// Auto-wake: Enabled
// Auto-sleep: Enabled
// -----------------------
chip_MMA7660FC_tx_length = 2;
chip_MMA7660FC_tx_buffer[0] = (I2C_MMA7660FC_REG_INTSU);
chip_MMA7660FC_tx_buffer[1] = (
I2C_MMA7660FC_PDINT +
I2C_MMA7660FC_ASINT +
I2C_MMA7660FC_GINT
);
chip_MMA7660FC_tx_buffer[2] = (
I2C_MMA7660FC_MODE +
I2C_MMA7660FC_AWE + 
I2C_MMA7660FC_ASE
);
// Transmit command array to device
util_i2c_write(
	chip_MMA7660FC_tx_buffer,
	chip_MMA7660FC_tx_length,
	I2C_SEND_STOP
);

// -----------------------
// Set value sleep counter must count to in order to wake up
// -----------------------





// // -----------------------
// // Set all LED's control mode to PWM
// chip_MMA7660FC_tx_length = 3;
// chip_MMA7660FC_tx_buffer[0] = (I2C_MMA7660FC_CMD_AUTO_INC_ALL + I2C_MMA7660FC_REG_LEDOUT0);
// chip_MMA7660FC_tx_buffer[1] = 0xAA;
// chip_MMA7660FC_tx_buffer[2] = 0xAA;
// // Transmit command array to device
// util_i2c_write(
	// chip_MMA7660FC_tx_buffer,
	// chip_MMA7660FC_tx_length,
	// I2C_SEND_STOP
// );
// // -----------------------
// // Set all LED's Dutycycle to 0%
// chip_MMA7660FC_tx_length = 9;
// chip_MMA7660FC_tx_buffer[0] = (I2C_MMA7660FC_CMD_AUTO_INC_ALL + I2C_MMA7660FC_REG_PWM0);
// chip_MMA7660FC_tx_buffer[1] = 0x00;
// chip_MMA7660FC_tx_buffer[2] = 0x00;
// chip_MMA7660FC_tx_buffer[3] = 0x00;
// chip_MMA7660FC_tx_buffer[4] = 0x00;
// chip_MMA7660FC_tx_buffer[5] = 0x00;
// chip_MMA7660FC_tx_buffer[6] = 0x00;
// chip_MMA7660FC_tx_buffer[7] = 0x00;
// chip_MMA7660FC_tx_buffer[8] = 0x00;
// // Transmit command array to device
// util_i2c_write(
	// chip_MMA7660FC_tx_buffer,
	// chip_MMA7660FC_tx_length,
	// I2C_SEND_STOP
// );
}
void chip_MMA7660FC_read( char *result, int length, unsigned int device_reg )
{
// Set Address to the Accelerometer
util_i2c_set_slave_adr(I2C_SLAVE_ADR_ACCEL);
// -----------------------
chip_MMA7660FC_tx_length = 1;
chip_MMA7660FC_tx_buffer[0] = device_reg;
// Transmit command array to device
util_i2c_write(
	chip_MMA7660FC_tx_buffer,
	chip_MMA7660FC_tx_length,
	I2C_CONTINUOUS
);
chip_MMA7660FC_rx_length = length;
chip_MMA7660FC_rx_buffer = result;
// Transmit command array to device
util_i2c_read(
	chip_MMA7660FC_rx_buffer,
	chip_MMA7660FC_rx_length
);
}
//-----------------------------------------------------------
//-----------------------------------------------------------
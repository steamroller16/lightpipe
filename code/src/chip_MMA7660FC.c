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

chip_MMA7660FC_tx_length = 5;
chip_MMA7660FC_tx_buffer[0] = (I2C_MMA7660FC_REG_SPCNT);
// -----------------------
// I2C_MMA7660FC_REG_SPCNT
// Set the number of counts of inactivity before entering sleep mode (0-255)counts)
// -----------------------
chip_MMA7660FC_tx_buffer[1] = (128);
// -----------------------
// I2C_MMA7660FC_REG_INTSU
// Exiting Auto-sleep causes an interrupt (Proc. would shutdown when this interrupt is received)
// Set automatic interrupt to fire after every accel update of XOUT, YOUT, ZOUT
// -----------------------
chip_MMA7660FC_tx_buffer[2] = (
I2C_MMA7660FC_ASINT +
I2C_MMA7660FC_GINT
);
// -----------------------
// I2C_MMA7660FC_REG_MODE
// Set mode to active
// Auto-wake: Enabled
// Auto-sleep: Enabled
// -----------------------
chip_MMA7660FC_tx_buffer[3] = (
I2C_MMA7660FC_MODE +
I2C_MMA7660FC_AWE + 
I2C_MMA7660FC_ASE
);
// -----------------------
// I2C_MMA7660FC_REG_SR
// Set Auto-sleep (active) sample rate: 32 samples/sec
// Set Auto-wake (sleeping) sample rate: 1 sample/sec
// -----------------------
chip_MMA7660FC_tx_buffer[4] = (
I2C_MMA7660FC_AMSR_1 + 
I2C_MMA7660FC_AWSR_1 + 
I2C_MMA7660FC_AWSR_0
);
// Transmit command array to device
util_i2c_write(
	chip_MMA7660FC_tx_buffer,
	chip_MMA7660FC_tx_length,
	I2C_SEND_STOP
);
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
void chip_MMA7660FC_isr(char *xyz_accel)
{
char sample_rate_reg;
// Check to see if the device is sleeping
chip_MMA7660FC_read(
	sample_rate_reg,
	1,
	I2C_MMA7660FC_REG_SRST
);
// If active mode:
if (sample_rate_reg & I2C_MMA7660FC_AMSRS)
{
	chip_MMA7660FC_read(
		xyz_accel,
		3,
		I2C_MMA7660FC_REG_XOUT
	);
}
// Else device just entered sleep mode
else
{
	// !!!SYSTEM HIBERNATE!!! 
	xyz_accel[0]=0;
	xyz_accel[1]=0;
	xyz_accel[2]=0;
}
}
//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------
// util_i2c.h
//-----------------------------------------------------------
#ifndef UTIL_I2C_H
#define UTIL_I2C_H
//-----------------------------------------------------------
// Dependencies
//-----------------------------------------------------------
#include <msp430.h>
//-----------------------------------------------------------
// # Defines
//-----------------------------------------------------------
#define I2C_SEND_STOP					1
#define I2C_CONTINUOUS					0

#define I2C_RECEIVER_MODE				0
#define I2C_TRANSMITTER_MODE			1
//-----------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------
void util_i2c_init(void);
void util_i2c_set_slave_adr(unsigned int slave_adr);
void util_i2c_write(char *msg, int length, int send_stop_condition);
void util_i2c_read(char *msg, int length);
//-----------------------------------------------------------
//-----------------------------------------------------------
#endif

//-----------------------------------------------------------
// util_i2c.h
//-----------------------------------------------------------
#ifndef UTIL_I2C_H
#define UTIL_I2C_H
//-----------------------------------------------------------
// Dependencies
//-----------------------------------------------------------

//-----------------------------------------------------------
// # Defines
//-----------------------------------------------------------
// TODO: these should go in the respective modules (like LED,
// adc, etc.)
#define I2C_SLAVE_ADR_LED_FRONT_SIGNAL 	0x41
#define I2C_SLAVE_ADR_LED_REAR_SIGNAL 	0x42
#define I2C_SLAVE_ADR_LED_REAR_BRAKE 	0x43
#define I2C_SLAVE_ADR_LED_ALL_CALL 		0x48
#define I2C_SLAVE_ADR_LED_ALL_RESET		0x4B
#define I2C_SLAVE_ADR_ACCEL 			0x4C
#define I2C_SLAVE_ADR_BATT_CHARGER 		0x6B
//-----------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------
void util_i2c_init(void);
void util_i2c_write(char msg);
void util_i2c_read(char *msg);
//-----------------------------------------------------------
//-----------------------------------------------------------
#endif
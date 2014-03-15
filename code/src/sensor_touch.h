//-----------------------------------------------------------
// sensor_touch.h
//-----------------------------------------------------------
#ifndef SENSOR_TOUCH_H
#define SENSOR_TOUCH_H
//-----------------------------------------------------------
// Dependencies
//-----------------------------------------------------------
#include <msp430.h>
//-----------------------------------------------------------
// # Defines
//-----------------------------------------------------------
#define SENSOR_TOUCH_TOUCH_COUNT_THRESHOLD 	 100
#define SENSOR_TOUCH_DORMANT_COLOR			
// #define I2C_SLAVE_ADR_LED_REAR_SIGNAL 	0x42
// #define I2C_SLAVE_ADR_LED_REAR_BRAKE 	0x43
// #define I2C_SLAVE_ADR_LED_ALL_CALL 		0x48
// #define I2C_SLAVE_ADR_LED_ALL_RESET		0x4B
// #define I2C_SLAVE_ADR_ACCEL 			0x4C
// #define I2C_SLAVE_ADR_BATT_CHARGER 		0x6B
//-----------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------
void util_i2c_init(void);
void util_i2c_write(int, int);
void util_i2c_read(int, int);
//-----------------------------------------------------------
//-----------------------------------------------------------
#endif
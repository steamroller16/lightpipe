//-----------------------------------------------------------
// sensor_touch.h
//-----------------------------------------------------------
#ifndef SENSOR_TOUCH_H
#define SENSOR_TOUCH_H
//-----------------------------------------------------------
// Dependencies
//-----------------------------------------------------------
#include <msp430.h>
#include "main.h"
#include "output_feedback_lights.h"
#include "output_signal_lights.h"
#include "output_brake_lights.h"
//-----------------------------------------------------------
// # Defines
//-----------------------------------------------------------
#define SENSOR_TOUCH_BRIGHTNESS_ADJ 	 1
// #define SENSOR_TOUCH_DORMANT_COLOR			
// #define I2C_SLAVE_ADR_LED_REAR_SIGNAL 	0x42
// #define I2C_SLAVE_ADR_LED_REAR_BRAKE 	0x43
// #define I2C_SLAVE_ADR_LED_ALL_CALL 		0x48
// #define I2C_SLAVE_ADR_LED_ALL_RESET		0x4B
// #define I2C_SLAVE_ADR_ACCEL 			0x4C
// #define I2C_SLAVE_ADR_BATT_CHARGER 		0x6B
//-----------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------
void sensor_touch_adj_brightness(signed int);
void sensor_touch_1_isr(void);
void sensor_touch_2_isr(void);
void sensor_touch_3_isr(void);
//-----------------------------------------------------------
//-----------------------------------------------------------
#endif
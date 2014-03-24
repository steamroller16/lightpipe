//-----------------------------------------------------------
// sensor_battery_voltage.h
//-----------------------------------------------------------
#ifndef SENSOR_BATTERY_VOLTAGE_H
#define SENSOR_BATTERY_VOLTAGE_H
//-----------------------------------------------------------
// Dependencies
//-----------------------------------------------------------
#include "util_adc.h"
#include "output_feedback_lights.h"
//-----------------------------------------------------------
// # Defines
//-----------------------------------------------------------
#define SENSOR_BATTERY_VOLTAGE_ADC_CHANNEL 0
#define SENSOR_BATTERY_VOLTAGE_CRISIS_VOLTAGE 0x326
// Nominal voltage is 3.65V buffered to 3.3V
#define SENSOR_BATTERY_VOLTAGE_FULL 0x3FF
#define SENSOR_BATTERY_VOLTAGE_DEPLETED 0x327 
// 3.3V => 0x3FF
// 2.7V => 0x345
// 2.6V => 0x326
// 2.5V => 0x307 - BATT DISCONNECT
//-----------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------
int sensor_battery_voltage_measure(void);
int sensor_battery_voltage_diagnose(void);
//-----------------------------------------------------------
//-----------------------------------------------------------
#endif
//-----------------------------------------------------------
// output_feedback_lights.h
//-----------------------------------------------------------
#ifndef OUTPUT_FEEDBACK_LIGHTS_H
#define OUTPUT_FEEDBACK_LIGHTS_H
//-----------------------------------------------------------
// Dependencies
//-----------------------------------------------------------
// #include "util_adc.h"
#include "main.h"
//-----------------------------------------------------------
// # Defines
//-----------------------------------------------------------
// #define SENSOR_BATTERY_VOLTAGE_ADC_CHANNEL 0
// #define SENSOR_BATTERY_VOLTAGE_CRISIS_VOLTAGE 0x326
// // Nominal voltage is 3.65V buffered to 3.3V
// // 3.3V => 0x3FF
// 2.7V => 0x345
// 2.6V => 0x326
// 2.5V => 0x307
//-----------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------
void output_feedback_lights_init(void);
void output_feedback_lights_set_color(int[3]);
//-----------------------------------------------------------
//-----------------------------------------------------------
#endif
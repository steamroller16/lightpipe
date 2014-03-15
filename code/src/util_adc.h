//-----------------------------------------------------------
// util_adc.h
//-----------------------------------------------------------
#ifndef UTIL_ADC_H
#define UTIL_ADC_H
//-----------------------------------------------------------
// Dependencies
//-----------------------------------------------------------
#include <msp430.h>
//-----------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------
void util_adc_init(void);
void util_adc_start(int);
int util_adc_read(void);
//-----------------------------------------------------------
//-----------------------------------------------------------
#endif
//-----------------------------------------------------------
// util_uart.h
//-----------------------------------------------------------
#ifndef UTIL_UART_H
#define UTIL_UART_H
//-----------------------------------------------------------
// Dependencies
//-----------------------------------------------------------
#include <msp430.h>
//-----------------------------------------------------------
// # Defines
//-----------------------------------------------------------
#define CHIP_BH1620FVC_SHUTDOWN 				0x00
#define CHIP_BH1620FVC_HIGH_GAIN 				0x01
#define CHIP_BH1620FVC_MED_GAIN 				0x02
#define CHIP_BH1620FVC_LOW_GAIN 				0x03

#define CHIP_BH1620FVC_ADC_CHANNEL				3
//-----------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------
void chip_BH1620FVC_init(void);
void chip_BH1620FVC_write(char state);
int chip_BH1620FVC_read(void);
//-----------------------------------------------------------
//-----------------------------------------------------------
#endif
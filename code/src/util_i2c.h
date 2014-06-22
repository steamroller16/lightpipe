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
// TODO: these should go in the respective modules (like LED,
// adc, etc.)
#define I2C_SLAVE_ADR_LED_FRONT_SIGNAL 	0x41
#define I2C_SLAVE_ADR_LED_REAR_SIGNAL 	0x42
#define I2C_SLAVE_ADR_LED_REAR_BRAKE 	0x43
#define I2C_SLAVE_ADR_LED_ALL_CALL 		0x48
#define I2C_SLAVE_ADR_LED_ALL_RESET		0x4B
#define I2C_SLAVE_ADR_ACCEL 			0x4C
#define I2C_SLAVE_ADR_BATT_CHARGER 		0x6B

#define I2C_TLC59108_CMD_AUTO_INC_NONE	0x00
#define I2C_TLC59108_CMD_AUTO_INC_ALL	0x80
#define I2C_TLC59108_CMD_AUTO_INC_PWM	0xA0
#define I2C_TLC59108_CMD_OSC_OFF		0x10

#define I2C_TLC59108_REG_MODE1			0x00 // R/W Mode 1
#define I2C_TLC59108_REG_MODE2			0x01 // R/W Mode 2
#define I2C_TLC59108_REG_PWM0			0x02 // R/W Brightness control LED0
#define I2C_TLC59108_REG_PWM1			0x03 // R/W Brightness control LED1
#define I2C_TLC59108_REG_PWM2			0x04 // R/W Brightness control LED2
#define I2C_TLC59108_REG_PWM3			0x05 // R/W Brightness control LED3
#define I2C_TLC59108_REG_PWM4			0x06 // R/W Brightness control LED4
#define I2C_TLC59108_REG_PWM5			0x07 // R/W Brightness control LED5
#define I2C_TLC59108_REG_PWM6			0x08 // R/W Brightness control LED6
#define I2C_TLC59108_REG_PWM7			0x09 // R/W Brightness control LED7
#define I2C_TLC59108_REG_GRPPWM			0x0A // R/W Group duty cycle control
#define I2C_TLC59108_REG_GRPFREQ		0x0B // R/W Group frequency
#define I2C_TLC59108_REG_LEDOUT0		0x0C // R/W LED output state 0
#define I2C_TLC59108_REG_LEDOUT1		0x0D // R/W LED output state 1
#define I2C_TLC59108_REG_SUBADR1		0x0E // R/W I2C bus subaddress 1
#define I2C_TLC59108_REG_SUBADR2		0x0F // R/W I2C bus subaddress 2
#define I2C_TLC59108_REG_SUBADR3		0x10 // R/W I2C bus subaddress 3
#define I2C_TLC59108_REG_ALLCALLADR		0x11 // R/W LED All Call I2C bus address
#define I2C_TLC59108_REG_IREF			0x12 // R/W IREF configuration
#define I2C_TLC59108_REG_EFLAG			0x13 // R Error flag

// Minimum Syste 
// #define I2C_BQ24190_SYS_MIN_0			0x00
// #define I2C_BQ24190_SYS_MIN_1			0x00
// #define I2C_BQ24190_SYS_MIN_2			0x00

// Input Source Control Register REG00
#define I2C_BQ24190_EN_HIZ				0x80 //  0 – Disable, 1 – Enable Default: Disable (0)
// Input Voltage Limit (Offset 3.88V, Range: 3.88V-5.08V)
	// Default:
		// bq24190/bq24192/bq24193: 4.36V (0110)
		// bq24192i: 4.44V (0111)
#define I2C_BQ24190_VINDPM_3			0x40 // 640mV
#define I2C_BQ24190_VINDPM_2			0x20 // 320mV
#define I2C_BQ24190_VINDPM_1			0x10 // 160mV
#define I2C_BQ24190_VINDPM_0			0x08 // 80mV
// Input Current Limit (Actual input current limit is the lower of I2C and ILIM)
	// 000 – 100mA
	// 001 – 150mA
	// 010 – 500mA
	// 011 – 900mA
	// 100 – 1.2A
	// 101 – 1.5A
	// 110 – 2A
	// 111 – 3A
	// Default SDP:
		// 100mA (000)(OTG pin=0)
		// 500mA (010)(OTG pin=1)
	// Default DCP/CDP:
		// bq24190/bq24192I: 1.5A (101)
		// bq24192/bq24193: 3A (111)
#define I2C_BQ24190_IINLIM_2			0x04
#define I2C_BQ24190_IINLIM_1			0x02
#define I2C_BQ24190_IINLIM_0			0x01

#define I2C_BQ24190_IINLIM_100mA		0x00
#define I2C_BQ24190_IINLIM_150mA		0x01
#define I2C_BQ24190_IINLIM_500mA		0x02
#define I2C_BQ24190_IINLIM_900mA		0x03
#define I2C_BQ24190_IINLIM_1200mA		0x04
#define I2C_BQ24190_IINLIM_1500mA		0x05
#define I2C_BQ24190_IINLIM_2000mA		0x06
#define I2C_BQ24190_IINLIM_3000mA		0x07

// 0x80
// 0x40
// 0x20
// 0x10
// 0x08
// 0x04
// 0x02
// 0x01


// #define I2C_BQ24190_SYS_MIN_3V			0x00
// #define I2C_BQ24190_SYS_MIN_3V			0x00
// #define I2C_BQ24190_SYS_MIN_3V			0x00
// #define I2C_BQ24190_SYS_MIN_3V			0x00
// #define I2C_BQ24190_SYS_MIN_3V			0x00

#define I2C_SEND_STOP					1
#define I2C_CONTINUOUS					0
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

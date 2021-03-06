//-----------------------------------------------------------
// chip_TLC59108.h
//-----------------------------------------------------------
#ifndef CHIP_TLC59108_H
#define CHIP_TLC59108_H
//-----------------------------------------------------------
// Dependencies
//-----------------------------------------------------------

//-----------------------------------------------------------
// # Defines
//-----------------------------------------------------------
// I2C LED Driver Addresses
#define I2C_SLAVE_ADR_LED_FRONT_SIGNAL 	0x41
#define I2C_SLAVE_ADR_LED_REAR_SIGNAL 	0x42
#define I2C_SLAVE_ADR_LED_REAR_BRAKE 	0x43
#define I2C_SLAVE_ADR_LED_ALL_CALL 		0x48
#define I2C_SLAVE_ADR_LED_ALL_RESET		0x4B

// Auto-Increment Commands
#define I2C_TLC59108_CMD_AUTO_INC_NONE	0x00
#define I2C_TLC59108_CMD_AUTO_INC_ALL	0x80
#define I2C_TLC59108_CMD_AUTO_INC_PWM	0xA0

// MODE 1 Register Command
#define I2C_TLC59108_CMD_OSC_OFF		0x10

// Register Addresses
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

//-----------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------
void chip_TLC59108_init(void);
void chip_TLC59108_update_pwm(char pwm_dutycycle, unsigned int device_adr);
void chip_TLC59108_led_disable(unsigned int device_adr);
void chip_TLC59108_led_enable_pwm(unsigned int device_adr);
//-----------------------------------------------------------
//-----------------------------------------------------------
#endif
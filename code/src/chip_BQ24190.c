//-----------------------------------------------------------
//-----------------------------------------------------------
// chip_BQ24190.c
//-----------------------------------------------------------
#include "util_i2c.h"
//-----------------------------------------------------------
// Make sure I2C has been initialized before using
// Supports up to 100kbits or 400kbits
// Supports Single and Multi-byte reads/writes w/ auto-increment for all registers, except for FAULT (single)
//-----------------------------------------------------------
void chip_BQ24190_init(void)
{

char chip_bq24190_tx_buffer[9];
int chip_bq24190_tx_length;

char chip_bq24190_rx_buffer[9];
int chip_bq24190_rx_length;

// -----------------------
// Battery Characteristics
// -----------------------
// Max charge voltage: 3.65V
// Nominal charge current: 1500mA
// Max charge current: 3000mA
// Max discharge current: 7500mA
// Min discharge voltage: 2V
// Operating temp (charging): -10C <-> +45C
// Operating temp (discharging): -20C <-> +65C

// Precharge (15mA, 15-30min)
// Charge (cell above 3V)
// -----------------------
// Set Address to the charge management IC
util_i2c_set_slave_adr(I2C_SLAVE_ADR_BATT_CHARGER);
// -----------------------
// System Min voltage: 3.3V


	main_led_i2c_tx_length = 1;
	main_led_i2c_tx_buffer[0] = (I2C_TLC59108_CMD_AUTO_INC_NONE + I2C_TLC59108_REG_MODE1);
	// Transmit command array to device
	util_i2c_write(
		main_led_i2c_tx_buffer,
		main_led_i2c_tx_length,
		I2C_CONTINUOUS
	);

I2C_BQ24190_REG_PWR_ON_CONFIG

I2C_BQ24190_SYS_MIN_1 + I2C_BQ24190_SYS_MIN_0

void util_i2c_init(void);
void util_i2c_set_slave_adr(unsigned int slave_adr);
void util_i2c_write(char *msg, int length, int send_stop_condition);
void util_i2c_read(char *msg, int length);
}
//-----------------------------------------------------------
//-----------------------------------------------------------
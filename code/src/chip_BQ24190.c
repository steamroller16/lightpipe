//-----------------------------------------------------------
//-----------------------------------------------------------
// chip_BQ24190.c
//-----------------------------------------------------------
#include "chip_BQ24190.h"
#include "util_i2c.h"

//-----------------------------------------------------------
// Make sure I2C has been initialized before using
// Supports up to 100kbits or 400kbits
// Supports Single and Multi-byte reads/writes w/ auto-increment for all registers, except for FAULT (single)
//-----------------------------------------------------------
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

char chip_BQ24190_tx_buffer[9];
int chip_BQ24190_tx_length;

char chip_BQ24190_rx_buffer[9];
int chip_BQ24190_rx_length;

void chip_BQ24190_init(void)
{
// Set Address to the charge management IC
util_i2c_set_slave_adr(I2C_SLAVE_ADR_BATT_CHARGER);

// -----------------------
// Charger Settings
// -----------------------
/// Input Source Control
// HighZ Input: Disabled (default)
// Input Voltage Limit: 4.36V (default)
// Input Current Limit: 1.5A (default)
// -----------------------
/// Power-On Configuration
// Keep Current register settings
// Keep I2C WDT Normal
// Charge Battery Mode
// System Min voltage: 3.3V
// Boost Mode Current: 1.3A
chip_BQ24190_tx_length = 2;
chip_BQ24190_tx_buffer[0] = I2C_BQ24190_REG_PWR_ON_CONFIG;
chip_BQ24190_tx_buffer[1] = ( 
	I2C_BQ24190_CHG_CONFIG_0 +
	I2C_BQ24190_SYS_MIN_1 + 
	I2C_BQ24190_SYS_MIN_0 +
	I2C_BQ24190_BOOST_LIM
	);
// Transmit command array to device
util_i2c_write(
	chip_BQ24190_tx_buffer,
	chip_BQ24190_tx_length,
	I2C_SEND_STOP
);
// -----------------------
/// Charge Current Control
// Fast charge current limit: 2048mA (default)
// Force fast charge @ 20%: Disabled (default)
// -----------------------
/// Pre-Charge/Termination Current Control
// Pre charge current limit: 15mA (desired)
// Pre charge current limit: 128mA (actual)
// Termination current limit: 75mA (desired)
// Termination current limit: 128mA (actual)
chip_BQ24190_tx_length = 2;
chip_BQ24190_tx_buffer[0] = I2C_BQ24190_REG_PRECHG_TERM_CUR_CTRL;
chip_BQ24190_tx_buffer[1] = 0;
// Transmit command array to device
util_i2c_write(
	chip_BQ24190_tx_buffer,
	chip_BQ24190_tx_length,
	I2C_SEND_STOP
);
// -----------------------
/// Charge Voltage Control
// Charge Voltage Limit: 3.65V (desired)
// Charge Voltage Limit: 3.648V (actual)
// Precharge to Fast Charge Threshold: 3V
// Battery Recharge Threshold: -100mV
chip_BQ24190_tx_length = 2;
chip_BQ24190_tx_buffer[0] = I2C_BQ24190_REG_CHG_V_CTRL;
chip_BQ24190_tx_buffer[1] = ( 
	I2C_BQ24190_VREG_3 + 
	I2C_BQ24190_VREG_0 +
	I2C_BQ24190_BATLOWV
	);
// Transmit command array to device
util_i2c_write(
	chip_BQ24190_tx_buffer,
	chip_BQ24190_tx_length,
	I2C_SEND_STOP
);
// -----------------------
/// Charge Termination/Timer Control
// Charge Termination: Enabled (default)
// Termination Indicator: Match ITERM (default)
// I2C WDT Setting: Disabled
// Charging Safety Timer: Enabled (default)
// Fast Charge Timer Setting: 5 hrs
// JEITA Low Temp: 50% (default)
chip_BQ24190_tx_length = 2;
chip_BQ24190_tx_buffer[0] = I2C_BQ24190_REG_CHG_TERM_TIMER_CTRL;
chip_BQ24190_tx_buffer[1] = ( 
	I2C_BQ24190_EN_TERM + 
	I2C_BQ24190_EN_TIMER
	);
// Transmit command array to device
util_i2c_write(
	chip_BQ24190_tx_buffer,
	chip_BQ24190_tx_length,
	I2C_SEND_STOP
);
// -----------------------
/// IR Compensation / Thermal Regulation Control
// IR Compensation: None (default)
// IR Compensation Voltage Clamp: None (default)
// Thermal Regulation Threshold: 60C
chip_BQ24190_tx_length = 2;
chip_BQ24190_tx_buffer[0] = I2C_BQ24190_REG_THERM_CTRL;
chip_BQ24190_tx_buffer[1] = 0;
// Transmit command array to device
util_i2c_write(
	chip_BQ24190_tx_buffer,
	chip_BQ24190_tx_length,
	I2C_SEND_STOP
);
// -----------------------
/// Misc Operation Control
// Force DPDM detection: No (default)
// Safety timer during DPM and Therm Reg: 2x slow (default)
// Force BATFET off: No (default)
// JEITA_VSET: 4.05V (default)
// Interrupt on CHG fault: on (default)
// Interrupt on BAT fault: on (default)
// -----------------------
}
char chip_BQ24190_fault_check(void)
{
// Should be called twice to check current fault, as historic faults not checked remain stored until read

// Set Address to the charge management IC
util_i2c_set_slave_adr(I2C_SLAVE_ADR_BATT_CHARGER);
// -----------------------
/// System Fault (Read-only)
// -----------------------
chip_BQ24190_tx_length = 1;
chip_BQ24190_tx_buffer[0] = I2C_BQ24190_REG_FAULT;
// Transmit command array to device
util_i2c_write(
	chip_BQ24190_tx_buffer,
	chip_BQ24190_tx_length,
	I2C_CONTINUOUS
);
chip_BQ24190_rx_length = 1;
// Transmit command array to device
util_i2c_read(
	chip_BQ24190_rx_buffer,
	chip_BQ24190_rx_length
);

return chip_BQ24190_rx_buffer[0];
};
char chip_BQ24190_status_check(void)
{
// Set Address to the charge management IC
util_i2c_set_slave_adr(I2C_SLAVE_ADR_BATT_CHARGER);
// -----------------------
/// System Status (Read-only)
// -----------------------
chip_BQ24190_tx_length = 1;
chip_BQ24190_tx_buffer[0] = I2C_BQ24190_REG_SYS_STATUS;
// Transmit command array to device
util_i2c_write(
	chip_BQ24190_tx_buffer,
	chip_BQ24190_tx_length,
	I2C_CONTINUOUS
);
chip_BQ24190_rx_length = 1;
// Transmit command array to device
util_i2c_read(
	chip_BQ24190_rx_buffer,
	chip_BQ24190_rx_length
);

return chip_BQ24190_rx_buffer[0];
};
char chip_BQ24190_part_check(void)
{
// Set Address to the charge management IC
util_i2c_set_slave_adr(I2C_SLAVE_ADR_BATT_CHARGER);
// -----------------------
/// Vendor / Part / Revision Status (Read-only)
// -----------------------
chip_BQ24190_tx_length = 1;
chip_BQ24190_tx_buffer[0] = I2C_BQ24190_REG_VENDOR_PN_REV;
// Transmit command array to device
util_i2c_write(
	chip_BQ24190_tx_buffer,
	chip_BQ24190_tx_length,
	I2C_CONTINUOUS
);
chip_BQ24190_rx_length = 1;
// Transmit command array to device
util_i2c_read(
	chip_BQ24190_rx_buffer,
	chip_BQ24190_rx_length
);

return chip_BQ24190_rx_buffer[0];
};
//-----------------------------------------------------------
//-----------------------------------------------------------
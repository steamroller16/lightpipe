//-----------------------------------------------------------
// chip_BQ24190.h
//-----------------------------------------------------------
#ifndef CHIP_BQ24190_H
#define CHIP_BQ24190_H
//-----------------------------------------------------------
// Dependencies
//-----------------------------------------------------------

//-----------------------------------------------------------
// # Defines
//-----------------------------------------------------------
#define I2C_SLAVE_ADR_BATT_CHARGER 				0x6B // This device's I2C Address

#define I2C_BQ24190_REG_INPUT_SRC_CTRL			0x00 // Input Source Control
#define I2C_BQ24190_REG_PWR_ON_CONFIG			0x01 // Power-On Configuration
#define I2C_BQ24190_REG_CHG_CUR_CTRL			0x02 // Charge Current Control
#define I2C_BQ24190_REG_PRECHG_TERM_CUR_CTRL	0x03 // Pre-Charge/Termination Current Control
#define I2C_BQ24190_REG_CHG_V_CTRL				0x04 // Charge Voltage Control
#define I2C_BQ24190_REG_CHG_TERM_TIMER_CTRL		0x05 // Charge Termination/Timer Control
#define I2C_BQ24190_REG_THERM_CTRL				0x06 // IR Compensation / Thermal Regulation Control
#define I2C_BQ24190_REG_MISC_CTRL				0x07 // Misc Operation Control
#define I2C_BQ24190_REG_SYS_STATUS				0x08 // System Status
#define I2C_BQ24190_REG_FAULT					0x09 // System Fault
#define I2C_BQ24190_REG_VENDOR_PN_REV			0x0A // Vendor / Part / Revision Status

// Input Source Control
#define I2C_BQ24190_EN_HIZ				0x80
#define I2C_BQ24190_VINDPM_3			0x40
#define I2C_BQ24190_VINDPM_2			0x20
#define I2C_BQ24190_VINDPM_1			0x10
#define I2C_BQ24190_VINDPM_0			0x08
#define I2C_BQ24190_IINLIM_2			0x04
#define I2C_BQ24190_IINLIM_1			0x02
#define I2C_BQ24190_IINLIM_0			0x01

// Power-On Configuration
#define I2C_BQ24190_REG_RESET			0x80
#define I2C_BQ24190_WDT_RESET			0x40
#define I2C_BQ24190_CHG_CONFIG_1		0x20
#define I2C_BQ24190_CHG_CONFIG_0		0x10
#define I2C_BQ24190_SYS_MIN_2			0x08
#define I2C_BQ24190_SYS_MIN_1			0x04
#define I2C_BQ24190_SYS_MIN_0			0x02
#define I2C_BQ24190_BOOST_LIM			0x01

// Charge Current Control
#define I2C_BQ24190_ICHG_5				0x80
#define I2C_BQ24190_ICHG_4				0x40
#define I2C_BQ24190_ICHG_3				0x20
#define I2C_BQ24190_ICHG_2				0x10
#define I2C_BQ24190_ICHG_1				0x08
#define I2C_BQ24190_ICHG_0				0x04
// #define I2C_BQ24190_RESERVED			0x02
#define I2C_BQ24190_FORCE_20PCT			0x01

// Pre-Charge/Termination Current Control
#define I2C_BQ24190_IPRECHG_3			0x80
#define I2C_BQ24190_IPRECHG_2			0x40
#define I2C_BQ24190_IPRECHG_1			0x20
#define I2C_BQ24190_IPRECHG_0			0x10
#define I2C_BQ24190_ITERM_3				0x08
#define I2C_BQ24190_ITERM_2				0x04
#define I2C_BQ24190_ITERM_1				0x02
#define I2C_BQ24190_ITERM_0				0x01

// Charge Voltage Control
#define I2C_BQ24190_VREG_5				0x80
#define I2C_BQ24190_VREG_4				0x40
#define I2C_BQ24190_VREG_3				0x20
#define I2C_BQ24190_VREG_2				0x10
#define I2C_BQ24190_VREG_1				0x08
#define I2C_BQ24190_VREG_0				0x04
#define I2C_BQ24190_BATLOWV				0x02
#define I2C_BQ24190_VRECHG				0x01

// Charge Termination/Timer Control
#define I2C_BQ24190_EN_TERM				0x80
#define I2C_BQ24190_TERM_STAT			0x40
#define I2C_BQ24190_WDT_1				0x20
#define I2C_BQ24190_WDT_0				0x10
#define I2C_BQ24190_EN_TIMER			0x08
#define I2C_BQ24190_CHG_TIMER_1			0x04
#define I2C_BQ24190_CHG_TIMER_0			0x02
#define I2C_BQ24190_JEITA_ISET			0x01

// IR Compensation / Thermal Regulation Control
#define I2C_BQ24190_BAT_COMP_2			0x80
#define I2C_BQ24190_BAT_COMP_1			0x40
#define I2C_BQ24190_BAT_COMP_0			0x20
#define I2C_BQ24190_VCLAMP_2			0x10
#define I2C_BQ24190_VCLAMP_1			0x08
#define I2C_BQ24190_VCLAMP_0			0x04
#define I2C_BQ24190_TREG_1				0x02
#define I2C_BQ24190_TREG_0				0x01

// Misc Operation Control
#define I2C_BQ24190_DPDM_EN				0x80
#define I2C_BQ24190_TMR2X_EN			0x40
#define I2C_BQ24190_BATFET_OFF			0x20
#define I2C_BQ24190_JEITA_VSET			0x10
// #define I2C_BQ24190_RESERVED			0x08
// #define I2C_BQ24190_RESERVED			0x04
#define I2C_BQ24190_INT_MASK_1			0x02
#define I2C_BQ24190_INT_MASK_0			0x01

// System Status
#define I2C_BQ24190_VBUS_STAT_1			0x80
#define I2C_BQ24190_VBUS_STAT_0			0x40
#define I2C_BQ24190_CHRG_STAT_1			0x20
#define I2C_BQ24190_CHRG_STAT_0			0x10
#define I2C_BQ24190_DPM_STAT			0x08
#define I2C_BQ24190_PG_STAT				0x04
#define I2C_BQ24190_THERM_STAT			0x02
#define I2C_BQ24190_VSYS_STAT			0x01

// System Fault
#define I2C_BQ24190_WDT_FAULT			0x80
#define I2C_BQ24190_BOOST_FAULT			0x40
#define I2C_BQ24190_CHRG_FAULT_1		0x20
#define I2C_BQ24190_CHRG_FAULT_0		0x10
#define I2C_BQ24190_BAT_FAULT			0x08
#define I2C_BQ24190_NTC_FAULT_2			0x04
#define I2C_BQ24190_NTC_FAULT_1			0x02
#define I2C_BQ24190_NTC_FAULT_0			0x01

// Vendor / Part / Revision Status
// #define I2C_BQ24190_RESERVED			0x80
// #define I2C_BQ24190_RESERVED			0x40
#define I2C_BQ24190_PN_2				0x20
#define I2C_BQ24190_PN_1				0x10
#define I2C_BQ24190_PN_0				0x08
#define I2C_BQ24190_TS_PROFILE			0x04
#define I2C_BQ24190_DEV_REG_0			0x02
#define I2C_BQ24190_DEV_REG_1			0x01

//-----------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------
void chip_BQ24190_init(void);
char chip_BQ24190_fault_check(void);
char chip_BQ24190_status_check(void);
char chip_BQ24190_part_check(void);
//-----------------------------------------------------------
//-----------------------------------------------------------
#endif
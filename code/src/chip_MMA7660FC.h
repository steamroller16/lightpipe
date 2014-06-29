//-----------------------------------------------------------
// chip_MMA7660FC.h
//-----------------------------------------------------------
#ifndef CHIP_MMA7660FC_H
#define CHIP_MMA7660FC_H
//-----------------------------------------------------------
// Dependencies
//-----------------------------------------------------------

//-----------------------------------------------------------
// # Defines
//-----------------------------------------------------------
// I2C Accelerometer address
#define I2C_SLAVE_ADR_ACCEL 			0x4C

// Register Addresses
#define I2C_MMA7660FC_REG_XOUT			0x00
#define I2C_MMA7660FC_REG_YOUT			0x01
#define I2C_MMA7660FC_REG_ZOUT			0x02
#define I2C_MMA7660FC_REG_TILT			0x03
#define I2C_MMA7660FC_REG_SRST			0x04
#define I2C_MMA7660FC_REG_SPCNT			0x05
#define I2C_MMA7660FC_REG_INTSU			0x06
#define I2C_MMA7660FC_REG_MODE			0x07
#define I2C_MMA7660FC_REG_SR			0x08
#define I2C_MMA7660FC_REG_PDET			0x09
#define I2C_MMA7660FC_REG_PD			0x0A

// 6-bit output value X
// #define I2C_MMA7660FC_RESERVED		0x80
#define I2C_MMA7660FC_ALERT				0x40
#define I2C_MMA7660FC_XOUT_5			0x20
#define I2C_MMA7660FC_XOUT_4			0x10
#define I2C_MMA7660FC_XOUT_3			0x08
#define I2C_MMA7660FC_XOUT_2			0x04
#define I2C_MMA7660FC_XOUT_1			0x02
#define I2C_MMA7660FC_XOUT_0			0x01

// 6-bit output value Y
// #define I2C_MMA7660FC_RESERVED		0x80
#define I2C_MMA7660FC_Alert				0x40
#define I2C_MMA7660FC_YOUT_5			0x20
#define I2C_MMA7660FC_YOUT_4			0x10
#define I2C_MMA7660FC_YOUT_3			0x08
#define I2C_MMA7660FC_YOUT_2			0x04
#define I2C_MMA7660FC_YOUT_1			0x02
#define I2C_MMA7660FC_YOUT_0			0x01

// 6-bit output value Z
// #define I2C_MMA7660FC_RESERVED		0x80
#define I2C_MMA7660FC_Alert				0x40
#define I2C_MMA7660FC_ZOUT_5			0x20
#define I2C_MMA7660FC_ZOUT_4			0x10
#define I2C_MMA7660FC_ZOUT_3			0x08
#define I2C_MMA7660FC_ZOUT_2			0x04
#define I2C_MMA7660FC_ZOUT_1			0x02
#define I2C_MMA7660FC_ZOUT_0			0x01

// Tilt Status
#define I2C_MMA7660FC_Shake				0x80
#define I2C_MMA7660FC_Alert				0x40
#define I2C_MMA7660FC_Tap				0x20
#define I2C_MMA7660FC_PoLa_2			0x10
#define I2C_MMA7660FC_PoLa_1			0x08
#define I2C_MMA7660FC_PoLa_0			0x04
#define I2C_MMA7660FC_BaFro_1			0x02
#define I2C_MMA7660FC_BaFro_0			0x01

// Sampling Rate Status
// #define I2C_MMA7660FC_RESERVED		0x80
// #define I2C_MMA7660FC_RESERVED		0x40
// #define I2C_MMA7660FC_RESERVED		0x20
// #define I2C_MMA7660FC_RESERVED		0x10
// #define I2C_MMA7660FC_RESERVED		0x08
// #define I2C_MMA7660FC_RESERVED		0x04
#define I2C_MMA7660FC_AWSRS				0x02
#define I2C_MMA7660FC_AMSRS				0x01

// Sleep Count
#define I2C_MMA7660FC_SC_7				0x80
#define I2C_MMA7660FC_SC_6				0x40
#define I2C_MMA7660FC_SC_5				0x20
#define I2C_MMA7660FC_SC_4				0x10
#define I2C_MMA7660FC_SC_3				0x08
#define I2C_MMA7660FC_SC_2				0x04
#define I2C_MMA7660FC_SC_1				0x02
#define I2C_MMA7660FC_SC_0				0x01

// Interrupt Setup
#define I2C_MMA7660FC_SHINTX			0x80
#define I2C_MMA7660FC_SHINTY			0x40
#define I2C_MMA7660FC_SHINTZ			0x20
#define I2C_MMA7660FC_GINT				0x10
#define I2C_MMA7660FC_ASINT				0x08
#define I2C_MMA7660FC_PDINT				0x04
#define I2C_MMA7660FC_PLINT				0x02
#define I2C_MMA7660FC_FBINT				0x01

// Mode
#define I2C_MMA7660FC_IAH				0x80
#define I2C_MMA7660FC_IPP				0x40
#define I2C_MMA7660FC_SCPS				0x20
#define I2C_MMA7660FC_ASE				0x10
#define I2C_MMA7660FC_AWE				0x08
#define I2C_MMA7660FC_TON				0x04
// #define I2C_MMA7660FC_RESERVED		0x02
#define I2C_MMA7660FC_MODE				0x01

// Auto-Wake/Sleep, Portrait/Landscape samples per seconds, Debounce Filter
#define I2C_MMA7660FC_FILT_2			0x80
#define I2C_MMA7660FC_FILT_1			0x40
#define I2C_MMA7660FC_FILT_0			0x20
#define I2C_MMA7660FC_AWSR_1			0x10
#define I2C_MMA7660FC_AWSR_0			0x08
#define I2C_MMA7660FC_AMSR_2			0x04
#define I2C_MMA7660FC_AMSR_1			0x02
#define I2C_MMA7660FC_AMSR_0			0x01

// Tap Detection
#define I2C_MMA7660FC_ZDA				0x80
#define I2C_MMA7660FC_YDA				0x40
#define I2C_MMA7660FC_XDA				0x20
#define I2C_MMA7660FC_PDTH_4			0x10
#define I2C_MMA7660FC_PDTH_3			0x08
#define I2C_MMA7660FC_PDTH_2			0x04
#define I2C_MMA7660FC_PDTH_1			0x02
#define I2C_MMA7660FC_PDTH_0			0x01

// Tap Debounce Count
#define I2C_MMA7660FC_PD_7				0x80
#define I2C_MMA7660FC_PD_6				0x40
#define I2C_MMA7660FC_PD_5				0x20
#define I2C_MMA7660FC_PD_4				0x10
#define I2C_MMA7660FC_PD_3				0x08
#define I2C_MMA7660FC_PD_2				0x04
#define I2C_MMA7660FC_PD_1				0x02
#define I2C_MMA7660FC_PD_0				0x01
//-----------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------
void chip_MMA7660FC_init(void);
void chip_MMA7660FC_read( char *result, int length, unsigned int device_reg );
void chip_MMA7660FC_isr(char *xyz_accel);
//-----------------------------------------------------------
//-----------------------------------------------------------
#endif



/*
-------------------------------------------
Peripherals:

ADC
	[A0] Read battery voltage
		Adjust behavior to maximize battery life
		Warn user of imminent battery depletion
		Adjust battery fuel gauge LED color
	[A3] Read light sensor voltage ()
		Adjust behavior in accordance with ambient lighting

I2C [UCB0SCL, UCB0SDA]
	[P2.0][100 1100 - 0x4C] Accelerometer (w/ interrupt)
	[P2.5][110 1011 - 0x6B] Battery charger (w/ interrupt)
	[100 0001 - 0x41] Signal LEDs (front)
	[100 0010 - 0x42] Signal LEDs (back)
	[100 0011 - 0x43] Brake LEDs (back)

UART [UCA0RXD, UCA0TXD]
	USB connectivity

GPIO (Inputs)
	[P2.1, P2.2, P2.3] Touch sensors (x3)

GPIO (Outputs)
	[P2.6, P2.7] Control light sensor gain (x2)
	[P2.4] Speaker
	[P3.4, P3.5, P3.6] General RGB LED color (R, G, B)
	[P3.1, P3.2, P3.3] General RGB LED select (x3)
	[P3.7] Vibrator

Debug (JTAG)
	[SBWTDIO, SBWTCK] 2-wire TCK, TDIO

-------------------------------------------
Use vertical acceleration to synchronize flashing?

*/

#include <msp430.h>

init_main(void)
{
	// Stop the watch dog timer
	WDTCTL = WDTPW + WDTHOLD;
	Call the various other init's
	init_adc(void)
	
}

//-----------------------------------------------------------
//-----------------------------------------------------------
// util_i2c.c
//-----------------------------------------------------------
init_i2c(void)
{
	// (GLOBAL i2c SETTING)
	
	// ----Set P1SEL, P1SEL2----
	// Enabling I2C functionality on P1.6, P1.7
	P1SEL |= BIT6 + BIT7;
	P1SEL2|= BIT6 + BIT7;
	
	// ----Set UCB0CTL1----
	// Perform UCB0 software reset
	UCB0CTL1 |= UCSWRST;
	
	// ----Set UCB0CTL0----
	// Set UCB0 to be Master -> UCMST
	// Set UCB0 to use I2C protocol -> UCMODE_3
	// Set UCB0 to use synchronous comm -> UCSYNC
	UCB0CTL0 = UCMST + UCMODE_3 + UCSYNC;
	
	// ----Set UCB0CTL1----
	// Set UCB0 to use SMCLK -> UCSSEL_2
	// Maintain software reset -> UCSWRST
	UCB0CTL1 = UCSSEL_2 + UCSWRST;
	
	// ----Set UCB0BRO, UCB0BR1----
	// Set UCB0 clock divider to 12
	// fSCL = SMCLK/12 = ~100kHz
	UCB0BR0 = 12;
	UCB0BR1 = 0;
	
	init_sensor_accel(void)
	init_sensor_batteryCharger
	init_output_signalFront
	init_output_signalBack
	init_output_brake
  
  
  
  
  
	// Initialize i2c modules
	init_sensor_light(void)
	init_sensor_batteryVoltage(void)
}
ISR_i2c(void)
{
	// Turn CPU back on when exiting
	__bic_SR_register_on_exit(CPUOFF);
}
//-----------------------------------------------------------
//-----------------------------------------------------------

UCB0I2CSA = 0x4e;                         // Set slave address
  UCB0CTL1 &= ~UCSWRST;                     // Clear SW reset, resume operation
  IE2 |= UCB0RXIE;                          // Enable RX interrupt

//-----------------------------------------------------------
//-----------------------------------------------------------
// util_i2c.c
//-----------------------------------------------------------
//-----------------------------------------------------------
// sensor_accel.c
//-----------------------------------------------------------
// Peripheral(s) used: ADC
// Pin(s) used: [A3] Read light sensor voltage (0V - 3.3V)
// Function(s): Adjust behavior in accordance with ambient lighting
//-----------------------------------------------------------

//-----------------------------------------------------------
//-----------------------------------------------------------
// util_i2c.c
//-----------------------------------------------------------






  ADC10CTL0 = ADC10SHT_2 + ADC10ON + ADC10IE; // ADC10ON, interrupt enabled
  ADC10CTL1 = INCH_1;                       // input A1
  ADC10AE0 |= 0x02;                         // PA.1 ADC option select
  P1DIR |= 0x01;                            // Set P1.0 to output direction
  P1SEL |= BIT6 + BIT7;                     // Assign I2C pins to USCI_B0
  P1SEL2|= BIT6 + BIT7;                     // Assign I2C pins to USCI_B0
  P1SEL |= BIT6 + BIT7;                     // Assign I2C pins to USCI_B0
  P1SEL2|= BIT6 + BIT7;                     // Assign I2C pins to USCI_B0
  UCB0CTL1 |= UCSWRST;                      // Enable SW reset
  UCB0CTL0 = UCMST + UCMODE_3 + UCSYNC;     // I2C Master, synchronous mode
  UCB0CTL1 = UCSSEL_2 + UCSWRST;            // Use SMCLK, keep SW reset
  UCB0BR0 = 12;                             // fSCL = SMCLK/12 = ~100kHz
  UCB0BR1 = 0;
  UCB0I2CSA = 0x4c;                         // Set slave address
  UCB0CTL1 &= ~UCSWRST;                     // Clear SW reset, resume operation
  IE2 |= UCB0TXIE;                          // Enable TX ready interrupt
  UCB0CTL1 |= UCTR + UCTXSTT;               // I2C TX, start condition
  UCB0TXBUF = 0x010;                        // Write DAC control byte
  __bis_SR_register(CPUOFF + GIE);          // Enter LPM0 w/ interrupts
  P1DIR |= 0x01;                            // Set P1.0 to output direction
  P1DIR |= BIT0;                            // Set P1.0 to output direction
  P1IE |=  BIT3;                            // P1.3 interrupt enabled
  P1IES |= BIT3;                            // P1.3 Hi/lo edge
  P1REN |= BIT3;							// Enable Pull Up on SW2 (P1.3)
  P1IFG &= ~BIT3;                           // P1.3 IFG cleared
  P1OUT ^= BIT0;                            // P1.0 = toggle
  P1IFG &= ~BIT3;                           // P1.3 IFG cleared



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
}

// sensor_light.c
init_sensor_light(void)
{

	// ADC
	// [A3] Read light sensor voltage ()
	// Adjust behavior in accordance with ambient lighting
	
	// ----Set ADC10CTL0----
	// Set sample-and-hold time to 4,8,[16],64 x ADC10CLK -> ADC10SHT_2
	// Turn on ADC10 -> ADC10ON
	// Enable ADC10 interrupt -> ADC10IE
	ADC10CTL0 = ADC10SHT_2 + ADC10ON + ADC10IE;
	
	// ----Set ADC10AE0----
	// Set A3 as analog input (disable CMOS buffer)
	ADC10AE0 |= BIT3;
	
	// Set as output: [P2.6, P2.7]; control light sensor gain (hardware pulldown)
	P2DIR |= BIT6 + BIT7;
	
	
	
}

sample_sensor_light()
{
	// Disable ADC before switching 
ADC10CTL0 &= ~ENC;                        // ADC10 disabled
	// ----Set ADC10CTL1----
	// Set A3 as input -> INCH_3
	ADC10CTL1 = INCH_3;
}

sample_battery_buffer()
{
// battery dies @2.5V
// fully charged @3.6V -> buffered to 3.3V
// fullscale (3.3V) = 0x3FF
// 2.5V = 0x307

}





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
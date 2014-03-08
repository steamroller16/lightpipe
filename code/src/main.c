


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
	[P2.0] Accelerometer (w/ interrupt)
	[P2.5] Battery charger (w/ interrupt)
	[1000 001x] Signal LEDs (front)
	[1000 010x] Signal LEDs (back)
	[1000 011x] Brake LEDs (back)

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

init_
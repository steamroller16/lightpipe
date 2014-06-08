//-----------------------------------------------------------
// util_i2c.c
//-----------------------------------------------------------
// Utility: Functions to use I2C communication bus
//-----------------------------------------------------------

#include "main.h"

void util_i2c_init(void)
{
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

	// TODO: may need to init smclk somewhere else

	// Clear SW reset, resume operation
	UCB0CTL1 &= ~UCSWRST;

	// May or may not need this
	// ----Set IE2----
	// Enable USCI_B0 receive interrupt
	IE2 |= UCB0RXIE;
}

void util_i2c_write(char msg)
{
	// Put msg in tx buffer
	UCB0TXBUF = msg;

	// I2C TX, start condition
	UCB0CTL1 |= UCTR + UCTXSTT;

	// Wait for transmission to complete
	while (UCB0CTL1 & UCTXSTT);
}

void util_i2c_read(char *msg)
{
	// I2C RX, start condition
	UCB0CTL1 &= ~UCTR;
	UCB0CTL1 |= UCTXSTT;

	// Wait for reception to complete
	while (UCB0CTL1 & UCTXSTT);

	// Get msg from rx buffer
	*msg = UCB0RXBUF;
}

//-----------------------------------------------------------
// util_i2c.c
//-----------------------------------------------------------
// Utility: Functions to use I2C communication bus
//-----------------------------------------------------------
#include "util_i2c.h"
// ----------------------------------------------------------
// Private Global Variables
// ----------------------------------------------------------
static int TxByteCounter;
static int TxByteLength;
static char *TxBytePointer;
static int TxSendStopCondition;

// ----------------------------------------------------------
// Function Implementations
// ----------------------------------------------------------
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
	// Set UCB0 to transmitter mode -> UCTR
	// Maintain software reset -> UCSWRST
	UCB0CTL1 = UCSSEL_2 + UCTR + UCSWRST;

	// ----Set UCB0BRO, UCB0BR1----
	// Set UCB0 clock divider to 12
	// fSCL = SMCLK/12 = ~100kHz
	UCB0BR0 = 12;
	UCB0BR1 = 0;

	// TODO: may need to init smclk somewhere else

	// TEST: SET SLAVE ADR HERE
	UCB0I2CSA = I2C_SLAVE_ADR_LED_FRONT_SIGNAL;
	// UCB0I2CSA = I2C_SLAVE_ADR_LED_REAR_SIGNAL;
	// UCB0I2CSA = I2C_SLAVE_ADR_LED_REAR_BRAKE;
	// Clear SW reset, resume operation
	UCB0CTL1 &= ~UCSWRST;

	// May or may not need this
	// ----Set IE2----
	// Enable USCI_B0 receive interrupt
	// IE2 |= UCB0RXIE;
	
	// Enable not-acknowledge interrupt
	UCB0I2CIE |= UCNACKIE;
	
	// Enable USCI_B0 transmit interrupt
	IE2 |= UCB0TXIE;
}

void util_i2c_set_slave_adr(unsigned int slave_adr)
{
	UCB0I2CSA = slave_adr;
}

void util_i2c_write(char *msg, int length, int send_stop_condition)
{
	TxByteCounter = 0;
	TxByteLength = length;
	TxBytePointer = msg;
	TxSendStopCondition = send_stop_condition;

	// I2C TX, start condition
	UCB0CTL1 |= UCTR + UCTXSTT;

	// Go to sleep
	__bis_SR_register(CPUOFF + GIE);
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

#pragma vector = USCIAB0TX_VECTOR
__interrupt void USCIAB0TX_ISR(void)
{
	// Check TX byte counter
	if (TxByteCounter < TxByteLength)
	{
		// Load TX buffer
		UCB0TXBUF = TxBytePointer[TxByteCounter];

		// Increment TX byte counter
		TxByteCounter++;
	}
	else
	{
		if (TxSendStopCondition)
		{
			// I2C stop condition
			UCB0CTL1 |= UCTXSTP;
		}

		// Clear USCI_B0 TX int flag
		IFG2 &= ~UCB0TXIFG;

		// Exit LPM0
		__bic_SR_register_on_exit(CPUOFF);
	}
}

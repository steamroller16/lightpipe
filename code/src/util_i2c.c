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

static int RxByteCounter;
static int RxByteLength;
static char *RxBytePointer;

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
// UCB0I2CSA = I2C_SLAVE_ADR_LED_ALL_CALL;
// UCB0I2CSA = I2C_SLAVE_ADR_LED_FRONT_SIGNAL;
// UCB0I2CSA = I2C_SLAVE_ADR_LED_REAR_SIGNAL;
// UCB0I2CSA = I2C_SLAVE_ADR_LED_REAR_BRAKE;
// Clear SW reset, resume operation
UCB0CTL1 &= ~UCSWRST;

// May or may not need this
// ----Set IE2----
// Enable USCI_B0 receive interrupt
IE2 |= UCB0RXIE;

// Enable not-acknowledge interrupt
UCB0I2CIE |= UCNACKIE;

// Enable USCI_B0 transmit interrupt
IE2 |= UCB0TXIE;
}

void util_i2c_set_slave_adr(unsigned int slave_adr)
{
// Make sure any pending commands are finished before resetting I2C
while(UCB0CTL1 & UCTXSTP);

UCB0CTL1 |= UCSWRST;
UCB0I2CSA = slave_adr;
UCB0CTL1 &= ~UCSWRST;

// IFG2 &= ~UCB0TXIFG;
IE2 |= UCB0TXIE;
IE2 |= UCB0RXIE;
}

void util_i2c_write(char *msg, int length, int send_stop_condition)
{
TxByteCounter = 0;
TxByteLength = length;
TxBytePointer = msg;
TxSendStopCondition = send_stop_condition;

// Set UCB0 to I2C Transmitter Mode
UCB0CTL1 |= UCTR;

// Clear Transmit Interrupt Flag
IFG2 &= ~UCB0TXIFG;

// Send Start condition
UCB0CTL1 |= UCTXSTT;

// Go to LPM3 (only ACLK active)
__bis_SR_register(LPM3_bits + GIE);
}

void util_i2c_read(char *msg, int length)
{
	RxByteCounter = 0;
	RxByteLength = length;
	RxBytePointer = msg;
	
	// Set UCB0 to I2C Reciever Mode
	UCB0CTL1 &= ~UCTR;
	
	// Clear Receive Interrupt Flag
	IFG2 &= ~UCB0RXIFG;
	
	// Send start condition
	UCB0CTL1 |= UCTXSTT;

	// For single byte RX, send stop during reception of incoming byte
	if(RxByteLength == 1) 
	{
		// Wait for Slave address acknowledge
		while (UCB0CTL1 & UCTXSTT);
		// Send Stop condition
		UCB0CTL1 |= UCTXSTP;
	}
	
	// Continue with operation, reception occurs upon UCB0RXIFG firing
	__bis_SR_register(LPM3_bits + GIE);
	
	// msg = RxBytePointer;
}


// WARNING----------------------
// THIS VECTOR SERVICES BOTH TRANSMISSION AND RECEPTION OVER I2C
// See Sec. 17.3.7.4 of slau144j.pdf
// WARNING----------------------
#pragma vector = USCIAB0TX_VECTOR
__interrupt void USCIAB0TX_ISR(void)
{
	switch((UCB0CTL1 & UCTR) != 0)
	{
		case I2C_RECEIVER_MODE:
		{
			// Store recieved byte
			RxBytePointer[RxByteCounter] = UCB0RXBUF;
			
			//UCB0RXIFG automatically reset after reading from RX buffer
			
			// Increment RX byte counter
			RxByteCounter++;
			
			// Check RX byte counter, avoid sending repeated stop for single byte RX
			if (RxByteCounter >= RxByteLength)
			{
				if (RxByteLength > 1)
				{
				// Send Stop condition
				UCB0CTL1 |= UCTXSTP;
				}
				
				IFG2 &= ~UCB0RXIFG;
				
				// Exit LPM0
				__bic_SR_register_on_exit(LPM3_bits);
			}
			break;
		}
		case I2C_TRANSMITTER_MODE:
		{
			// Check TX byte counter to see if at end of transmission
			if (TxByteCounter >= TxByteLength)
			{
				// Check to see if stop cond. requested
				if (TxSendStopCondition)
				{
					// Send I2C stop condition
					UCB0CTL1 |= UCTXSTP;
				}
				
				// Clear TX interrupt (since TXBUF never written to)
				IFG2 &= ~UCB0TXIFG;
				
				// Exit LPM0
				__bic_SR_register_on_exit(LPM3_bits);
			}
			else
			{
				// Load TX buffer
				UCB0TXBUF = TxBytePointer[TxByteCounter];
				
				//UCB0TXIFG automatically reset after writing to TX buffer
				
				// Increment TX byte counter
				TxByteCounter++;
			}
			break;
		}
	}
}

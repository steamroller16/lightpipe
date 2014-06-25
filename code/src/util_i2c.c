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

// I2C TX, start condition
// // // // // // // // UCB0CTL1 |= UCTR + UCTXSTT;

// WORKS.--
// Set UCB0 to I2C Transmitter Mode
UCB0CTL1 |= UCTR;
// Send Start condition
UCB0CTL1 |= UCTXSTT;
// --------



// Go to sleep
__bis_SR_register(CPUOFF + GIE);
}

void util_i2c_read(char *msg, int length)
/*{
// I2C RX, start condition
UCB0CTL1 &= ~UCTR;
UCB0CTL1 |= UCTXSTT;

// Wait for reception to complete
while (UCB0CTL1 & UCTXSTT);

// Get msg from rx buffer
*msg = UCB0RXBUF;
}*/
{
	// Wait for bus to be free
	// while((TxByteCounter != TxByteLength) && (RxByteCounter != RxByteLength));
	
	RxByteCounter = 0;
	RxByteLength = length;
	RxBytePointer = msg;
	
	// // Wait for bus to be free
	// while(UCB0STAT & UCBBUSY);
	
	// Set UCB0 to I2C Reciever Mode
	UCB0CTL1 &= ~UCTR;
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
	__bis_SR_register(CPUOFF + GIE);
}

#pragma vector = USCIAB0TX_VECTOR
__interrupt void USCIAB0TX_ISR(void)
/*{
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
}*/
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
		__bic_SR_register_on_exit(CPUOFF);
	}
	else
	{
		// Load TX buffer
		UCB0TXBUF = TxBytePointer[TxByteCounter];
		
		//UCB0TXIFG automatically reset after writing to TX buffer
		
		// Increment TX byte counter
		TxByteCounter++;
	}
}
#pragma vector = USCIAB0RX_VECTOR
__interrupt void USCIAB0RX_ISR(void)
{
	// Store recieved byte
	RxBytePointer[RxByteCounter] = UCB0RXBUF;
	
	// Increment RX byte counter
	RxByteCounter++;
	
	// Check RX byte counter, avoid sending repeated stop for single byte RX
	if (RxByteCounter == RxByteLength)
	{
		IFG2 &= ~UCB0RXIFG;
		// Exit LPM0
		__bic_SR_register_on_exit(CPUOFF);
		
		if (RxByteLength > 1)
		{
		// Send Stop condition
		UCB0CTL1 |= UCTXSTP;
		}
	}
	//UCB0RXIFG automatically reset after reading from RX buffer
}


/*
//-----------------------------------------------------------
// util_i2c.c
//-----------------------------------------------------------
// Utility: Functions to use I2C communication bus
//-----------------------------------------------------------
#include "util_i2c.h"
// ----------------------------------------------------------
// Private Global Variables
// ----------------------------------------------------------
static int 		TxByteCounter = 0;
static int 		TxByteLength = 0;
static char 	*TxBytePointer;
static int 		TxSendStopCondition;

static int 		RxByteCounter = 0;
static int 		RxByteLength = 0;
static char 	*RxBytePointer;


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
	UCB0I2CSA = I2C_SLAVE_ADR_LED_FRONT_SIGNAL;
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
	// Perform UCB0 software reset
	UCB0CTL1 |= UCSWRST;
	// Change slave address
	UCB0I2CSA = slave_adr;
	// Clear SW reset, resume operation
	UCB0CTL1 &= ~UCSWRST;
}

void util_i2c_write(char *msg, int length, int send_stop_condition)
{
	// // Wait for bus to be free
	// while((TxByteCounter != TxByteLength) && (RxByteCounter != RxByteLength));
	
	TxByteCounter = 0;
	TxByteLength = length;
	TxBytePointer = msg;
	TxSendStopCondition = send_stop_condition;
	
	// Set UCB0 to I2C Transmitter Mode
	UCB0CTL1 |= UCTR;
	// Send Start condition
	UCB0CTL1 |= UCTXSTT;

	// Continue with operation, transmission occurs upon UCB0TXIFG firing
	__bis_SR_register(CPUOFF + GIE);
}

void util_i2c_read(char *msg, int length)
{
	// // Wait for bus to be free
	// while((TxByteCounter != TxByteLength) && (RxByteCounter != RxByteLength));
	
	RxByteCounter = 0;
	RxByteLength = length;
	RxBytePointer = msg;
	
	// // Wait for bus to be free
	// while(UCB0STAT & UCBBUSY);
	
	// Set UCB0 to I2C Reciever Mode
	UCB0CTL1 &= ~UCTR;
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
	__bis_SR_register(CPUOFF + GIE);
}

#pragma vector = USCIAB0TX_VECTOR
__interrupt void USCIAB0TX_ISR(void)
{
	// Load TX buffer
	UCB0TXBUF = TxBytePointer[TxByteCounter];
	
	// Increment TX byte counter
	TxByteCounter++;
	
	// Check TX byte counter
	if (TxByteCounter == TxByteLength)
	{
		IFG2 &= ~UCB0TXIFG;
		// Exit LPM0
		__bic_SR_register_on_exit(CPUOFF);
		
		if (TxSendStopCondition)
		{
		// I2C stop condition
		UCB0CTL1 |= UCTXSTP;
		}
	}
	
	//UCB0TXIFG automatically reset after writing to TX buffer
}


#pragma vector = USCIAB0RX_VECTOR
__interrupt void USCIAB0RX_ISR(void)
{
	// Store recieved byte
	RxBytePointer[RxByteCounter] = UCB0RXBUF;
	
	// Increment RX byte counter
	RxByteCounter++;
	
	// Check RX byte counter, avoid sending repeated stop for single byte RX
	if (RxByteCounter == RxByteLength)
	{
		IFG2 &= ~UCB0RXIFG;
		// Exit LPM0
		__bic_SR_register_on_exit(CPUOFF);
		
		if (RxByteLength > 1)
		{
		// Send Stop condition
		UCB0CTL1 |= UCTXSTP;
		}
	}
	//UCB0RXIFG automatically reset after reading from RX buffer
}
*/
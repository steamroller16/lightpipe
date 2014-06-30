//----------------------------------------------------------
// util_uart.c
//----------------------------------------------------------
// Utility: Functions to use UART communication line
//----------------------------------------------------------
#include "util_uart.h"
// ---------------------------------------------------------
// Private Global Variables
// ---------------------------------------------------------
static int TxByteCounter;
static int TxByteLength;
static char *TxBytePointer;

static int RxByteCounter;
static int RxByteLength;
static char *RxBytePointer;

// ----------------------------------------------------------
// Function Implementations
// ----------------------------------------------------------
void util_uart_init(void)
{
// ----Set UCA0CTL1----
// Perform UCA0 software reset
UCA0CTL1 |= UCSWRST;

// ----Set UCA0CTL0----
// UCPEN: No parity (default)
// UCPAR: N/A (default)
// UCMSB: LSB first (default)
// UC7BIT: 8 bit data (default)
// UCSPB: One stop bit (default)
// UCMODEx: UART mode (default)
// UCSYNC: Asynchronous mode (default)

// ----Set DCO Options----
// Clear RSELx bits if set
BCSCTL1 &= ~(0x0F);
// Set RSELx bits to calibrated 1MHz
BCSCTL1 |= CALBC1_1MHZ;
// Set DCOx and MODx to calibrated 1MHz
DCOCTL = CALDCO_1MHZ;

// ----Set UCA0CTL1----
// ~1.1MHz on SMCLK
// 12kHz VLOCLK on ACLK
// UCSSELx: SMCLK (10 or 11)
// UCRXEIE: Reject bad chars (default)
// UCBRKIE: Received break chars no interrupt (default)
// UCDORM: Not dormant (default)
// UCTXADDR: Next frame is data (default)
// UCSWRST: Maintain software reset
UCA0CTL1 |= UCSSEL_2;

// ----Set UCA0 Clock---- 
// 115200 baud from 1MHz
// UCA0BR0,1 set prescaler
// UCA0MCTL sets modulator
UCA0BR0 = 8;
UCA0BR1 = 0;
UCA0MCTL = UCBRS2 + UCBRS0;

// ----Set UCA0CTL1----
// Release UART comms
UCA0CTL1 &= ~UCSWRST;

// Disable UART TX and RX interrupts
IE2 &= ~(UCA0RXIE + UCA0TXIE);
}

void util_uart_write(char *msg, int length)
{
TxByteCounter = 0;
TxByteLength = length;
TxBytePointer = msg;

// Enable TX interrupt
IE2 |= UCA0TXIE;

// Go to sleep
__bis_SR_register(LPM3_bits + GIE);
}

#pragma vector=USCIAB0TX_VECTOR
__interrupt void USCIAB0TX_ISR(void)
{
	// Check TX byte counter to see if at end of transmission
	if (TxByteCounter >= TxByteLength)
	{
		// Disable TX interrupt
		IE2 &= ~(UCA0TXIE);
		
		// Exit sleep
		__bic_SR_register_on_exit(LPM3_bits);
	}
	else
	{
		// Load TX buffer
		UCA0TXBUF = TxBytePointer[TxByteCounter];
		
		//UCA0TXIFG automatically reset after writing to TX buffer
		
		// Increment TX byte counter
		TxByteCounter++;
	}
}

void util_uart_read(char *msg, int length)
{
RxByteCounter = 0;
RxByteLength = length;
RxBytePointer = msg;

// Enable RX interrupt
IE2 |= UCA0RXIE;

// Go to sleep
__bis_SR_register(LPM3_bits + GIE);
}

#pragma vector=USCIAB0RX_VECTOR
__interrupt void USCIAB0RX_ISR(void)
{
	// Store received byte
	RxBytePointer[RxByteCounter] = UCA0RXBUF;
	
	//UCA0RXIFG automatically reset after reading from RX buffer
	
	// Increment RX byte counter
	RxByteCounter++;
	
	// Check RX byte counter to see if at end of reception
	if (RxByteCounter >= RxByteLength)
	{
		// Disable RX interrupt
		IE2 &= ~(UCA0RXIE);
		
		// Exit LPM0
		__bic_SR_register_on_exit(LPM3_bits);
	}
}
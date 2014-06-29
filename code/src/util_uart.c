//----------------------------------------------------------
// util_uart.c
//----------------------------------------------------------
// Utility: Functions to use UART communication line
//----------------------------------------------------------
#include "util_uart.h"
// ---------------------------------------------------------
// Private Global Variables
// ---------------------------------------------------------
// static int TxByteCounter;
// static int TxByteLength;
// static char *TxBytePointer;
// static int TxSendStopCondition;

// static int RxByteCounter;
// static int RxByteLength;
// static char *RxBytePointer;

// ----------------------------------------------------------
// Function Implementations
// ----------------------------------------------------------
void util_uart_init(void)
{
set ucswrst
initialize all usci registers with ucswrst
configure ports
clear ucswrst
enable interrupts
// ----Set UCB0CTL1----
// Perform UCA0 software reset
UCA0CTL1 |= UCSWRST;

// ----Set UCB0CTL0----
// UCPEN: No parity (default)
// UCPAR: N/A (default)
// UCMSB: LSB first (default)
// UC7BIT: 8 bit data (default)
// UCSPB: One stop bit (default)
// UCMODEx: UART mode (default)
// UCSYNC: Asynchronous mode (default)

// ----Set UCB0CTL1----
// ~1.1MHz on SMCLK
// 12kHz VLOCLK on ACLK
// UCSSELx: SMCLK (10 or 11)
// UCRXEIE: Reject bad chars (default)
// UCBRKIE: Recieved break chars no interrupt (default)
// UCDORM: Not dormant (default)
// UCTXADDR: Next frame is data (default)
// UCSWRST: Maintain software reset

  UCA0CTL1 |= UCSSEL_1;                     // CLK = ACLK
  UCA0BR0 = 0x03;                           // 32kHz/9600 = 3.41
  UCA0BR1 = 0x00;                           //
  UCA0MCTL = UCBRS1 + UCBRS0;               // Modulation UCBRSx = 3
  UCA0CTL1 &= ~UCSWRST;                     // **Initialize USCI state machine**
  IE2 |= UCA0RXIE;                          // Enable USCI_A0 RX interrupt
}
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
// void util_i2c_set_slave_adr(unsigned int slave_adr)
// {

// }

// void util_i2c_write(char *msg, int length, int send_stop_condition)
// {

// }

// void util_i2c_read(char *msg, int length)
// {

// }


// WARNING----------------------
// THIS VECTOR SERVICES BOTH TRANSMISSION AND RECEPTION OVER I2C
// See Sec. 17.3.7.4 of slau144j.pdf
// WARNING----------------------
// #pragma vector = USCIAB0TX_VECTOR
// __interrupt void USCIAB0TX_ISR(void)
// {
	
// }
/*
//   Description: This program demonstrates a full-duplex 9600-baud UART using
//   USCI_A0 and a 32kHz crystal.  The program will wait in LPM3, and receive
//   a string1 into RAM, and echo back the complete string.
//   ACLK = BRCLK = LFXT1 = 32768Hz, MCLK = SMCLK = DCO ~1.2MHz
//   Baud rate divider with 32768Hz XTAL @9600 = 32768Hz/9600 = 3.41
// An external watch crystal is required on XIN XOUT for ACLK 
//
//                MSP430G2xx3
//             -----------------
//         /|\|              XIN|-
//          | |                 | 32kHz
//          --|RST          XOUT|-
//            |                 |
//            |     P1.2/UCA0TXD|------------>
//            |                 | 9600 - 8N1
//            |     P1.1/UCA0RXD|<------------
//
//
//   D. Dang
//   Texas Instruments Inc.
//   February 2011
//   Built with CCS Version 4.2.0 and IAR Embedded Workbench Version: 5.10
//******************************************************************************
#include <msp430.h>

char string1[8];
char i;
char j = 0;

int main(void)
{
  WDTCTL = WDTPW + WDTHOLD;                 // Stop WDT
  P1DIR = 0xFF;                             // All P1.x outputs
  P1OUT = 0;                                // All P1.x reset
  P2DIR = 0xFF;                             // All P2.x outputs
  P2OUT = 0;                                // All P2.x reset
  P1SEL = BIT1 + BIT2 ;                     // P1.1 = RXD, P1.2=TXD
  P1SEL2 = BIT1 + BIT2 ;                     // P1.1 = RXD, P1.2=TXD
  P3DIR = 0xFF;                             // All P3.x outputs
  P3OUT = 0;                                // All P3.x reset
  
  UCA0CTL1 |= UCSSEL_1;                     // CLK = ACLK
  UCA0BR0 = 0x03;                           // 32kHz/9600 = 3.41
  UCA0BR1 = 0x00;                           //
  UCA0MCTL = UCBRS1 + UCBRS0;               // Modulation UCBRSx = 3
  UCA0CTL1 &= ~UCSWRST;                     // **Initialize USCI state machine**
  IE2 |= UCA0RXIE;                          // Enable USCI_A0 RX interrupt

  __bis_SR_register(LPM3_bits + GIE);       // Enter LPM3, interrupts enabled
}

// USCI A0/B0 Transmit ISR
#pragma vector=USCIAB0TX_VECTOR
__interrupt void USCI0TX_ISR(void)
{
  UCA0TXBUF = string1[i++];                 // TX next character

  if (i == sizeof string1)                  // TX over?
    IE2 &= ~UCA0TXIE;                       // Disable USCI_A0 TX interrupt
}

// USCI A0/B0 Receive ISR
#pragma vector=USCIAB0RX_VECTOR
__interrupt void USCI0RX_ISR(void)
{
  string1[j++] = UCA0RXBUF;
  if (j > sizeof string1 - 1)
  {
    i = 0;
    j = 0;
    IE2 |= UCA0TXIE;                        // Enable USCI_A0 TX interrupt
    UCA0TXBUF = string1[i++];
  }
}

*/
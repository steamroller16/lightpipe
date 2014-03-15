//-----------------------------------------------------------
// util_i2c.c
//-----------------------------------------------------------
// Utility: Functions to use I2C communication bus
//-----------------------------------------------------------
util_i2c_init(void)
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
	
	// ----Set IE2----
	// Enable USCI_B0 receive interrupt
	IE2 |= UCB0RXIE;
}

// Need some help, Sam! I think there should be something with pointers and such for multiple byte data. Also, there is some intricacy for I2C with the stop bit, acks, etc. 


// util_i2c_write(char slave_address, char msg)
// {
	// if(~(UCB0CTL1 & UCSWRST))
	// {
		// // ----Set UCB0CTL1----
		// // Perform UCB0 software reset
		// UCB0CTL1 |= UCSWRST;
	// }
	// // Set I2C slave address
	// UCB0I2CSA = slave_address;
	
	// // UCSLA10 7bit
	// // UCTR transmitter
	// // UCTXSTT to start
	// // (stuff should be un UCBTXBUF)
	
	// // CLear software reset, enable I2C communication
	// UCB0CTL1 &= ~UCSWRST;
	
	
// }
//-----------------------------------------------------------
//-----------------------------------------------------------
// -util_i2c_init
// -util_i2c_write(slave_address, msg)
// -util_i2c_read(slave_address, msg)
// isr.c

//------------------------------------------------------------------------------
// Private global variables
//------------------------------------------------------------------------------
isr_interrupt_handler_t interrupt_handler_table[NUM_INTERRUPT_SOURCES];

//------------------------------------------------------------------------------
// Private function prototypes
//------------------------------------------------------------------------------
static void call_handler(isr_interrupt_source_t interrupt_source);

//------------------------------------------------------------------------------
// Functions
//------------------------------------------------------------------------------
// Add interrupt handler to the big table for a given interrupt source
void isr_add_handler(isr_interrupt_handler_t newHandler, isr_interrupt_source_t newSource) {
	interrupt_handler_table[newSource] = newHandler;
}

// Call a handler that is in the big table based on the interrupt source
void call_handler(isr_interrupt_source_t interrupt_source) {
	// Check that the handler is not NULL and call it
	if (interrupt_handler_table[interrupt_source] != NULL) {
		(interrupt_handler_table[interrupt_source])();
	}
}

// A bunch of actual "ISRs" that simply call the call_handler function with the
// correct source
#pragma vector SOMETHING
__interrupt void middleman_adc(void) {
	call_handler(ISR_INTERRUPT_SOURCE_ADC);
}

#pragma vector SOMETHING
__interrupt void middleman_i2c(void) {
	call_handler(ISR_INTERRUPT_SOURCE_I2C);
}

#pragma vector SOMETHING
__interrupt void middleman_ext1(void) {
	call_handler(ISR_INTERRUPT_SOURCE_EXT1);
}




// May need to go back to this type of middleman functions
/*
#pragma vector SOMETHING
__interrupt void isr_middleman_adc(void) {
	u8 interrupt_source = ISR_INTERRUPT_SOURCE_ADC;
	
	// Check that the handler is not NULL and call it
	if (isr_interrupt_handler_table[interrupt_source] != NULL) {
		isr_interrupt_handler_table[interrupt_source]();
	}
}
*/

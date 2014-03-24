//------------------------------------------------------------------------------
// isr.c
//------------------------------------------------------------------------------
// Functions to register and use ISRs without having module specific code in the
// actual ISR function.
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Includes
//------------------------------------------------------------------------------
#include "main.h"
#include "isr.h"


//------------------------------------------------------------------------------
// Defines and typedefs
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Public global variables
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Private global variables
//------------------------------------------------------------------------------
isr_interrupt_handler_t interrupt_handler_table[ISR_NUM_INTERRUPT_SOURCES];


//------------------------------------------------------------------------------
// Private function prototypes
//------------------------------------------------------------------------------
static void call_handler(isr_interrupt_source_t interrupt_source);


//------------------------------------------------------------------------------
// Functions
//------------------------------------------------------------------------------
// Add interrupt handler to the big table for a given interrupt source
void isr_add_handler(
	isr_interrupt_handler_t newHandler, 
	isr_interrupt_source_t newSource)
{
	interrupt_handler_table[newSource] = newHandler;
}

// Call a handler that is in the big table based on the interrupt source
void call_handler(isr_interrupt_source_t interrupt_source)
{
	// Check that the handler is not NULL and call it
	if (interrupt_handler_table[interrupt_source] != NULL)
	{
		(interrupt_handler_table[interrupt_source])();
	}
}

// A bunch of actual "ISRs" that simply call the call_handler function with the
// correct source
#pragma vector=PORT1_VECTOR
__interrupt void middleman_port1(void)
{
	call_handler(ISR_INTERRUPT_SOURCE_PORT1);
}

#pragma vector=PORT2_VECTOR
__interrupt void middleman_port2(void)
{
	call_handler(ISR_INTERRUPT_SOURCE_PORT2);
}

#pragma vector=ADC10_VECTOR
__interrupt void middleman_adc10(void)
{
	call_handler(ISR_INTERRUPT_SOURCE_ADC10);
}

#pragma vector=USCIAB0TX_VECTOR
__interrupt void middleman_usciab0tx(void)
{
	call_handler(ISR_INTERRUPT_SOURCE_USCIAB0TX);
}

#pragma vector=USCIAB0RX_VECTOR
__interrupt void middleman_usciab0rx(void)
{
	call_handler(ISR_INTERRUPT_SOURCE_USCIAB0RX);
}

#pragma vector=TIMER0_A0_VECTOR
__interrupt void middleman_timer0_a0(void)
{
	call_handler(ISR_INTERRUPT_SOURCE_TIMER0_A0);
}

#pragma vector=TIMER0_A1_VECTOR
__interrupt void middleman_timer0_a1(void)
{
	call_handler(ISR_INTERRUPT_SOURCE_TIMER0_A1);
}

#pragma vector=TIMER1_A0_VECTOR
__interrupt void middleman_timer1_a0(void)
{
	call_handler(ISR_INTERRUPT_SOURCE_TIMER1_A0);
}

#pragma vector = TIMER1_A1_VECTOR
__interrupt void middleman_timer1_a1(void)
{
	call_handler(ISR_INTERRUPT_SOURCE_TIMER1_A1);
}

#pragma vector=WDT_VECTOR
__interrupt void middleman_wdt(void)
{
	call_handler(ISR_INTERRUPT_SOURCE_WDT);
}

#pragma vector=TIMER1_A1_VECTOR
__interrupt void middleman_timer1_a1(void)
{
	call_handler(ISR_INTERRUPT_SOURCE_TIMER1_A1);
}

#pragma vector=TIMER1_A0_VECTOR
__interrupt void middleman_timer1_a0(void)
{
	call_handler(ISR_INTERRUPT_SOURCE_TIMER1_A0);
}

#pragma vector=NMI_VECTOR
__interrupt void middleman_nmi(void)
{
	call_handler(ISR_INTERRUPT_SOURCE_NMI);
}

// May need to go back to this type of middleman functions
/*
#pragma vector=SOMETHING
__interrupt void isr_middleman_adc(void)
{
	u8 interrupt_source = ISR_INTERRUPT_SOURCE_ADC;
	
	// Check that the handler is not NULL and call it
	if (isr_interrupt_handler_table[interrupt_source] != NULL)
	{
		isr_interrupt_handler_table[interrupt_source]();
	}
}
*/

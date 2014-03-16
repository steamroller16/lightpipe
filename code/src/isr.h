//------------------------------------------------------------------------------
// isr.h
//------------------------------------------------------------------------------
// Functions to register and use ISRs without having module specific code in the
// actual isr function.
//------------------------------------------------------------------------------
#ifndef ISR_H
#define ISR_H

//------------------------------------------------------------------------------
// Includes
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Defines and typedefs
//------------------------------------------------------------------------------
typedef enum {
	ISR_INTERRUPT_SOURCE_PORT1 = 0,
	ISR_INTERRUPT_SOURCE_PORT2,
	ISR_INTERRUPT_SOURCE_ADC10,
	ISR_INTERRUPT_SOURCE_USCIAB0TX,
	ISR_INTERRUPT_SOURCE_USCIAB0RX,
	ISR_INTERRUPT_SOURCE_TIMER0_A1,
	ISR_INTERRUPT_SOURCE_TIMER0_A0,
	ISR_INTERRUPT_SOURCE_WDT,
	ISR_INTERRUPT_SOURCE_TIMER1_A1,
	ISR_INTERRUPT_SOURCE_TIMER1_A0,
	ISR_INTERRUPT_SOURCE_NMI,
	ISR_NUM_INTERRUPT_SOURCES
} isr_interrupt_source_t;

typedef void (*isr_interrupt_handler_t)(void);


//------------------------------------------------------------------------------
// Public global variables
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Public function prototypes
//------------------------------------------------------------------------------
void isr_add_handler(
	isr_interrupt_handler_t newHandler, 
	isr_interrupt_source_t newSource);


//------------------------------------------------------------------------------
// End of file
//------------------------------------------------------------------------------
#endif

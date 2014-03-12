// isr.h

#ifndef ISR_H
#define ISR_H

//------------------------------------------------------------------------------
// Defines and typedefs
//------------------------------------------------------------------------------
typedef enum {
	ISR_INTERRUPT_SOURCE_ADC = 0, 
	ISR_INTERRUPT_SOURCE_I2C,
	ISR_INTERRUPT_SOURCE_EXT1,
	ISR_NUM_INTERRUPT_SOURCES
} isr_interrupt_source_t;

typedef void (*isr_interrupt_handler_t)(void);

//------------------------------------------------------------------------------
// Public global variables
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Public function prototypes
//------------------------------------------------------------------------------
void isr_add_handler(isr_interrupt_handler_t newHandler, isr_interrupt_source_t newSource);


#endif

//-----------------------------------------------------------
// util_timer.h
//-----------------------------------------------------------
#ifndef UTIL_TIMER_H
#define UTIL_TIMER_H
//-----------------------------------------------------------
// Dependencies
//-----------------------------------------------------------
#include "main.h"
#include "output_feedback_lights.h"
#include "isr.h"
//-----------------------------------------------------------
// # Defines
//-----------------------------------------------------------
#define UTIL_TIMER_FEEDBACK_SINGLE_LED_ON_TIME = 255
// The maximum single LED on time is 65535/3 = 21845
// The minimum single LED on time is 1
//-----------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------
void util_timer_init(void);
void util_timer_rgb_mux_init(void);
void util_timer_pos_mux_init(void);
void util_timer_rgb_mux_isr_red(void);
void util_timer_rgb_mux_isr_green(void);
void util_timer_rgb_mux_isr_blue(void);
void util_timer_pos_mux_isr_1(void);
void util_timer_pos_mux_isr_2(void);
void util_timer_pos_mux_isr_3(void);

void util_timer_timer0_a0_isr(void);
void util_timer_timer0_a1_isr(void);
void util_timer_timer1_a0_isr(void);
void util_timer_timer1_a1_isr(void);
//-----------------------------------------------------------
//-----------------------------------------------------------
#endif
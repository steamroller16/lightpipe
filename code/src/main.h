//------------------------------------------------------------------------------
// main.h
//------------------------------------------------------------------------------
// Everything that is common to all files gets put in here.
//------------------------------------------------------------------------------
#ifndef MAIN_H
#define MAIN_H

//------------------------------------------------------------------------------
// Includes
//------------------------------------------------------------------------------
#include <msp430g2233.h>
#include <stdlib.h>


//------------------------------------------------------------------------------
// Defines and typedefs
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Public global variables
//------------------------------------------------------------------------------
extern int Debug1;
extern int Debug2;
extern int main_feedback_red_on_time;
extern int main_feedback_red_off_time;
extern int main_feedback_red_status;
extern int main_feedback_green_on_time;
extern int main_feedback_green_off_time;
extern int main_feedback_green_status;
extern int main_feedback_blue_on_time;
extern int main_feedback_blue_off_time;
extern int main_feedback_blue_status;
extern int main_feedback_front_color[3];
extern int main_feedback_middle_color[3];
extern int main_feedback_rear_color[3];
extern int main_turnsignal_state;
extern int main_orientation[3];

//------------------------------------------------------------------------------
// Public function prototypes
//------------------------------------------------------------------------------
void main_watchdog_init(void);

void main_debug_led_init(void);
void main_debug_touch_init(void);

void main_go_to_sleep(void);

void main_sensor_touch_1_isr(void);
void main_sensor_touch_2_isr(void);
void main_sensor_touch_3_isr(void);

void main_go_to_sleep(void);
// void main_wake_up(void);


//------------------------------------------------------------------------------
// End of file
//------------------------------------------------------------------------------
#endif

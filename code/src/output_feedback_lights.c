//-----------------------------------------------------------
//-----------------------------------------------------------
// output_feedback_lights.c
#include "output_feedback_lights.h"
//-----------------------------------------------------------
/*
// Accepts RGB values, {[0,255],[0,255],[0,255]}
void output_feedback_lights_init(void)
{
	main_feedback_front_color[3] = {255, 0, 0}; // Red
	main_feedback_middle_color[3] = {0, 255, 0}; // Green
	main_feedback_rear_color[3] = {0, 0, 255}; // Blue
}
void output_feedback_lights_set_color(int rgb_color[3])
{
	main_feedback_red_on_time = rgb_color[0];
	main_feedback_red_off_time = 255-main_feedback_red_on_time;
	main_feedback_green_on_time = rgb_color[1];
	main_feedback_green_off_time = 255-main_feedback_green_on_time;
	main_feedback_blue_on_time = rgb_color[2];
	main_feedback_blue_off_time = 255-main_feedback_blue_on_time;
}
void output_feedback_lights_set_front_color(int rgb_color[3])
{
	main_feedback_front_color[3] = rgb_color;
}
void output_feedback_lights_set_middle_color(int rgb_color[3])
{
	main_feedback_middle_color[3] = rgb_color;
}
void output_feedback_lights_set_rear_color(int rgb_color[3])
{
	main_feedback_rear_color[3] = rgb_color;
}*/

// Lights don't work properly because of difference in foward voltage for different colors. Red is the only color that lights up to any noticable degree
void output_feedback_lights_init(void)
{
//P3.1/TA1.0
	///LED_1
	P3DIR |= BIT1;	//Set as output
//P3.2/TA1.1
	///LED_2
	P3DIR |= BIT2;	//Set as output
//P3.3/TA1.2
	///LED_3
	P3DIR |= BIT3;	//Set as output
//P3.4/TA0.0
	///R_CTRL
	P3DIR |= BIT4;	//Set as output
//P3.5/TA0.1
	///G_CTRL
	P3DIR |= BIT5;	//Set as output
//P3.6/TA0.2
	///B_CTRL
	P3DIR |= BIT6;	//Set as output
// Initialize LED's to off
	P3OUT &= ~( BIT3 + BIT2 + BIT1 );
// Make all debug LED's red
	P3OUT |= ( BIT4);
	P3OUT &= ~( BIT5 + BIT6 );
}
void output_feedback_lights_front_on(void)
{
	P3OUT |= ( BIT1 );
}
void output_feedback_lights_front_off(void)
{
	P3OUT &= ~( BIT1 );
}
void output_feedback_lights_middle_on(void)
{
	P3OUT |= ( BIT2 );
}
void output_feedback_lights_middle_off(void)
{
	P3OUT &= ~( BIT2 );
}
void output_feedback_lights_back_on(void)
{
	P3OUT |= ( BIT3 );
}
void output_feedback_lights_back_off(void)
{
	P3OUT &= ~( BIT3 );
}

//-----------------------------------------------------------
//-----------------------------------------------------------
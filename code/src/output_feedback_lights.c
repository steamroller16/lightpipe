//-----------------------------------------------------------
//-----------------------------------------------------------
// output_feedback_lights.c
//-----------------------------------------------------------
// Accepts RGB values, {[0,255],[0,255],[0,255]}
void output_feedback_lights_init(void)
{
	output_feedback_lights_set_color(0,0,0);
}
void output_feedback_lights_set_color(int R, int G, int B)
{
	main_feedback_red_on_time = R/255*65535;
	main_feedback_red_off_time = 65535-red_on_time;
	main_feedback_green_on_time = G/255*65535;
	main_feedback_green_off_time = 65535-green_on_time;
	main_feedback_blue_on_time = B/255*65535;
	main_feedback_blue_off_time = 65535-blue_on_time;
}
//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------
//-----------------------------------------------------------
// output_feedback_lights.c
//-----------------------------------------------------------
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
}
//-----------------------------------------------------------
//-----------------------------------------------------------
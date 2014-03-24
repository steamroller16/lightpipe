//-----------------------------------------------------------
//-----------------------------------------------------------
// sensor_battery_voltage.c
//-----------------------------------------------------------
// Read the battery voltage from the ADC
int sensor_battery_voltage_measure(void)
{
	util_adc_start(SENSOR_BATTERY_VOLTAGE_ADC_CHANNEL);
	return(util_adc_read(void));
}
// Respond to measured battery voltage
int sensor_battery_voltage_diagnose(int voltage)
{
	if(voltage <= SENSOR_BATTERY_VOLTAGE_CRISIS_VOLTAGE)
	{
		// *enter crisis mode*
		// brake lights are flashing nominally at night, and double flash when activated
		// signal duty cycle is reduced
		// feedback LED (FRONT) flashes
		output_feedback_lights_set_front_color({255,0,0});
	}
	else
	{
		// Battery OK
		// Update batt level display on feedback LED (FRONT)
		int offset = (voltage - SENSOR_BATTERY_VOLTAGE_DEPLETED)*255/(SENSOR_BATTERY_VOLTAGE_FULL - SENSOR_BATTERY_VOLTAGE_DEPLETED);
		
		output_feedback_lights_set_front_color({255-offset,offset,0});
	}
}
// 3.3V (0x3FF) <-> 2.6V (0x326)
// Green <-> Red
// [0,255,0] <-> [255,0,0]
//-----------------------------------------------------------
//-----------------------------------------------------------
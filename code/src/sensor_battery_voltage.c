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
	}
	else
	{
		// Battery OK
		// Update batt level display on feedback LED (FRONT)
	}
}

//-----------------------------------------------------------
//-----------------------------------------------------------
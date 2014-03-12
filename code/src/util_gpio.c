//-----------------------------------------------------------
//-----------------------------------------------------------
// util_adc.c
//-----------------------------------------------------------
init_adc(void)
{
	// (GLOBAL ADC SETTING)
	
	// ----Set ADC10CTL0----
	// Set sample-and-hold time to 4,8,[16],64 x ADC10CLK -> ADC10SHT_2
	// Turn on ADC10 -> ADC10ON
	// Enable ADC10 interrupt -> ADC10IE
	ADC10CTL0 = ADC10SHT_2 + ADC10ON + ADC10IE;
	
	// Initialize ADC modules
	init_sensor_light(void)
	init_sensor_batteryVoltage(void)
}
ISR_adc(void)
{
	// Turn CPU back on when exiting
	__bic_SR_register_on_exit(CPUOFF);
}
//-----------------------------------------------------------
//-----------------------------------------------------------
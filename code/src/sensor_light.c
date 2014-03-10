//-----------------------------------------------------------
//-----------------------------------------------------------
// sensor_light.c
//-----------------------------------------------------------
// Peripheral(s) used: ADC
// Pin(s) used: [A3] Read light sensor voltage (0V - 3.3V)
// Function(s): Adjust behavior in accordance with ambient lighting
//-----------------------------------------------------------
init_sensor_light(void)
{
	// ----Set ADC10AE0----
	// Set A3 as analog input (disable CMOS buffer)
	ADC10AE0 |= BIT3;
	
	// ----Set P2DIR----
	// Set as output: [P2.6, P2.7]; control light sensor gain (external pulldown)
	P2DIR |= BIT6 + BIT7;
	
	// Light sensor settings:
	// [P2.6, P2.7]
	// [0, 0] = Device Shutdown
	// [0, 1] = High-Gain Mode
	// [1, 0] = Med-Gain Mode
	// [1, 1] = Low-Gain Mode
	
	// ----Set P2DIR----
	// Set light sensor to Med-Gain Mode
	P2OUT |= BIT6;
	P2OUT &= ~BIT7;
}
sample_sensor_light(void)
{
	// Disable ADC before switching inputs
	ADC10CTL0 &= ~ENC;
	
	// ----Set ADC10CTL1----
	// Set A3 as input -> INCH_3
	ADC10CTL1 = INCH_3;
	
	// ----Set ADC10CTL0----
	// Enable and start sampling and conversion
	ADC10CTL0 |= ENC + ADC10SC;
}
check_sensor_light(int lightLevel)
{
	//Day/night threshold = 0x200
	
	//Check to see if it is night time
	if(lightLevel <= 0x200)
	{
		// Put device into night-time mode:
		// Brake lights are dimly on when dormant
		// Side signal bars (visibility lights) are dimly on when dormant
		// RGB light brightness reduced
		// Turn on road-light if available
	}
	else
	{
		// Put device into day-time mode:
		// Brake lights are off when dormant
		// Side signal bars (visibility lights) are off when dormant
		// RGB light brightness increased
		// Turn off road-light if available
	}
}
shutdown_sensor_light(void)
{
	// ----Set P2DIR----
	// Set light sensor to Device Shutdown
	P2OUT &= ~(BIT6 + BIT7);
}

// >>set_sensor_light(int command)
// Use #defines to set commands, 
// Feed those into here to do the settings on the light sensor
//-----------------------------------------------------------
//-----------------------------------------------------------
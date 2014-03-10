//-----------------------------------------------------------
//-----------------------------------------------------------
//sensor_batteryVoltage.c
//-----------------------------------------------------------
// Peripheral(s) used: ADC
// Pin(s) used: [A0] Read buffered battery voltage (0V - 3.3V)
// Function(s): Adjust behavior in accordance with decaying battery
//-----------------------------------------------------------
init_sensor_batteryVoltage(void)
{
	// ----Set ADC10AE0----
	// Set A0 as analog input (disable CMOS buffer)
	ADC10AE0 |= BIT0;
}
sample_sensor_batteryVoltage(void)
{
	// Disable ADC before switching inputs
	ADC10CTL0 &= ~ENC;
	
	// ----Set ADC10CTL1----
	// Set A0 as input -> INCH_0
	ADC10CTL1 = INCH_0;
	
	// ----Set ADC10CTL0----
	// Enable and start sampling and conversion
	ADC10CTL0 |= ENC + ADC10SC;
}
check_sensor_batteryVoltage(int batteryVoltage)
{
	// battery dies @2.5V
	// fully charged @3.6V -> buffered to 3.3V
	// 3.3V = 0x3FF
	// 2.5V = 0x307
	// 2.6V = 0x326
	// 2.7V = 0x345
	
	// Check to see if battery is about to die @2.5V
	if (batteryVoltage <= 0x307)
	{
		// Put device into hibernate:
		// Disable main LED's
		// Flash General RGB LED red
		// Beep/buzz
	}
	// Check to see if battery is getting low @2.7V
	else if (batteryVoltage <= 0x345)
	{
		// Put device into power saver mode
		// Reduce on time of signal lights and brake lights (flashing)
		// Periodic beep/buzz
	}
	else
	{
		// battery is normal
	}
}
//-----------------------------------------------------------
//-----------------------------------------------------------
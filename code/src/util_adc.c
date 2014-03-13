//-----------------------------------------------------------
// util_adc.c
//-----------------------------------------------------------
// Utility: Functions to use ADC
//-----------------------------------------------------------
void util_adc_init(void)
{
	// (GLOBAL ADC SETTING)
	
	// ----Set ADC10CTL0----
	// Set sample-and-hold time to 4,8,[16],64 x ADC10CLK -> ADC10SHT_2
	// Turn on ADC10 -> ADC10ON
	// Enable ADC10 interrupt -> ADC10IE
	// Limit ADC10 buffer reads to 50ksps -> ADC10SR
	ADC10CTL0 = ADC10SHT_2 + ADC10ON + ADC10IE + ADC10SR;
}
// ISR_adc(void)
// {
	// // Turn CPU back on when exiting
	// __bic_SR_register_on_exit(CPUOFF);
// }
void util_adc_start(int channel)
{
	// Disable conversion prior to changing input channel
	ADC10CTL0 &= ~ENC;
	// Set input channel
	switch (channel)
	{
		case 0:
		{
			ADC10CTL1 = INCH_0;
		}
		case 1:
		{
			ADC10CTL1 = INCH_1;
		}
		case 2:
		{
			ADC10CTL1 = INCH_2;
		}
		case 3:
		{
			ADC10CTL1 = INCH_3;
		}
		case 4:
		{
			ADC10CTL1 = INCH_4;
		}
		case 5:
		{
			ADC10CTL1 = INCH_5;
		}
		case 6:
		{
			ADC10CTL1 = INCH_6;
		}
		case 7:
		{
			ADC10CTL1 = INCH_7;
		}
		default:
		{
			// Unsupported ADC channel
			// util_error_sw_on(void);
			break;
		}
	}
	// Enable conversion, start conversion
	ADC10CTL0 |= ENC + ADC10SC;
}
int util_adc_read(void)
{
	// Check to see if ADC is busy
	if (ADC10CTL1 & ADC10BUSY)
	{
		// Wait for conversion to finish
		while (ADC10CTL1 & ADC10BUSY);
	}
	// Read ADC buffer
	return ADC10MEM;
}
//-----------------------------------------------------------
//-----------------------------------------------------------
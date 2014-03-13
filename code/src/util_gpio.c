//-----------------------------------------------------------
// util_gpio.c
//-----------------------------------------------------------
// Utility: Functions to manipulate digital IO pins
//-----------------------------------------------------------

//init_gpio(void)

void util_gpio_toggle(int channel, int pin)
{
	switch (channel)
	{
		case 1:
		{
			P1OUT ^= (0x01 << pin);
		}
		case 2:
		{
			P2OUT ^= (0x01 << pin);
		}
		case 3:
		{
			P3OUT ^= (0x01 << pin);
		}
		default:
		{
			// Invalid channel/pin combination
			// util_error_sw_on(void);
			break;
		}
	}
}
void util_gpio_sw_on(int channel, int pin)
{
	switch (channel)
	{
		case 1:
		{
			P1OUT |= (0x01 << pin);
		}
		case 2:
		{
			P2OUT |= (0x01 << pin);
		}
		case 3:
		{
			P3OUT |= (0x01 << pin);
		}
		default:
		{
			// Invalid channel/pin combination
			// util_error_sw_on(void);
			break;
		}
	}
}
void util_gpio_sw_off(int channel, int pin)
{
	switch (channel)
	{
		case 1:
		{
			P1OUT &= ~(0x01 << pin);
		}
		case 2:
		{
			P2OUT &= ~(0x01 << pin);
		}
		case 3:
		{
			P3OUT &= ~(0x01 << pin);
		}
		default:
		{
			// Invalid channel/pin combination
			// util_error_sw_on(void);
			break;
		}
	}
}
void util_gpio_write(int channel, int outputByte)
{
	switch (channel)
	{
		case 1:
		{
			P1OUT = outputByte;
		}
		case 2:
		{
			P2OUT = outputByte;
		}
		case 3:
		{
			P3OUT = outputByte;
		}
		default:
		{
			// Invalid channel
			// util_error_sw_on(void);
			break;
		}
	}
}
//-----------------------------------------------------------
//-----------------------------------------------------------

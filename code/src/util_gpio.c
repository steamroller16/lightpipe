//-----------------------------------------------------------
// util_gpio.c
//-----------------------------------------------------------
// Utility: Functions to manipulate digital IO pins
//-----------------------------------------------------------

//init_gpio(void)

void util_gpio_toggle(int channel, int pin)
{
	if((~util_gpio_chan_in_range(channel)) ||
		(~util_gpio_pin_in_range(pin)) 
	)
	{
		// Invalid channel/pin combination
		// util_error_sw_on(void);
		return(void);
	}
	switch (channel)
	{
		case 1:
		{
			P1OUT ^= (0x01 << pin);
			break;
		}
		case 2:
		{
			P2OUT ^= (0x01 << pin);
			break;
		}
		case 3:
		{
			P3OUT ^= (0x01 << pin);
			break;
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
	if((~util_gpio_chan_in_range(channel)) ||
		(~util_gpio_pin_in_range(pin)) 
	)
	{
		// Invalid channel/pin combination
		// util_error_sw_on(void);
		return(void);
	}
	switch (channel)
	{
		case 1:
		{
			P1OUT |= (0x01 << pin);
			break;
		}
		case 2:
		{
			P2OUT |= (0x01 << pin);
			break;
		}
		case 3:
		{
			P3OUT |= (0x01 << pin);
			break;
		}
		default:
		{
			// util_error_sw_on(void);
			break;
		}
	}
}
void util_gpio_sw_off(int channel, int pin)
{
	if((~util_gpio_chan_in_range(channel)) ||
		(~util_gpio_pin_in_range(pin)) 
	)
	{
		// Invalid channel/pin combination
		// util_error_sw_on(void);
		return(void);
	}
	switch (channel)
	{
		case 1:
		{
			P1OUT &= ~(0x01 << pin);
			break;
		}
		case 2:
		{
			P2OUT &= ~(0x01 << pin);
			break;
		}
		case 3:
		{
			P3OUT &= ~(0x01 << pin);
			break;
		}
		default:
		{
			// util_error_sw_on(void);
			break;
		}
	}
}
void util_gpio_write(int channel, int outputByte)
{
	if(~util_gpio_chan_in_range(channel))
	{
		// Invalid channel
		// util_error_sw_on(void);
		return(void);
	}
	switch (channel)
	{
		case 1:
		{
			P1OUT = outputByte;
			break;
		}
		case 2:
		{
			P2OUT = outputByte;
			break;
		}
		case 3:
		{
			P3OUT = outputByte;
			break;
		}
		default:
		{
			// util_error_sw_on(void);
			break;
		}
	}
}
int util_gpio_pin_in_range(int pin)
{
	if((pin >= MIN_PIN_NUM) && (pin <= MAX_PIN_NUM))
	{
		// Pin within range
		return(1);
	}
	else
	{
		// Invalid Pin
		return(0);
	}
}
int util_gpio_chan_in_range(int channel)
{
	if((channel >= MIN_CHAN_NUM) && (channel <= MAX_CHAN_NUM))
	{
		// Channel within range
		return(1);
	}
	else
	{
		// Invalid Channel
		return(0);
	}
}
//-----------------------------------------------------------
//-----------------------------------------------------------

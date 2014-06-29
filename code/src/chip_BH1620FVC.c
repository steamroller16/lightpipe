//-----------------------------------------------------------
//-----------------------------------------------------------
// chip_BH1620FVC.c
//-----------------------------------------------------------
#include "chip_BH1620FVC.h"
// #include "pins.h"
#include "util_adc.h"
//-----------------------------------------------------------
// Make sure GPIO pins have been set to output mode before using
//-----------------------------------------------------------

void chip_BH1620FVC_init(void)
{
	chip_BH1620FVC_write(CHIP_BH1620FVC_HIGH_GAIN);
}
void chip_BH1620FVC_write(char state)
{
	switch (state)
	{
		case CHIP_BH1620FVC_SHUTDOWN:
		{
			P2OUT &= ~( BIT6 + BIT7 );
		}
		case CHIP_BH1620FVC_HIGH_GAIN:
		{
			P2OUT |= ( BIT6 );
			P2OUT &= ~( BIT7 );
		}
		case CHIP_BH1620FVC_MED_GAIN:
		{
			P2OUT &= ~( BIT6 );
			P2OUT |= ( BIT7 );
		}
		case CHIP_BH1620FVC_LOW_GAIN:
		{
			P2OUT |= ( BIT6 + BIT7 );
		}
		case default:
		{
			break;
		}
	}
}
int chip_BH1620FVC_read(void)
{
	return util_adc_read(CHIP_BH1620FVC_ADC_CHANNEL);
}
//-----------------------------------------------------------
//-----------------------------------------------------------
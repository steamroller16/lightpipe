//-----------------------------------------------------------
//-----------------------------------------------------------
// sensor_touch.c
//-----------------------------------------------------------
void sensor_touch_adj_brightness(signed int adjustment_val)
{
	if(adjustment_val > 0)
	{
		// Set middle color to green to indicate increase
		output_feedback_lights_set_middle_color({0, 255, 0});
	}
	else
	{
		// Set middle color to red to indicate decrease
		output_feedback_lights_set_middle_color({255, 0, 0});
	}
	output_signal_lights_adj_brightness(adjustment_val);
	output_brake_lights_adj_brightness(adjustment_val);
	
	// Turn middle feedback light off
	output_feedback_lights_set_middle_color({0, 0, 0});
}

// Main touch input detected.
// If device turn signal triggered, untrigger.
// If device turn signal is not triggered, trigger.
void sensor_touch_1_isr(void)
{
	// Set middle color to white to indicate a touch event
	output_feedback_lights_set_middle_color({255, 255, 255});
	// If turn signal is currently on
	if(main_turnsignal_is_on)
	{
		// Turn signal -> off
		main_turnsignal_is_on = 0;
		main_go_to_sleep(void);
	}
	// If turn signal is currently off
	else
	{
		// Turn signal -> on
		main_turnsignal_is_on = 1;
	}
}

// Auxillary touch input detected. Functionality depends on orientation.
void sensor_touch_2_isr(void)
{
	if(sensor_accelerometer_module_is_right_hand(void));
	{
		// Decrease brightness
		sensor_touch_adj_brightness(-SENSOR_TOUCH_BRIGHTNESS_ADJ);
	}
	else
	{
		// Increase brightness
		sensor_touch_adj_brightness(SENSOR_TOUCH_BRIGHTNESS_ADJ);
	}
}

//Auxillary touch input detected. Functionality depends on orientation.
void sensor_touch_3_isr(void)
{
	if(sensor_accelerometer_module_is_right_hand(void));
	{
		// Increase brightness
		sensor_touch_adj_brightness(SENSOR_TOUCH_BRIGHTNESS_ADJ);
	}
	else
	{
		// Decrease brightness
		sensor_touch_adj_brightness(-SENSOR_TOUCH_BRIGHTNESS_ADJ);
	}
}

//-----------------------------------------------------------
#pragma vector=PORT2_VECTOR
__interrupt void PORT2_ISR(void)
// void sensor_touch_port2_isr(void)
{
	switch(P2IFG)
	{
		case BIT0: 			//P2.0 Interrupt
		{					//Accelerometer interrupt
			// WHAT TO DO HERE, SAM???
			sensor_accelerometer_isr(void)
			P2IFG &= ~BIT0;
			break;
		}
		case BIT1: 			//P2.1 Interrupt
		{					//Main touch input
			sensor_touch_1_isr(void)
			P2IFG &= ~BIT1;
			break;
		}
		case BIT2: 			//P2.2 Interrupt
		{
			sensor_touch_2_isr(void)
			P2IFG &= ~BIT2;
			break;
		}
		case BIT3: 			//P2.3 Interrupt
		{
			sensor_touch_3_isr(void)
			P2IFG &= ~BIT3;
			break;
		}
		case BIT4: break;	//P2.4 Interrupt
		case BIT5: break;	//P2.5 Interrupt
		case BIT6: break;	//P2.6 Interrupt
		case BIT7: break;	//P2.7 Interrupt
	}
}
//-----------------------------------------------------------
//-----------------------------------------------------------
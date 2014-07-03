//-----------------------------------------------------------
//-----------------------------------------------------------
// analyze_accel.c
//-----------------------------------------------------------
// accelerometer: each reading, check to see what the acceleration is [-x dir for this geometry]. if the forward acceleration is greater than a preset threshold, then the bike is starting from a stop. When a person stops, the acceleration goes negative, goes to zero, goes positive, then back to zero (assuming no further oscillations). Therefore, the setting of that threshold prevents spurious brake light flickering at a stop.
char analyze_accel_xyz[3];

signed int analyze_accel (signed int )

// Calculate a rolling average over a long time interval.
// This long average provides the baseline acceleration.
int baseline = 0;

//	Acceleration greater than a threshold, measured from the baseline, indicates pedaling
int delta_pedal = 0.1

// 	Acceleration less than a different threshold, measured  from the baseline indicates braking
int delta_brake = 0.1


if (baseline)

// Calculate a rolling average over a short timer interval.
// This short average 
// If the short average differs from the long average by greater than a threshold, then 



+






sensor_accelerometer_init

sensor_accelerometer_read_x(void)
{
	// Read from the accelerometer x dir
}

sensor_accelerometer_isr
{
	current_accel_x = sensor_accelerometer_read_x(void);
	
	if(sensor_accelerometer_is_braking)
	{
		output_brake_lights_turn_on(void);
	}
	else if(sensor_accelerometer_is_pedaling)
	{
		output_brake_lights_turn_off(void);
	}
}



int sensor_accelerometer_is_pedaling(void)
{
	// Check to see if reading is greater than accel threshold
}

int sensor_accelerometer_is_braking(void)
{
	// Check to see if reading is lower than 
}
//-----------------------------------------------------------
//-----------------------------------------------------------
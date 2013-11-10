EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:bike_light
LIBS:bike_light-cache
EELAYER 27 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 14
Title "Bike Light"
Date "10 nov 2013"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1900 1100 550  500 
U 5224C457
F0 "battery_pack" 50
F1 "battery_pack.sch" 50
F2 "PACK+" O R 2450 1200 60 
F3 "PACK-" O R 2450 1350 60 
F4 "STATUS" O R 2450 1500 60 
$EndSheet
$Sheet
S 2900 1100 550  350 
U 5224C4FA
F0 "power_regulation" 50
F1 "power_regulation.sch" 50
F2 "V_IN-" I L 2900 1350 60 
F3 "V_IN+" I L 2900 1200 60 
$EndSheet
$Sheet
S 5500 1100 1100 850 
U 5224C543
F0 "micro_proc" 50
F1 "micro_proc.sch" 50
$EndSheet
$Sheet
S 4350 1100 700  350 
U 5224C574
F0 "user_input" 50
F1 "user_input.sch" 50
F2 "SW_1" O R 5050 1200 60 
F3 "SW_2" O R 5050 1350 60 
$EndSheet
$Sheet
S 6850 1100 700  350 
U 5224C595
F0 "external_conn" 50
F1 "external_conn.sch" 50
F2 "USB" I L 6850 1200 60 
F3 "DEBUG" I L 6850 1350 60 
$EndSheet
$Sheet
S 6850 2500 700  200 
U 5224C62E
F0 "rear_brake" 50
F1 "rear_brake.sch" 50
F2 "CTRL" I L 6850 2600 60 
$EndSheet
$Sheet
S 6850 2050 700  200 
U 5224C648
F0 "rear_signal" 50
F1 "rear_signal.sch" 50
F2 "CTRL" I L 6850 2150 60 
$EndSheet
$Sheet
S 6850 2900 700  200 
U 5224C659
F0 "front_headlight" 50
F1 "front_headlight.sch" 50
F2 "CTRL" I L 6850 3000 60 
F3 "TEMP" O R 7550 3000 60 
$EndSheet
$Sheet
S 6850 1650 700  200 
U 5224C605
F0 "front_signal" 50
F1 "front_signal.sch" 50
F2 "CTRL" I L 6850 1750 60 
$EndSheet
$Sheet
S 4500 3550 900  350 
U 527B19B4
F0 "sensors_temperature" 50
F1 "sensors_temperature.sch" 50
F2 "V_Temp" O R 5400 3650 60 
$EndSheet
$Sheet
S 4500 2450 900  350 
U 527B1CA6
F0 "sensors_light" 50
F1 "sensors_light.sch" 50
F2 "V_Light" O R 5400 2550 60 
F3 "CTRL_1" I L 4500 2550 60 
F4 "CTRL_2" I L 4500 2700 60 
$EndSheet
$Sheet
S 4500 3000 900  350 
U 527C7E4B
F0 "sensors_acceleration" 50
F1 "sensors_acceleration.sch" 50
F2 "SCL" I L 4500 3100 60 
F3 "SDA" B L 4500 3250 60 
F4 "~INT" O R 5400 3100 60 
$EndSheet
$Sheet
S 4500 4100 900  650 
U 527F3E83
F0 "lights_signal_brake" 50
F1 "lights_signal_brake.sch" 50
F2 "SDI" I L 4500 4200 60 
F3 "CLK" I L 4500 4350 60 
F4 "LE" I L 4500 4500 60 
F5 "~OE" I L 4500 4650 60 
F6 "SDO" O R 5400 4200 60 
$EndSheet
$EndSCHEMATC

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
LIBS:bike_light-cache
EELAYER 27 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 11
Title "Bike Light"
Date "3 sep 2013"
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
S 4350 1650 700  350 
U 5224C5B3
F0 "sensors" 50
F1 "sensors.sch" 50
F2 "LIGHT_LEVEL" O R 5050 1750 60 
F3 "ACCEL" O R 5050 1900 60 
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
$EndSCHEMATC

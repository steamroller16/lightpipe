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
Sheet 1 11
Title "Bike Light"
Date "11 nov 2013"
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
S 5500 2250 1100 850 
U 5224C543
F0 "micro_proc" 50
F1 "micro_proc.sch" 50
$EndSheet
$Sheet
S 6700 1100 900  350 
U 5224C595
F0 "interface_usb" 50
F1 "interface_usb.sch" 50
F2 "USB" I L 6700 1200 60 
F3 "DEBUG" I L 6700 1350 60 
$EndSheet
$Sheet
S 4500 3550 900  350 
U 527B19B4
F0 "sensors_temperature" 50
F1 "sensors_temperature.sch" 50
F2 "V_TEMP" O R 5400 3650 60 
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
S 6700 1750 900  650 
U 527F3E83
F0 "output_signal_brake" 50
F1 "output_signal_brake.sch" 50
F2 "SDI" I L 6700 1850 60 
F3 "CLK" I L 6700 2000 60 
F4 "LE" I L 6700 2150 60 
F5 "~OE" I L 6700 2300 60 
F6 "SDO" O R 7600 1850 60 
$EndSheet
$Sheet
S 4500 1750 900  500 
U 527FE989
F0 "sensors_touch" 50
F1 "sensors_touch.sch" 50
F2 "TOUCH_1" O R 5400 1850 60 
F3 "TOUCH_2" O R 5400 2000 60 
F4 "TOUCH_3" O R 5400 2150 60 
$EndSheet
$Sheet
S 6700 2600 900  1200
U 528029D1
F0 "output_general" 50
F1 "output_general.sch" 50
F2 "SPEAKER" I L 6700 2700 60 
F3 "LED_1" I L 6700 2900 60 
F4 "LED_2" I L 6700 3050 60 
F5 "LED_3" I L 6700 3200 60 
F6 "RED_CTRL" I L 6700 3400 60 
F7 "BLUE_CTRL" I L 6700 3550 60 
F8 "GREEN_CTRL" I L 6700 3700 60 
$EndSheet
$EndSCHEMATC

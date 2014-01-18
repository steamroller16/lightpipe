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
$Descr A4 11693 8268
encoding utf-8
Sheet 19 19
Title ""
Date "18 jan 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1600 1450 900  700 
U 52A3795F
F0 "output_headlight" 50
F1 "output_headlight.sch" 50
F2 "SCL" I L 1600 1800 60 
F3 "SDA" B L 1600 1950 60 
F4 "BATT_IN" I L 1600 1550 60 
$EndSheet
Wire Wire Line
	1600 1850 1850 1850
Wire Wire Line
	1850 1850 1850 1800
Wire Wire Line
	1850 1800 2700 1800
Wire Wire Line
	1600 2000 1850 2000
Wire Wire Line
	1850 2000 1850 1950
Wire Wire Line
	1850 1950 2700 1950
Wire Wire Line
	1600 1600 2050 1600
Wire Wire Line
	2050 1600 2050 1550
Wire Wire Line
	2050 1550 2700 1550
Text Notes 1800 1200 0    60   ~ 0
<3.3V 3A Reg goes here>
Wire Notes Line
	1800 1250 1800 1350
$Sheet
S 1600 2500 900  200 
U 527B19B4
F0 "sensors_temperature" 50
F1 "sensors_temperature.sch" 50
F2 "V_TEMP" O R 2500 2600 60 
$EndSheet
$Sheet
S 1600 3300 900  650 
U 527F3E83
F0 "output_signal_brake" 50
F1 "output_signal_brake.sch" 50
F2 "SDI" I L 1600 3400 60 
F3 "CLK" I L 1600 3550 60 
F4 "LE" I L 1600 3700 60 
F5 "~OE" I L 1600 3850 60 
F6 "SDO" O R 2500 3400 60 
$EndSheet
Text Notes 1050 2650 0    60   ~ 0
<Done>
Text Notes 2050 3600 0    60   ~ 0
<Done>
Text Notes 1050 2900 0    60   ~ 0
This should be integrated into the headlight module somehow. \nNot sure yet what way to do that.
Wire Wire Line
	2500 2600 2600 2600
$Comp
L C C?
U 1 1 52DB415B
P 4350 2750
F 0 "C?" H 4350 2850 40  0000 L CNN
F 1 "Cap Nominal" H 4450 2650 40  0000 L CNN
F 2 "~" H 4388 2600 30  0000 C CNN
F 3 "~" H 4350 2750 60  0000 C CNN
	1    4350 2750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 52DB4161
P 4350 2500
F 0 "#PWR?" H 4350 2460 30  0001 C CNN
F 1 "+3.3V" H 4350 2610 30  0000 C CNN
F 2 "" H 4350 2500 60  0000 C CNN
F 3 "" H 4350 2500 60  0000 C CNN
	1    4350 2500
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 52DB4167
P 4350 3000
F 0 "#PWR?" H 4350 3000 40  0001 C CNN
F 1 "DGND" H 4350 2930 40  0000 C CNN
F 2 "" H 4350 3000 60  0000 C CNN
F 3 "" H 4350 3000 60  0000 C CNN
	1    4350 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2500 4350 2550
Wire Wire Line
	4350 2950 4350 3000
NoConn ~ 2600 2600
NoConn ~ 1600 3400
NoConn ~ 1600 3550
NoConn ~ 1600 3700
NoConn ~ 1600 3850
NoConn ~ 2500 3400
$EndSCHEMATC

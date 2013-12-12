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
Sheet 16 18
Title ""
Date "12 dec 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCP4706 U?
U 1 1 52A38A2D
P 2800 1150
F 0 "U?" H 2800 1150 60  0000 C CNN
F 1 "MCP4706" H 2800 100 60  0000 C CNN
F 2 "" H 2800 1150 60  0000 C CNN
F 3 "" H 2800 1150 60  0000 C CNN
	1    2800 1150
	1    0    0    -1  
$EndComp
$Comp
L XM-L2 D?
U 1 1 52A38BC7
P 5450 1600
F 0 "D?" H 5450 1500 50  0000 C CNN
F 1 "XM-L2" H 5450 1400 50  0001 C CNN
F 2 "~" H 5450 1600 60  0000 C CNN
F 3 "~" H 5450 1600 60  0000 C CNN
	1    5450 1600
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 52A39172
P 1200 1700
F 0 "C?" H 1200 1800 40  0000 L CNN
F 1 "Cap Nominal" H 1300 1600 40  0000 L CNN
F 2 "~" H 1238 1550 30  0000 C CNN
F 3 "~" H 1200 1700 60  0000 C CNN
	1    1200 1700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 52A39178
P 1200 1450
F 0 "#PWR?" H 1200 1410 30  0001 C CNN
F 1 "+3.3V" H 1200 1560 30  0000 C CNN
F 2 "" H 1200 1450 60  0000 C CNN
F 3 "" H 1200 1450 60  0000 C CNN
	1    1200 1450
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 52A3917E
P 1200 1950
F 0 "#PWR?" H 1200 1950 40  0001 C CNN
F 1 "DGND" H 1200 1880 40  0000 C CNN
F 2 "" H 1200 1950 60  0000 C CNN
F 3 "" H 1200 1950 60  0000 C CNN
	1    1200 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1450 1200 1500
Wire Wire Line
	1200 1900 1200 1950
$Comp
L DGND #PWR?
U 1 1 52A39186
P 5450 1850
F 0 "#PWR?" H 5450 1850 40  0001 C CNN
F 1 "DGND" H 5450 1780 40  0000 C CNN
F 2 "" H 5450 1850 60  0000 C CNN
F 3 "" H 5450 1850 60  0000 C CNN
	1    5450 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1800 5450 1850
Wire Wire Line
	5450 1800 5550 1800
Wire Wire Line
	5550 1800 5550 1600
Wire Wire Line
	5550 1600 5500 1600
Text HLabel 2050 1650 0    60   Input ~ 0
SCL
Text HLabel 2050 1750 0    60   BiDi ~ 0
SDA
Text HLabel 4400 1100 0    60   Input ~ 0
BATT_IN
$Comp
L DGND #PWR?
U 1 1 52A391D7
P 2150 2150
F 0 "#PWR?" H 2150 2150 40  0001 C CNN
F 1 "DGND" H 2150 2080 40  0000 C CNN
F 2 "" H 2150 2150 60  0000 C CNN
F 3 "" H 2150 2150 60  0000 C CNN
	1    2150 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 1950 2150 2150
Connection ~ 2150 2050
Wire Wire Line
	2050 1650 2150 1650
Wire Wire Line
	2150 1750 2050 1750
$Comp
L +3.3V #PWR?
U 1 1 52A391FF
P 2150 1200
F 0 "#PWR?" H 2150 1160 30  0001 C CNN
F 1 "+3.3V" H 2150 1310 30  0000 C CNN
F 2 "" H 2150 1200 60  0000 C CNN
F 3 "" H 2150 1200 60  0000 C CNN
	1    2150 1200
	1    0    0    -1  
$EndComp
NoConn ~ 2150 1450
Wire Wire Line
	2150 1200 2150 1300
Wire Wire Line
	3450 1300 4400 1300
Text Notes 4600 1200 0    60   ~ 0
HP BUCK BOOST Goes here
Text Notes 5000 2100 0    60   ~ 0
3.3V 3A Headlight LED
$EndSCHEMATC
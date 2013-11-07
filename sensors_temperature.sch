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
Sheet 11 12
Title ""
Date "7 nov 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C C?
U 1 1 5279CE8C
P 1050 1250
F 0 "C?" H 1050 1350 40  0000 L CNN
F 1 "Cap Nominal" H 650 1150 40  0000 L CNN
F 2 "~" H 1088 1100 30  0000 C CNN
F 3 "~" H 1050 1250 60  0000 C CNN
	1    1050 1250
	1    0    0    -1  
$EndComp
$Comp
L MCP9701T U?
U 1 1 5279CF6F
P 2100 1250
F 0 "U?" H 2050 1650 60  0000 C CNN
F 1 "MCP9701T" H 2250 1100 60  0000 C CNN
F 2 "" H 1800 1650 60  0000 C CNN
F 3 "" H 1800 1650 60  0000 C CNN
	1    2100 1250
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5279CF8D
P 1300 850
F 0 "#PWR?" H 1300 810 30  0001 C CNN
F 1 "+3.3V" H 1300 960 30  0000 C CNN
F 2 "" H 1300 850 60  0000 C CNN
F 3 "" H 1300 850 60  0000 C CNN
	1    1300 850 
	1    0    0    -1  
$EndComp
NoConn ~ 1300 1150
NoConn ~ 1300 1250
Wire Wire Line
	2800 1050 3000 1050
Connection ~ 1300 1450
Wire Wire Line
	1050 1450 1300 1450
Wire Wire Line
	1300 1050 1050 1050
Wire Wire Line
	1300 1350 1300 1450
Wire Wire Line
	1300 1450 1300 1550
Wire Wire Line
	1300 850  1300 1050
Text HLabel 3000 1050 2    60   Output ~ 0
V_Temp
Wire Wire Line
	2900 1550 2900 1450
$Comp
L C C?
U 1 1 527B1E85
P 2450 2200
F 0 "C?" H 2450 2300 40  0000 L CNN
F 1 "Cap Nominal" H 2050 2100 40  0000 L CNN
F 2 "~" H 2488 2050 30  0000 C CNN
F 3 "~" H 2450 2200 60  0000 C CNN
	1    2450 2200
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 527B1E90
P 1450 2200
F 0 "C?" H 1450 2300 40  0000 L CNN
F 1 "Cap Nominal" H 1050 2100 40  0000 L CNN
F 2 "~" H 1488 2050 30  0000 C CNN
F 3 "~" H 1450 2200 60  0000 C CNN
	1    1450 2200
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 527B2035
P 2900 1250
F 0 "C?" H 2900 1350 40  0000 L CNN
F 1 "Cap Steadystate" H 2906 1165 40  0000 L CNN
F 2 "~" H 2938 1100 30  0000 C CNN
F 3 "~" H 2900 1250 60  0000 C CNN
	1    2900 1250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 527B2045
P 3300 1800
F 0 "C?" H 3300 1900 40  0000 L CNN
F 1 "Cap Steadystate" H 3306 1715 40  0000 L CNN
F 2 "~" H 3338 1650 30  0000 C CNN
F 3 "~" H 3300 1800 60  0000 C CNN
	1    3300 1800
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 527B2221
P 1300 1550
F 0 "#PWR?" H 1300 1550 40  0001 C CNN
F 1 "AGND" H 1300 1480 50  0000 C CNN
F 2 "" H 1300 1550 60  0000 C CNN
F 3 "" H 1300 1550 60  0000 C CNN
	1    1300 1550
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 527B2230
P 2900 1550
F 0 "#PWR?" H 2900 1550 40  0001 C CNN
F 1 "AGND" H 2900 1480 50  0000 C CNN
F 2 "" H 2900 1550 60  0000 C CNN
F 3 "" H 2900 1550 60  0000 C CNN
	1    2900 1550
	1    0    0    -1  
$EndComp
$EndSCHEMATC

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
Sheet 10 17
Title ""
Date "7 dec 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R?
U 1 1 527B1EF8
P 2650 1300
F 0 "R?" V 2730 1300 40  0000 C CNN
F 1 "Nominal" V 2657 1301 40  0000 C CNN
F 2 "~" V 2580 1300 30  0000 C CNN
F 3 "~" H 2650 1300 30  0000 C CNN
	1    2650 1300
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 527B1F07
P 4300 1050
F 0 "R?" V 4380 1050 40  0000 C CNN
F 1 "1K" V 4307 1051 40  0000 C CNN
F 2 "~" V 4230 1050 30  0000 C CNN
F 3 "~" H 4300 1050 30  0000 C CNN
	1    4300 1050
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 527B1FD5
P 1900 950
F 0 "C?" H 1900 1050 40  0000 L CNN
F 1 "Cap Nominal" H 1500 850 40  0000 L CNN
F 2 "~" H 1938 800 30  0000 C CNN
F 3 "~" H 1900 950 60  0000 C CNN
	1    1900 950 
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 527B20AA
P 4550 1000
F 0 "C?" H 4550 1100 40  0000 L CNN
F 1 "Cap Steadystate" H 4556 915 40  0000 L CNN
F 2 "~" H 4588 850 30  0000 C CNN
F 3 "~" H 4550 1000 60  0000 C CNN
	1    4550 1000
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 527B20B2
P 2800 1300
F 0 "R?" V 2880 1300 40  0000 C CNN
F 1 "Nominal" V 2807 1301 40  0000 C CNN
F 2 "~" V 2730 1300 30  0000 C CNN
F 3 "~" H 2800 1300 30  0000 C CNN
	1    2800 1300
	1    0    0    -1  
$EndComp
Text HLabel 4700 800  2    60   Output ~ 0
V_Light
$Comp
L AGND #PWR?
U 1 1 527B22B7
P 2950 1600
F 0 "#PWR?" H 2950 1600 40  0001 C CNN
F 1 "AGND" H 2950 1530 50  0000 C CNN
F 2 "" H 2950 1600 60  0000 C CNN
F 3 "" H 2950 1600 60  0000 C CNN
	1    2950 1600
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 527B22C6
P 4300 1350
F 0 "#PWR?" H 4300 1350 40  0001 C CNN
F 1 "AGND" H 4300 1280 50  0000 C CNN
F 2 "" H 4300 1350 60  0000 C CNN
F 3 "" H 4300 1350 60  0000 C CNN
	1    4300 1350
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 527B22E1
P 2950 700
F 0 "#PWR?" H 2950 660 30  0001 C CNN
F 1 "+3.3V" H 2950 810 30  0000 C CNN
F 2 "" H 2950 700 60  0000 C CNN
F 3 "" H 2950 700 60  0000 C CNN
	1    2950 700 
	1    0    0    -1  
$EndComp
Text HLabel 2550 900  0    60   Input ~ 0
CTRL_1
Text HLabel 2550 1000 0    60   Input ~ 0
CTRL_2
Wire Wire Line
	4150 800  4700 800 
Wire Wire Line
	2950 1100 2950 1550
Wire Wire Line
	2950 1550 2950 1600
Wire Wire Line
	2950 700  2950 750 
Wire Wire Line
	2950 750  2950 800 
Wire Wire Line
	4300 1300 4300 1350
Wire Wire Line
	1900 750  2950 750 
Connection ~ 2950 750 
Wire Wire Line
	2550 900  2650 900 
Wire Wire Line
	2650 900  2950 900 
Wire Wire Line
	2550 1000 2800 1000
Wire Wire Line
	2800 1000 2950 1000
Wire Wire Line
	2650 1050 2650 900 
Connection ~ 2650 900 
Wire Wire Line
	2800 1050 2800 1000
Connection ~ 2800 1000
Wire Wire Line
	1900 1550 2650 1550
Wire Wire Line
	2650 1550 2800 1550
Wire Wire Line
	2800 1550 2950 1550
Connection ~ 2950 1550
Connection ~ 2800 1550
Wire Wire Line
	1900 1150 1900 1550
Connection ~ 2650 1550
Wire Wire Line
	4300 1300 4550 1300
Wire Wire Line
	4550 1300 4550 1200
$Comp
L BH1620FVC U?
U 1 1 529265A6
P 3550 650
F 0 "U?" H 3550 650 60  0000 C CNN
F 1 "BH1620FVC" H 3550 100 60  0000 C CNN
F 2 "~" H 3250 1050 60  0000 C CNN
F 3 "~" H 3250 1050 60  0000 C CNN
	1    3550 650 
	1    0    0    -1  
$EndComp
$EndSCHEMATC

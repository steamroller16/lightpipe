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
Sheet 12 12
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
L ZENER D?
U 1 1 527B1D62
P 4850 1000
F 0 "D?" H 4850 1100 50  0000 C CNN
F 1 "ZENER 3.3V" H 4850 900 40  0000 C CNN
F 2 "~" H 4850 1000 60  0000 C CNN
F 3 "~" H 4850 1000 60  0000 C CNN
	1    4850 1000
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 527B1EF0
P 4250 2150
F 0 "C?" H 4250 2250 40  0000 L CNN
F 1 "Cap Nominal" H 3850 2050 40  0000 L CNN
F 2 "~" H 4288 2000 30  0000 C CNN
F 3 "~" H 4250 2150 60  0000 C CNN
	1    4250 2150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 527B1EF8
P 4350 1550
F 0 "R?" V 4430 1550 40  0000 C CNN
F 1 "Nominal" V 4357 1551 40  0000 C CNN
F 2 "~" V 4280 1550 30  0000 C CNN
F 3 "~" H 4350 1550 30  0000 C CNN
	1    4350 1550
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 527B1F07
P 4600 1050
F 0 "R?" V 4680 1050 40  0000 C CNN
F 1 "1K" V 4607 1051 40  0000 C CNN
F 2 "~" V 4530 1050 30  0000 C CNN
F 3 "~" H 4600 1050 30  0000 C CNN
	1    4600 1050
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 527B1FD5
P 3450 1950
F 0 "C?" H 3450 2050 40  0000 L CNN
F 1 "Cap Nominal" H 3050 1850 40  0000 L CNN
F 2 "~" H 3488 1800 30  0000 C CNN
F 3 "~" H 3450 1950 60  0000 C CNN
	1    3450 1950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 527B20AA
P 5100 1000
F 0 "C?" H 5100 1100 40  0000 L CNN
F 1 "Cap Steadystate" H 5106 915 40  0000 L CNN
F 2 "~" H 5138 850 30  0000 C CNN
F 3 "~" H 5100 1000 60  0000 C CNN
	1    5100 1000
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 527B20B2
P 4150 1550
F 0 "R?" V 4230 1550 40  0000 C CNN
F 1 "Nominal" V 4157 1551 40  0000 C CNN
F 2 "~" V 4080 1550 30  0000 C CNN
F 3 "~" H 4150 1550 30  0000 C CNN
	1    4150 1550
	1    0    0    -1  
$EndComp
Text HLabel 5200 800  2    60   Output ~ 0
V_Light
$Comp
L BH1620FVC U?
U 1 1 527B212A
P 3750 1000
F 0 "U?" H 3700 1400 60  0000 C CNN
F 1 "BH1620FVC" H 3900 850 60  0000 C CNN
F 2 "~" H 3450 1400 60  0000 C CNN
F 3 "~" H 3450 1400 60  0000 C CNN
	1    3750 1000
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 527B22B7
P 2950 1300
F 0 "#PWR?" H 2950 1300 40  0001 C CNN
F 1 "AGND" H 2950 1230 50  0000 C CNN
F 2 "" H 2950 1300 60  0000 C CNN
F 3 "" H 2950 1300 60  0000 C CNN
	1    2950 1300
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR?
U 1 1 527B22C6
P 4850 1350
F 0 "#PWR?" H 4850 1350 40  0001 C CNN
F 1 "AGND" H 4850 1280 50  0000 C CNN
F 2 "" H 4850 1350 60  0000 C CNN
F 3 "" H 4850 1350 60  0000 C CNN
	1    4850 1350
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
Wire Wire Line
	4450 800  5200 800 
Wire Wire Line
	2950 1100 2950 1300
Wire Wire Line
	2950 700  2950 800 
Wire Wire Line
	4600 1300 5100 1300
Wire Wire Line
	5100 1300 5100 1200
Wire Wire Line
	4850 1200 4850 1350
Connection ~ 4850 1300
$EndSCHEMATC

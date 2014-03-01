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
Sheet 6 16
Title ""
Date "1 mar 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MMA7660FC U32
U 1 1 527C80D0
P 2300 1200
F 0 "U32" H 2300 1200 60  0000 C CNN
F 1 "MMA7660FC" H 2300 250 60  0000 C CNN
F 2 "" H 2300 1200 60  0000 C CNN
F 3 "" H 2300 1200 60  0000 C CNN
	1    2300 1200
	1    0    0    -1  
$EndComp
$Comp
L R R20
U 1 1 527C8316
P 3200 950
F 0 "R20" V 3280 950 40  0000 C CNN
F 1 "Nominal" V 3207 951 40  0000 C CNN
F 2 "~" V 3130 950 30  0000 C CNN
F 3 "~" H 3200 950 30  0000 C CNN
	1    3200 950 
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 527C831C
P 1100 1350
F 0 "C6" H 1100 1450 40  0000 L CNN
F 1 "Cap Nominal" H 700 1250 40  0000 L CNN
F 2 "~" H 1138 1200 30  0000 C CNN
F 3 "~" H 1100 1350 60  0000 C CNN
	1    1100 1350
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 527C8323
P 1100 1950
F 0 "C7" H 1100 2050 40  0000 L CNN
F 1 "Cap Nominal" H 700 1850 40  0000 L CNN
F 2 "~" H 1138 1800 30  0000 C CNN
F 3 "~" H 1100 1950 60  0000 C CNN
	1    1100 1950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR022
U 1 1 527C8347
P 1250 1150
F 0 "#PWR022" H 1250 1110 30  0001 C CNN
F 1 "+3.3V" H 1250 1260 30  0000 C CNN
F 2 "" H 1250 1150 60  0000 C CNN
F 3 "" H 1250 1150 60  0000 C CNN
	1    1250 1150
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR023
U 1 1 527C8356
P 1700 1450
F 0 "#PWR023" H 1700 1450 40  0001 C CNN
F 1 "DGND" H 1700 1380 40  0000 C CNN
F 2 "" H 1700 1450 60  0000 C CNN
F 3 "" H 1700 1450 60  0000 C CNN
	1    1700 1450
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR024
U 1 1 527C83EE
P 1700 2050
F 0 "#PWR024" H 1700 2050 40  0001 C CNN
F 1 "AGND" H 1700 1980 50  0000 C CNN
F 2 "" H 1700 2050 60  0000 C CNN
F 3 "" H 1700 2050 60  0000 C CNN
	1    1700 2050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR025
U 1 1 527C8426
P 1250 1750
F 0 "#PWR025" H 1250 1710 30  0001 C CNN
F 1 "+3.3V" H 1250 1860 30  0000 C CNN
F 2 "" H 1250 1750 60  0000 C CNN
F 3 "" H 1250 1750 60  0000 C CNN
	1    1250 1750
	1    0    0    -1  
$EndComp
$Comp
L R R21
U 1 1 527C8433
P 3350 950
F 0 "R21" V 3430 950 40  0000 C CNN
F 1 "Nominal" V 3357 951 40  0000 C CNN
F 2 "~" V 3280 950 30  0000 C CNN
F 3 "~" H 3350 950 30  0000 C CNN
	1    3350 950 
	1    0    0    -1  
$EndComp
Text HLabel 3500 1300 2    60   Input ~ 0
SCL
Text HLabel 3500 1400 2    60   BiDi ~ 0
SDA
Text HLabel 3500 1500 2    60   Output ~ 0
~INT
$Comp
L +3.3V #PWR026
U 1 1 527C85AB
P 3200 650
F 0 "#PWR026" H 3200 610 30  0001 C CNN
F 1 "+3.3V" H 3200 760 30  0000 C CNN
F 2 "" H 3200 650 60  0000 C CNN
F 3 "" H 3200 650 60  0000 C CNN
	1    3200 650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1300 3500 1300
Connection ~ 1700 1400
Wire Wire Line
	1700 2000 1500 2000
Wire Wire Line
	1500 2000 1500 2150
Wire Wire Line
	1500 2150 1100 2150
Connection ~ 1700 2000
Connection ~ 1700 1900
Connection ~ 1700 1800
Wire Wire Line
	1700 1700 1700 2050
Wire Wire Line
	1500 1600 1700 1600
Wire Wire Line
	1500 1750 1500 1600
Wire Wire Line
	1100 1750 1500 1750
Wire Wire Line
	1700 1400 1700 1450
Wire Wire Line
	1450 1300 1700 1300
Wire Wire Line
	1450 1150 1450 1300
Wire Wire Line
	1100 1150 1450 1150
Wire Wire Line
	1450 1550 1100 1550
Wire Wire Line
	1450 1400 1450 1550
Wire Wire Line
	1700 1400 1450 1400
Wire Wire Line
	2900 1400 3500 1400
Wire Wire Line
	3200 1200 3200 1300
Connection ~ 3200 1300
Wire Wire Line
	3350 1200 3350 1400
Connection ~ 3350 1400
Wire Wire Line
	2900 1500 3500 1500
Wire Wire Line
	3200 650  3200 700 
Wire Wire Line
	3200 700  3350 700 
Connection ~ 1250 1150
Connection ~ 1250 1750
$Comp
L DGND #PWR027
U 1 1 52B5F4D4
P 1400 2400
F 0 "#PWR027" H 1400 2400 40  0001 C CNN
F 1 "DGND" H 1400 2330 40  0000 C CNN
F 2 "" H 1400 2400 60  0000 C CNN
F 3 "" H 1400 2400 60  0000 C CNN
	1    1400 2400
	1    0    0    -1  
$EndComp
$Comp
L AGND #PWR028
U 1 1 52B5F4DA
P 1600 2400
F 0 "#PWR028" H 1600 2400 40  0001 C CNN
F 1 "AGND" H 1600 2330 50  0000 C CNN
F 2 "" H 1600 2400 60  0000 C CNN
F 3 "" H 1600 2400 60  0000 C CNN
	1    1600 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2400 1400 2350
Wire Wire Line
	1400 2350 1600 2350
Wire Wire Line
	1600 2350 1600 2400
$EndSCHEMATC

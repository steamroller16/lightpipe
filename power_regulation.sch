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
Sheet 13 16
Title ""
Date "3 feb 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L R R45
U 1 1 5225739D
P 4150 1950
F 0 "R45" V 4230 1950 40  0000 C CNN
F 1 "700" V 4157 1951 40  0000 C CNN
F 2 "~" V 4080 1950 30  0000 C CNN
F 3 "~" H 4150 1950 30  0000 C CNN
	1    4150 1950
	-1   0    0    1   
$EndComp
$Comp
L LM3668 U43
U 1 1 529A2E0E
P 2200 2000
F 0 "U43" H 2550 2600 60  0000 C CNN
F 1 "LM3668" H 1800 2600 60  0000 C CNN
F 2 "" H 2200 1950 60  0000 C CNN
F 3 "" H 2200 1950 60  0000 C CNN
	1    2200 2000
	1    0    0    -1  
$EndComp
$Comp
L CP1 C25
U 1 1 529A2E1F
P 1450 1150
F 0 "C25" H 1500 1250 50  0000 L CNN
F 1 "10uF" H 1500 1050 50  0000 L CNN
F 2 "~" H 1450 1150 60  0000 C CNN
F 3 "~" H 1450 1150 60  0000 C CNN
	1    1450 1150
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L2
U 1 1 529A2E2E
P 1050 1750
F 0 "L2" V 1000 1750 40  0000 C CNN
F 1 "2.2uH" V 1150 1750 40  0000 C CNN
F 2 "~" H 1050 1750 60  0000 C CNN
F 3 "~" H 1050 1750 60  0000 C CNN
	1    1050 1750
	-1   0    0    1   
$EndComp
$Comp
L CP1 C26
U 1 1 529A2E3D
P 3800 1900
F 0 "C26" H 3850 2000 50  0000 L CNN
F 1 "22uF" H 3850 1800 50  0000 L CNN
F 2 "~" H 3800 1900 60  0000 C CNN
F 3 "~" H 3800 1900 60  0000 C CNN
	1    3800 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 850  2300 850 
Wire Wire Line
	2100 2850 2100 2900
Wire Wire Line
	2100 2900 2300 2900
Wire Wire Line
	2200 2850 2200 3050
Connection ~ 2200 2900
Wire Wire Line
	2300 2900 2300 2850
Wire Wire Line
	1450 2300 1400 2300
Wire Wire Line
	1400 2300 1400 2350
Wire Wire Line
	3800 2100 3800 2700
Wire Wire Line
	2950 1800 3050 1800
Wire Wire Line
	3050 1800 3050 1700
Connection ~ 3050 1700
Wire Wire Line
	1350 2200 1450 2200
Wire Wire Line
	2950 2050 3000 2050
Wire Wire Line
	3000 2050 3000 2100
Wire Wire Line
	2950 2300 3050 2300
Wire Wire Line
	1450 1450 1450 1350
Connection ~ 1450 850 
Text HLabel 4250 1700 2    60   Output ~ 0
3.3V_600mA
Text Notes 4950 2500 2    60   ~ 0
Indicator LED
Text HLabel 1350 850  0    60   Input ~ 0
BATT_IN
Wire Wire Line
	1450 850  1450 950 
Wire Wire Line
	2300 850  2300 1150
Wire Wire Line
	2100 1150 2100 850 
Connection ~ 2100 850 
$Comp
L DGND #PWR086
U 1 1 52A4E648
P 1400 2350
F 0 "#PWR086" H 1400 2350 40  0001 C CNN
F 1 "DGND" H 1400 2280 40  0000 C CNN
F 2 "" H 1400 2350 60  0000 C CNN
F 3 "" H 1400 2350 60  0000 C CNN
	1    1400 2350
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR087
U 1 1 52A4E64E
P 2200 3050
F 0 "#PWR087" H 2200 3050 40  0001 C CNN
F 1 "DGND" H 2200 2980 40  0000 C CNN
F 2 "" H 2200 3050 60  0000 C CNN
F 3 "" H 2200 3050 60  0000 C CNN
	1    2200 3050
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR088
U 1 1 52A4E654
P 3000 2100
F 0 "#PWR088" H 3000 2100 40  0001 C CNN
F 1 "DGND" H 3000 2030 40  0000 C CNN
F 2 "" H 3000 2100 60  0000 C CNN
F 3 "" H 3000 2100 60  0000 C CNN
	1    3000 2100
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR089
U 1 1 52A4E65A
P 3800 2700
F 0 "#PWR089" H 3800 2700 40  0001 C CNN
F 1 "DGND" H 3800 2630 40  0000 C CNN
F 2 "" H 3800 2700 60  0000 C CNN
F 3 "" H 3800 2700 60  0000 C CNN
	1    3800 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2050 1450 2050
Wire Wire Line
	1450 1700 1150 1700
Wire Wire Line
	1150 1700 1150 1450
Wire Wire Line
	1150 1450 1050 1450
$Comp
L DGND #PWR090
U 1 1 52A4E6EF
P 1450 1450
F 0 "#PWR090" H 1450 1450 40  0001 C CNN
F 1 "DGND" H 1450 1380 40  0000 C CNN
F 2 "" H 1450 1450 60  0000 C CNN
F 3 "" H 1450 1450 60  0000 C CNN
	1    1450 1450
	1    0    0    -1  
$EndComp
Text HLabel 3050 2300 2    60   Input ~ 0
BATT_IN
Wire Wire Line
	4150 2650 3800 2650
Connection ~ 3800 2650
Connection ~ 3800 1700
Wire Wire Line
	2950 1700 4250 1700
Connection ~ 4150 1700
Text HLabel 1350 2200 0    60   Input ~ 0
PWR_EN
$Comp
L LED_GENERIC_SMD D37
U 1 1 52B2DEF7
P 4150 2450
F 0 "D37" H 4150 2550 50  0000 C CNN
F 1 "LED_GENERIC_SMD" H 4150 2300 50  0001 C CNN
F 2 "~" H 4150 2450 60  0000 C CNN
F 3 "~" H 4150 2450 60  0000 C CNN
	1    4150 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 2200 4150 2250
Text Notes 4350 2600 0    60   ~ 0
1.9V @ 2mA
$EndSCHEMATC

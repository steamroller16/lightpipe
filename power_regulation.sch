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
Sheet 6 15
Title ""
Date "30 nov 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +3.3V #PWR?
U 1 1 52257343
P 4800 4300
F 0 "#PWR?" H 4800 4260 30  0001 C CNN
F 1 "+3.3V" H 4800 4410 30  0000 C CNN
F 2 "" H 4800 4300 60  0000 C CNN
F 3 "" H 4800 4300 60  0000 C CNN
	1    4800 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 52257352
P 4800 5350
F 0 "#PWR?" H 4800 5350 30  0001 C CNN
F 1 "GND" H 4800 5280 30  0001 C CNN
F 2 "" H 4800 5350 60  0000 C CNN
F 3 "" H 4800 5350 60  0000 C CNN
	1    4800 5350
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5225739D
P 4800 4600
F 0 "R?" V 4880 4600 40  0000 C CNN
F 1 "500/1k" V 4807 4601 40  0000 C CNN
F 2 "~" V 4730 4600 30  0000 C CNN
F 3 "~" H 4800 4600 30  0000 C CNN
	1    4800 4600
	-1   0    0    1   
$EndComp
$Comp
L LED D?
U 1 1 522573BB
P 4800 5100
F 0 "D?" H 4800 5200 50  0000 C CNN
F 1 "LED" H 4800 5000 50  0000 C CNN
F 2 "~" H 4800 5100 60  0000 C CNN
F 3 "~" H 4800 5100 60  0000 C CNN
	1    4800 5100
	0    1    1    0   
$EndComp
Text HLabel 1550 1450 0    60   Input ~ 0
V_PACK+
$Comp
L LM3668 U?
U 1 1 529A2E0E
P 2800 4850
F 0 "U?" H 3150 5450 60  0000 C CNN
F 1 "LM3668" H 2400 5450 60  0000 C CNN
F 2 "" H 2800 4800 60  0000 C CNN
F 3 "" H 2800 4800 60  0000 C CNN
	1    2800 4850
	1    0    0    -1  
$EndComp
$Comp
L CP1 C?
U 1 1 529A2E1F
P 1250 4300
F 0 "C?" H 1300 4400 50  0000 L CNN
F 1 "10uF" H 1300 4200 50  0000 L CNN
F 2 "~" H 1250 4300 60  0000 C CNN
F 3 "~" H 1250 4300 60  0000 C CNN
	1    1250 4300
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L?
U 1 1 529A2E2E
P 1650 4750
F 0 "L?" V 1600 4750 40  0000 C CNN
F 1 "2.2uH" V 1750 4750 40  0000 C CNN
F 2 "~" H 1650 4750 60  0000 C CNN
F 3 "~" H 1650 4750 60  0000 C CNN
	1    1650 4750
	-1   0    0    1   
$EndComp
$Comp
L CP1 C?
U 1 1 529A2E3D
P 4100 4800
F 0 "C?" H 4150 4900 50  0000 L CNN
F 1 "22uF" H 4150 4700 50  0000 L CNN
F 2 "~" H 4100 4800 60  0000 C CNN
F 3 "~" H 4100 4800 60  0000 C CNN
	1    4100 4800
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR?
U 1 1 529A2E4C
P 1600 1400
F 0 "#PWR?" H 1600 1350 20  0001 C CNN
F 1 "+BATT" H 1600 1500 30  0000 C CNN
F 2 "" H 1600 1400 60  0000 C CNN
F 3 "" H 1600 1400 60  0000 C CNN
	1    1600 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 529A2E5B
P 2000 5200
F 0 "#PWR?" H 2000 5200 30  0001 C CNN
F 1 "GND" H 2000 5130 30  0001 C CNN
F 2 "" H 2000 5200 60  0000 C CNN
F 3 "" H 2000 5200 60  0000 C CNN
	1    2000 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 529A2E6A
P 2800 5900
F 0 "#PWR?" H 2800 5900 30  0001 C CNN
F 1 "GND" H 2800 5830 30  0001 C CNN
F 2 "" H 2800 5900 60  0000 C CNN
F 3 "" H 2800 5900 60  0000 C CNN
	1    2800 5900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 529A2E79
P 4100 5100
F 0 "#PWR?" H 4100 5100 30  0001 C CNN
F 1 "GND" H 4100 5030 30  0001 C CNN
F 2 "" H 4100 5100 60  0000 C CNN
F 3 "" H 4100 5100 60  0000 C CNN
	1    4100 5100
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 529A2EE3
P 4400 4400
F 0 "#PWR?" H 4400 4360 30  0001 C CNN
F 1 "+3.3V" H 4400 4510 30  0000 C CNN
F 2 "" H 4400 4400 60  0000 C CNN
F 3 "" H 4400 4400 60  0000 C CNN
	1    4400 4400
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR?
U 1 1 529A2F13
P 3650 5100
F 0 "#PWR?" H 3650 5050 20  0001 C CNN
F 1 "+BATT" H 3650 5200 30  0000 C CNN
F 2 "" H 3650 5100 60  0000 C CNN
F 3 "" H 3650 5100 60  0000 C CNN
	1    3650 5100
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR?
U 1 1 529A2F6D
P 1900 5050
F 0 "#PWR?" H 1900 5000 20  0001 C CNN
F 1 "+BATT" H 1900 5150 30  0000 C CNN
F 2 "" H 1900 5050 60  0000 C CNN
F 3 "" H 1900 5050 60  0000 C CNN
	1    1900 5050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 529A2F96
P 3800 4950
F 0 "#PWR?" H 3800 4950 30  0001 C CNN
F 1 "GND" H 3800 4880 30  0001 C CNN
F 2 "" H 3800 4950 60  0000 C CNN
F 3 "" H 3800 4950 60  0000 C CNN
	1    3800 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 529A300B
P 1250 4600
F 0 "#PWR?" H 1250 4600 30  0001 C CNN
F 1 "GND" H 1250 4530 30  0001 C CNN
F 2 "" H 1250 4600 60  0000 C CNN
F 3 "" H 1250 4600 60  0000 C CNN
	1    1250 4600
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR?
U 1 1 529A3050
P 1250 3800
F 0 "#PWR?" H 1250 3750 20  0001 C CNN
F 1 "+BATT" H 1250 3900 30  0000 C CNN
F 2 "" H 1250 3800 60  0000 C CNN
F 3 "" H 1250 3800 60  0000 C CNN
	1    1250 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4000 2900 4000
Connection ~ 2700 4000
Wire Wire Line
	2700 5700 2700 5750
Wire Wire Line
	2700 5750 2900 5750
Wire Wire Line
	2800 5700 2800 5900
Connection ~ 2800 5750
Wire Wire Line
	2900 5750 2900 5700
Wire Wire Line
	2050 5150 2000 5150
Wire Wire Line
	2000 5150 2000 5200
Wire Wire Line
	4100 5000 4100 5100
Wire Wire Line
	3550 4550 4400 4550
Wire Wire Line
	3550 4650 3650 4650
Wire Wire Line
	3650 4650 3650 4550
Connection ~ 3650 4550
Wire Wire Line
	1650 5050 1750 5050
Wire Wire Line
	1750 5050 1750 4900
Wire Wire Line
	1750 4900 2050 4900
Wire Wire Line
	1650 4450 1750 4450
Wire Wire Line
	1750 4450 1750 4550
Wire Wire Line
	1750 4550 2050 4550
Wire Wire Line
	2050 5050 1900 5050
Wire Wire Line
	3550 4900 3800 4900
Wire Wire Line
	3800 4900 3800 4950
Wire Wire Line
	3550 5150 3650 5150
Wire Wire Line
	3650 5150 3650 5100
Wire Wire Line
	1250 4600 1250 4500
Wire Wire Line
	1250 3800 1250 4100
Connection ~ 1250 4000
Wire Wire Line
	4100 4550 4100 4600
Wire Wire Line
	4400 4550 4400 4400
Connection ~ 4100 4550
Wire Wire Line
	4800 4300 4800 4350
Wire Wire Line
	4800 4850 4800 4900
Wire Wire Line
	4800 5300 4800 5350
Text HLabel 1550 1750 0    60   Input ~ 0
V_PACK-
$Comp
L GND #PWR?
U 1 1 529A3D87
P 1600 1800
F 0 "#PWR?" H 1600 1800 30  0001 C CNN
F 1 "GND" H 1600 1730 30  0001 C CNN
F 2 "" H 1600 1800 60  0000 C CNN
F 3 "" H 1600 1800 60  0000 C CNN
	1    1600 1800
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 529A3E81
P 2250 1400
F 0 "#PWR?" H 2250 1360 30  0001 C CNN
F 1 "+3.3V" H 2250 1510 30  0000 C CNN
F 2 "" H 2250 1400 60  0000 C CNN
F 3 "" H 2250 1400 60  0000 C CNN
	1    2250 1400
	1    0    0    -1  
$EndComp
Text HLabel 2200 1450 0    60   Output ~ 0
3.3V
Wire Wire Line
	1550 1450 1600 1450
Wire Wire Line
	1600 1450 1600 1400
Wire Wire Line
	1550 1750 1600 1750
Wire Wire Line
	1600 1750 1600 1800
Wire Wire Line
	2200 1450 2250 1450
Wire Wire Line
	2250 1450 2250 1400
Text Notes 2650 3450 0    60   ~ 0
Battery -> 3.3V
Wire Notes Line
	950  3550 5300 3550
Wire Notes Line
	5300 6050 5300 3550
Wire Notes Line
	950  6050 5300 6050
Wire Notes Line
	950  6050 950  3550
Text Notes 4350 4050 0    60   ~ 0
3.3V Indicator LED
Text Notes 1500 1100 0    60   ~ 0
Sheet I/O
Wire Notes Line
	950  1150 2600 1150
Wire Notes Line
	2600 1150 2600 2000
Wire Notes Line
	2600 2000 950  2000
Wire Notes Line
	950  2000 950  1150
$EndSCHEMATC

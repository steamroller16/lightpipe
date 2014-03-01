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
Sheet 14 17
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
L CONN_JTAG_14 U44
U 1 1 52A68398
P 4450 2100
F 0 "U44" H 4450 2100 60  0000 C CNN
F 1 "CONN_JTAG_14_2_wire" H 4450 1650 60  0000 C CNN
F 2 "" H 4450 2100 60  0000 C CNN
F 3 "" H 4450 2100 60  0000 C CNN
	1    4450 2100
	1    0    0    -1  
$EndComp
$Comp
L C C27
U 1 1 52A6994D
P 4250 1000
F 0 "C27" H 4250 1100 40  0000 L CNN
F 1 "0.1uF" H 4300 900 40  0000 L CNN
F 2 "~" H 4288 850 30  0000 C CNN
F 3 "~" H 4250 1000 60  0000 C CNN
	1    4250 1000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR085
U 1 1 52A69953
P 4250 750
F 0 "#PWR085" H 4250 710 30  0001 C CNN
F 1 "+3.3V" H 4250 860 30  0000 C CNN
F 2 "" H 4250 750 60  0000 C CNN
F 3 "" H 4250 750 60  0000 C CNN
	1    4250 750 
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR086
U 1 1 52A69959
P 4250 1250
F 0 "#PWR086" H 4250 1250 40  0001 C CNN
F 1 "DGND" H 4250 1180 40  0000 C CNN
F 2 "" H 4250 1250 60  0000 C CNN
F 3 "" H 4250 1250 60  0000 C CNN
	1    4250 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 750  4250 800 
Wire Wire Line
	4250 1200 4250 1250
$Comp
L +3.3V #PWR087
U 1 1 52A69961
P 3550 2150
F 0 "#PWR087" H 3550 2110 30  0001 C CNN
F 1 "+3.3V" H 3550 2260 30  0000 C CNN
F 2 "" H 3550 2150 60  0000 C CNN
F 3 "" H 3550 2150 60  0000 C CNN
	1    3550 2150
	1    0    0    -1  
$EndComp
NoConn ~ 3650 2250
Wire Wire Line
	3550 2150 3550 2350
Wire Wire Line
	3550 2350 3650 2350
$Comp
L DGND #PWR088
U 1 1 52A69987
P 3650 2550
F 0 "#PWR088" H 3650 2550 40  0001 C CNN
F 1 "DGND" H 3650 2480 40  0000 C CNN
F 2 "" H 3650 2550 60  0000 C CNN
F 3 "" H 3650 2550 60  0000 C CNN
	1    3650 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2450 3650 2550
NoConn ~ 5250 2450
Text HLabel 5350 2350 2    60   Output ~ 0
SBWTCK
$Comp
L CP1 C28
U 1 1 52A699A3
P 4650 1000
F 0 "C28" H 4700 1100 50  0000 L CNN
F 1 "10uF" H 4700 850 50  0000 L CNN
F 2 "~" H 4650 1000 60  0000 C CNN
F 3 "~" H 4650 1000 60  0000 C CNN
	1    4650 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2350 5350 2350
Text HLabel 5950 2250 2    60   BiDi ~ 0
SBWTDIO
$Comp
L R R46
U 1 1 52A69CB1
P 5900 1900
F 0 "R46" V 5980 1900 40  0000 C CNN
F 1 "47K" V 5907 1901 40  0000 C CNN
F 2 "~" V 5830 1900 30  0000 C CNN
F 3 "~" H 5900 1900 30  0000 C CNN
	1    5900 1900
	1    0    0    -1  
$EndComp
$Comp
L C C29
U 1 1 52A69CB7
P 5900 2550
F 0 "C29" H 5900 2650 40  0000 L CNN
F 1 "2.2 nF" H 5950 2450 40  0000 L CNN
F 2 "~" H 5938 2400 30  0000 C CNN
F 3 "~" H 5900 2550 60  0000 C CNN
	1    5900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2250 5950 2250
Wire Wire Line
	5900 2150 5900 2350
Connection ~ 5900 2250
$Comp
L +3.3V #PWR089
U 1 1 52A69CDC
P 5900 1600
F 0 "#PWR089" H 5900 1560 30  0001 C CNN
F 1 "+3.3V" H 5900 1710 30  0000 C CNN
F 2 "" H 5900 1600 60  0000 C CNN
F 3 "" H 5900 1600 60  0000 C CNN
	1    5900 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1600 5900 1650
$Comp
L DGND #PWR090
U 1 1 52A69CF0
P 5900 2800
F 0 "#PWR090" H 5900 2800 40  0001 C CNN
F 1 "DGND" H 5900 2730 40  0000 C CNN
F 2 "" H 5900 2800 60  0000 C CNN
F 3 "" H 5900 2800 60  0000 C CNN
	1    5900 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2800 5900 2750
Wire Wire Line
	4250 800  4650 800 
Wire Wire Line
	4250 1200 4650 1200
$EndSCHEMATC

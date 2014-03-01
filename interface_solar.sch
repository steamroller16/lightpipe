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
Sheet 17 17
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
L CONN_2 P17
U 1 1 531252D0
P 4450 3450
F 0 "P17" V 4400 3450 40  0000 C CNN
F 1 "SOLAR_CONN" V 4500 3450 40  0000 C CNN
F 2 "" H 4450 3450 60  0000 C CNN
F 3 "" H 4450 3450 60  0000 C CNN
	1    4450 3450
	-1   0    0    1   
$EndComp
$Comp
L DGND #PWR0119
U 1 1 531252D6
P 6500 3800
F 0 "#PWR0119" H 6500 3800 40  0001 C CNN
F 1 "DGND" H 6500 3730 40  0000 C CNN
F 2 "" H 6500 3800 60  0000 C CNN
F 3 "" H 6500 3800 60  0000 C CNN
	1    6500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3350 6500 3800
$Comp
L LED_GENERIC_SMD D32
U 1 1 531252E3
P 6300 3550
F 0 "D32" H 6300 3650 50  0000 C CNN
F 1 "LED_GENERIC_SMD" H 6300 3400 50  0001 C CNN
F 2 "~" H 6300 3550 60  0000 C CNN
F 3 "~" H 6300 3550 60  0000 C CNN
	1    6300 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3350 6500 3350
$Comp
L R R13
U 1 1 531252EC
P 5800 3550
F 0 "R13" V 5880 3550 40  0000 C CNN
F 1 "1.55K" V 5807 3551 40  0000 C CNN
F 2 "~" V 5730 3550 30  0000 C CNN
F 3 "~" H 5800 3550 30  0000 C CNN
	1    5800 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 3550 6100 3550
Connection ~ 6500 3550
Text Notes 5850 3750 0    60   ~ 0
2mA @ 1.9 V
Text HLabel 5650 4050 2    60   UnSpc ~ 0
V_OUT
Wire Wire Line
	5500 4000 5500 4050
Wire Wire Line
	5500 4050 5650 4050
Text Notes 3700 3450 0    60   ~ 0
+5.67V Max\n50mA Max
$Comp
L DIODESCH D33
U 1 1 531252DD
P 5500 3800
F 0 "D33" H 5500 3900 40  0000 C CNN
F 1 "DIODESCH" H 5500 3700 40  0000 C CNN
F 2 "~" H 5500 3800 60  0000 C CNN
F 3 "~" H 5500 3800 60  0000 C CNN
	1    5500 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 3600 5500 3550
Wire Wire Line
	4800 3550 5550 3550
Connection ~ 5500 3550
Text Label 4850 3350 0    60   ~ 0
SOLAR(-)
Text Label 4850 3550 0    60   ~ 0
SOLAR(+)
$EndSCHEMATC

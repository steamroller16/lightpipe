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
Sheet 12 18
Title ""
Date "12 jan 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L SPEAKER SP1
U 1 1 52803375
P 1350 1100
F 0 "SP1" H 1250 1350 70  0000 C CNN
F 1 "BUZZER PIEZO 25VP-P SMD" H 1300 700 70  0000 C CNN
F 2 "~" H 1350 1100 60  0000 C CNN
F 3 "~" H 1350 1100 60  0000 C CNN
	1    1350 1100
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR068
U 1 1 528035E5
P 1050 1250
F 0 "#PWR068" H 1050 1250 40  0001 C CNN
F 1 "DGND" H 1050 1180 40  0000 C CNN
F 2 "" H 1050 1250 60  0000 C CNN
F 3 "" H 1050 1250 60  0000 C CNN
	1    1050 1250
	1    0    0    -1  
$EndComp
Text HLabel 1000 1000 0    60   Input ~ 0
SPEAKER
$Comp
L R R33
U 1 1 52803610
P 3550 1650
F 0 "R33" V 3630 1650 40  0000 C CNN
F 1 "120" V 3557 1651 40  0000 C CNN
F 2 "~" V 3480 1650 30  0000 C CNN
F 3 "~" H 3550 1650 30  0000 C CNN
	1    3550 1650
	1    0    0    -1  
$EndComp
$Comp
L R R34
U 1 1 52803622
P 3550 2600
F 0 "R34" V 3630 2600 40  0000 C CNN
F 1 "120" V 3557 2601 40  0000 C CNN
F 2 "~" V 3480 2600 30  0000 C CNN
F 3 "~" H 3550 2600 30  0000 C CNN
	1    3550 2600
	1    0    0    -1  
$EndComp
$Comp
L R R35
U 1 1 5280362D
P 3550 3550
F 0 "R35" V 3630 3550 40  0000 C CNN
F 1 "120" V 3557 3551 40  0000 C CNN
F 2 "~" V 3480 3550 30  0000 C CNN
F 3 "~" H 3550 3550 30  0000 C CNN
	1    3550 3550
	1    0    0    -1  
$EndComp
$Comp
L DMN65D8L Q7
U 1 1 528037B6
P 3200 3550
F 0 "Q7" H 3200 3401 40  0000 R CNN
F 1 "DMN65D8L" H 3200 3700 40  0000 R CNN
F 2 "SOT23" H 3070 3652 29  0000 C CNN
F 3 "~" H 3200 3550 60  0000 C CNN
	1    3200 3550
	1    0    0    -1  
$EndComp
$Comp
L DMN65D8L Q9
U 1 1 528037C3
P 3500 4550
F 0 "Q9" H 3500 4401 40  0000 R CNN
F 1 "DMN65D8L" H 3500 4700 40  0000 R CNN
F 2 "SOT23" H 3370 4652 29  0000 C CNN
F 3 "~" H 3500 4550 60  0000 C CNN
	1    3500 4550
	1    0    0    -1  
$EndComp
$Comp
L DMN65D8L Q8
U 1 1 528037C9
P 3350 4050
F 0 "Q8" H 3350 3901 40  0000 R CNN
F 1 "DMN65D8L" H 3350 4200 40  0000 R CNN
F 2 "SOT23" H 3220 4152 29  0000 C CNN
F 3 "~" H 3350 4050 60  0000 C CNN
	1    3350 4050
	1    0    0    -1  
$EndComp
$Comp
L RBG_LED D35
U 1 1 52803F28
P 3400 3000
F 0 "D35" H 3400 3250 50  0000 C CNN
F 1 "RBG_LED" H 3400 2700 50  0000 C CNN
F 2 "~" H 3400 2850 60  0000 C CNN
F 3 "~" H 3400 2850 60  0000 C CNN
	1    3400 3000
	0    1    1    0   
$EndComp
$Comp
L RBG_LED D33
U 1 1 52803F35
P 3400 1100
F 0 "D33" H 3400 1350 50  0000 C CNN
F 1 "RBG_LED" H 3400 800 50  0000 C CNN
F 2 "~" H 3400 950 60  0000 C CNN
F 3 "~" H 3400 950 60  0000 C CNN
	1    3400 1100
	0    1    1    0   
$EndComp
$Comp
L RBG_LED D34
U 1 1 52803F45
P 3400 2050
F 0 "D34" H 3400 2300 50  0000 C CNN
F 1 "RBG_LED" H 3400 1750 50  0000 C CNN
F 2 "~" H 3400 1900 60  0000 C CNN
F 3 "~" H 3400 1900 60  0000 C CNN
	1    3400 2050
	0    1    1    0   
$EndComp
$Comp
L DMN65D8L Q6
U 1 1 52804046
P 2800 2750
F 0 "Q6" H 2800 2601 40  0000 R CNN
F 1 "DMN65D8L" H 2800 2900 40  0000 R CNN
F 2 "SOT23" H 2670 2852 29  0000 C CNN
F 3 "~" H 2800 2750 60  0000 C CNN
	1    2800 2750
	0    -1   -1   0   
$EndComp
$Comp
L DMN65D8L Q5
U 1 1 5280404C
P 2800 1800
F 0 "Q5" H 2800 1651 40  0000 R CNN
F 1 "DMN65D8L" H 2800 1950 40  0000 R CNN
F 2 "SOT23" H 2670 1902 29  0000 C CNN
F 3 "~" H 2800 1800 60  0000 C CNN
	1    2800 1800
	0    -1   -1   0   
$EndComp
$Comp
L DMN65D8L Q4
U 1 1 52804052
P 2800 850
F 0 "Q4" H 2800 701 40  0000 R CNN
F 1 "DMN65D8L" H 2800 1000 40  0000 R CNN
F 2 "SOT23" H 2670 952 29  0000 C CNN
F 3 "~" H 2800 850 60  0000 C CNN
	1    2800 850 
	0    -1   -1   0   
$EndComp
$Comp
L DGND #PWR069
U 1 1 528040AE
P 3300 3750
F 0 "#PWR069" H 3300 3750 40  0001 C CNN
F 1 "DGND" H 3300 3680 40  0000 C CNN
F 2 "" H 3300 3750 60  0000 C CNN
F 3 "" H 3300 3750 60  0000 C CNN
	1    3300 3750
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR070
U 1 1 528040B4
P 3450 4250
F 0 "#PWR070" H 3450 4250 40  0001 C CNN
F 1 "DGND" H 3450 4180 40  0000 C CNN
F 2 "" H 3450 4250 60  0000 C CNN
F 3 "" H 3450 4250 60  0000 C CNN
	1    3450 4250
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR071
U 1 1 528040BA
P 3600 4750
F 0 "#PWR071" H 3600 4750 40  0001 C CNN
F 1 "DGND" H 3600 4680 40  0000 C CNN
F 2 "" H 3600 4750 60  0000 C CNN
F 3 "" H 3600 4750 60  0000 C CNN
	1    3600 4750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR072
U 1 1 52804204
P 2600 650
F 0 "#PWR072" H 2600 610 30  0001 C CNN
F 1 "+3.3V" H 2600 760 30  0000 C CNN
F 2 "" H 2600 650 60  0000 C CNN
F 3 "" H 2600 650 60  0000 C CNN
	1    2600 650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 1000 1050 1000
Wire Wire Line
	1050 1200 1050 1250
Wire Wire Line
	3550 1350 3550 1400
Wire Wire Line
	3550 1900 3600 1900
Wire Wire Line
	3600 1900 3600 4350
Wire Wire Line
	3550 2300 3550 2350
Wire Wire Line
	3550 2850 3600 2850
Connection ~ 3600 2850
Wire Wire Line
	3550 3300 3550 3250
Wire Wire Line
	3550 3800 3600 3800
Connection ~ 3600 3800
Wire Wire Line
	3400 1350 3450 1350
Wire Wire Line
	3450 1350 3450 3850
Wire Wire Line
	3450 2300 3400 2300
Wire Wire Line
	3450 3250 3400 3250
Connection ~ 3450 2300
Connection ~ 3450 3250
Wire Wire Line
	3250 1350 3300 1350
Wire Wire Line
	3300 2300 3250 2300
Wire Wire Line
	3300 3250 3250 3250
Connection ~ 3300 2300
Connection ~ 3300 3250
Wire Wire Line
	3300 1350 3300 3350
Wire Wire Line
	3000 750  3400 750 
Wire Wire Line
	3400 750  3400 800 
Wire Wire Line
	3400 1750 3400 1700
Wire Wire Line
	3400 1700 3000 1700
Wire Wire Line
	3400 2700 3400 2650
Wire Wire Line
	3400 2650 3000 2650
Wire Wire Line
	2600 650  2600 750 
$Comp
L +3.3V #PWR073
U 1 1 52804290
P 2600 1600
F 0 "#PWR073" H 2600 1560 30  0001 C CNN
F 1 "+3.3V" H 2600 1710 30  0000 C CNN
F 2 "" H 2600 1600 60  0000 C CNN
F 3 "" H 2600 1600 60  0000 C CNN
	1    2600 1600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR074
U 1 1 52804296
P 2600 2550
F 0 "#PWR074" H 2600 2510 30  0001 C CNN
F 1 "+3.3V" H 2600 2660 30  0000 C CNN
F 2 "" H 2600 2550 60  0000 C CNN
F 3 "" H 2600 2550 60  0000 C CNN
	1    2600 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1600 2600 1700
Wire Wire Line
	2600 2550 2600 2650
Wire Wire Line
	2850 2000 2850 2150
Wire Wire Line
	2850 2150 2600 2150
Wire Wire Line
	2850 1050 2850 1200
Wire Wire Line
	2850 1200 2600 1200
Wire Wire Line
	2850 2950 2850 3100
Wire Wire Line
	2850 3100 2600 3100
Text HLabel 2600 1200 0    60   Input ~ 0
LED_1
Text HLabel 2600 2150 0    60   Input ~ 0
LED_2
Text HLabel 2600 3100 0    60   Input ~ 0
LED_3
Text HLabel 2600 4600 0    60   Input ~ 0
RED_CTRL
Text HLabel 2600 3600 0    60   Input ~ 0
BLUE_CTRL
Text HLabel 2600 4100 0    60   Input ~ 0
GREEN_CTRL
Wire Wire Line
	2600 3600 3000 3600
Wire Wire Line
	2600 4100 3150 4100
Wire Wire Line
	2600 4600 3300 4600
$EndSCHEMATC

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
Sheet 11 18
Title ""
Date "20 dec 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L AT42QT1011 U36
U 1 1 527FEAD6
P 2700 800
F 0 "U36" H 2700 800 60  0000 C CNN
F 1 "AT42QT1011" H 2700 0   60  0000 C CNN
F 2 "" H 2700 800 60  0000 C CNN
F 3 "" H 2700 800 60  0000 C CNN
	1    2700 800 
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR054
U 1 1 527FEAE5
P 2100 750
F 0 "#PWR054" H 2100 710 30  0001 C CNN
F 1 "+3.3V" H 2100 860 30  0000 C CNN
F 2 "" H 2100 750 60  0000 C CNN
F 3 "" H 2100 750 60  0000 C CNN
	1    2100 750 
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR055
U 1 1 527FEB03
P 2100 1950
F 0 "#PWR055" H 2100 1950 40  0001 C CNN
F 1 "DGND" H 2100 1880 40  0000 C CNN
F 2 "" H 2100 1950 60  0000 C CNN
F 3 "" H 2100 1950 60  0000 C CNN
	1    2100 1950
	1    0    0    -1  
$EndComp
$Comp
L R R27
U 1 1 527FEBAE
P 1500 900
F 0 "R27" V 1580 900 40  0000 C CNN
F 1 "10K" V 1507 901 40  0000 C CNN
F 2 "~" V 1430 900 30  0000 C CNN
F 3 "~" H 1500 900 30  0000 C CNN
	1    1500 900 
	0    -1   -1   0   
$EndComp
$Comp
L C C13
U 1 1 527FEF93
P 1800 1100
F 0 "C13" H 1700 1200 40  0000 L CNN
F 1 "22nF" H 1900 1100 40  0000 L CNN
F 2 "~" H 1838 950 30  0000 C CNN
F 3 "~" H 1800 1100 60  0000 C CNN
	1    1800 1100
	-1   0    0    1   
$EndComp
$Comp
L TOUCHPAD U37
U 1 1 527FF019
P 900 900
F 0 "U37" H 900 1000 60  0000 C CNN
F 1 "TOUCHPAD" H 900 900 60  0000 C CNN
F 2 "" H 900 900 60  0000 C CNN
F 3 "" H 900 900 60  0000 C CNN
	1    900  900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 900  1200 900 
Wire Wire Line
	1750 900  1950 900 
Wire Wire Line
	1950 900  1950 1050
Wire Wire Line
	1950 1050 2100 1050
Wire Wire Line
	1800 1300 1950 1300
Wire Wire Line
	1950 1300 1950 1150
Wire Wire Line
	1950 1150 2100 1150
Connection ~ 1800 900 
Wire Wire Line
	2100 750  2100 900 
Wire Wire Line
	2100 1450 2100 1950
Wire Wire Line
	2000 1400 2000 1300
Wire Wire Line
	2000 1300 2100 1300
Connection ~ 2100 1900
Wire Wire Line
	2000 1400 1800 1400
Wire Wire Line
	1500 1900 2100 1900
$Comp
L C C15
U 1 1 527FF8F3
P 1500 1700
F 0 "C15" H 1500 1800 40  0000 L CNN
F 1 "Cap Nominal" H 1100 1600 40  0000 L CNN
F 2 "~" H 1538 1550 30  0000 C CNN
F 3 "~" H 1500 1700 60  0000 C CNN
	1    1500 1700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR056
U 1 1 527FFACD
P 1500 1450
F 0 "#PWR056" H 1500 1410 30  0001 C CNN
F 1 "+3.3V" H 1500 1560 30  0000 C CNN
F 2 "" H 1500 1450 60  0000 C CNN
F 3 "" H 1500 1450 60  0000 C CNN
	1    1500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1450 1500 1500
Connection ~ 1800 1900
$Comp
L C C14
U 1 1 527FFCCE
P 3350 1100
F 0 "C14" H 3350 1200 40  0000 L CNN
F 1 "Cap Steadystate" H 3356 1015 40  0000 L CNN
F 2 "~" H 3388 950 30  0000 C CNN
F 3 "~" H 3350 1100 60  0000 C CNN
	1    3350 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 900  3500 900 
$Comp
L DGND #PWR057
U 1 1 527FFCF0
P 3350 1350
F 0 "#PWR057" H 3350 1350 40  0001 C CNN
F 1 "DGND" H 3350 1280 40  0000 C CNN
F 2 "" H 3350 1350 60  0000 C CNN
F 3 "" H 3350 1350 60  0000 C CNN
	1    3350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1300 3350 1350
Connection ~ 3350 900 
Text HLabel 3500 900  2    60   Output ~ 0
TOUCH_1
$Comp
L AT42QT1011 U38
U 1 1 528002DB
P 2700 2400
F 0 "U38" H 2700 2400 60  0000 C CNN
F 1 "AT42QT1011" H 2700 1600 60  0000 C CNN
F 2 "" H 2700 2400 60  0000 C CNN
F 3 "" H 2700 2400 60  0000 C CNN
	1    2700 2400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR058
U 1 1 528002E1
P 2100 2350
F 0 "#PWR058" H 2100 2310 30  0001 C CNN
F 1 "+3.3V" H 2100 2460 30  0000 C CNN
F 2 "" H 2100 2350 60  0000 C CNN
F 3 "" H 2100 2350 60  0000 C CNN
	1    2100 2350
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR059
U 1 1 528002E7
P 2100 3550
F 0 "#PWR059" H 2100 3550 40  0001 C CNN
F 1 "DGND" H 2100 3480 40  0000 C CNN
F 2 "" H 2100 3550 60  0000 C CNN
F 3 "" H 2100 3550 60  0000 C CNN
	1    2100 3550
	1    0    0    -1  
$EndComp
$Comp
L R R29
U 1 1 528002ED
P 1500 2500
F 0 "R29" V 1580 2500 40  0000 C CNN
F 1 "10K" V 1507 2501 40  0000 C CNN
F 2 "~" V 1430 2500 30  0000 C CNN
F 3 "~" H 1500 2500 30  0000 C CNN
	1    1500 2500
	0    -1   -1   0   
$EndComp
$Comp
L C C16
U 1 1 528002F3
P 1800 2700
F 0 "C16" H 1700 2800 40  0000 L CNN
F 1 "22nF" H 1900 2700 40  0000 L CNN
F 2 "~" H 1838 2550 30  0000 C CNN
F 3 "~" H 1800 2700 60  0000 C CNN
	1    1800 2700
	-1   0    0    1   
$EndComp
$Comp
L TOUCHPAD U39
U 1 1 528002F9
P 900 2500
F 0 "U39" H 900 2600 60  0000 C CNN
F 1 "TOUCHPAD" H 900 2500 60  0000 C CNN
F 2 "" H 900 2500 60  0000 C CNN
F 3 "" H 900 2500 60  0000 C CNN
	1    900  2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2500 1200 2500
Wire Wire Line
	1750 2500 1950 2500
Wire Wire Line
	1950 2500 1950 2650
Wire Wire Line
	1950 2650 2100 2650
Wire Wire Line
	1800 2900 1950 2900
Wire Wire Line
	1950 2900 1950 2750
Wire Wire Line
	1950 2750 2100 2750
Connection ~ 1800 2500
Wire Wire Line
	2100 2350 2100 2500
Wire Wire Line
	2100 3050 2100 3550
Wire Wire Line
	2000 3000 2000 2900
Wire Wire Line
	2000 2900 2100 2900
Connection ~ 2100 3500
Wire Wire Line
	2000 3000 1800 3000
Wire Wire Line
	1500 3500 2100 3500
$Comp
L C C18
U 1 1 52800317
P 1500 3300
F 0 "C18" H 1500 3400 40  0000 L CNN
F 1 "Cap Nominal" H 1100 3200 40  0000 L CNN
F 2 "~" H 1538 3150 30  0000 C CNN
F 3 "~" H 1500 3300 60  0000 C CNN
	1    1500 3300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR060
U 1 1 5280031D
P 1500 3050
F 0 "#PWR060" H 1500 3010 30  0001 C CNN
F 1 "+3.3V" H 1500 3160 30  0000 C CNN
F 2 "" H 1500 3050 60  0000 C CNN
F 3 "" H 1500 3050 60  0000 C CNN
	1    1500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3050 1500 3100
Connection ~ 1800 3500
$Comp
L C C17
U 1 1 52800325
P 3350 2700
F 0 "C17" H 3350 2800 40  0000 L CNN
F 1 "Cap Steadystate" H 3356 2615 40  0000 L CNN
F 2 "~" H 3388 2550 30  0000 C CNN
F 3 "~" H 3350 2700 60  0000 C CNN
	1    3350 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2500 3500 2500
$Comp
L DGND #PWR061
U 1 1 5280032D
P 3350 2950
F 0 "#PWR061" H 3350 2950 40  0001 C CNN
F 1 "DGND" H 3350 2880 40  0000 C CNN
F 2 "" H 3350 2950 60  0000 C CNN
F 3 "" H 3350 2950 60  0000 C CNN
	1    3350 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2900 3350 2950
Connection ~ 3350 2500
Text HLabel 3500 2500 2    60   Output ~ 0
TOUCH_2
$Comp
L AT42QT1011 U40
U 1 1 52800336
P 2700 4000
F 0 "U40" H 2700 4000 60  0000 C CNN
F 1 "AT42QT1011" H 2700 3200 60  0000 C CNN
F 2 "" H 2700 4000 60  0000 C CNN
F 3 "" H 2700 4000 60  0000 C CNN
	1    2700 4000
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR062
U 1 1 5280033C
P 2100 3950
F 0 "#PWR062" H 2100 3910 30  0001 C CNN
F 1 "+3.3V" H 2100 4060 30  0000 C CNN
F 2 "" H 2100 3950 60  0000 C CNN
F 3 "" H 2100 3950 60  0000 C CNN
	1    2100 3950
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR063
U 1 1 52800342
P 2100 5150
F 0 "#PWR063" H 2100 5150 40  0001 C CNN
F 1 "DGND" H 2100 5080 40  0000 C CNN
F 2 "" H 2100 5150 60  0000 C CNN
F 3 "" H 2100 5150 60  0000 C CNN
	1    2100 5150
	1    0    0    -1  
$EndComp
$Comp
L R R31
U 1 1 52800348
P 1500 4100
F 0 "R31" V 1580 4100 40  0000 C CNN
F 1 "10K" V 1507 4101 40  0000 C CNN
F 2 "~" V 1430 4100 30  0000 C CNN
F 3 "~" H 1500 4100 30  0000 C CNN
	1    1500 4100
	0    -1   -1   0   
$EndComp
$Comp
L C C19
U 1 1 5280034E
P 1800 4300
F 0 "C19" H 1700 4400 40  0000 L CNN
F 1 "22nF" H 1900 4300 40  0000 L CNN
F 2 "~" H 1838 4150 30  0000 C CNN
F 3 "~" H 1800 4300 60  0000 C CNN
	1    1800 4300
	-1   0    0    1   
$EndComp
$Comp
L TOUCHPAD U41
U 1 1 52800354
P 900 4100
F 0 "U41" H 900 4200 60  0000 C CNN
F 1 "TOUCHPAD" H 900 4100 60  0000 C CNN
F 2 "" H 900 4100 60  0000 C CNN
F 3 "" H 900 4100 60  0000 C CNN
	1    900  4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4100 1200 4100
Wire Wire Line
	1750 4100 1950 4100
Wire Wire Line
	1950 4100 1950 4250
Wire Wire Line
	1950 4250 2100 4250
Wire Wire Line
	1800 4500 1950 4500
Wire Wire Line
	1950 4500 1950 4350
Wire Wire Line
	1950 4350 2100 4350
Connection ~ 1800 4100
Wire Wire Line
	2100 3950 2100 4100
Wire Wire Line
	2100 4650 2100 5150
Wire Wire Line
	2000 4600 2000 4500
Wire Wire Line
	2000 4500 2100 4500
Connection ~ 2100 5100
Wire Wire Line
	2000 4600 1800 4600
Wire Wire Line
	1500 5100 2100 5100
$Comp
L C C21
U 1 1 52800372
P 1500 4900
F 0 "C21" H 1500 5000 40  0000 L CNN
F 1 "Cap Nominal" H 1100 4800 40  0000 L CNN
F 2 "~" H 1538 4750 30  0000 C CNN
F 3 "~" H 1500 4900 60  0000 C CNN
	1    1500 4900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR064
U 1 1 52800378
P 1500 4650
F 0 "#PWR064" H 1500 4610 30  0001 C CNN
F 1 "+3.3V" H 1500 4760 30  0000 C CNN
F 2 "" H 1500 4650 60  0000 C CNN
F 3 "" H 1500 4650 60  0000 C CNN
	1    1500 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4650 1500 4700
Connection ~ 1800 5100
$Comp
L C C20
U 1 1 52800380
P 3350 4300
F 0 "C20" H 3350 4400 40  0000 L CNN
F 1 "Cap Steadystate" H 3356 4215 40  0000 L CNN
F 2 "~" H 3388 4150 30  0000 C CNN
F 3 "~" H 3350 4300 60  0000 C CNN
	1    3350 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4100 3500 4100
$Comp
L DGND #PWR065
U 1 1 52800388
P 3350 4550
F 0 "#PWR065" H 3350 4550 40  0001 C CNN
F 1 "DGND" H 3350 4480 40  0000 C CNN
F 2 "" H 3350 4550 60  0000 C CNN
F 3 "" H 3350 4550 60  0000 C CNN
	1    3350 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4500 3350 4550
Connection ~ 3350 4100
Text HLabel 3500 4100 2    60   Output ~ 0
TOUCH_3
$Comp
L R R28
U 1 1 5280170F
P 1800 1650
F 0 "R28" V 1880 1650 40  0000 C CNN
F 1 "Nominal" V 1807 1651 40  0000 C CNN
F 2 "~" V 1730 1650 30  0000 C CNN
F 3 "~" H 1800 1650 30  0000 C CNN
	1    1800 1650
	1    0    0    -1  
$EndComp
$Comp
L R R30
U 1 1 52801715
P 1800 3250
F 0 "R30" V 1880 3250 40  0000 C CNN
F 1 "Nominal" V 1807 3251 40  0000 C CNN
F 2 "~" V 1730 3250 30  0000 C CNN
F 3 "~" H 1800 3250 30  0000 C CNN
	1    1800 3250
	1    0    0    -1  
$EndComp
$Comp
L R R32
U 1 1 5280171B
P 1800 4850
F 0 "R32" V 1880 4850 40  0000 C CNN
F 1 "Nominal" V 1807 4851 40  0000 C CNN
F 2 "~" V 1730 4850 30  0000 C CNN
F 3 "~" H 1800 4850 30  0000 C CNN
	1    1800 4850
	1    0    0    -1  
$EndComp
$EndSCHEMATC

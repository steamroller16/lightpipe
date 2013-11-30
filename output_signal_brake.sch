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
Sheet 12 15
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
L TLC5917IDR U?
U 1 1 527F3F09
P 2200 1350
F 0 "U?" H 2200 1350 60  0000 C CNN
F 1 "TLC5917IDR" H 2200 200 60  0000 C CNN
F 2 "" H 2200 1350 60  0000 C CNN
F 3 "" H 2200 1350 60  0000 C CNN
	1    2200 1350
	1    0    0    -1  
$EndComp
$Comp
L TLC5917IDR U?
U 1 1 527F3F18
P 2200 3650
F 0 "U?" H 2200 3650 60  0000 C CNN
F 1 "TLC5917IDR" H 2200 2500 60  0000 C CNN
F 2 "" H 2200 3650 60  0000 C CNN
F 3 "" H 2200 3650 60  0000 C CNN
	1    2200 3650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 527F4644
P 5000 3300
F 0 "R?" V 5080 3300 40  0000 C CNN
F 1 "200" V 5007 3301 40  0000 C CNN
F 2 "~" V 4930 3300 30  0000 C CNN
F 3 "~" H 5000 3300 30  0000 C CNN
	1    5000 3300
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 527F4651
P 5000 3900
F 0 "R?" V 5080 3900 40  0000 C CNN
F 1 "200" V 5007 3901 40  0000 C CNN
F 2 "~" V 4930 3900 30  0000 C CNN
F 3 "~" H 5000 3900 30  0000 C CNN
	1    5000 3900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 527F4861
P 5500 3500
F 0 "R?" V 5580 3500 40  0000 C CNN
F 1 "200" V 5507 3501 40  0000 C CNN
F 2 "~" V 5430 3500 30  0000 C CNN
F 3 "~" H 5500 3500 30  0000 C CNN
	1    5500 3500
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 527F4EBD
P 1600 2650
F 0 "#PWR?" H 1600 2650 40  0001 C CNN
F 1 "DGND" H 1600 2580 40  0000 C CNN
F 2 "" H 1600 2650 60  0000 C CNN
F 3 "" H 1600 2650 60  0000 C CNN
	1    1600 2650
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 527F4EC3
P 1600 4950
F 0 "#PWR?" H 1600 4950 40  0001 C CNN
F 1 "DGND" H 1600 4880 40  0000 C CNN
F 2 "" H 1600 4950 60  0000 C CNN
F 3 "" H 1600 4950 60  0000 C CNN
	1    1600 4950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 527F4EC9
P 1600 1300
F 0 "#PWR?" H 1600 1260 30  0001 C CNN
F 1 "+3.3V" H 1600 1410 30  0000 C CNN
F 2 "" H 1600 1300 60  0000 C CNN
F 3 "" H 1600 1300 60  0000 C CNN
	1    1600 1300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 527F4ECF
P 1600 3600
F 0 "#PWR?" H 1600 3560 30  0001 C CNN
F 1 "+3.3V" H 1600 3710 30  0000 C CNN
F 2 "" H 1600 3600 60  0000 C CNN
F 3 "" H 1600 3600 60  0000 C CNN
	1    1600 3600
	1    0    0    -1  
$EndComp
Text HLabel 1500 1650 0    60   Input ~ 0
SDI
Text HLabel 1500 1750 0    60   Input ~ 0
CLK
Text HLabel 1500 1850 0    60   Input ~ 0
LE
Text HLabel 1500 1950 0    60   Input ~ 0
~OE
Text HLabel 1450 4050 0    60   Input ~ 0
CLK
Text HLabel 1450 4150 0    60   Input ~ 0
LE
Text HLabel 1450 4250 0    60   Input ~ 0
~OE
$Comp
L R R?
U 1 1 527F54CF
P 1300 2150
F 0 "R?" V 1380 2150 40  0000 C CNN
F 1 "270" V 1307 2151 40  0000 C CNN
F 2 "~" V 1230 2150 30  0000 C CNN
F 3 "~" H 1300 2150 30  0000 C CNN
	1    1300 2150
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 527F54D5
P 1300 4450
F 0 "R?" V 1380 4450 40  0000 C CNN
F 1 "270" V 1307 4451 40  0000 C CNN
F 2 "~" V 1230 4450 30  0000 C CNN
F 3 "~" H 1300 4450 30  0000 C CNN
	1    1300 4450
	0    -1   -1   0   
$EndComp
Text HLabel 2950 4650 2    60   Output ~ 0
SDO
Text Notes 3400 600  0    60   ~ 0
Rear Turn Signal
Text Notes 4450 600  0    60   ~ 0
Rear Brake
Wire Wire Line
	2800 1500 3400 1500
Wire Wire Line
	2800 1600 3550 1600
Wire Wire Line
	3550 1600 3550 1150
Wire Wire Line
	2800 1700 3700 1700
Wire Wire Line
	3700 1700 3700 1500
Wire Wire Line
	2800 1800 3850 1800
Wire Wire Line
	3850 1800 3850 1150
Wire Wire Line
	2800 1900 4000 1900
Wire Wire Line
	4000 1900 4000 1500
Wire Wire Line
	2800 2000 4150 2000
Wire Wire Line
	4150 2000 4150 1150
Wire Wire Line
	3400 1100 3400 750 
Wire Wire Line
	3400 750  3550 750 
Wire Wire Line
	3550 750  3700 750 
Wire Wire Line
	3700 750  3850 750 
Wire Wire Line
	3850 750  4000 750 
Wire Wire Line
	4000 750  4150 750 
Wire Wire Line
	4150 750  4450 750 
Wire Wire Line
	4450 750  4750 750 
Connection ~ 3550 750 
Connection ~ 3850 750 
Wire Wire Line
	3700 1100 3700 750 
Connection ~ 3700 750 
Wire Wire Line
	4000 1100 4000 750 
Connection ~ 4000 750 
Connection ~ 4150 750 
Connection ~ 4450 750 
Wire Wire Line
	4450 1150 4450 1200
Wire Wire Line
	4750 1150 4750 1200
Wire Wire Line
	4450 1600 4450 1650
Wire Wire Line
	4750 1600 4750 1650
Wire Wire Line
	4450 2100 4450 2050
Wire Wire Line
	4750 2050 4750 2100
Wire Wire Line
	4450 2500 4300 2500
Wire Wire Line
	4300 2500 4300 2100
Wire Wire Line
	4300 2100 2800 2100
Wire Wire Line
	2800 2200 4200 2200
Wire Wire Line
	4200 2200 4200 2600
Wire Wire Line
	4200 2600 4750 2600
Wire Wire Line
	4750 2600 4750 2500
Wire Wire Line
	3400 3400 3400 3050
Wire Wire Line
	3400 3050 3550 3050
Wire Wire Line
	3550 3050 3700 3050
Wire Wire Line
	3700 3050 3850 3050
Wire Wire Line
	3850 3050 4000 3050
Wire Wire Line
	4000 3050 4150 3050
Wire Wire Line
	4150 3050 4450 3050
Wire Wire Line
	4450 3050 4750 3050
Wire Wire Line
	4750 3050 5000 3050
Wire Wire Line
	5000 3050 5300 3050
Wire Wire Line
	5300 3050 5500 3050
Connection ~ 3550 3050
Connection ~ 3850 3050
Wire Wire Line
	3400 3800 2800 3800
Wire Wire Line
	2800 3900 3550 3900
Wire Wire Line
	3550 3900 3550 3450
Wire Wire Line
	2800 4000 3700 4000
Wire Wire Line
	3700 4000 3700 3800
Wire Wire Line
	2800 4100 3850 4100
Wire Wire Line
	3850 4100 3850 3450
Wire Wire Line
	2800 4200 4000 4200
Wire Wire Line
	4000 4200 4000 3800
Wire Wire Line
	4000 3400 4000 3050
Connection ~ 4000 3050
Wire Wire Line
	3700 3400 3700 3050
Connection ~ 3700 3050
Wire Wire Line
	2800 4300 4150 4300
Wire Wire Line
	4150 4300 4150 3450
Wire Wire Line
	4450 3050 4450 3150
Wire Wire Line
	4750 3150 4750 3050
Connection ~ 4750 3050
Wire Wire Line
	4450 3550 4750 3550
Wire Wire Line
	4750 3550 5000 3550
Wire Wire Line
	4450 3650 4750 3650
Wire Wire Line
	4750 3650 5000 3650
Wire Wire Line
	4750 3650 4750 3550
Connection ~ 4750 3550
Connection ~ 4750 3650
Wire Wire Line
	4450 4050 4450 4150
Wire Wire Line
	4450 4150 4750 4150
Wire Wire Line
	4750 4150 5000 4150
Wire Wire Line
	4750 4050 4750 4150
Wire Wire Line
	4750 4150 4750 4400
Connection ~ 4750 4150
Wire Wire Line
	4750 4400 2800 4400
Wire Wire Line
	5300 3450 5300 3550
Wire Wire Line
	5500 3050 5500 3250
Wire Wire Line
	5300 3950 5400 3950
Wire Wire Line
	5400 3950 5500 3950
Wire Wire Line
	5500 3950 5500 3750
Wire Wire Line
	5400 3950 5400 4500
Wire Wire Line
	5400 4500 2800 4500
Connection ~ 5400 3950
Wire Wire Line
	1600 4650 1600 4950
Wire Wire Line
	1600 3600 1600 3800
Wire Wire Line
	1600 2650 1600 2350
Wire Wire Line
	1600 1300 1600 1500
Wire Wire Line
	1500 1650 1600 1650
Wire Wire Line
	1500 1750 1600 1750
Wire Wire Line
	1500 1850 1600 1850
Wire Wire Line
	1500 1950 1600 1950
Wire Wire Line
	1450 3950 1600 3950
Wire Wire Line
	1450 4050 1600 4050
Wire Wire Line
	1450 4150 1600 4150
Wire Wire Line
	1450 4250 1600 4250
Wire Wire Line
	1450 3950 1450 3050
Wire Wire Line
	1450 3050 2950 3050
Wire Wire Line
	2800 2350 2950 2350
Wire Wire Line
	2950 2350 2950 3050
Wire Wire Line
	1550 2150 1600 2150
Wire Wire Line
	1550 4450 1600 4450
Wire Wire Line
	1050 4400 1050 4450
Wire Wire Line
	1050 4450 1050 4650
Wire Wire Line
	1050 4650 1600 4650
Wire Wire Line
	1050 2100 1050 2150
Wire Wire Line
	1050 2150 1050 2350
Wire Wire Line
	1050 2350 1600 2350
Connection ~ 4450 3050
Connection ~ 4150 3050
Connection ~ 5300 3050
Connection ~ 5000 3050
Wire Wire Line
	2800 4650 2950 4650
Wire Notes Line
	3400 650  3400 600 
Wire Notes Line
	3400 600  4150 600 
Wire Notes Line
	4150 600  4150 650 
Wire Notes Line
	4450 650  4450 600 
Wire Notes Line
	4450 600  4750 600 
Wire Notes Line
	4750 600  4750 650 
Wire Notes Line
	4150 2950 4150 2900
Wire Notes Line
	4150 2900 3400 2900
Wire Notes Line
	3400 2900 3400 2950
Text Notes 3400 2900 0    60   ~ 0
Front Turn Signal
Wire Notes Line
	4450 2950 4450 2900
Wire Notes Line
	4450 2900 5000 2900
Wire Notes Line
	5000 2900 5000 2950
Text Notes 4450 2900 0    60   ~ 0
Side Turn Signal
Wire Notes Line
	5300 2950 5300 2900
Wire Notes Line
	5300 2900 5500 2900
Wire Notes Line
	5500 2900 5500 2950
Text Notes 5300 2900 0    60   ~ 0
Side Brake
Wire Notes Line
	900  700  900  900 
Wire Notes Line
	900  900  3100 900 
Wire Notes Line
	900  700  3100 700 
Text Notes 950  850  0    60   ~ 0
Need LED voltage high enough to drive string
Wire Notes Line
	3100 700  3100 900 
NoConn ~ 5600 1000
NoConn ~ 5700 1000
NoConn ~ 5800 1000
NoConn ~ 5900 1000
NoConn ~ 5600 1100
NoConn ~ 5700 1100
NoConn ~ 5800 1100
NoConn ~ 5900 1100
NoConn ~ 5600 900 
NoConn ~ 5700 800 
NoConn ~ 5700 900 
NoConn ~ 5800 900 
NoConn ~ 5900 900 
NoConn ~ 5800 800 
Wire Notes Line
	5700 800  5600 900 
Wire Notes Line
	5600 900  5900 900 
Wire Notes Line
	5900 900  5800 800 
Wire Notes Line
	5600 1000 5900 1000
Wire Notes Line
	5900 1000 5900 1100
Wire Notes Line
	5900 1100 5600 1100
Wire Notes Line
	5600 1100 5600 1000
Text Notes 6000 900  0    60   ~ 0
Turn Signal
Text Notes 6000 1100 0    60   ~ 0
Brake Signal
$Comp
L C C?
U 1 1 527FF632
P 1050 1900
F 0 "C?" H 1050 2000 40  0000 L CNN
F 1 "Cap Nominal" H 650 1800 40  0000 L CNN
F 2 "~" H 1088 1750 30  0000 C CNN
F 3 "~" H 1050 1900 60  0000 C CNN
	1    1050 1900
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 527FF638
P 1050 4200
F 0 "C?" H 1050 4300 40  0000 L CNN
F 1 "Cap Nominal" H 650 4100 40  0000 L CNN
F 2 "~" H 1088 4050 30  0000 C CNN
F 3 "~" H 1050 4200 60  0000 C CNN
	1    1050 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1700 1050 1500
Wire Wire Line
	1050 1500 1600 1500
Connection ~ 1050 2150
Connection ~ 1050 4450
Wire Wire Line
	1050 4000 1050 3800
Wire Wire Line
	1050 3800 1600 3800
$Comp
L LS-E63F D?
U 1 1 5289D930
P 4450 950
F 0 "D?" H 4450 1050 50  0000 C CNN
F 1 "LS-E63F" H 4450 800 50  0001 C CNN
F 2 "~" H 4450 950 60  0000 C CNN
F 3 "~" H 4450 950 60  0000 C CNN
	1    4450 950 
	0    1    1    0   
$EndComp
$Comp
L LS-E63F D?
U 1 1 5289D936
P 4750 950
F 0 "D?" H 4750 1050 50  0000 C CNN
F 1 "LS-E63F" H 4750 800 50  0001 C CNN
F 2 "~" H 4750 950 60  0000 C CNN
F 3 "~" H 4750 950 60  0000 C CNN
	1    4750 950 
	0    1    1    0   
$EndComp
$Comp
L LS-E63F D?
U 1 1 5289D93C
P 4450 1400
F 0 "D?" H 4450 1500 50  0000 C CNN
F 1 "LS-E63F" H 4450 1250 50  0001 C CNN
F 2 "~" H 4450 1400 60  0000 C CNN
F 3 "~" H 4450 1400 60  0000 C CNN
	1    4450 1400
	0    1    1    0   
$EndComp
$Comp
L LS-E63F D?
U 1 1 5289D942
P 4750 1400
F 0 "D?" H 4750 1500 50  0000 C CNN
F 1 "LS-E63F" H 4750 1250 50  0001 C CNN
F 2 "~" H 4750 1400 60  0000 C CNN
F 3 "~" H 4750 1400 60  0000 C CNN
	1    4750 1400
	0    1    1    0   
$EndComp
$Comp
L LS-E63F D?
U 1 1 5289D948
P 4450 1850
F 0 "D?" H 4450 1950 50  0000 C CNN
F 1 "LS-E63F" H 4450 1700 50  0001 C CNN
F 2 "~" H 4450 1850 60  0000 C CNN
F 3 "~" H 4450 1850 60  0000 C CNN
	1    4450 1850
	0    1    1    0   
$EndComp
$Comp
L LS-E63F D?
U 1 1 5289D94E
P 4750 1850
F 0 "D?" H 4750 1950 50  0000 C CNN
F 1 "LS-E63F" H 4750 1700 50  0001 C CNN
F 2 "~" H 4750 1850 60  0000 C CNN
F 3 "~" H 4750 1850 60  0000 C CNN
	1    4750 1850
	0    1    1    0   
$EndComp
$Comp
L LS-E63F D?
U 1 1 5289D954
P 4450 2300
F 0 "D?" H 4450 2400 50  0000 C CNN
F 1 "LS-E63F" H 4450 2150 50  0001 C CNN
F 2 "~" H 4450 2300 60  0000 C CNN
F 3 "~" H 4450 2300 60  0000 C CNN
	1    4450 2300
	0    1    1    0   
$EndComp
$Comp
L LS-E63F D?
U 1 1 5289D95A
P 4750 2300
F 0 "D?" H 4750 2400 50  0000 C CNN
F 1 "LS-E63F" H 4750 2150 50  0001 C CNN
F 2 "~" H 4750 2300 60  0000 C CNN
F 3 "~" H 4750 2300 60  0000 C CNN
	1    4750 2300
	0    1    1    0   
$EndComp
$Comp
L LY-E63F D?
U 1 1 5289E3B3
P 4150 950
F 0 "D?" H 4150 1050 50  0000 C CNN
F 1 "LY-E63F" H 4150 750 50  0001 C CNN
F 2 "~" H 4150 950 60  0000 C CNN
F 3 "~" H 4150 950 60  0000 C CNN
	1    4150 950 
	0    1    1    0   
$EndComp
$Comp
L LY-E63F D?
U 1 1 5289E3C0
P 4000 1300
F 0 "D?" H 4000 1400 50  0000 C CNN
F 1 "LY-E63F" H 4000 1100 50  0001 C CNN
F 2 "~" H 4000 1300 60  0000 C CNN
F 3 "~" H 4000 1300 60  0000 C CNN
	1    4000 1300
	0    1    1    0   
$EndComp
$Comp
L LY-E63F D?
U 1 1 5289E3C6
P 3850 950
F 0 "D?" H 3850 1050 50  0000 C CNN
F 1 "LY-E63F" H 3850 750 50  0001 C CNN
F 2 "~" H 3850 950 60  0000 C CNN
F 3 "~" H 3850 950 60  0000 C CNN
	1    3850 950 
	0    1    1    0   
$EndComp
$Comp
L LY-E63F D?
U 1 1 5289E3CC
P 3700 1300
F 0 "D?" H 3700 1400 50  0000 C CNN
F 1 "LY-E63F" H 3700 1100 50  0001 C CNN
F 2 "~" H 3700 1300 60  0000 C CNN
F 3 "~" H 3700 1300 60  0000 C CNN
	1    3700 1300
	0    1    1    0   
$EndComp
$Comp
L LY-E63F D?
U 1 1 5289E3D2
P 3550 950
F 0 "D?" H 3550 1050 50  0000 C CNN
F 1 "LY-E63F" H 3550 750 50  0001 C CNN
F 2 "~" H 3550 950 60  0000 C CNN
F 3 "~" H 3550 950 60  0000 C CNN
	1    3550 950 
	0    1    1    0   
$EndComp
$Comp
L LY-E63F D?
U 1 1 5289E3D8
P 3400 1300
F 0 "D?" H 3400 1400 50  0000 C CNN
F 1 "LY-E63F" H 3400 1100 50  0001 C CNN
F 2 "~" H 3400 1300 60  0000 C CNN
F 3 "~" H 3400 1300 60  0000 C CNN
	1    3400 1300
	0    1    1    0   
$EndComp
$Comp
L LR-A67F D?
U 1 1 5289E5DC
P 5300 3250
F 0 "D?" H 5300 3350 50  0000 C CNN
F 1 "LR-A67F" H 5300 3050 50  0001 C CNN
F 2 "~" H 5300 3250 60  0000 C CNN
F 3 "~" H 5300 3250 60  0000 C CNN
	1    5300 3250
	0    1    1    0   
$EndComp
$Comp
L LR-A67F D?
U 1 1 5289E5F3
P 5300 3750
F 0 "D?" H 5300 3850 50  0000 C CNN
F 1 "LR-A67F" H 5300 3550 50  0001 C CNN
F 2 "~" H 5300 3750 60  0000 C CNN
F 3 "~" H 5300 3750 60  0000 C CNN
	1    5300 3750
	0    1    1    0   
$EndComp
$Comp
L LY-A67F D?
U 1 1 5289E82E
P 3400 3600
F 0 "D?" H 3400 3700 50  0000 C CNN
F 1 "LY-A67F" H 3400 3400 50  0001 C CNN
F 2 "~" H 3400 3600 60  0000 C CNN
F 3 "~" H 3400 3600 60  0000 C CNN
	1    3400 3600
	0    1    1    0   
$EndComp
$Comp
L LY-A67F D?
U 1 1 5289E83B
P 3550 3250
F 0 "D?" H 3550 3350 50  0000 C CNN
F 1 "LY-A67F" H 3550 3050 50  0001 C CNN
F 2 "~" H 3550 3250 60  0000 C CNN
F 3 "~" H 3550 3250 60  0000 C CNN
	1    3550 3250
	0    1    1    0   
$EndComp
$Comp
L LY-A67F D?
U 1 1 5289E841
P 3700 3600
F 0 "D?" H 3700 3700 50  0000 C CNN
F 1 "LY-A67F" H 3700 3400 50  0001 C CNN
F 2 "~" H 3700 3600 60  0000 C CNN
F 3 "~" H 3700 3600 60  0000 C CNN
	1    3700 3600
	0    1    1    0   
$EndComp
$Comp
L LY-A67F D?
U 1 1 5289E847
P 3850 3250
F 0 "D?" H 3850 3350 50  0000 C CNN
F 1 "LY-A67F" H 3850 3050 50  0001 C CNN
F 2 "~" H 3850 3250 60  0000 C CNN
F 3 "~" H 3850 3250 60  0000 C CNN
	1    3850 3250
	0    1    1    0   
$EndComp
$Comp
L LY-A67F D?
U 1 1 5289E84D
P 4000 3600
F 0 "D?" H 4000 3700 50  0000 C CNN
F 1 "LY-A67F" H 4000 3400 50  0001 C CNN
F 2 "~" H 4000 3600 60  0000 C CNN
F 3 "~" H 4000 3600 60  0000 C CNN
	1    4000 3600
	0    1    1    0   
$EndComp
$Comp
L LY-A67F D?
U 1 1 5289E853
P 4150 3250
F 0 "D?" H 4150 3350 50  0000 C CNN
F 1 "LY-A67F" H 4150 3050 50  0001 C CNN
F 2 "~" H 4150 3250 60  0000 C CNN
F 3 "~" H 4150 3250 60  0000 C CNN
	1    4150 3250
	0    1    1    0   
$EndComp
$Comp
L LY-A67F D?
U 1 1 5289E859
P 4450 3350
F 0 "D?" H 4450 3450 50  0000 C CNN
F 1 "LY-A67F" H 4450 3150 50  0001 C CNN
F 2 "~" H 4450 3350 60  0000 C CNN
F 3 "~" H 4450 3350 60  0000 C CNN
	1    4450 3350
	0    1    1    0   
$EndComp
$Comp
L LY-A67F D?
U 1 1 5289E85F
P 4750 3350
F 0 "D?" H 4750 3450 50  0000 C CNN
F 1 "LY-A67F" H 4750 3150 50  0001 C CNN
F 2 "~" H 4750 3350 60  0000 C CNN
F 3 "~" H 4750 3350 60  0000 C CNN
	1    4750 3350
	0    1    1    0   
$EndComp
$Comp
L LY-A67F D?
U 1 1 5289E865
P 4450 3850
F 0 "D?" H 4450 3950 50  0000 C CNN
F 1 "LY-A67F" H 4450 3650 50  0001 C CNN
F 2 "~" H 4450 3850 60  0000 C CNN
F 3 "~" H 4450 3850 60  0000 C CNN
	1    4450 3850
	0    1    1    0   
$EndComp
$Comp
L LY-A67F D?
U 1 1 5289E86B
P 4750 3850
F 0 "D?" H 4750 3950 50  0000 C CNN
F 1 "LY-A67F" H 4750 3650 50  0001 C CNN
F 2 "~" H 4750 3850 60  0000 C CNN
F 3 "~" H 4750 3850 60  0000 C CNN
	1    4750 3850
	0    1    1    0   
$EndComp
Text Notes 4950 1900 0    60   ~ 0
2.65V max ea.
Text Notes 4950 2000 0    60   ~ 0
10.6 V rail for string
$EndSCHEMATC

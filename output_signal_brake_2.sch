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
Sheet 9 16
Title ""
Date "8 feb 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 5300 3850
NoConn ~ 5300 3750
NoConn ~ 5300 3650
NoConn ~ 5300 3550
NoConn ~ 5400 3750
NoConn ~ 5400 3650
NoConn ~ 5900 3550
NoConn ~ 6000 3650
NoConn ~ 5900 3650
NoConn ~ 5900 3750
NoConn ~ 5900 3850
NoConn ~ 6000 3750
Text Notes 5300 3150 0    60   ~ 0
Turn Signal
Text Notes 5300 3300 0    60   ~ 0
Brake Signal
$Comp
L C C19
U 1 1 52A0C655
P 3450 1800
F 0 "C19" H 3450 1900 40  0000 L CNN
F 1 "Cap Nominal" H 3500 1700 40  0000 L CNN
F 2 "~" H 3488 1650 30  0000 C CNN
F 3 "~" H 3450 1800 60  0000 C CNN
	1    3450 1800
	1    0    0    -1  
$EndComp
$Comp
L TLC59108IPWR U39
U 1 1 52A0D841
P 2150 2600
F 0 "U39" H 1950 2600 60  0000 C CNN
F 1 "TLC59108IPWR" H 2500 1700 60  0000 C CNN
F 2 "" H 2150 2600 60  0000 C CNN
F 3 "" H 2150 2600 60  0000 C CNN
	1    2150 2600
	1    0    0    -1  
$EndComp
$Comp
L TLC59108IPWR U41
U 1 1 52A0D84E
P 8200 2500
F 0 "U41" H 8000 2500 60  0000 C CNN
F 1 "TLC59108IPWR" H 8550 1600 60  0000 C CNN
F 2 "" H 8200 2500 60  0000 C CNN
F 3 "" H 8200 2500 60  0000 C CNN
	1    8200 2500
	1    0    0    -1  
$EndComp
Text HLabel 7400 2950 0    60   Input ~ 0
SCL
Text HLabel 7400 3050 0    60   BiDi ~ 0
SDA
Text HLabel 1350 3050 0    60   Input ~ 0
SCL
Text HLabel 1350 3150 0    60   BiDi ~ 0
SDA
$Comp
L DGND #PWR048
U 1 1 52A16DFC
P 7500 3500
F 0 "#PWR048" H 7500 3500 40  0001 C CNN
F 1 "DGND" H 7500 3430 40  0000 C CNN
F 2 "" H 7500 3500 60  0000 C CNN
F 3 "" H 7500 3500 60  0000 C CNN
	1    7500 3500
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR049
U 1 1 52A16E02
P 1450 3600
F 0 "#PWR049" H 1450 3600 40  0001 C CNN
F 1 "DGND" H 1450 3530 40  0000 C CNN
F 2 "" H 1450 3600 60  0000 C CNN
F 3 "" H 1450 3600 60  0000 C CNN
	1    1450 3600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR050
U 1 1 52A17165
P 7500 2550
F 0 "#PWR050" H 7500 2510 30  0001 C CNN
F 1 "+3.3V" H 7500 2660 30  0000 C CNN
F 2 "" H 7500 2550 60  0000 C CNN
F 3 "" H 7500 2550 60  0000 C CNN
	1    7500 2550
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR051
U 1 1 52A171EB
P 1450 2650
F 0 "#PWR051" H 1450 2610 30  0001 C CNN
F 1 "+3.3V" H 1450 2760 30  0000 C CNN
F 2 "" H 1450 2650 60  0000 C CNN
F 3 "" H 1450 2650 60  0000 C CNN
	1    1450 2650
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR052
U 1 1 52A1749B
P 10250 3500
F 0 "#PWR052" H 10250 3500 40  0001 C CNN
F 1 "DGND" H 10250 3430 40  0000 C CNN
F 2 "" H 10250 3500 60  0000 C CNN
F 3 "" H 10250 3500 60  0000 C CNN
	1    10250 3500
	1    0    0    -1  
$EndComp
$Comp
L R R39
U 1 1 52A174A1
P 10000 3400
F 0 "R39" V 10080 3400 40  0000 C CNN
F 1 "270" V 10007 3401 40  0000 C CNN
F 2 "~" V 9930 3400 30  0000 C CNN
F 3 "~" H 10000 3400 30  0000 C CNN
	1    10000 3400
	0    -1   -1   0   
$EndComp
$Comp
L DGND #PWR053
U 1 1 52A174A9
P 4200 3600
F 0 "#PWR053" H 4200 3600 40  0001 C CNN
F 1 "DGND" H 4200 3530 40  0000 C CNN
F 2 "" H 4200 3600 60  0000 C CNN
F 3 "" H 4200 3600 60  0000 C CNN
	1    4200 3600
	1    0    0    -1  
$EndComp
$Comp
L R R37
U 1 1 52A174AF
P 3950 3500
F 0 "R37" V 4030 3500 40  0000 C CNN
F 1 "270" V 3957 3501 40  0000 C CNN
F 2 "~" V 3880 3500 30  0000 C CNN
F 3 "~" H 3950 3500 30  0000 C CNN
	1    3950 3500
	0    -1   -1   0   
$EndComp
Text Notes 9850 3550 0    60   ~ 0
70mA
Text Notes 3800 3650 0    60   ~ 0
70mA
$Comp
L +3.3V #PWR054
U 1 1 52A17BB2
P 3700 2900
F 0 "#PWR054" H 3700 2860 30  0001 C CNN
F 1 "+3.3V" H 3700 3010 30  0000 C CNN
F 2 "" H 3700 2900 60  0000 C CNN
F 3 "" H 3700 2900 60  0000 C CNN
	1    3700 2900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR055
U 1 1 52A18346
P 9750 2800
F 0 "#PWR055" H 9750 2760 30  0001 C CNN
F 1 "+3.3V" H 9750 2910 30  0000 C CNN
F 2 "" H 9750 2800 60  0000 C CNN
F 3 "" H 9750 2800 60  0000 C CNN
	1    9750 2800
	1    0    0    -1  
$EndComp
Text HLabel 7400 2800 0    60   Input ~ 0
~RESET
Text HLabel 1350 2900 0    60   Input ~ 0
~RESET
Text Notes 2200 3150 0    60   ~ 0
Slave Address\n1000-001x
Text Notes 8250 3050 0    60   ~ 0
Slave Address\n1000-011x
$Comp
L +3.3V #PWR056
U 1 1 52A187A3
P 3450 1550
F 0 "#PWR056" H 3450 1510 30  0001 C CNN
F 1 "+3.3V" H 3450 1660 30  0000 C CNN
F 2 "" H 3450 1550 60  0000 C CNN
F 3 "" H 3450 1550 60  0000 C CNN
	1    3450 1550
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR057
U 1 1 52A187A9
P 3450 2050
F 0 "#PWR057" H 3450 2050 40  0001 C CNN
F 1 "DGND" H 3450 1980 40  0000 C CNN
F 2 "" H 3450 2050 60  0000 C CNN
F 3 "" H 3450 2050 60  0000 C CNN
	1    3450 2050
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 52A189E4
P 9600 1750
F 0 "C18" H 9600 1850 40  0000 L CNN
F 1 "Cap Nominal" H 9650 1650 40  0000 L CNN
F 2 "~" H 9638 1600 30  0000 C CNN
F 3 "~" H 9600 1750 60  0000 C CNN
	1    9600 1750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR058
U 1 1 52A189EA
P 9600 1500
F 0 "#PWR058" H 9600 1460 30  0001 C CNN
F 1 "+3.3V" H 9600 1610 30  0000 C CNN
F 2 "" H 9600 1500 60  0000 C CNN
F 3 "" H 9600 1500 60  0000 C CNN
	1    9600 1500
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR059
U 1 1 52A189F0
P 9600 2000
F 0 "#PWR059" H 9600 2000 40  0001 C CNN
F 1 "DGND" H 9600 1930 40  0000 C CNN
F 2 "" H 9600 2000 60  0000 C CNN
F 3 "" H 9600 2000 60  0000 C CNN
	1    9600 2000
	1    0    0    -1  
$EndComp
NoConn ~ 5700 3750
NoConn ~ 5700 3650
NoConn ~ 5800 3850
NoConn ~ 5800 3750
NoConn ~ 5800 3650
NoConn ~ 5800 3550
NoConn ~ 5200 3850
NoConn ~ 5100 3750
NoConn ~ 5200 3750
NoConn ~ 5200 3650
NoConn ~ 5200 3550
NoConn ~ 5100 3650
NoConn ~ 5100 4400
NoConn ~ 5200 4300
NoConn ~ 5200 4400
NoConn ~ 5300 4400
NoConn ~ 5400 4400
NoConn ~ 5300 4300
NoConn ~ 5300 4600
NoConn ~ 5200 4600
NoConn ~ 5400 4500
NoConn ~ 5300 4500
NoConn ~ 5200 4500
NoConn ~ 5100 4500
Text Notes 5100 4100 0    60   ~ 0
L/R Handlebars
Text Notes 5100 4850 0    60   ~ 0
Helmet
Text Notes 5650 4400 0    60   ~ 0
Turn Signal
Text Notes 5650 4600 0    60   ~ 0
Brake Signal
$Comp
L TPS62090 U42
U 1 1 52A68F9E
P 7600 5700
F 0 "U42" H 7900 6300 60  0000 C CNN
F 1 "TPS62090" H 7400 6300 60  0000 C CNN
F 2 "~" H 7600 5650 60  0000 C CNN
F 3 "~" H 7600 5650 60  0000 C CNN
	1    7600 5700
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 52A69422
P 8800 5250
F 0 "L1" V 8750 5250 40  0000 C CNN
F 1 "1uH" V 8900 5250 40  0000 C CNN
F 2 "~" H 8800 5250 60  0000 C CNN
F 3 "~" H 8800 5250 60  0000 C CNN
	1    8800 5250
	0    -1   -1   0   
$EndComp
$Comp
L CSMALL C22
U 1 1 52A68A6D
P 9900 5400
F 0 "C22" H 9925 5450 30  0000 L CNN
F 1 "22uF" H 9925 5350 30  0000 L CNN
F 2 "~" H 9900 5400 60  0000 C CNN
F 3 "~" H 9900 5400 60  0000 C CNN
	1    9900 5400
	1    0    0    -1  
$EndComp
$Comp
L CSMALL C24
U 1 1 52A68AEF
P 6650 6150
F 0 "C24" H 6675 6200 30  0000 L CNN
F 1 "10nF" H 6675 6100 30  0000 L CNN
F 2 "~" H 6650 6150 60  0000 C CNN
F 3 "~" H 6650 6150 60  0000 C CNN
	1    6650 6150
	0    1    1    0   
$EndComp
$Comp
L CSMALL C23
U 1 1 52A68AFE
P 6650 5850
F 0 "C23" H 6675 5900 30  0000 L CNN
F 1 "10nF" H 6675 5800 30  0000 L CNN
F 2 "~" H 6650 5850 60  0000 C CNN
F 3 "~" H 6650 5850 60  0000 C CNN
	1    6650 5850
	0    1    1    0   
$EndComp
$Comp
L CSMALL C21
U 1 1 52A68B0D
P 6400 5400
F 0 "C21" H 6425 5450 30  0000 L CNN
F 1 "22uF" H 6425 5350 30  0000 L CNN
F 2 "~" H 6400 5400 60  0000 C CNN
F 3 "~" H 6400 5400 60  0000 C CNN
	1    6400 5400
	1    0    0    -1  
$EndComp
Text Notes 6850 5000 0    60   ~ 0
Battery to 2.5V Buck Power Supply
$Comp
L RSMALL R44
U 1 1 52A6B2C1
P 9400 5700
F 0 "R44" V 9450 5700 30  0000 C TNN
F 1 "75k" V 9350 5700 30  0000 C BNN
F 2 "~" H 9400 5735 60  0000 C CNN
F 3 "~" H 9400 5735 60  0000 C CNN
	1    9400 5700
	1    0    0    -1  
$EndComp
Text HLabel 6250 5250 0    60   Input ~ 0
BATT_IN
Text HLabel 8450 6000 2    60   Input ~ 0
BATT_IN
$Comp
L DGND #PWR060
U 1 1 52A7FDF9
P 6400 5550
F 0 "#PWR060" H 6400 5550 40  0001 C CNN
F 1 "DGND" H 6400 5480 40  0000 C CNN
F 2 "" H 6400 5550 60  0000 C CNN
F 3 "" H 6400 5550 60  0000 C CNN
	1    6400 5550
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR061
U 1 1 52A7FDFF
P 6500 6300
F 0 "#PWR061" H 6500 6300 40  0001 C CNN
F 1 "DGND" H 6500 6230 40  0000 C CNN
F 2 "" H 6500 6300 60  0000 C CNN
F 3 "" H 6500 6300 60  0000 C CNN
	1    6500 6300
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR062
U 1 1 52A7FE05
P 7500 6700
F 0 "#PWR062" H 7500 6700 40  0001 C CNN
F 1 "DGND" H 7500 6630 40  0000 C CNN
F 2 "" H 7500 6700 60  0000 C CNN
F 3 "" H 7500 6700 60  0000 C CNN
	1    7500 6700
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR063
U 1 1 52A7FE0B
P 9400 5900
F 0 "#PWR063" H 9400 5900 40  0001 C CNN
F 1 "DGND" H 9400 5830 40  0000 C CNN
F 2 "" H 9400 5900 60  0000 C CNN
F 3 "" H 9400 5900 60  0000 C CNN
	1    9400 5900
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR064
U 1 1 52A7FE11
P 9900 5550
F 0 "#PWR064" H 9900 5550 40  0001 C CNN
F 1 "DGND" H 9900 5480 40  0000 C CNN
F 2 "" H 9900 5550 60  0000 C CNN
F 3 "" H 9900 5550 60  0000 C CNN
	1    9900 5550
	1    0    0    -1  
$EndComp
$Comp
L RSMALL R41
U 1 1 52A6B2AD
P 9400 5400
F 0 "R41" V 9450 5400 30  0000 C TNN
F 1 "160k" V 9350 5400 30  0000 C BNN
F 2 "~" H 9400 5435 60  0000 C CNN
F 3 "~" H 9400 5435 60  0000 C CNN
	1    9400 5400
	1    0    0    -1  
$EndComp
Text HLabel 10250 6550 2    60   Output ~ 0
PWR_GOOD
Text HLabel 6250 5700 0    60   Input ~ 0
PWR_EN
Text Label 10250 5250 0    60   ~ 0
+2.5V local
$Comp
L R R40
U 1 1 52B1B0C8
P 5750 7050
F 0 "R40" V 5830 7050 40  0000 C CNN
F 1 "Nominal" V 5757 7051 40  0000 C CNN
F 2 "~" V 5680 7050 30  0000 C CNN
F 3 "~" H 5750 7050 30  0000 C CNN
	1    5750 7050
	1    0    0    -1  
$EndComp
Text HLabel 5650 7300 0    60   Input ~ 0
~RESET
$Comp
L +3.3V #PWR065
U 1 1 52B1B0D0
P 5750 6700
F 0 "#PWR065" H 5750 6660 30  0001 C CNN
F 1 "+3.3V" H 5750 6810 30  0000 C CNN
F 2 "" H 5750 6700 60  0000 C CNN
F 3 "" H 5750 6700 60  0000 C CNN
	1    5750 6700
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 52B1BE16
P 6050 7000
F 0 "C20" H 6050 7100 40  0000 L CNN
F 1 "Cap Nominal" H 6150 6900 40  0000 L CNN
F 2 "~" H 6088 6850 30  0000 C CNN
F 3 "~" H 6050 7000 60  0000 C CNN
	1    6050 7000
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR066
U 1 1 52B1BF30
P 6050 7250
F 0 "#PWR066" H 6050 7250 40  0001 C CNN
F 1 "DGND" H 6050 7180 40  0000 C CNN
F 2 "" H 6050 7250 60  0000 C CNN
F 3 "" H 6050 7250 60  0000 C CNN
	1    6050 7250
	1    0    0    -1  
$EndComp
$Comp
L R R43
U 1 1 52B1C377
P 9650 5650
F 0 "R43" V 9730 5650 40  0000 C CNN
F 1 "Nominal" V 9657 5651 40  0000 C CNN
F 2 "~" V 9580 5650 30  0000 C CNN
F 3 "~" H 9650 5650 30  0000 C CNN
	1    9650 5650
	1    0    0    -1  
$EndComp
Text Notes 10950 6050 2    60   ~ 0
Indicator LED
$Comp
L LED_GENERIC_SMD D36
U 1 1 52B2FD6A
P 10150 6000
F 0 "D36" H 10150 6100 50  0000 C CNN
F 1 "LED_GENERIC_SMD" H 10150 5850 50  0001 C CNN
F 2 "~" H 10150 6000 60  0000 C CNN
F 3 "~" H 10150 6000 60  0000 C CNN
	1    10150 6000
	0    1    1    0   
$EndComp
Text Notes 10350 6150 0    60   ~ 0
1.9V @ 2mA
$Comp
L R R42
U 1 1 52B2FEBB
P 10150 5500
F 0 "R42" V 10230 5500 40  0000 C CNN
F 1 "300" V 10157 5501 40  0000 C CNN
F 2 "~" V 10080 5500 30  0000 C CNN
F 3 "~" H 10150 5500 30  0000 C CNN
	1    10150 5500
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR067
U 1 1 52B2FFCD
P 10150 6250
F 0 "#PWR067" H 10150 6250 40  0001 C CNN
F 1 "DGND" H 10150 6180 40  0000 C CNN
F 2 "" H 10150 6250 60  0000 C CNN
F 3 "" H 10150 6250 60  0000 C CNN
	1    10150 6250
	1    0    0    -1  
$EndComp
Text Label 1150 1300 2    60   ~ 0
+2.5V local
$Sheet
S 1250 1200 650  1050
U 52E619E4
F0 "signal_leds_front" 50
F1 "signal_leds.sch" 50
F2 "+2.5V" I L 1250 1300 60 
F3 "CATHODE_1" U R 1900 2150 60 
F4 "CATHODE_2" U R 1900 2050 60 
F5 "CATHODE_3" U R 1900 1950 60 
F6 "CATHODE_4" U R 1900 1850 60 
F7 "CATHODE_5" U R 1900 1750 60 
F8 "CATHODE_6" U R 1900 1650 60 
F9 "CATHODE_7" U R 1900 1550 60 
F10 "CATHODE_8" U R 1900 1450 60 
$EndSheet
Text Label 7250 1300 2    60   ~ 0
+2.5V local
$Sheet
S 7350 1200 650  1050
U 52E619E6
F0 "brake_leds" 50
F1 "brake_leds.sch" 50
F2 "+2.5V" I L 7350 1300 60 
F3 "CATHODE_1" U R 8000 2150 60 
F4 "CATHODE_2" U R 8000 2050 60 
F5 "CATHODE_3" U R 8000 1950 60 
F6 "CATHODE_4" U R 8000 1850 60 
F7 "CATHODE_5" U R 8000 1750 60 
F8 "CATHODE_6" U R 8000 1650 60 
F9 "CATHODE_7" U R 8000 1550 60 
F10 "CATHODE_8" U R 8000 1450 60 
$EndSheet
$Comp
L DGND #PWR068
U 1 1 52A189DC
P 3500 5400
F 0 "#PWR068" H 3500 5400 40  0001 C CNN
F 1 "DGND" H 3500 5330 40  0000 C CNN
F 2 "" H 3500 5400 60  0000 C CNN
F 3 "" H 3500 5400 60  0000 C CNN
	1    3500 5400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR069
U 1 1 52A189D6
P 3500 4900
F 0 "#PWR069" H 3500 4860 30  0001 C CNN
F 1 "+3.3V" H 3500 5010 30  0000 C CNN
F 2 "" H 3500 4900 60  0000 C CNN
F 3 "" H 3500 4900 60  0000 C CNN
	1    3500 4900
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 52A189D0
P 3500 5150
F 0 "C17" H 3500 5250 40  0000 L CNN
F 1 "Cap Nominal" H 3600 5050 40  0000 L CNN
F 2 "~" H 3538 5000 30  0000 C CNN
F 3 "~" H 3500 5150 60  0000 C CNN
	1    3500 5150
	1    0    0    -1  
$EndComp
Text Notes 2200 6500 0    60   ~ 0
Slave Address\n1000-010x
Text HLabel 1350 6250 0    60   Input ~ 0
~RESET
$Comp
L +3.3V #PWR070
U 1 1 52A17FB4
P 3700 6250
F 0 "#PWR070" H 3700 6210 30  0001 C CNN
F 1 "+3.3V" H 3700 6360 30  0000 C CNN
F 2 "" H 3700 6250 60  0000 C CNN
F 3 "" H 3700 6250 60  0000 C CNN
	1    3700 6250
	1    0    0    -1  
$EndComp
Text Notes 3800 7000 0    60   ~ 0
70mA
$Comp
L R R38
U 1 1 52A172F9
P 3950 6850
F 0 "R38" V 4030 6850 40  0000 C CNN
F 1 "270" V 3957 6851 40  0000 C CNN
F 2 "~" V 3880 6850 30  0000 C CNN
F 3 "~" H 3950 6850 30  0000 C CNN
	1    3950 6850
	0    -1   -1   0   
$EndComp
$Comp
L DGND #PWR071
U 1 1 52A172F3
P 4200 6950
F 0 "#PWR071" H 4200 6950 40  0001 C CNN
F 1 "DGND" H 4200 6880 40  0000 C CNN
F 2 "" H 4200 6950 60  0000 C CNN
F 3 "" H 4200 6950 60  0000 C CNN
	1    4200 6950
	1    0    0    -1  
$EndComp
Text HLabel 1350 6500 0    60   BiDi ~ 0
SDA
Text HLabel 1350 6400 0    60   Input ~ 0
SCL
$Comp
L TLC59108IPWR U40
U 1 1 52A0DFB5
P 2150 5950
F 0 "U40" H 1950 5950 60  0000 C CNN
F 1 "TLC59108IPWR" H 2500 5050 60  0000 C CNN
F 2 "" H 2150 5950 60  0000 C CNN
F 3 "" H 2150 5950 60  0000 C CNN
	1    2150 5950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR072
U 1 1 52A0C661
P 1450 6000
F 0 "#PWR072" H 1450 5960 30  0001 C CNN
F 1 "+3.3V" H 1450 6110 30  0000 C CNN
F 2 "" H 1450 6000 60  0000 C CNN
F 3 "" H 1450 6000 60  0000 C CNN
	1    1450 6000
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR073
U 1 1 52A0C65B
P 1450 6950
F 0 "#PWR073" H 1450 6950 40  0001 C CNN
F 1 "DGND" H 1450 6880 40  0000 C CNN
F 2 "" H 1450 6950 60  0000 C CNN
F 3 "" H 1450 6950 60  0000 C CNN
	1    1450 6950
	1    0    0    -1  
$EndComp
Text Label 1150 4650 2    60   ~ 0
+2.5V local
$Sheet
S 1250 4550 650  1050
U 52ECD75E
F0 "signal_leds_back" 50
F1 "signal_leds.sch" 50
F2 "+2.5V" I L 1250 4650 60 
F3 "CATHODE_1" U R 1900 5500 60 
F4 "CATHODE_2" U R 1900 5400 60 
F5 "CATHODE_3" U R 1900 5300 60 
F6 "CATHODE_4" U R 1900 5200 60 
F7 "CATHODE_5" U R 1900 5100 60 
F8 "CATHODE_6" U R 1900 5000 60 
F9 "CATHODE_7" U R 1900 4900 60 
F10 "CATHODE_8" U R 1900 4800 60 
$EndSheet
$Comp
L CONN_6 P1
U 1 1 52ED1463
P 4200 2400
F 0 "P1" V 4150 2400 60  0000 C CNN
F 1 "CONN_6_RA_MALE" V 4400 2400 60  0000 C CNN
F 2 "" H 4200 2400 60  0000 C CNN
F 3 "" H 4200 2400 60  0000 C CNN
	1    4200 2400
	-1   0    0    -1  
$EndComp
$Comp
L +3.3V #PWR074
U 1 1 52ED1469
P 4600 2100
F 0 "#PWR074" H 4600 2060 30  0001 C CNN
F 1 "+3.3V" H 4600 2210 30  0000 C CNN
F 2 "" H 4600 2100 60  0000 C CNN
F 3 "" H 4600 2100 60  0000 C CNN
	1    4600 2100
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR075
U 1 1 52ED146F
P 4600 2700
F 0 "#PWR075" H 4600 2700 40  0001 C CNN
F 1 "DGND" H 4600 2630 40  0000 C CNN
F 2 "" H 4600 2700 60  0000 C CNN
F 3 "" H 4600 2700 60  0000 C CNN
	1    4600 2700
	1    0    0    -1  
$EndComp
Text Label 4600 2250 0    60   ~ 0
+2.5V local
Text HLabel 4600 2450 2    60   BiDi ~ 0
SDA
Text HLabel 4600 2350 2    60   Input ~ 0
SCL
Text HLabel 4600 2550 2    60   Input ~ 0
~RESET
$Comp
L +3.3V #PWR076
U 1 1 52EDDB8A
P 10300 4100
F 0 "#PWR076" H 10300 4060 30  0001 C CNN
F 1 "+3.3V" H 10300 4210 30  0000 C CNN
F 2 "" H 10300 4100 60  0000 C CNN
F 3 "" H 10300 4100 60  0000 C CNN
	1    10300 4100
	-1   0    0    -1  
$EndComp
$Comp
L DGND #PWR077
U 1 1 52EDDB90
P 10300 4950
F 0 "#PWR077" H 10300 4950 40  0001 C CNN
F 1 "DGND" H 10300 4880 40  0000 C CNN
F 2 "" H 10300 4950 60  0000 C CNN
F 3 "" H 10300 4950 60  0000 C CNN
	1    10300 4950
	-1   0    0    -1  
$EndComp
Text Label 10300 4300 2    60   ~ 0
+2.5V local
Text HLabel 10300 4800 0    60   BiDi ~ 0
SDA
Text HLabel 10300 4700 0    60   Input ~ 0
SCL
Text HLabel 10300 4450 0    60   Input ~ 0
~RESET
$Comp
L CONN_6 P5
U 1 1 52EDF405
P 9350 4500
F 0 "P5" V 9300 4500 60  0000 C CNN
F 1 "CONN_6_FEMALE_FRONT" V 9550 4500 60  0000 C CNN
F 2 "" H 9350 4500 60  0000 C CNN
F 3 "" H 9350 4500 60  0000 C CNN
	1    9350 4500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR078
U 1 1 52EDF40B
P 8950 4200
F 0 "#PWR078" H 8950 4160 30  0001 C CNN
F 1 "+3.3V" H 8950 4310 30  0000 C CNN
F 2 "" H 8950 4200 60  0000 C CNN
F 3 "" H 8950 4200 60  0000 C CNN
	1    8950 4200
	-1   0    0    -1  
$EndComp
$Comp
L DGND #PWR079
U 1 1 52EDF411
P 8950 4800
F 0 "#PWR079" H 8950 4800 40  0001 C CNN
F 1 "DGND" H 8950 4730 40  0000 C CNN
F 2 "" H 8950 4800 60  0000 C CNN
F 3 "" H 8950 4800 60  0000 C CNN
	1    8950 4800
	-1   0    0    -1  
$EndComp
Text Label 8950 4350 2    60   ~ 0
+2.5V local
Text HLabel 8950 4550 0    60   BiDi ~ 0
SDA
Text HLabel 8950 4450 0    60   Input ~ 0
SCL
Text HLabel 8950 4650 0    60   Input ~ 0
~RESET
Text Notes 8450 6150 0    60   ~ 0
1.4MHz operation
Text Notes 8400 5100 0    60   ~ 0
-30%< L <+20% 
Text Notes 9450 5150 0    60   ~ 0
-50% < C < +20%
$Comp
L CONN_4 P2
U 1 1 52F6FC7F
P 10250 2150
F 0 "P2" V 10200 2150 50  0000 C CNN
F 1 "CONN_2x2_MALE_RA" V 10400 2300 50  0000 C CNN
F 2 "" H 10250 2150 60  0000 C CNN
F 3 "" H 10250 2150 60  0000 C CNN
	1    10250 2150
	-1   0    0    -1  
$EndComp
$Comp
L CONN_4 P3
U 1 1 52F6FEC3
P 10250 2600
F 0 "P3" V 10200 2600 50  0000 C CNN
F 1 "CONN_2x2_MALE_RA" V 10500 2750 50  0000 C CNN
F 2 "" H 10250 2600 60  0000 C CNN
F 3 "" H 10250 2600 60  0000 C CNN
	1    10250 2600
	-1   0    0    -1  
$EndComp
$Comp
L CONN_4 P4
U 1 1 52F702E8
P 10700 4300
F 0 "P4" V 10650 4300 50  0000 C CNN
F 1 "CONN_2x2_FEMALE_BACK" V 10900 4550 50  0000 C CNN
F 2 "" H 10700 4300 60  0000 C CNN
F 3 "" H 10700 4300 60  0000 C CNN
	1    10700 4300
	1    0    0    -1  
$EndComp
$Comp
L CONN_4 P6
U 1 1 52F702F5
P 10700 4750
F 0 "P6" V 10650 4750 50  0000 C CNN
F 1 "CONN_2x2_FEMALE_BACK" V 11000 5000 50  0000 C CNN
F 2 "" H 10700 4750 60  0000 C CNN
F 3 "" H 10700 4750 60  0000 C CNN
	1    10700 4750
	1    0    0    -1  
$EndComp
Wire Notes Line
	6000 3650 5900 3550
Wire Notes Line
	5900 3550 5900 3850
Wire Notes Line
	5900 3850 6000 3750
Wire Notes Line
	5300 3850 5300 3550
Wire Wire Line
	7400 2950 7500 2950
Wire Wire Line
	7400 3050 7500 3050
Wire Wire Line
	1350 3050 1450 3050
Wire Wire Line
	1350 3150 1450 3150
Wire Wire Line
	1450 3300 1450 3600
Connection ~ 1450 3400
Connection ~ 1450 3500
Wire Wire Line
	7500 3200 7500 3500
Connection ~ 7500 3300
Connection ~ 7500 3400
Wire Wire Line
	1450 2650 1450 2750
Wire Wire Line
	9700 3400 9750 3400
Wire Wire Line
	3650 3500 3700 3500
Wire Wire Line
	4200 3100 4200 3600
Wire Wire Line
	3650 3100 4200 3100
Connection ~ 4200 3500
Wire Wire Line
	3650 3200 4200 3200
Connection ~ 4200 3200
Wire Wire Line
	3650 3300 4200 3300
Connection ~ 4200 3300
Wire Wire Line
	3700 2900 3700 3000
Wire Wire Line
	3700 3000 3650 3000
Connection ~ 10250 3400
Wire Wire Line
	9700 3200 10250 3200
Connection ~ 10250 3200
Wire Wire Line
	10250 3100 10250 3500
Wire Wire Line
	9700 3100 10250 3100
Wire Wire Line
	9750 2800 9750 3000
Wire Wire Line
	9750 3000 9700 3000
Wire Wire Line
	9700 2900 9750 2900
Connection ~ 9750 2900
Wire Wire Line
	7400 2800 7500 2800
Wire Wire Line
	7500 2650 7500 2550
Wire Wire Line
	1350 2900 1450 2900
Wire Wire Line
	3450 1550 3450 1600
Wire Wire Line
	3450 2000 3450 2050
Wire Wire Line
	9600 1500 9600 1550
Wire Wire Line
	9600 1950 9600 2000
Wire Notes Line
	5800 3550 5800 3850
Wire Notes Line
	5100 3750 5200 3850
Wire Notes Line
	5200 3850 5200 3550
Wire Notes Line
	5200 3550 5100 3650
Wire Notes Line
	5300 3400 5300 3450
Wire Notes Line
	5300 3400 5400 3400
Wire Notes Line
	5400 3400 5400 3450
Wire Notes Line
	5350 3400 5350 3350
Wire Notes Line
	5350 3350 5750 3350
Wire Notes Line
	5750 3350 5750 3400
Wire Notes Line
	5700 3400 5800 3400
Wire Notes Line
	5700 3400 5700 3450
Wire Notes Line
	5800 3400 5800 3450
Wire Notes Line
	5150 3100 5250 3100
Wire Notes Line
	5200 3400 5100 3400
Wire Notes Line
	5100 3400 5100 3450
Wire Notes Line
	5200 3400 5200 3450
Wire Notes Line
	5150 3400 5150 3100
Wire Notes Line
	5850 3100 5950 3100
Wire Notes Line
	5950 3100 5950 3400
Wire Notes Line
	5900 3450 5900 3400
Wire Notes Line
	5900 3400 6000 3400
Wire Notes Line
	6000 3400 6000 3450
Wire Notes Line
	5200 4300 5100 4400
Wire Notes Line
	5100 4400 5400 4400
Wire Notes Line
	5400 4400 5300 4300
Wire Notes Line
	5200 4600 5100 4500
Wire Notes Line
	5100 4500 5400 4500
Wire Notes Line
	5400 4500 5300 4600
Wire Notes Line
	5500 4300 5550 4300
Wire Notes Line
	5550 4300 5550 4400
Wire Notes Line
	5550 4400 5500 4400
Wire Notes Line
	5500 4500 5550 4500
Wire Notes Line
	5550 4500 5550 4600
Wire Notes Line
	5550 4600 5500 4600
Wire Notes Line
	5550 4350 5600 4350
Wire Notes Line
	5550 4550 5600 4550
Wire Wire Line
	8350 5250 8500 5250
Wire Wire Line
	8450 5250 8450 5400
Wire Wire Line
	8450 5400 8350 5400
Wire Wire Line
	8350 6600 8350 6150
Wire Wire Line
	8350 6000 8450 6000
Connection ~ 8450 5250
Wire Wire Line
	9100 5250 10250 5250
Wire Wire Line
	9400 5250 9400 5300
Connection ~ 9400 5250
Wire Wire Line
	9900 5250 9900 5300
Connection ~ 9650 5250
Connection ~ 9900 5250
Wire Wire Line
	9400 5500 9400 5600
Wire Wire Line
	8350 5550 9150 5550
Wire Wire Line
	9150 5550 9150 5250
Connection ~ 9150 5250
Wire Wire Line
	9400 5550 9200 5550
Wire Wire Line
	9200 5550 9200 5700
Wire Wire Line
	9200 5700 8350 5700
Connection ~ 9400 5550
Wire Wire Line
	9400 5800 9400 5900
Wire Wire Line
	8350 5850 9100 5850
Wire Wire Line
	9100 5850 9100 6050
Wire Wire Line
	9100 6050 9650 6050
Wire Wire Line
	9650 6550 10250 6550
Wire Wire Line
	6250 5250 6850 5250
Wire Wire Line
	6400 5300 6400 5250
Connection ~ 6400 5250
Wire Wire Line
	6400 5500 6400 5550
Wire Wire Line
	6750 5850 6850 5850
Wire Wire Line
	6550 5850 6450 5850
Wire Wire Line
	6450 5850 6450 6000
Wire Wire Line
	6450 6000 6850 6000
Wire Wire Line
	6750 6150 6850 6150
Wire Wire Line
	6550 6150 6500 6150
Wire Wire Line
	6500 6150 6500 6300
Wire Wire Line
	7500 6600 7500 6700
Wire Wire Line
	9900 5500 9900 5550
Connection ~ 9650 6050
Wire Wire Line
	7500 6600 8350 6600
Connection ~ 7700 6600
Connection ~ 7600 6600
Wire Wire Line
	6850 5250 6850 5550
Connection ~ 6850 5400
Wire Wire Line
	6250 5700 6850 5700
Wire Wire Line
	5650 7300 5750 7300
Wire Wire Line
	5750 6700 5750 6800
Wire Wire Line
	5750 6800 6050 6800
Wire Wire Line
	6050 7200 6050 7250
Wire Wire Line
	9650 5250 9650 5400
Wire Wire Line
	9650 5900 9650 6550
Wire Wire Line
	10150 5750 10150 5800
Wire Wire Line
	10150 6250 10150 6200
Wire Wire Line
	1150 1300 1250 1300
Wire Wire Line
	1900 2150 2200 2150
Wire Wire Line
	2200 2150 2200 2350
Wire Wire Line
	1900 2050 2350 2050
Wire Wire Line
	2350 2050 2350 2350
Wire Wire Line
	1900 1950 2500 1950
Wire Wire Line
	2500 1950 2500 2350
Wire Wire Line
	1900 1850 2650 1850
Wire Wire Line
	2650 1850 2650 2350
Wire Wire Line
	1900 1750 2800 1750
Wire Wire Line
	2800 1750 2800 2350
Wire Wire Line
	1900 1650 2950 1650
Wire Wire Line
	2950 1650 2950 2350
Wire Wire Line
	1900 1550 3100 1550
Wire Wire Line
	3100 1550 3100 2350
Wire Wire Line
	1900 1450 3250 1450
Wire Wire Line
	3250 1450 3250 2350
Wire Wire Line
	7250 1300 7350 1300
Wire Wire Line
	8000 2150 8250 2150
Wire Wire Line
	8250 2150 8250 2250
Wire Wire Line
	8000 2050 8400 2050
Wire Wire Line
	8400 2050 8400 2250
Wire Wire Line
	8000 1950 8550 1950
Wire Wire Line
	8550 1950 8550 2250
Wire Wire Line
	8000 1850 8700 1850
Wire Wire Line
	8700 1850 8700 2250
Wire Wire Line
	8000 1750 8850 1750
Wire Wire Line
	8850 1750 8850 2250
Wire Wire Line
	8000 1650 9000 1650
Wire Wire Line
	9000 1650 9000 2250
Wire Wire Line
	8000 1550 9150 1550
Wire Wire Line
	9150 1550 9150 2250
Wire Wire Line
	8000 1450 9300 1450
Wire Wire Line
	9300 1450 9300 2250
Connection ~ 10150 5250
Wire Wire Line
	3500 5350 3500 5400
Wire Wire Line
	3500 4900 3500 4950
Wire Wire Line
	1350 6250 1450 6250
Wire Wire Line
	3700 6450 3650 6450
Wire Wire Line
	3700 6250 3700 6450
Connection ~ 4200 6650
Wire Wire Line
	4200 6650 3650 6650
Connection ~ 4200 6550
Wire Wire Line
	3650 6550 4200 6550
Connection ~ 4200 6850
Wire Wire Line
	3650 6350 4200 6350
Wire Wire Line
	4200 6350 4200 6950
Wire Wire Line
	3650 6850 3700 6850
Wire Wire Line
	1450 6000 1450 6100
Connection ~ 1450 6850
Connection ~ 1450 6750
Wire Wire Line
	1450 6650 1450 6950
Wire Wire Line
	1350 6500 1450 6500
Wire Wire Line
	1350 6400 1450 6400
Wire Wire Line
	1150 4650 1250 4650
Wire Wire Line
	1900 5500 2200 5500
Wire Wire Line
	2200 5500 2200 5700
Wire Wire Line
	1900 5400 2350 5400
Wire Wire Line
	2350 5400 2350 5700
Wire Wire Line
	1900 5300 2500 5300
Wire Wire Line
	2500 5300 2500 5700
Wire Wire Line
	1900 5200 2650 5200
Wire Wire Line
	2650 5200 2650 5700
Wire Wire Line
	1900 5100 2800 5100
Wire Wire Line
	2800 5100 2800 5700
Wire Wire Line
	1900 5000 2950 5000
Wire Wire Line
	2950 5000 2950 5700
Wire Wire Line
	1900 4900 3100 4900
Wire Wire Line
	3100 4900 3100 5700
Wire Wire Line
	1900 4800 3250 4800
Wire Wire Line
	3250 4800 3250 5700
Wire Notes Line
	600  4400 600  7150
Wire Notes Line
	600  7150 4500 7150
Wire Notes Line
	4500 7150 4500 4400
Wire Notes Line
	4500 4400 600  4400
Wire Wire Line
	4600 2100 4600 2150
Wire Wire Line
	4600 2150 4550 2150
Wire Wire Line
	4550 2650 4600 2650
Wire Wire Line
	4600 2650 4600 2700
Wire Wire Line
	4550 2250 4600 2250
Wire Wire Line
	4550 2350 4600 2350
Wire Wire Line
	4550 2450 4600 2450
Wire Wire Line
	4550 2550 4600 2550
Wire Notes Line
	4500 3800 4500 1050
Wire Notes Line
	4500 1050 600  1050
Wire Notes Line
	600  1050 600  3800
Wire Notes Line
	600  3800 4500 3800
Wire Notes Line
	10550 3800 10550 1050
Wire Notes Line
	6600 3800 6600 1050
Wire Notes Line
	6600 1050 10550 1050
Wire Notes Line
	6600 3800 10550 3800
Wire Notes Line
	5300 3550 5400 3650
Wire Notes Line
	5300 3850 5400 3750
Wire Notes Line
	5800 3850 5700 3750
Wire Notes Line
	5800 3550 5700 3650
Wire Wire Line
	10300 4100 10300 4150
Wire Wire Line
	10300 4150 10350 4150
Wire Wire Line
	10000 4900 10350 4900
Wire Wire Line
	10300 4900 10300 4950
Wire Wire Line
	10350 4300 10300 4300
Wire Wire Line
	10350 4700 10300 4700
Wire Wire Line
	10350 4800 10300 4800
Wire Wire Line
	10350 4450 10300 4450
Wire Wire Line
	8950 4200 8950 4250
Wire Wire Line
	8950 4250 9000 4250
Wire Wire Line
	9000 4750 8950 4750
Wire Wire Line
	8950 4750 8950 4800
Wire Wire Line
	9000 4350 8950 4350
Wire Wire Line
	9000 4450 8950 4450
Wire Wire Line
	9000 4550 8950 4550
Wire Wire Line
	9000 4650 8950 4650
Wire Wire Line
	10350 4600 10000 4600
Wire Wire Line
	10000 4600 10000 4900
Connection ~ 10300 4900
Wire Wire Line
	10350 4250 10350 4350
Connection ~ 10350 4300
$Comp
L +3.3V #PWR080
U 1 1 52F71619
P 10650 1950
F 0 "#PWR080" H 10650 1910 30  0001 C CNN
F 1 "+3.3V" H 10650 2060 30  0000 C CNN
F 2 "" H 10650 1950 60  0000 C CNN
F 3 "" H 10650 1950 60  0000 C CNN
	1    10650 1950
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR081
U 1 1 52F7161F
P 10650 2800
F 0 "#PWR081" H 10650 2800 40  0001 C CNN
F 1 "DGND" H 10650 2730 40  0000 C CNN
F 2 "" H 10650 2800 60  0000 C CNN
F 3 "" H 10650 2800 60  0000 C CNN
	1    10650 2800
	1    0    0    -1  
$EndComp
Text Label 10650 2150 0    60   ~ 0
+2.5V local
Text HLabel 10650 2650 2    60   BiDi ~ 0
SDA
Text HLabel 10650 2550 2    60   Input ~ 0
SCL
Text HLabel 10650 2300 2    60   Input ~ 0
~RESET
Wire Wire Line
	10650 1950 10650 2000
Wire Wire Line
	10650 2000 10600 2000
Wire Wire Line
	10950 2750 10600 2750
Wire Wire Line
	10650 2750 10650 2800
Wire Wire Line
	10600 2150 10650 2150
Wire Wire Line
	10600 2550 10650 2550
Wire Wire Line
	10600 2650 10650 2650
Wire Wire Line
	10600 2300 10650 2300
Wire Wire Line
	10600 2450 10950 2450
Wire Wire Line
	10950 2450 10950 2750
Connection ~ 10650 2750
Wire Wire Line
	10600 2100 10600 2200
Connection ~ 10600 2150
$EndSCHEMATC

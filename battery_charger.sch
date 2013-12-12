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
Sheet 14 18
Title ""
Date "12 dec 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1450 1400 0    60   UnSpc ~ 0
USB_5V
Text HLabel 1450 1550 0    60   BiDi ~ 0
USB_D+
Text HLabel 1450 1700 0    60   BiDi ~ 0
USB_D-
$Comp
L AT42QT1011 U?
U 1 1 5292B822
P 3100 5600
F 0 "U?" H 3100 5600 60  0000 C CNN
F 1 "AT42QT1011" H 3100 4800 60  0000 C CNN
F 2 "" H 3100 5600 60  0000 C CNN
F 3 "" H 3100 5600 60  0000 C CNN
	1    3100 5600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5292B828
P 2500 5550
F 0 "#PWR?" H 2500 5510 30  0001 C CNN
F 1 "+3.3V" H 2500 5660 30  0000 C CNN
F 2 "" H 2500 5550 60  0000 C CNN
F 3 "" H 2500 5550 60  0000 C CNN
	1    2500 5550
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 5292B82E
P 3600 2600
F 0 "#PWR?" H 3600 2600 40  0001 C CNN
F 1 "DGND" H 3600 2530 40  0000 C CNN
F 2 "" H 3600 2600 60  0000 C CNN
F 3 "" H 3600 2600 60  0000 C CNN
	1    3600 2600
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5292B834
P 1900 5700
F 0 "R?" V 1980 5700 40  0000 C CNN
F 1 "10K" V 1907 5701 40  0000 C CNN
F 2 "~" V 1830 5700 30  0000 C CNN
F 3 "~" H 1900 5700 30  0000 C CNN
	1    1900 5700
	0    -1   -1   0   
$EndComp
$Comp
L C C?
U 1 1 5292B83A
P 2200 5900
F 0 "C?" H 2100 6000 40  0000 L CNN
F 1 "22nF" H 2300 5900 40  0000 L CNN
F 2 "~" H 2238 5750 30  0000 C CNN
F 3 "~" H 2200 5900 60  0000 C CNN
	1    2200 5900
	-1   0    0    1   
$EndComp
$Comp
L TOUCHPAD U?
U 1 1 5292B840
P 1300 5700
F 0 "U?" H 1300 5800 60  0000 C CNN
F 1 "TOUCHPAD" H 1300 5700 60  0000 C CNN
F 2 "" H 1300 5700 60  0000 C CNN
F 3 "" H 1300 5700 60  0000 C CNN
	1    1300 5700
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5292B858
P 1900 6500
F 0 "C?" H 1900 6600 40  0000 L CNN
F 1 "Cap Nominal" H 1500 6400 40  0000 L CNN
F 2 "~" H 1938 6350 30  0000 C CNN
F 3 "~" H 1900 6500 60  0000 C CNN
	1    1900 6500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 5292B85E
P 1900 6250
F 0 "#PWR?" H 1900 6210 30  0001 C CNN
F 1 "+3.3V" H 1900 6360 30  0000 C CNN
F 2 "" H 1900 6250 60  0000 C CNN
F 3 "" H 1900 6250 60  0000 C CNN
	1    1900 6250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5292B866
P 3750 5900
F 0 "C?" H 3750 6000 40  0000 L CNN
F 1 "Cap Steadystate" H 3756 5815 40  0000 L CNN
F 2 "~" H 3788 5750 30  0000 C CNN
F 3 "~" H 3750 5900 60  0000 C CNN
	1    3750 5900
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 5292B86E
P 3750 6150
F 0 "#PWR?" H 3750 6150 40  0001 C CNN
F 1 "DGND" H 3750 6080 40  0000 C CNN
F 2 "" H 3750 6150 60  0000 C CNN
F 3 "" H 3750 6150 60  0000 C CNN
	1    3750 6150
	1    0    0    -1  
$EndComp
Text HLabel 3900 5700 2    60   Output ~ 0
TOUCH_1
$Comp
L R R?
U 1 1 5292B877
P 2200 6450
F 0 "R?" V 2280 6450 40  0000 C CNN
F 1 "Nominal" V 2207 6451 40  0000 C CNN
F 2 "~" V 2130 6450 30  0000 C CNN
F 3 "~" H 2200 6450 30  0000 C CNN
	1    2200 6450
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5292B87D
P 3050 1300
F 0 "R?" V 3130 1300 40  0000 C CNN
F 1 "Nominal" V 3057 1301 40  0000 C CNN
F 2 "~" V 2980 1300 30  0000 C CNN
F 3 "~" H 3050 1300 30  0000 C CNN
	1    3050 1300
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5292B883
P 3250 1300
F 0 "R?" V 3330 1300 40  0000 C CNN
F 1 "Nominal" V 3257 1301 40  0000 C CNN
F 2 "~" V 3180 1300 30  0000 C CNN
F 3 "~" H 3250 1300 30  0000 C CNN
	1    3250 1300
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5292B889
P 3450 1300
F 0 "R?" V 3530 1300 40  0000 C CNN
F 1 "Nominal" V 3457 1301 40  0000 C CNN
F 2 "~" V 3380 1300 30  0000 C CNN
F 3 "~" H 3450 1300 30  0000 C CNN
	1    3450 1300
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5292B88F
P 5750 2250
F 0 "R?" V 5830 2250 40  0000 C CNN
F 1 "5.52K" V 5757 2251 40  0000 C CNN
F 2 "~" V 5680 2250 30  0000 C CNN
F 3 "~" H 5750 2250 30  0000 C CNN
	1    5750 2250
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5292B895
P 5750 2850
F 0 "R?" V 5830 2850 40  0000 C CNN
F 1 "31.23K" V 5757 2851 40  0000 C CNN
F 2 "~" V 5680 2850 30  0000 C CNN
F 3 "~" H 5750 2850 30  0000 C CNN
	1    5750 2850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5292B89B
P 6400 2250
F 0 "R?" V 6480 2250 40  0000 C CNN
F 1 "5.52K" V 6407 2251 40  0000 C CNN
F 2 "~" V 6330 2250 30  0000 C CNN
F 3 "~" H 6400 2250 30  0000 C CNN
	1    6400 2250
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5292B8A1
P 6400 2850
F 0 "R?" V 6480 2850 40  0000 C CNN
F 1 "31.23K" V 6407 2851 40  0000 C CNN
F 2 "~" V 6330 2850 30  0000 C CNN
F 3 "~" H 6400 2850 30  0000 C CNN
	1    6400 2850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5292B8A7
P 3850 2500
F 0 "R?" V 3930 2500 40  0000 C CNN
F 1 "267" V 3857 2501 40  0000 C CNN
F 2 "~" V 3780 2500 30  0000 C CNN
F 3 "~" H 3850 2500 30  0000 C CNN
	1    3850 2500
	0    -1   -1   0   
$EndComp
Text HLabel 3650 3100 2    60   Output ~ 0
STATUS
Text HLabel 1450 1050 0    60   Input ~ 0
PACK_IN
$Comp
L THERMISTOR TH?
U 1 1 52A9865D
P 6050 2850
F 0 "TH?" V 6150 2900 50  0000 C CNN
F 1 "NTC 10K" V 5950 2850 50  0000 C CNN
F 2 "~" H 6050 2850 60  0000 C CNN
F 3 "~" H 6050 2850 60  0000 C CNN
	1    6050 2850
	1    0    0    -1  
$EndComp
$Comp
L THERMISTOR TH?
U 1 1 52A9866A
P 6700 2850
F 0 "TH?" V 6800 2900 50  0000 C CNN
F 1 "NTC 10K" V 6600 2850 50  0000 C CNN
F 2 "~" H 6700 2850 60  0000 C CNN
F 3 "~" H 6700 2850 60  0000 C CNN
	1    6700 2850
	1    0    0    -1  
$EndComp
$Comp
L BQ24190 U?
U 1 1 52A98672
P 4800 850
F 0 "U?" H 4800 850 60  0000 C CNN
F 1 "BQ24190" H 4800 -1000 60  0000 C CNN
F 2 "~" H 4800 850 60  0000 C CNN
F 3 "~" H 4800 850 60  0000 C CNN
	1    4800 850 
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 52A986BA
P 5400 2700
F 0 "#PWR?" H 5400 2700 40  0001 C CNN
F 1 "DGND" H 5400 2630 40  0000 C CNN
F 2 "" H 5400 2700 60  0000 C CNN
F 3 "" H 5400 2700 60  0000 C CNN
	1    5400 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 5700 1600 5700
Wire Wire Line
	2150 5700 2350 5700
Wire Wire Line
	2350 5700 2350 5850
Wire Wire Line
	2350 5850 2500 5850
Wire Wire Line
	2200 6100 2350 6100
Wire Wire Line
	2350 6100 2350 5950
Wire Wire Line
	2350 5950 2500 5950
Connection ~ 2200 5700
Wire Wire Line
	2500 5550 2500 5700
Wire Wire Line
	2500 6250 2500 6750
Wire Wire Line
	2400 6200 2400 6100
Wire Wire Line
	2400 6100 2500 6100
Connection ~ 2500 6700
Wire Wire Line
	2400 6200 2200 6200
Wire Wire Line
	1900 6700 2500 6700
Wire Wire Line
	1900 6250 1900 6300
Connection ~ 2200 6700
Wire Wire Line
	3700 5700 3900 5700
Wire Wire Line
	3750 6100 3750 6150
Connection ~ 3750 5700
Wire Wire Line
	5400 2400 5400 2700
Connection ~ 5400 2500
Connection ~ 5400 2600
Wire Wire Line
	4100 2500 4200 2500
Wire Wire Line
	3600 2500 3600 2600
Wire Wire Line
	5400 2000 6400 2000
Connection ~ 5750 2000
Wire Wire Line
	5400 2200 5500 2200
Wire Wire Line
	5500 2200 5500 2550
Wire Wire Line
	5500 2550 6400 2550
Wire Wire Line
	5750 2600 5750 2500
Wire Wire Line
	6050 2600 5750 2600
Wire Wire Line
	5750 3100 6700 3100
$Comp
L DGND #PWR?
U 1 1 52A98A95
P 5750 3200
F 0 "#PWR?" H 5750 3200 40  0001 C CNN
F 1 "DGND" H 5750 3130 40  0000 C CNN
F 2 "" H 5750 3200 60  0000 C CNN
F 3 "" H 5750 3200 60  0000 C CNN
	1    5750 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3100 5750 3200
Wire Wire Line
	5400 2100 5600 2100
Wire Wire Line
	5600 2100 5600 2500
Wire Wire Line
	5600 2500 5750 2500
Wire Wire Line
	6400 2500 6400 2600
Connection ~ 6400 2550
Wire Wire Line
	6400 2600 6700 2600
Wire Wire Line
	3450 1550 3450 1650
Wire Wire Line
	3450 1650 4200 1650
Wire Wire Line
	4200 1750 3250 1750
Wire Wire Line
	3250 1750 3250 1550
Wire Wire Line
	3050 1550 3050 1950
Wire Wire Line
	3050 1950 4200 1950
Text HLabel 2950 1650 0    60   Input ~ 0
SCL
Text HLabel 2950 1750 0    60   BiDi ~ 0
SDA
Text HLabel 2950 1950 0    60   Output ~ 0
INT
$EndSCHEMATC

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
Sheet 15 15
Title ""
Date "30 nov 2013"
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
P 2500 6750
F 0 "#PWR?" H 2500 6750 40  0001 C CNN
F 1 "DGND" H 2500 6680 40  0000 C CNN
F 2 "" H 2500 6750 60  0000 C CNN
F 3 "" H 2500 6750 60  0000 C CNN
	1    2500 6750
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
Wire Wire Line
	1650 5700 1600 5700
Wire Wire Line
	2150 5700 2200 5700
Wire Wire Line
	2200 5700 2350 5700
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
	2500 6250 2500 6700
Wire Wire Line
	2500 6700 2500 6750
Wire Wire Line
	2400 6200 2400 6100
Wire Wire Line
	2400 6100 2500 6100
Connection ~ 2500 6700
Wire Wire Line
	2400 6200 2200 6200
Wire Wire Line
	1900 6700 2200 6700
Wire Wire Line
	2200 6700 2500 6700
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
Wire Wire Line
	1900 6250 1900 6300
Connection ~ 2200 6700
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
Wire Wire Line
	3700 5700 3750 5700
Wire Wire Line
	3750 5700 3900 5700
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
Wire Wire Line
	3750 6100 3750 6150
Connection ~ 3750 5700
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
P 1350 2600
F 0 "R?" V 1430 2600 40  0000 C CNN
F 1 "Nominal" V 1357 2601 40  0000 C CNN
F 2 "~" V 1280 2600 30  0000 C CNN
F 3 "~" H 1350 2600 30  0000 C CNN
	1    1350 2600
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5292B883
P 1550 2600
F 0 "R?" V 1630 2600 40  0000 C CNN
F 1 "Nominal" V 1557 2601 40  0000 C CNN
F 2 "~" V 1480 2600 30  0000 C CNN
F 3 "~" H 1550 2600 30  0000 C CNN
	1    1550 2600
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5292B889
P 1750 2600
F 0 "R?" V 1830 2600 40  0000 C CNN
F 1 "Nominal" V 1757 2601 40  0000 C CNN
F 2 "~" V 1680 2600 30  0000 C CNN
F 3 "~" H 1750 2600 30  0000 C CNN
	1    1750 2600
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5292B88F
P 2700 3450
F 0 "R?" V 2780 3450 40  0000 C CNN
F 1 "Nominal" V 2707 3451 40  0000 C CNN
F 2 "~" V 2630 3450 30  0000 C CNN
F 3 "~" H 2700 3450 30  0000 C CNN
	1    2700 3450
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5292B895
P 2700 4050
F 0 "R?" V 2780 4050 40  0000 C CNN
F 1 "Nominal" V 2707 4051 40  0000 C CNN
F 2 "~" V 2630 4050 30  0000 C CNN
F 3 "~" H 2700 4050 30  0000 C CNN
	1    2700 4050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5292B89B
P 3000 3450
F 0 "R?" V 3080 3450 40  0000 C CNN
F 1 "Nominal" V 3007 3451 40  0000 C CNN
F 2 "~" V 2930 3450 30  0000 C CNN
F 3 "~" H 3000 3450 30  0000 C CNN
	1    3000 3450
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5292B8A1
P 3000 4050
F 0 "R?" V 3080 4050 40  0000 C CNN
F 1 "Nominal" V 3007 4051 40  0000 C CNN
F 2 "~" V 2930 4050 30  0000 C CNN
F 3 "~" H 3000 4050 30  0000 C CNN
	1    3000 4050
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5292B8A7
P 3350 2550
F 0 "R?" V 3430 2550 40  0000 C CNN
F 1 "Nominal" V 3357 2551 40  0000 C CNN
F 2 "~" V 3280 2550 30  0000 C CNN
F 3 "~" H 3350 2550 30  0000 C CNN
	1    3350 2550
	0    -1   -1   0   
$EndComp
Text HLabel 3650 3100 2    60   Output ~ 0
STATUS
Text HLabel 1450 1050 0    60   Input ~ 0
PACK_IN
$EndSCHEMATC

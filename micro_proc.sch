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
Sheet 7 17
Title ""
Date "7 dec 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MSP430G2203IPW28 U?
U 1 1 529C2A65
P 6000 1850
F 0 "U?" H 6000 1900 60  0000 C CNN
F 1 "MSP430G2203IPW28" H 6000 50  60  0000 C CNN
F 2 "~" H 5950 1850 60  0000 C CNN
F 3 "~" H 5950 1850 60  0000 C CNN
	1    6000 1850
	1    0    0    -1  
$EndComp
Text HLabel 4100 2950 0    60   BiDi ~ 0
SDA
Text HLabel 4100 2850 0    60   Output ~ 0
SCL
$Comp
L C C?
U 1 1 52A38C98
P 2800 1600
F 0 "C?" H 2800 1700 40  0000 L CNN
F 1 "Cap Nominal" H 2900 1500 40  0000 L CNN
F 2 "~" H 2838 1450 30  0000 C CNN
F 3 "~" H 2800 1600 60  0000 C CNN
	1    2800 1600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 52A38C9E
P 2800 1350
F 0 "#PWR?" H 2800 1310 30  0001 C CNN
F 1 "+3.3V" H 2800 1460 30  0000 C CNN
F 2 "" H 2800 1350 60  0000 C CNN
F 3 "" H 2800 1350 60  0000 C CNN
	1    2800 1350
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 52A38CA4
P 2800 1850
F 0 "#PWR?" H 2800 1850 40  0001 C CNN
F 1 "DGND" H 2800 1780 40  0000 C CNN
F 2 "" H 2800 1850 60  0000 C CNN
F 3 "" H 2800 1850 60  0000 C CNN
	1    2800 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1350 2800 1400
Wire Wire Line
	2800 1800 2800 1850
Text HLabel 4100 2250 0    60   Input ~ 0
ADC_BATT
Text HLabel 4100 2350 0    60   Input ~ 0
ADC_LIGHT
Text HLabel 4950 900  0    60   Input ~ 0
~INT~_ACCEL
Text HLabel 4950 1050 0    60   Input ~ 0
TOUCH_1
Text HLabel 4950 1200 0    60   Input ~ 0
TOUCH_2
Text HLabel 4950 1350 0    60   Input ~ 0
TOUCH_3
Text HLabel 8050 1900 2    60   Output ~ 0
SPEAKER
Text HLabel 8050 2050 2    60   Output ~ 0
LED_1
Text HLabel 8050 2200 2    60   Output ~ 0
LED_2
Text HLabel 8050 2350 2    60   Output ~ 0
LED_3
Text HLabel 8050 2500 2    60   Output ~ 0
R_CTRL
Text HLabel 8050 2650 2    60   Output ~ 0
B_CTRL
Text HLabel 8050 2800 2    60   Output ~ 0
G_CTRL
Text HLabel 3700 2600 0    60   Output ~ 0
LIGHT_CTRL_1
Text HLabel 3700 2450 0    60   Output ~ 0
LIGHT_CTRL_2
$EndSCHEMATC

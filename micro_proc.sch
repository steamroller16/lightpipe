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
Sheet 4 16
Title ""
Date "17 feb 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MSP430G2203IPW28 U30
U 1 1 529C2A65
P 6000 1850
F 0 "U30" H 6000 1900 60  0000 C CNN
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
L C C3
U 1 1 52A38C98
P 2800 1600
F 0 "C3" H 2800 1700 40  0000 L CNN
F 1 "Cap Nominal" H 2900 1500 40  0000 L CNN
F 2 "~" H 2838 1450 30  0000 C CNN
F 3 "~" H 2800 1600 60  0000 C CNN
	1    2800 1600
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR015
U 1 1 52A38C9E
P 2800 1350
F 0 "#PWR015" H 2800 1310 30  0001 C CNN
F 1 "+3.3V" H 2800 1460 30  0000 C CNN
F 2 "" H 2800 1350 60  0000 C CNN
F 3 "" H 2800 1350 60  0000 C CNN
	1    2800 1350
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR016
U 1 1 52A38CA4
P 2800 1850
F 0 "#PWR016" H 2800 1850 40  0001 C CNN
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
Text HLabel 4100 2550 0    60   Input ~ 0
ADC_LIGHT
Text HLabel 7900 1950 2    60   Input ~ 0
~INT~_ACCEL
Text HLabel 7900 2050 2    60   Input ~ 0
TOUCH_1
Text HLabel 7900 2150 2    60   Input ~ 0
TOUCH_2
Text HLabel 7900 2250 2    60   Input ~ 0
TOUCH_3
Text HLabel 7900 2350 2    60   Output ~ 0
SPEAKER
Text HLabel 7900 3000 2    60   Output ~ 0
LED_1
Text HLabel 7900 3100 2    60   Output ~ 0
LED_2
Text HLabel 7900 3200 2    60   Output ~ 0
LED_3
Text HLabel 7900 3300 2    60   Output ~ 0
R_CTRL
Text HLabel 7900 3500 2    60   Output ~ 0
B_CTRL
Text HLabel 7900 3400 2    60   Output ~ 0
G_CTRL
Text HLabel 7900 2600 2    60   Output ~ 0
LIGHT_CTRL_1
Text HLabel 7900 2700 2    60   Output ~ 0
LIGHT_CTRL_2
Wire Wire Line
	4100 2950 4200 2950
Wire Wire Line
	4100 2850 4200 2850
$Comp
L +3.3V #PWR017
U 1 1 52A4573A
P 4200 1850
F 0 "#PWR017" H 4200 1810 30  0001 C CNN
F 1 "+3.3V" H 4200 1960 30  0000 C CNN
F 2 "" H 4200 1850 60  0000 C CNN
F 3 "" H 4200 1850 60  0000 C CNN
	1    4200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1850 4200 1950
$Comp
L DGND #PWR018
U 1 1 52A45745
P 4200 3700
F 0 "#PWR018" H 4200 3700 40  0001 C CNN
F 1 "DGND" H 4200 3630 40  0000 C CNN
F 2 "" H 4200 3700 60  0000 C CNN
F 3 "" H 4200 3700 60  0000 C CNN
	1    4200 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3700 4200 3600
Wire Wire Line
	4100 2250 4200 2250
Wire Wire Line
	4100 2550 4200 2550
Wire Wire Line
	7800 1950 7900 1950
Wire Wire Line
	7800 2050 7900 2050
Wire Wire Line
	7800 2150 7900 2150
Wire Wire Line
	7800 2250 7900 2250
Wire Wire Line
	7800 2600 7900 2600
Wire Wire Line
	7900 2700 7800 2700
Wire Wire Line
	7800 2350 7900 2350
Wire Wire Line
	7900 3000 7800 3000
Wire Wire Line
	7800 3100 7900 3100
Wire Wire Line
	7900 3200 7800 3200
Wire Wire Line
	7800 3300 7900 3300
Wire Wire Line
	7900 3400 7800 3400
Wire Wire Line
	7800 3500 7900 3500
Text HLabel 4100 2350 0    60   Input ~ 0
UART_RX
Text HLabel 4100 2450 0    60   Output ~ 0
UART_TX
Wire Wire Line
	4100 2350 4200 2350
Wire Wire Line
	4200 2450 4100 2450
Text HLabel 4100 3300 0    60   Input ~ 0
SBWTCK
Text HLabel 4100 3200 0    60   BiDi ~ 0
SBWTDIO
Wire Wire Line
	4100 3200 4200 3200
Wire Wire Line
	4100 3300 4200 3300
Text HLabel 7900 2450 2    60   Input ~ 0
INT_CHG
Wire Wire Line
	7800 2450 7900 2450
NoConn ~ 4200 2650
NoConn ~ 4200 2750
NoConn ~ 7800 2900
Text HLabel 7900 3600 2    60   Output ~ 0
VIBRATOR
Wire Wire Line
	7800 3600 7900 3600
$EndSCHEMATC

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
Sheet 8 15
Title ""
Date "2 dec 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_USB U?
U 1 1 52807223
P 1400 2800
F 0 "U?" H 1400 2800 60  0000 C CNN
F 1 "CONN_USB" H 1400 2150 60  0000 C CNN
F 2 "" H 1400 2800 60  0000 C CNN
F 3 "" H 1400 2800 60  0000 C CNN
	1    1400 2800
	1    0    0    -1  
$EndComp
$Comp
L CP2110 U?
U 1 1 5291A63B
P 4250 2400
F 0 "U?" H 4250 2400 60  0000 C CNN
F 1 "CP2110" H 4250 700 60  0000 C CNN
F 2 "" H 4250 2400 60  0000 C CNN
F 3 "" H 4250 2400 60  0000 C CNN
	1    4250 2400
	1    0    0    -1  
$EndComp
$Comp
L ESDR0502N U?
U 1 1 529256B4
P 2700 2750
F 0 "U?" H 2700 2750 60  0000 C CNN
F 1 "ESDR0502N" H 2700 2050 60  0000 C CNN
F 2 "" H 2700 2750 60  0000 C CNN
F 3 "" H 2700 2750 60  0000 C CNN
	1    2700 2750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 52925A58
P 3400 2500
F 0 "#PWR?" H 3400 2460 30  0001 C CNN
F 1 "+3.3V" H 3400 2610 30  0000 C CNN
F 2 "" H 3400 2500 60  0000 C CNN
F 3 "" H 3400 2500 60  0000 C CNN
	1    3400 2500
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 52925A5E
P 2050 3400
F 0 "#PWR?" H 2050 3400 40  0001 C CNN
F 1 "DGND" H 2050 3330 40  0000 C CNN
F 2 "" H 2050 3400 60  0000 C CNN
F 3 "" H 2050 3400 60  0000 C CNN
	1    2050 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3050 2300 2800
Wire Wire Line
	2300 2800 3100 2800
Wire Wire Line
	3100 2800 3100 3050
Wire Wire Line
	2300 3150 2300 3550
Wire Wire Line
	2300 3550 3100 3550
Wire Wire Line
	3100 3550 3100 3150
Wire Wire Line
	1750 2950 1800 2950
Wire Wire Line
	1800 2950 2050 2950
Wire Wire Line
	2050 2950 2100 2950
Wire Wire Line
	1750 3350 2050 3350
Wire Wire Line
	2050 3350 2100 3350
Wire Wire Line
	2050 3350 2050 3400
Connection ~ 2050 3350
Wire Wire Line
	3100 3050 3400 3050
Wire Wire Line
	3100 3150 3400 3150
Wire Wire Line
	1750 3050 1850 3050
Wire Wire Line
	1850 3050 2300 3050
Wire Wire Line
	1750 3150 1900 3150
Wire Wire Line
	1900 3150 2300 3150
Wire Wire Line
	3400 2500 3400 2550
Wire Wire Line
	3400 2550 3400 2650
Wire Wire Line
	3400 2650 3400 2750
Connection ~ 3400 2550
Connection ~ 3400 2650
$Comp
L DGND #PWR?
U 1 1 52927CD7
P 3400 3700
F 0 "#PWR?" H 3400 3700 40  0001 C CNN
F 1 "DGND" H 3400 3630 40  0000 C CNN
F 2 "" H 3400 3700 60  0000 C CNN
F 3 "" H 3400 3700 60  0000 C CNN
	1    3400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3650 3400 3700
$Comp
L C C?
U 1 1 52927D03
P 3950 1700
F 0 "C?" H 3950 1800 40  0000 L CNN
F 1 "Cap Nominal" H 3550 1600 40  0000 L CNN
F 2 "~" H 3988 1550 30  0000 C CNN
F 3 "~" H 3950 1700 60  0000 C CNN
	1    3950 1700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 52927D0F
P 3950 1500
F 0 "#PWR?" H 3950 1460 30  0001 C CNN
F 1 "+3.3V" H 3950 1610 30  0000 C CNN
F 2 "" H 3950 1500 60  0000 C CNN
F 3 "" H 3950 1500 60  0000 C CNN
	1    3950 1500
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 52927D15
P 3950 1900
F 0 "#PWR?" H 3950 1900 40  0001 C CNN
F 1 "DGND" H 3950 1830 40  0000 C CNN
F 2 "" H 3950 1900 60  0000 C CNN
F 3 "" H 3950 1900 60  0000 C CNN
	1    3950 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2950 2050 2650
Wire Wire Line
	2050 2650 3200 2650
Wire Wire Line
	3200 2650 3200 2950
Wire Wire Line
	3200 2950 3400 2950
Connection ~ 2050 2950
NoConn ~ 3400 3450
$Comp
L R R?
U 1 1 52927D44
P 4150 1750
F 0 "R?" V 4230 1750 40  0000 C CNN
F 1 "Nominal" V 4157 1751 40  0000 C CNN
F 2 "~" V 4080 1750 30  0000 C CNN
F 3 "~" H 4150 1750 30  0000 C CNN
	1    4150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1500 4150 1500
Wire Wire Line
	4150 2000 4250 2000
Text Label 4250 2000 0    60   ~ 0
~RST
Text Label 3300 3350 2    60   ~ 0
~RST
Wire Wire Line
	3300 3350 3400 3350
Text HLabel 3300 3850 0    60   Input ~ 0
UART_RX
Wire Wire Line
	3300 3850 3400 3850
Text HLabel 5200 3850 2    60   Output ~ 0
UART_TX
Wire Wire Line
	5200 3850 5100 3850
NoConn ~ 3400 3950
NoConn ~ 5100 3950
NoConn ~ 5100 2550
NoConn ~ 5100 2650
NoConn ~ 5100 2750
NoConn ~ 5100 2850
NoConn ~ 5100 2950
NoConn ~ 5100 3050
NoConn ~ 5100 3150
NoConn ~ 5100 3250
NoConn ~ 5100 3550
NoConn ~ 5100 3650
Text HLabel 5200 3450 2    60   Output ~ 0
USB_SUSPEND
Wire Wire Line
	5100 3450 5200 3450
Wire Wire Line
	1800 2950 1800 2150
Wire Wire Line
	1800 2150 2050 2150
Connection ~ 1800 2950
Wire Wire Line
	1850 3050 1850 2250
Wire Wire Line
	1850 2250 2050 2250
Connection ~ 1850 3050
Wire Wire Line
	1900 3150 1900 2350
Wire Wire Line
	1900 2350 2050 2350
Connection ~ 1900 3150
Wire Wire Line
	1750 3250 1950 3250
Wire Wire Line
	1950 3250 1950 2450
Wire Wire Line
	1950 2450 2050 2450
Text HLabel 2050 2150 2    60   UnSpc ~ 0
USB_5V
Text HLabel 2050 2250 2    60   BiDi ~ 0
USB_D+
Text HLabel 2050 2350 2    60   BiDi ~ 0
USB_D-
Text HLabel 2050 2450 2    60   BiDi ~ 0
USB_ID
$EndSCHEMATC

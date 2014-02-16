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
Sheet 2 16
Title ""
Date "16 feb 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 700  2100 900  200 
U 5281D330
F0 "battery_module_1" 50
F1 "battery_module.sch" 50
F2 "V_BATT" O R 1600 2200 60 
F3 "CHG" I L 700 2200 60 
$EndSheet
Text HLabel 3550 1250 2    60   Output ~ 0
V_PACK
Wire Wire Line
	1600 2200 1700 2200
Wire Wire Line
	1700 2200 1700 3000
Wire Wire Line
	1600 2600 2100 2600
Wire Wire Line
	1700 3000 1600 3000
Connection ~ 1700 2600
$Comp
L C C2
U 1 1 5281E7DA
P 2100 2850
F 0 "C2" H 2100 2950 40  0000 L CNN
F 1 "Cap Steadystate" H 2106 2765 40  0000 L CNN
F 2 "~" H 2138 2700 30  0000 C CNN
F 3 "~" H 2100 2850 60  0000 C CNN
	1    2100 2850
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR02
U 1 1 5281E7E0
P 2100 3100
F 0 "#PWR02" H 2100 3100 40  0001 C CNN
F 1 "DGND" H 2100 3030 40  0000 C CNN
F 2 "" H 2100 3100 60  0000 C CNN
F 3 "" H 2100 3100 60  0000 C CNN
	1    2100 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3050 2100 3100
Wire Wire Line
	2100 2550 2100 2650
$Comp
L R R1
U 1 1 5281E89A
P 2100 2300
F 0 "R1" V 2180 2300 40  0000 C CNN
F 1 "R" V 2107 2301 40  0000 C CNN
F 2 "~" V 2030 2300 30  0000 C CNN
F 3 "~" H 2100 2300 30  0000 C CNN
	1    2100 2300
	1    0    0    -1  
$EndComp
Connection ~ 2100 2600
Wire Wire Line
	2100 1250 2100 2050
Wire Wire Line
	2100 2050 2250 2050
Wire Wire Line
	2250 2050 2250 2250
Wire Wire Line
	2250 2250 2350 2250
Wire Wire Line
	2100 2550 2250 2550
Wire Wire Line
	2250 2550 2250 2350
Wire Wire Line
	2250 2350 2350 2350
$Comp
L FUSE #F1
U 1 1 5281EB5E
P 2150 650
F 0 "#F1" H 2250 700 40  0001 C CNN
F 1 "FUSE" H 2050 600 40  0000 C CNN
F 2 "~" H 2150 650 60  0000 C CNN
F 3 "~" H 2150 650 60  0000 C CNN
	1    2150 650 
	1    0    0    -1  
$EndComp
$Comp
L MCP6L02 U20
U 2 1 5281F116
P 2600 2300
F 0 "U20" H 2750 2450 60  0000 C CNN
F 1 "MCP6L02" H 2850 2200 60  0000 C CNN
F 2 "" H 2600 2300 60  0000 C CNN
F 3 "" H 2600 2300 60  0000 C CNN
	2    2600 2300
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR03
U 1 1 5281F123
P 2600 2600
F 0 "#PWR03" H 2600 2600 40  0001 C CNN
F 1 "DGND" H 2600 2530 40  0000 C CNN
F 2 "" H 2600 2600 60  0000 C CNN
F 3 "" H 2600 2600 60  0000 C CNN
	1    2600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2550 2600 2600
$Comp
L +3.3V #PWR04
U 1 1 5281F172
P 2600 2000
F 0 "#PWR04" H 2600 1960 30  0001 C CNN
F 1 "+3.3V" H 2600 2110 30  0000 C CNN
F 2 "" H 2600 2000 60  0000 C CNN
F 3 "" H 2600 2000 60  0000 C CNN
	1    2600 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2000 2600 2050
Wire Wire Line
	700  2200 600  2200
Wire Wire Line
	600  2200 600  3250
Wire Wire Line
	600  3000 700  3000
Connection ~ 600  2600
Wire Wire Line
	600  3250 3150 3250
Wire Wire Line
	3150 3250 3150 2300
Wire Wire Line
	3150 2300 2850 2300
Connection ~ 600  3000
Text HLabel 3550 1550 2    60   Output ~ 0
V_PACK_BUFFERED
$Comp
L MCP6L02 U20
U 1 1 5281F4C0
P 2600 1550
F 0 "U20" H 2750 1700 60  0000 C CNN
F 1 "MCP6L02" H 2850 1450 60  0000 C CNN
F 2 "" H 2600 1550 60  0000 C CNN
F 3 "" H 2600 1550 60  0000 C CNN
	1    2600 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1600 2350 1850
Wire Wire Line
	2350 1850 3100 1850
Wire Wire Line
	3100 1850 3100 1550
Wire Wire Line
	2850 1550 3550 1550
Wire Wire Line
	2100 1500 2350 1500
Connection ~ 3100 1550
Wire Wire Line
	2100 1250 3550 1250
Connection ~ 2100 1500
$Comp
L C C1
U 1 1 5281F708
P 3250 1750
F 0 "C1" H 3250 1850 40  0000 L CNN
F 1 "Cap Steadystate" H 3256 1665 40  0000 L CNN
F 2 "~" H 3288 1600 30  0000 C CNN
F 3 "~" H 3250 1750 60  0000 C CNN
	1    3250 1750
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR05
U 1 1 5281F70E
P 3250 2000
F 0 "#PWR05" H 3250 2000 40  0001 C CNN
F 1 "DGND" H 3250 1930 40  0000 C CNN
F 2 "" H 3250 2000 60  0000 C CNN
F 3 "" H 3250 2000 60  0000 C CNN
	1    3250 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1950 3250 2000
Text Notes 650  700  0    60   ~ 0
Should we include a fuse?
Text Notes 650  1050 0    60   ~ 0
What should the current sense resistor be?
Connection ~ 3250 1550
Wire Wire Line
	600  2600 700  2600
$EndSCHEMATC

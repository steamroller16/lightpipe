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
Sheet 15 19
Title ""
Date "31 jan 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L TLC59108IPWR U?
U 1 1 52EC8639
P 6150 3700
F 0 "U?" H 5950 3700 60  0000 C CNN
F 1 "TLC59108IPWR" H 6500 2800 60  0000 C CNN
F 2 "" H 6150 3700 60  0000 C CNN
F 3 "" H 6150 3700 60  0000 C CNN
	1    6150 3700
	1    0    0    -1  
$EndComp
Text HLabel 5350 4150 0    60   Input ~ 0
SCL
Text HLabel 5350 4250 0    60   BiDi ~ 0
SDA
$Comp
L R R?
U 1 1 52EC8653
P 7950 4600
F 0 "R?" V 8030 4600 40  0000 C CNN
F 1 "270" V 7957 4601 40  0000 C CNN
F 2 "~" V 7880 4600 30  0000 C CNN
F 3 "~" H 7950 4600 30  0000 C CNN
	1    7950 4600
	0    -1   -1   0   
$EndComp
Text Notes 7850 4750 0    60   ~ 0
70mA
Text HLabel 5350 4000 0    60   Input ~ 0
~RESET
Text Notes 6200 4250 0    60   ~ 0
Slave Address\n1000-011x
$Comp
L C C?
U 1 1 52EC8662
P 7900 3900
F 0 "C?" H 7900 4000 40  0000 L CNN
F 1 "Cap Nominal" H 7950 3800 40  0000 L CNN
F 2 "~" H 7938 3750 30  0000 C CNN
F 3 "~" H 7900 3900 60  0000 C CNN
	1    7900 3900
	1    0    0    -1  
$EndComp
Text Label 6000 1850 2    60   ~ 0
+2.5V local
Text HLabel 5350 3850 0    60   Input ~ 0
3.3V
Text HLabel 5350 4600 0    60   Input ~ 0
GND
Text HLabel 8300 3650 2    60   Input ~ 0
3.3V
Text HLabel 8300 4600 2    60   Input ~ 0
GND
Wire Wire Line
	5350 4150 5450 4150
Wire Wire Line
	5350 4250 5450 4250
Wire Wire Line
	5450 4400 5450 4500
Wire Wire Line
	5450 4500 5450 4600
Wire Wire Line
	5450 4600 5350 4600
Connection ~ 5450 4500
Connection ~ 5450 4600
Wire Wire Line
	7650 4600 7700 4600
Connection ~ 8200 4600
Wire Wire Line
	7650 4400 8200 4400
Connection ~ 8200 4400
Wire Wire Line
	8200 4300 8200 4400
Wire Wire Line
	8200 4400 8200 4600
Wire Wire Line
	7650 4300 8200 4300
Wire Wire Line
	7700 3650 7700 4100
Wire Wire Line
	7700 4100 7700 4200
Wire Wire Line
	7700 4200 7650 4200
Wire Wire Line
	7650 4100 7700 4100
Connection ~ 7700 4100
Wire Wire Line
	5350 4000 5450 4000
Wire Wire Line
	5450 3850 5350 3850
Wire Wire Line
	7900 3650 7900 3700
Wire Wire Line
	7900 4100 7900 4200
Wire Wire Line
	6000 1850 6100 1850
Wire Wire Line
	7700 3650 7900 3650
Wire Wire Line
	7900 3650 8300 3650
Connection ~ 7900 3650
Wire Wire Line
	8200 4600 8250 4600
Wire Wire Line
	8250 4600 8300 4600
Wire Wire Line
	7900 4200 8250 4200
Wire Wire Line
	8250 4200 8250 4600
Connection ~ 8250 4600
$Comp
L LS-E63F D?
U 1 1 52EC982B
P 6350 2050
F 0 "D?" H 6350 2150 50  0000 C CNN
F 1 "LS-E63F" H 6350 1900 50  0001 C CNN
F 2 "~" H 6350 2050 60  0000 C CNN
F 3 "~" H 6350 2050 60  0000 C CNN
	1    6350 2050
	0    1    1    0   
$EndComp
$Comp
L LS-E63F D?
U 1 1 52EC9831
P 6650 2050
F 0 "D?" H 6650 2150 50  0000 C CNN
F 1 "LS-E63F" H 6650 1900 50  0001 C CNN
F 2 "~" H 6650 2050 60  0000 C CNN
F 3 "~" H 6650 2050 60  0000 C CNN
	1    6650 2050
	0    1    1    0   
$EndComp
$Comp
L LS-E63F D?
U 1 1 52EC983D
P 6800 2400
F 0 "D?" H 6800 2500 50  0000 C CNN
F 1 "LS-E63F" H 6800 2250 50  0001 C CNN
F 2 "~" H 6800 2400 60  0000 C CNN
F 3 "~" H 6800 2400 60  0000 C CNN
	1    6800 2400
	0    1    1    0   
$EndComp
$Comp
L LS-E63F D?
U 1 1 52EC9843
P 6200 2400
F 0 "D?" H 6200 2500 50  0000 C CNN
F 1 "LS-E63F" H 6200 2250 50  0001 C CNN
F 2 "~" H 6200 2400 60  0000 C CNN
F 3 "~" H 6200 2400 60  0000 C CNN
	1    6200 2400
	0    1    1    0   
$EndComp
$Comp
L LS-E63F D?
U 1 1 52EC9849
P 6950 2050
F 0 "D?" H 6950 2150 50  0000 C CNN
F 1 "LS-E63F" H 6950 1900 50  0001 C CNN
F 2 "~" H 6950 2050 60  0000 C CNN
F 3 "~" H 6950 2050 60  0000 C CNN
	1    6950 2050
	0    1    1    0   
$EndComp
$Comp
L LS-E63F D?
U 1 1 52EC984F
P 6500 2400
F 0 "D?" H 6500 2500 50  0000 C CNN
F 1 "LS-E63F" H 6500 2250 50  0001 C CNN
F 2 "~" H 6500 2400 60  0000 C CNN
F 3 "~" H 6500 2400 60  0000 C CNN
	1    6500 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 2200 6200 1850
Wire Wire Line
	6800 1850 6800 2200
Wire Wire Line
	6500 1850 6500 2200
Wire Wire Line
	6950 2250 6950 3450
Wire Wire Line
	6650 2250 6650 3450
Wire Wire Line
	6350 2250 6350 3450
Wire Wire Line
	6200 3450 6200 2600
Wire Wire Line
	6500 3450 6500 2600
Wire Wire Line
	6800 2600 6800 3450
$Comp
L R R?
U 1 1 52EC9B49
P 7350 2350
F 0 "R?" V 7430 2350 40  0000 C CNN
F 1 "200" V 7357 2351 40  0000 C CNN
F 2 "~" V 7280 2350 30  0000 C CNN
F 3 "~" H 7350 2350 30  0000 C CNN
	1    7350 2350
	1    0    0    -1  
$EndComp
$Comp
L LR-A67F D?
U 1 1 52EC9B4F
P 7100 2400
F 0 "D?" H 7100 2500 50  0000 C CNN
F 1 "LR-A67F" H 7100 2200 50  0001 C CNN
F 2 "~" H 7100 2400 60  0000 C CNN
F 3 "~" H 7100 2400 60  0000 C CNN
	1    7100 2400
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 52EC9B55
P 7600 2350
F 0 "R?" V 7680 2350 40  0000 C CNN
F 1 "200" V 7607 2351 40  0000 C CNN
F 2 "~" V 7530 2350 30  0000 C CNN
F 3 "~" H 7600 2350 30  0000 C CNN
	1    7600 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1850 7100 2100
Wire Wire Line
	7100 2100 7100 2200
Wire Wire Line
	7100 2100 7350 2100
Wire Wire Line
	7350 2100 7600 2100
Wire Wire Line
	7100 2600 7350 2600
Wire Wire Line
	7350 2600 7600 2600
Connection ~ 7100 2100
Connection ~ 7350 2100
Connection ~ 7350 2600
Wire Wire Line
	7100 2600 7100 3450
$Comp
L R R?
U 1 1 52EC9B66
P 8100 2350
F 0 "R?" V 8180 2350 40  0000 C CNN
F 1 "200" V 8107 2351 40  0000 C CNN
F 2 "~" V 8030 2350 30  0000 C CNN
F 3 "~" H 8100 2350 30  0000 C CNN
	1    8100 2350
	1    0    0    -1  
$EndComp
$Comp
L LR-A67F D?
U 1 1 52EC9B6C
P 7850 2400
F 0 "D?" H 7850 2500 50  0000 C CNN
F 1 "LR-A67F" H 7850 2200 50  0001 C CNN
F 2 "~" H 7850 2400 60  0000 C CNN
F 3 "~" H 7850 2400 60  0000 C CNN
	1    7850 2400
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 52EC9B72
P 8350 2350
F 0 "R?" V 8430 2350 40  0000 C CNN
F 1 "200" V 8357 2351 40  0000 C CNN
F 2 "~" V 8280 2350 30  0000 C CNN
F 3 "~" H 8350 2350 30  0000 C CNN
	1    8350 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1850 7850 2100
Wire Wire Line
	7850 2100 7850 2200
Wire Wire Line
	7850 2100 8100 2100
Wire Wire Line
	8100 2100 8350 2100
Wire Wire Line
	7850 2600 8100 2600
Wire Wire Line
	8100 2600 8350 2600
Connection ~ 7850 2100
Connection ~ 8100 2100
Connection ~ 8100 2600
Wire Wire Line
	7850 2600 7850 2750
Wire Wire Line
	7250 3450 7250 2750
Wire Wire Line
	7250 2750 7850 2750
Wire Wire Line
	6100 1850 6200 1850
Wire Wire Line
	6200 1850 6350 1850
Wire Wire Line
	6350 1850 6500 1850
Wire Wire Line
	6500 1850 6650 1850
Wire Wire Line
	6650 1850 6800 1850
Wire Wire Line
	6800 1850 6950 1850
Wire Wire Line
	6950 1850 7100 1850
Wire Wire Line
	7100 1850 7850 1850
Connection ~ 6350 1850
Connection ~ 6500 1850
Connection ~ 6650 1850
Connection ~ 6800 1850
Connection ~ 6950 1850
Connection ~ 7100 1850
Connection ~ 6200 1850
$EndSCHEMATC
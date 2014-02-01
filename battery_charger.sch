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
Sheet 18 16
Title ""
Date "1 feb 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3700 1400 0    60   UnSpc ~ 0
USB_5V
Text HLabel 4100 2150 0    60   BiDi ~ 0
USB_D+
Text HLabel 4100 2250 0    60   BiDi ~ 0
USB_D-
$Comp
L DGND #PWR0104
U 1 1 5292B82E
P 3600 3400
F 0 "#PWR0104" H 3600 3400 40  0001 C CNN
F 1 "DGND" H 3600 3330 40  0000 C CNN
F 2 "" H 3600 3400 60  0000 C CNN
F 3 "" H 3600 3400 60  0000 C CNN
	1    3600 3400
	1    0    0    -1  
$EndComp
$Comp
L R R50
U 1 1 5292B87D
P 3050 2100
F 0 "R50" V 3130 2100 40  0000 C CNN
F 1 "Nominal" V 3057 2101 40  0000 C CNN
F 2 "~" V 2980 2100 30  0000 C CNN
F 3 "~" H 3050 2100 30  0000 C CNN
	1    3050 2100
	1    0    0    -1  
$EndComp
$Comp
L R R51
U 1 1 5292B883
P 3250 2100
F 0 "R51" V 3330 2100 40  0000 C CNN
F 1 "Nominal" V 3257 2101 40  0000 C CNN
F 2 "~" V 3180 2100 30  0000 C CNN
F 3 "~" H 3250 2100 30  0000 C CNN
	1    3250 2100
	1    0    0    -1  
$EndComp
$Comp
L R R52
U 1 1 5292B889
P 3450 2100
F 0 "R52" V 3530 2100 40  0000 C CNN
F 1 "Nominal" V 3457 2101 40  0000 C CNN
F 2 "~" V 3380 2100 30  0000 C CNN
F 3 "~" H 3450 2100 30  0000 C CNN
	1    3450 2100
	1    0    0    -1  
$EndComp
$Comp
L R R53
U 1 1 5292B88F
P 5750 3050
F 0 "R53" V 5830 3050 40  0000 C CNN
F 1 "5.52K" V 5757 3051 40  0000 C CNN
F 2 "~" V 5680 3050 30  0000 C CNN
F 3 "~" H 5750 3050 30  0000 C CNN
	1    5750 3050
	1    0    0    -1  
$EndComp
$Comp
L R R57
U 1 1 5292B895
P 5750 3650
F 0 "R57" V 5830 3650 40  0000 C CNN
F 1 "31.23K" V 5757 3651 40  0000 C CNN
F 2 "~" V 5680 3650 30  0000 C CNN
F 3 "~" H 5750 3650 30  0000 C CNN
	1    5750 3650
	1    0    0    -1  
$EndComp
$Comp
L R R54
U 1 1 5292B89B
P 6400 3050
F 0 "R54" V 6480 3050 40  0000 C CNN
F 1 "5.52K" V 6407 3051 40  0000 C CNN
F 2 "~" V 6330 3050 30  0000 C CNN
F 3 "~" H 6400 3050 30  0000 C CNN
	1    6400 3050
	1    0    0    -1  
$EndComp
$Comp
L R R58
U 1 1 5292B8A1
P 6400 3650
F 0 "R58" V 6480 3650 40  0000 C CNN
F 1 "31.23K" V 6407 3651 40  0000 C CNN
F 2 "~" V 6330 3650 30  0000 C CNN
F 3 "~" H 6400 3650 30  0000 C CNN
	1    6400 3650
	1    0    0    -1  
$EndComp
$Comp
L R R55
U 1 1 5292B8A7
P 3850 3300
F 0 "R55" V 3930 3300 40  0000 C CNN
F 1 "267" V 3857 3301 40  0000 C CNN
F 2 "~" V 3780 3300 30  0000 C CNN
F 3 "~" H 3850 3300 30  0000 C CNN
	1    3850 3300
	0    -1   -1   0   
$EndComp
Text HLabel 2050 3150 0    60   Output ~ 0
STATUS
$Comp
L THERMISTOR TH1
U 1 1 52A9865D
P 6050 3650
F 0 "TH1" V 6150 3700 50  0000 C CNN
F 1 "NTC 10K" V 5950 3650 50  0000 C CNN
F 2 "~" H 6050 3650 60  0000 C CNN
F 3 "~" H 6050 3650 60  0000 C CNN
	1    6050 3650
	1    0    0    -1  
$EndComp
$Comp
L THERMISTOR TH2
U 1 1 52A9866A
P 6700 3650
F 0 "TH2" V 6800 3700 50  0000 C CNN
F 1 "NTC 10K" V 6600 3650 50  0000 C CNN
F 2 "~" H 6700 3650 60  0000 C CNN
F 3 "~" H 6700 3650 60  0000 C CNN
	1    6700 3650
	1    0    0    -1  
$EndComp
$Comp
L BQ24190 U48
U 1 1 52A98672
P 4800 1650
F 0 "U48" H 4800 1650 60  0000 C CNN
F 1 "BQ24190" H 4800 -200 60  0000 C CNN
F 2 "~" H 4800 1650 60  0000 C CNN
F 3 "~" H 4800 1650 60  0000 C CNN
	1    4800 1650
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR0105
U 1 1 52A986BA
P 5400 3500
F 0 "#PWR0105" H 5400 3500 40  0001 C CNN
F 1 "DGND" H 5400 3430 40  0000 C CNN
F 2 "" H 5400 3500 60  0000 C CNN
F 3 "" H 5400 3500 60  0000 C CNN
	1    5400 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3200 5400 3500
Connection ~ 5400 3300
Connection ~ 5400 3400
Wire Wire Line
	4100 3300 4200 3300
Wire Wire Line
	3600 3300 3600 3400
Wire Wire Line
	5400 2800 6650 2800
Connection ~ 5750 2800
Wire Wire Line
	5400 3000 5500 3000
Wire Wire Line
	5500 3000 5500 3350
Wire Wire Line
	5500 3350 6400 3350
Wire Wire Line
	5750 3400 5750 3300
Wire Wire Line
	6050 3400 5750 3400
Wire Wire Line
	5750 3900 6700 3900
$Comp
L DGND #PWR0106
U 1 1 52A98A95
P 5750 4000
F 0 "#PWR0106" H 5750 4000 40  0001 C CNN
F 1 "DGND" H 5750 3930 40  0000 C CNN
F 2 "" H 5750 4000 60  0000 C CNN
F 3 "" H 5750 4000 60  0000 C CNN
	1    5750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 3900 5750 4000
Wire Wire Line
	5400 2900 5600 2900
Wire Wire Line
	5600 2900 5600 3300
Wire Wire Line
	5600 3300 5750 3300
Wire Wire Line
	6400 3300 6400 3400
Connection ~ 6400 3350
Wire Wire Line
	6400 3400 6700 3400
Wire Wire Line
	3450 2350 3450 2450
Wire Wire Line
	2050 2450 4200 2450
Wire Wire Line
	2050 2550 4200 2550
Wire Wire Line
	3250 2550 3250 2350
Wire Wire Line
	3050 2350 3050 2750
Wire Wire Line
	2050 2750 4200 2750
Text HLabel 2050 2450 0    60   Input ~ 0
SCL
Text HLabel 2050 2550 0    60   BiDi ~ 0
SDA
Text HLabel 2050 2750 0    60   Output ~ 0
INT
Wire Wire Line
	4100 2150 4200 2150
Wire Wire Line
	4100 2250 4200 2250
Wire Wire Line
	4200 1400 4200 1850
$Comp
L C C31
U 1 1 52AAD29A
P 3950 1600
F 0 "C31" H 3950 1700 40  0000 L CNN
F 1 "1uF" H 3956 1515 40  0000 L CNN
F 2 "~" H 3988 1450 30  0000 C CNN
F 3 "~" H 3950 1600 60  0000 C CNN
	1    3950 1600
	1    0    0    -1  
$EndComp
Connection ~ 4200 1750
Wire Wire Line
	3700 1400 4200 1400
Connection ~ 3950 1400
$Comp
L DGND #PWR0107
U 1 1 52AAD37B
P 3950 1850
F 0 "#PWR0107" H 3950 1850 40  0001 C CNN
F 1 "DGND" H 3950 1780 40  0000 C CNN
F 2 "" H 3950 1850 60  0000 C CNN
F 3 "" H 3950 1850 60  0000 C CNN
	1    3950 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1800 3950 1850
Wire Wire Line
	4200 1950 3750 1950
Wire Wire Line
	3750 1950 3750 1500
Wire Wire Line
	3750 1500 1900 1500
$Comp
L +3.3V #PWR0108
U 1 1 52AAD3EE
P 2850 1750
F 0 "#PWR0108" H 2850 1710 30  0001 C CNN
F 1 "+3.3V" H 2850 1860 30  0000 C CNN
F 2 "" H 2850 1750 60  0000 C CNN
F 3 "" H 2850 1750 60  0000 C CNN
	1    2850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 1850 3450 1850
Connection ~ 3250 1850
$Comp
L C C32
U 1 1 52AAD4A2
P 1900 1700
F 0 "C32" H 1900 1800 40  0000 L CNN
F 1 "6.8uF" H 1906 1615 40  0000 L CNN
F 2 "~" H 1938 1550 30  0000 C CNN
F 3 "~" H 1900 1700 60  0000 C CNN
	1    1900 1700
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR0109
U 1 1 52AAD4B3
P 1900 1950
F 0 "#PWR0109" H 1900 1950 40  0001 C CNN
F 1 "DGND" H 1900 1880 40  0000 C CNN
F 2 "" H 1900 1950 60  0000 C CNN
F 3 "" H 1900 1950 60  0000 C CNN
	1    1900 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1950 1900 1900
Text HLabel 2050 2850 0    60   Input ~ 0
OTG_EN
Text HLabel 2050 2950 0    60   Input ~ 0
~CHG_EN
Wire Wire Line
	2050 2850 4200 2850
Wire Wire Line
	2050 2950 4200 2950
Connection ~ 3450 2450
Connection ~ 3250 2550
Connection ~ 3050 2750
Wire Wire Line
	2850 1750 2850 1850
Connection ~ 3050 1850
Wire Wire Line
	2050 3150 4200 3150
$Comp
L C C36
U 1 1 52AB375A
P 6950 2800
F 0 "C36" H 6950 2900 40  0000 L CNN
F 1 "10uF" H 6956 2715 40  0000 L CNN
F 2 "~" H 6988 2650 30  0000 C CNN
F 3 "~" H 6950 2800 60  0000 C CNN
	1    6950 2800
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR0110
U 1 1 52AB3760
P 6950 3050
F 0 "#PWR0110" H 6950 3050 40  0001 C CNN
F 1 "DGND" H 6950 2980 40  0000 C CNN
F 2 "" H 6950 3050 60  0000 C CNN
F 3 "" H 6950 3050 60  0000 C CNN
	1    6950 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3000 6950 3050
Wire Wire Line
	5400 2600 7050 2600
Text HLabel 7050 2600 2    60   BiDi ~ 0
BATT
Connection ~ 6950 2600
$Comp
L C C33
U 1 1 52AB388A
P 5600 1850
F 0 "C33" H 5600 1950 40  0000 L CNN
F 1 "47nF" H 5606 1765 40  0000 L CNN
F 2 "~" H 5638 1700 30  0000 C CNN
F 3 "~" H 5600 1850 60  0000 C CNN
	1    5600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2050 5600 2050
Wire Wire Line
	5400 1650 5700 1650
Connection ~ 5600 1650
$Comp
L INDUCTOR L3
U 1 1 52AB3CD7
P 6000 1650
F 0 "L3" V 5950 1650 40  0000 C CNN
F 1 "2.2uH" V 6100 1650 40  0000 C CNN
F 2 "~" H 6000 1650 60  0000 C CNN
F 3 "~" H 6000 1650 60  0000 C CNN
	1    6000 1650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 1650 7150 1650
Wire Wire Line
	6400 1650 6400 2250
Wire Wire Line
	6400 2250 5400 2250
Connection ~ 6400 2800
$Comp
L C C37
U 1 1 52AB3E00
P 6650 3000
F 0 "C37" H 6650 3100 40  0000 L CNN
F 1 "4.7uF" H 6656 2915 40  0000 L CNN
F 2 "~" H 6688 2850 30  0000 C CNN
F 3 "~" H 6650 3000 60  0000 C CNN
	1    6650 3000
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR0111
U 1 1 52AB3E06
P 6650 3250
F 0 "#PWR0111" H 6650 3250 40  0001 C CNN
F 1 "DGND" H 6650 3180 40  0000 C CNN
F 2 "" H 6650 3250 60  0000 C CNN
F 3 "" H 6650 3250 60  0000 C CNN
	1    6650 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3200 6650 3250
Connection ~ 6400 1650
$Comp
L C C34
U 1 1 52AB3EAE
P 6650 1850
F 0 "C34" H 6650 1950 40  0000 L CNN
F 1 "10uF" H 6656 1765 40  0000 L CNN
F 2 "~" H 6688 1700 30  0000 C CNN
F 3 "~" H 6650 1850 60  0000 C CNN
	1    6650 1850
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR0112
U 1 1 52AB3EB4
P 6650 2100
F 0 "#PWR0112" H 6650 2100 40  0001 C CNN
F 1 "DGND" H 6650 2030 40  0000 C CNN
F 2 "" H 6650 2100 60  0000 C CNN
F 3 "" H 6650 2100 60  0000 C CNN
	1    6650 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2050 6650 2100
$Comp
L C C35
U 1 1 52AB3EBB
P 6950 1850
F 0 "C35" H 6950 1950 40  0000 L CNN
F 1 "10uF" H 6956 1765 40  0000 L CNN
F 2 "~" H 6988 1700 30  0000 C CNN
F 3 "~" H 6950 1850 60  0000 C CNN
	1    6950 1850
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR0113
U 1 1 52AB3EC1
P 6950 2100
F 0 "#PWR0113" H 6950 2100 40  0001 C CNN
F 1 "DGND" H 6950 2030 40  0000 C CNN
F 2 "" H 6950 2100 60  0000 C CNN
F 3 "" H 6950 2100 60  0000 C CNN
	1    6950 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2050 6950 2100
Connection ~ 6650 1650
Connection ~ 6950 1650
Text Notes 5200 1500 2    60   ~ 0
X7R or X5R, 25V+\n2A+
Wire Notes Line
	5200 1500 5600 1500
Wire Notes Line
	5600 1500 5600 1550
Wire Notes Line
	6650 1550 6650 1500
Wire Notes Line
	6650 1500 7100 1500
Wire Notes Line
	6950 1500 6950 1550
Text Notes 7100 1500 0    60   ~ 0
X7R or X5R, 6V+\n109mA+
Text Notes 5650 2550 0    60   ~ 0
4A @ 3.65V Charging
Text HLabel 7150 1650 2    60   Output ~ 0
SYS_OUT
Text Notes 4900 3750 2    60   ~ 0
Charger limited to 2A @ 5V
Text Notes 7100 1300 2    60   ~ 0
I_SAT >= 4A + 0.5*I_RIPPLE = 4 + .5*.378 = 4.189A
Text Notes 6650 1150 2    60   ~ 0
I_RIPPLE = 5*.5*.5/1.5/2.2 = 0.378A
Text Notes 2350 3500 2    60   ~ 0
Indicator LED
$Comp
L LED_GENERIC_SMD D38
U 1 1 52B37BFF
P 2450 3450
F 0 "D38" H 2450 3550 50  0000 C CNN
F 1 "LED_GENERIC_SMD" H 2450 3300 50  0001 C CNN
F 2 "~" H 2450 3450 60  0000 C CNN
F 3 "~" H 2450 3450 60  0000 C CNN
	1    2450 3450
	0    1    1    0   
$EndComp
Text Notes 1750 3600 0    60   ~ 0
1.9V @ 2mA
$Comp
L DGND #PWR0114
U 1 1 52B37C0F
P 2450 3800
F 0 "#PWR0114" H 2450 3800 40  0001 C CNN
F 1 "DGND" H 2450 3730 40  0000 C CNN
F 2 "" H 2450 3800 60  0000 C CNN
F 3 "" H 2450 3800 60  0000 C CNN
	1    2450 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3800 2450 3650
Wire Notes Line
	3900 3400 3900 3650
Connection ~ 2850 1850
$Comp
L R R49
U 1 1 52B3B9CF
P 2850 2100
F 0 "R49" V 2930 2100 40  0000 C CNN
F 1 "Nominal" V 2857 2101 40  0000 C CNN
F 2 "~" V 2780 2100 30  0000 C CNN
F 3 "~" H 2850 2100 30  0000 C CNN
	1    2850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 2350 2850 2850
Connection ~ 2850 2850
$Comp
L R R48
U 1 1 52B3BA8E
P 2450 2100
F 0 "R48" V 2530 2100 40  0000 C CNN
F 1 "700" V 2457 2101 40  0000 C CNN
F 2 "~" V 2380 2100 30  0000 C CNN
F 3 "~" H 2450 2100 30  0000 C CNN
	1    2450 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2350 2450 3250
Connection ~ 2450 3150
Wire Wire Line
	2650 2950 2650 3250
Connection ~ 2650 2950
$Comp
L R R56
U 1 1 52B3BBFD
P 2650 3500
F 0 "R56" V 2730 3500 40  0000 C CNN
F 1 "Nominal" V 2657 3501 40  0000 C CNN
F 2 "~" V 2580 3500 30  0000 C CNN
F 3 "~" H 2650 3500 30  0000 C CNN
	1    2650 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3750 2650 3750
Connection ~ 2450 3750
Connection ~ 6050 3900
Connection ~ 6400 3900
Wire Wire Line
	5400 1650 5400 1750
Wire Wire Line
	5400 2500 5400 2600
$EndSCHEMATC

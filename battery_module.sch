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
Sheet 4 18
Title ""
Date "21 dec 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BATTERY BT2
U 1 1 5281D336
P 1300 1800
AR Path="/5224C457/5281E180/5281D336" Ref="BT2"  Part="1" 
AR Path="/5224C457/5281D330/5281D336" Ref="BT1"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D336" Ref="BT3"  Part="1" 
F 0 "BT1" H 1300 2000 50  0000 C CNN
F 1 "BATTERY" H 1300 1610 50  0000 C CNN
F 2 "~" H 1300 1800 60  0000 C CNN
F 3 "~" H 1300 1800 60  0000 C CNN
	1    1300 1800
	0    1    1    0   
$EndComp
$Comp
L TPS3700 U25
U 1 1 5281D33C
P 2450 2100
AR Path="/5224C457/5281E180/5281D33C" Ref="U25"  Part="1" 
AR Path="/5224C457/5281D330/5281D33C" Ref="U22"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D33C" Ref="U28"  Part="1" 
F 0 "U22" H 2450 2150 60  0000 C CNN
F 1 "TPS3700" H 2450 1550 60  0000 C CNN
F 2 "" H 2450 2100 60  0000 C CNN
F 3 "" H 2450 2100 60  0000 C CNN
	1    2450 2100
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5281D342
P 1700 1750
AR Path="/5224C457/5281E180/5281D342" Ref="R7"  Part="1" 
AR Path="/5224C457/5281D330/5281D342" Ref="R2"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D342" Ref="R12"  Part="1" 
F 0 "R2" V 1780 1750 40  0000 C CNN
F 1 "1.58M" V 1707 1751 40  0000 C CNN
F 2 "~" V 1630 1750 30  0000 C CNN
F 3 "~" H 1700 1750 30  0000 C CNN
	1    1700 1750
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5281D348
P 1700 2350
AR Path="/5224C457/5281E180/5281D348" Ref="R10"  Part="1" 
AR Path="/5224C457/5281D330/5281D348" Ref="R5"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D348" Ref="R15"  Part="1" 
F 0 "R5" V 1780 2350 40  0000 C CNN
F 1 "102K" V 1707 2351 40  0000 C CNN
F 2 "~" V 1630 2350 30  0000 C CNN
F 3 "~" H 1700 2350 30  0000 C CNN
	1    1700 2350
	1    0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 5281D34E
P 1700 2950
AR Path="/5224C457/5281E180/5281D34E" Ref="R11"  Part="1" 
AR Path="/5224C457/5281D330/5281D34E" Ref="R6"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D34E" Ref="R16"  Part="1" 
F 0 "R6" V 1780 2950 40  0000 C CNN
F 1 "191K" V 1707 2951 40  0000 C CNN
F 2 "~" V 1630 2950 30  0000 C CNN
F 3 "~" H 1700 2950 30  0000 C CNN
	1    1700 2950
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR017
U 1 1 5281D354
P 1700 3250
AR Path="/5224C457/5281E180/5281D354" Ref="#PWR017"  Part="1" 
AR Path="/5224C457/5281D330/5281D354" Ref="#PWR08"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D354" Ref="#PWR026"  Part="1" 
F 0 "#PWR08" H 1700 3250 40  0001 C CNN
F 1 "DGND" H 1700 3180 40  0000 C CNN
F 2 "" H 1700 3250 60  0000 C CNN
F 3 "" H 1700 3250 60  0000 C CNN
	1    1700 3250
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR018
U 1 1 5281D35A
P 1300 2150
AR Path="/5224C457/5281E180/5281D35A" Ref="#PWR018"  Part="1" 
AR Path="/5224C457/5281D330/5281D35A" Ref="#PWR09"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D35A" Ref="#PWR027"  Part="1" 
F 0 "#PWR09" H 1300 2150 40  0001 C CNN
F 1 "DGND" H 1300 2080 40  0000 C CNN
F 2 "" H 1300 2150 60  0000 C CNN
F 3 "" H 1300 2150 60  0000 C CNN
	1    1300 2150
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR019
U 1 1 5281D360
P 1900 2800
AR Path="/5224C457/5281E180/5281D360" Ref="#PWR019"  Part="1" 
AR Path="/5224C457/5281D330/5281D360" Ref="#PWR010"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D360" Ref="#PWR028"  Part="1" 
F 0 "#PWR010" H 1900 2800 40  0001 C CNN
F 1 "DGND" H 1900 2730 40  0000 C CNN
F 2 "" H 1900 2800 60  0000 C CNN
F 3 "" H 1900 2800 60  0000 C CNN
	1    1900 2800
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR020
U 1 1 5281D366
P 1900 1950
AR Path="/5224C457/5281E180/5281D366" Ref="#PWR020"  Part="1" 
AR Path="/5224C457/5281D330/5281D366" Ref="#PWR011"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D366" Ref="#PWR029"  Part="1" 
F 0 "#PWR011" H 1900 1910 30  0001 C CNN
F 1 "+3.3V" H 1900 2060 30  0000 C CNN
F 2 "" H 1900 1950 60  0000 C CNN
F 3 "" H 1900 1950 60  0000 C CNN
	1    1900 1950
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 5281D36C
P 3150 1950
AR Path="/5224C457/5281E180/5281D36C" Ref="R8"  Part="1" 
AR Path="/5224C457/5281D330/5281D36C" Ref="R3"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D36C" Ref="R13"  Part="1" 
F 0 "R3" V 3230 1950 40  0000 C CNN
F 1 "Nominal" V 3157 1951 40  0000 C CNN
F 2 "~" V 3080 1950 30  0000 C CNN
F 3 "~" H 3150 1950 30  0000 C CNN
	1    3150 1950
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5281D372
P 3300 1950
AR Path="/5224C457/5281E180/5281D372" Ref="R9"  Part="1" 
AR Path="/5224C457/5281D330/5281D372" Ref="R4"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D372" Ref="R14"  Part="1" 
F 0 "R4" V 3380 1950 40  0000 C CNN
F 1 "Nominal" V 3307 1951 40  0000 C CNN
F 2 "~" V 3230 1950 30  0000 C CNN
F 3 "~" H 3300 1950 30  0000 C CNN
	1    3300 1950
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR021
U 1 1 5281D378
P 3150 1650
AR Path="/5224C457/5281E180/5281D378" Ref="#PWR021"  Part="1" 
AR Path="/5224C457/5281D330/5281D378" Ref="#PWR012"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D378" Ref="#PWR030"  Part="1" 
F 0 "#PWR012" H 3150 1610 30  0001 C CNN
F 1 "+3.3V" H 3150 1760 30  0000 C CNN
F 2 "" H 3150 1650 60  0000 C CNN
F 3 "" H 3150 1650 60  0000 C CNN
	1    3150 1650
	1    0    0    -1  
$EndComp
Text HLabel 2050 600  2    60   Output ~ 0
V_BATT
Text HLabel 4300 1150 0    60   Input ~ 0
CHG
$Comp
L 74LVC2G06 U24
U 1 1 5281D380
P 4750 1150
AR Path="/5224C457/5281E180/5281D380" Ref="U24"  Part="1" 
AR Path="/5224C457/5281D330/5281D380" Ref="U21"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D380" Ref="U27"  Part="1" 
F 0 "U21" H 4950 1350 60  0000 C CNN
F 1 "74LVC2G06" H 5100 1000 60  0000 C CNN
F 2 "" H 4750 1050 60  0000 C CNN
F 3 "" H 4750 1050 60  0000 C CNN
	1    4750 1150
	1    0    0    -1  
$EndComp
$Comp
L 74LVC2G06 U24
U 2 1 5281D386
P 6000 3200
AR Path="/5224C457/5281E180/5281D386" Ref="U24"  Part="2" 
AR Path="/5224C457/5281D330/5281D386" Ref="U21"  Part="2" 
AR Path="/5224C457/5281E2A4/5281D386" Ref="U27"  Part="2" 
F 0 "U21" H 6200 3400 60  0000 C CNN
F 1 "74LVC2G06" H 6350 3050 60  0000 C CNN
F 2 "" H 6000 3100 60  0000 C CNN
F 3 "" H 6000 3100 60  0000 C CNN
	2    6000 3200
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR022
U 1 1 5281D38C
P 4750 1450
AR Path="/5224C457/5281E180/5281D38C" Ref="#PWR022"  Part="1" 
AR Path="/5224C457/5281D330/5281D38C" Ref="#PWR013"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D38C" Ref="#PWR031"  Part="1" 
F 0 "#PWR013" H 4750 1450 40  0001 C CNN
F 1 "DGND" H 4750 1380 40  0000 C CNN
F 2 "" H 4750 1450 60  0000 C CNN
F 3 "" H 4750 1450 60  0000 C CNN
	1    4750 1450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR023
U 1 1 5281D392
P 4750 850
AR Path="/5224C457/5281E180/5281D392" Ref="#PWR023"  Part="1" 
AR Path="/5224C457/5281D330/5281D392" Ref="#PWR014"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D392" Ref="#PWR032"  Part="1" 
F 0 "#PWR014" H 4750 810 30  0001 C CNN
F 1 "+3.3V" H 4750 960 30  0000 C CNN
F 2 "" H 4750 850 60  0000 C CNN
F 3 "" H 4750 850 60  0000 C CNN
	1    4750 850 
	1    0    0    -1  
$EndComp
$Comp
L NC7WZ08 U26
U 1 1 5281D398
P 4950 2300
AR Path="/5224C457/5281E180/5281D398" Ref="U26"  Part="1" 
AR Path="/5224C457/5281D330/5281D398" Ref="U23"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D398" Ref="U29"  Part="1" 
F 0 "U23" H 4950 2350 60  0000 C CNN
F 1 "NC7WZ08" H 4950 2250 60  0000 C CNN
F 2 "" H 4950 2300 60  0000 C CNN
F 3 "" H 4950 2300 60  0000 C CNN
	1    4950 2300
	1    0    0    -1  
$EndComp
$Comp
L NC7WZ08 U26
U 2 1 5281D39E
P 4950 3200
AR Path="/5224C457/5281E180/5281D39E" Ref="U26"  Part="2" 
AR Path="/5224C457/5281D330/5281D39E" Ref="U23"  Part="2" 
AR Path="/5224C457/5281E2A4/5281D39E" Ref="U29"  Part="2" 
F 0 "U23" H 4950 3250 60  0000 C CNN
F 1 "NC7WZ08" H 4950 3150 60  0000 C CNN
F 2 "" H 4950 3200 60  0000 C CNN
F 3 "" H 4950 3200 60  0000 C CNN
	2    4950 3200
	1    0    0    -1  
$EndComp
Text Label 6450 3200 0    60   ~ 0
PMOS_CTRL
Text Label 6450 2300 0    60   ~ 0
NMOS_CTRL
$Comp
L DGND #PWR024
U 1 1 5281D3A6
P 4750 2700
AR Path="/5224C457/5281E180/5281D3A6" Ref="#PWR024"  Part="1" 
AR Path="/5224C457/5281D330/5281D3A6" Ref="#PWR015"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D3A6" Ref="#PWR033"  Part="1" 
F 0 "#PWR015" H 4750 2700 40  0001 C CNN
F 1 "DGND" H 4750 2630 40  0000 C CNN
F 2 "" H 4750 2700 60  0000 C CNN
F 3 "" H 4750 2700 60  0000 C CNN
	1    4750 2700
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR025
U 1 1 5281D3AC
P 4750 1900
AR Path="/5224C457/5281E180/5281D3AC" Ref="#PWR025"  Part="1" 
AR Path="/5224C457/5281D330/5281D3AC" Ref="#PWR016"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D3AC" Ref="#PWR034"  Part="1" 
F 0 "#PWR016" H 4750 1860 30  0001 C CNN
F 1 "+3.3V" H 4750 2010 30  0000 C CNN
F 2 "" H 4750 1900 60  0000 C CNN
F 3 "" H 4750 1900 60  0000 C CNN
	1    4750 1900
	1    0    0    -1  
$EndComp
Text Label 3450 2300 0    60   ~ 0
~UV
Text Label 3450 2400 0    60   ~ 0
~OV
Text Label 4300 3300 2    60   ~ 0
~UV
Text Label 4300 2400 2    60   ~ 0
~OV
Text HLabel 4300 2200 0    60   Input ~ 0
CHG
Text Label 5200 1150 0    60   ~ 0
~CHG
Text Label 4300 3100 2    60   ~ 0
~CHG
$Comp
L AON7611 Q2
U 2 1 5281D3B9
P 1700 800
AR Path="/5224C457/5281E180/5281D3B9" Ref="Q2"  Part="2" 
AR Path="/5224C457/5281D330/5281D3B9" Ref="Q1"  Part="2" 
AR Path="/5224C457/5281E2A4/5281D3B9" Ref="Q3"  Part="2" 
F 0 "Q1" H 1700 651 40  0000 R CNN
F 1 "AON7611" H 1700 950 40  0000 R CNN
F 2 "~" H 1570 902 29  0001 C CNN
F 3 "~" H 1700 800 60  0000 C CNN
	2    1700 800 
	-1   0    0    -1  
$EndComp
$Comp
L AON7611 Q2
U 1 1 5281D3BF
P 1300 800
AR Path="/5224C457/5281E180/5281D3BF" Ref="Q2"  Part="1" 
AR Path="/5224C457/5281D330/5281D3BF" Ref="Q1"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D3BF" Ref="Q3"  Part="1" 
F 0 "Q1" H 1300 651 40  0000 R CNN
F 1 "AON7611" H 1300 950 40  0000 R CNN
F 2 "~" H 1170 902 29  0001 C CNN
F 3 "~" H 1300 800 60  0000 C CNN
	1    1300 800 
	1    0    0    -1  
$EndComp
Text Label 1950 850  0    60   ~ 0
NMOS_CTRL
Text Label 1050 850  2    60   ~ 0
PMOS_CTRL
$Comp
L MBR1045ULPS D3
U 1 1 5281D3C7
P 1400 1250
AR Path="/5224C457/5281E180/5281D3C7" Ref="D3"  Part="1" 
AR Path="/5224C457/5281D330/5281D3C7" Ref="D1"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D3C7" Ref="D5"  Part="1" 
F 0 "D1" H 1400 1450 40  0000 C CNN
F 1 "MBR1045ULPS" H 1400 1350 40  0000 C CNN
F 2 "~" H 1400 1250 60  0000 C CNN
F 3 "~" H 1400 1250 60  0000 C CNN
	1    1400 1250
	0    -1   -1   0   
$EndComp
$Comp
L MBR1045ULPS D4
U 1 1 5281D3CD
P 1600 1250
AR Path="/5224C457/5281E180/5281D3CD" Ref="D4"  Part="1" 
AR Path="/5224C457/5281D330/5281D3CD" Ref="D2"  Part="1" 
AR Path="/5224C457/5281E2A4/5281D3CD" Ref="D6"  Part="1" 
F 0 "D2" H 1600 1450 40  0000 C CNN
F 1 "MBR1045ULPS" H 1600 1350 40  0000 C CNN
F 2 "~" H 1600 1250 60  0000 C CNN
F 3 "~" H 1600 1250 60  0000 C CNN
	1    1600 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 600  2050 600 
Wire Wire Line
	1700 3200 1700 3250
Wire Wire Line
	1700 2600 1700 2700
Wire Wire Line
	1700 2000 1700 2100
Wire Wire Line
	1300 2100 1300 2150
Wire Wire Line
	1900 2300 1800 2300
Wire Wire Line
	1800 2300 1800 2050
Wire Wire Line
	1800 2050 1700 2050
Connection ~ 1700 2050
Wire Wire Line
	1900 2400 1800 2400
Wire Wire Line
	1800 2400 1800 2650
Wire Wire Line
	1800 2650 1700 2650
Connection ~ 1700 2650
Wire Wire Line
	1900 2550 1900 2800
Wire Wire Line
	1900 1950 1900 2150
Wire Wire Line
	3150 1650 3150 1700
Wire Wire Line
	3150 1700 3300 1700
Wire Wire Line
	3000 2300 3450 2300
Wire Wire Line
	3150 2300 3150 2200
Wire Wire Line
	3000 2400 3450 2400
Wire Wire Line
	3300 2400 3300 2200
Connection ~ 3150 2300
Connection ~ 3300 2400
Wire Wire Line
	4750 1400 4750 1450
Wire Wire Line
	4750 850  4750 900 
Wire Wire Line
	4300 1150 4350 1150
Wire Wire Line
	5550 3200 5600 3200
Wire Wire Line
	6400 3200 6450 3200
Wire Wire Line
	5550 2300 6450 2300
Wire Wire Line
	4750 1900 4750 1950
Wire Wire Line
	4750 2650 4750 2700
Wire Wire Line
	4350 3300 4300 3300
Wire Wire Line
	4350 2400 4300 2400
Wire Wire Line
	4300 2200 4350 2200
Wire Wire Line
	5150 1150 5200 1150
Wire Wire Line
	4350 3100 4300 3100
Wire Wire Line
	1050 850  1100 850 
Wire Wire Line
	1900 850  1950 850 
Wire Wire Line
	1300 1500 1700 1500
Wire Wire Line
	1400 1000 1400 1050
Wire Wire Line
	1600 1450 1600 1500
Connection ~ 1600 1500
Wire Wire Line
	1550 1050 1650 1050
Wire Wire Line
	1600 1000 1600 1050
Connection ~ 1600 1050
Wire Wire Line
	1350 1450 1450 1450
Wire Wire Line
	1400 1450 1400 1500
Connection ~ 1400 1500
Connection ~ 1400 1450
Text Notes 800  2300 0    60   ~ 0
LiFePO4\n2.5V <-> 3.65V
$EndSCHEMATC

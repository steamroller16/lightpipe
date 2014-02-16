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
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 16
Title "Bike Light"
Date "16 feb 2014"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1200 1050 1000 350 
U 5224C457
F0 "battery_pack" 50
F1 "battery_pack.sch" 50
F2 "V_PACK" O R 2200 1150 60 
F3 "V_PACK_BUFFERED" O R 2200 1300 60 
$EndSheet
$Sheet
S 5500 1050 1200 4400
U 5224C543
F0 "micro_proc" 50
F1 "micro_proc.sch" 50
F2 "SDA" B R 6700 1550 60 
F3 "SCL" O R 6700 1400 60 
F4 "ADC_BATT" I L 5500 1300 60 
F5 "ADC_LIGHT" I L 5500 3200 60 
F6 "~INT~_ACCEL" I L 5500 1750 60 
F7 "TOUCH_1" I L 5500 2300 60 
F8 "TOUCH_2" I L 5500 2450 60 
F9 "TOUCH_3" I L 5500 2600 60 
F10 "SPEAKER" O R 6700 2200 60 
F11 "LED_1" O R 6700 2400 60 
F12 "LED_2" O R 6700 2550 60 
F13 "LED_3" O R 6700 2700 60 
F14 "R_CTRL" O R 6700 2900 60 
F15 "B_CTRL" O R 6700 3050 60 
F16 "G_CTRL" O R 6700 3200 60 
F17 "LIGHT_CTRL_1" O L 5500 2850 60 
F18 "LIGHT_CTRL_2" O L 5500 3000 60 
F19 "UART_RX" I L 5500 3900 60 
F20 "UART_TX" O L 5500 3750 60 
F21 "SBWTCK" I L 5500 5200 60 
F22 "SBWTDIO" B L 5500 5350 60 
F23 "INT_CHG" I L 5500 2100 60 
$EndSheet
$Sheet
S 4500 3100 900  350 
U 527B1CA6
F0 "sensors_light" 50
F1 "sensors_light.sch" 50
F2 "CTRL_1" I L 4500 3200 60 
F3 "CTRL_2" I L 4500 3350 60 
F4 "V_LIGHT" O R 5400 3200 60 
$EndSheet
$Sheet
S 4350 1650 900  350 
U 527C7E4B
F0 "sensors_acceleration" 50
F1 "sensors_acceleration.sch" 50
F2 "SCL" I L 4350 1750 60 
F3 "SDA" B L 4350 1900 60 
F4 "~INT" O R 5250 1750 60 
$EndSheet
$Sheet
S 4500 2200 900  500 
U 527FE989
F0 "sensors_touch" 50
F1 "sensors_touch.sch" 50
F2 "TOUCH_1" O R 5400 2300 60 
F3 "TOUCH_2" O R 5400 2450 60 
F4 "TOUCH_3" O R 5400 2600 60 
$EndSheet
$Sheet
S 6800 2100 900  1200
U 528029D1
F0 "output_general" 50
F1 "output_general.sch" 50
F2 "SPEAKER" I L 6800 2200 60 
F3 "LED_1" I L 6800 2400 60 
F4 "LED_2" I L 6800 2550 60 
F5 "LED_3" I L 6800 2700 60 
F6 "RED_CTRL" I L 6800 2900 60 
F7 "BLUE_CTRL" I L 6800 3050 60 
F8 "GREEN_CTRL" I L 6800 3200 60 
$EndSheet
Text Notes 4100 2750 0    60   ~ 0
<Done>
Text Notes 4100 3450 0    60   ~ 0
<Done>
Text Notes 7750 3350 0    60   ~ 0
<Done>
Text Notes 3950 2050 0    60   ~ 0
<Done>
Text Notes 1200 1600 0    60   ~ 0
<Sense Resistor??>
Text Notes 1200 1700 0    60   ~ 0
<Fuse??>
Text Notes 1200 1800 0    60   ~ 0
<Current measuring for \nbattery level detection??>
Text Notes 4100 4950 0    60   ~ 0
<Done>
Text Notes 700  5150 0    60   ~ 0
<Make sure chip works at low LiFePO4 voltages>
$Sheet
S 7000 1050 900  850 
U 52A0B607
F0 "output_signal_brake_2" 50
F1 "output_signal_brake_2.sch" 50
F2 "SCL" I L 7000 1400 60 
F3 "SDA" B L 7000 1550 60 
F4 "~RESET" I L 7000 1800 60 
F5 "BATT_IN" I L 7000 1150 60 
F6 "PWR_GOOD" O R 7900 1650 60 
F7 "PWR_EN" I L 7000 1250 60 
$EndSheet
Wire Wire Line
	5400 2300 5500 2300
Wire Wire Line
	5400 2450 5500 2450
Wire Wire Line
	5400 2600 5500 2600
Wire Wire Line
	2600 1750 4350 1750
Wire Wire Line
	4300 1400 4300 1750
Wire Wire Line
	2750 1900 4350 1900
Wire Wire Line
	5250 1750 5500 1750
Wire Wire Line
	7250 1400 9300 1400
Wire Wire Line
	7250 1550 9300 1550
Wire Wire Line
	7450 1150 9300 1150
Wire Wire Line
	7000 1150 7000 1200
Wire Wire Line
	7000 1200 7450 1200
Wire Wire Line
	7450 1200 7450 1150
Wire Wire Line
	7000 1400 7000 1450
Wire Wire Line
	7000 1450 7250 1450
Wire Wire Line
	7250 1450 7250 1400
Wire Wire Line
	7000 1550 7000 1600
Wire Wire Line
	7000 1600 7250 1600
Wire Wire Line
	7250 1600 7250 1550
Wire Wire Line
	8200 1150 8200 1150
Wire Wire Line
	8200 1400 8200 1400
Wire Wire Line
	8200 1550 8200 1550
Wire Wire Line
	2200 1300 5500 1300
Wire Wire Line
	6450 1400 6450 1450
Wire Wire Line
	6450 1450 6700 1450
Wire Wire Line
	6700 1450 6700 1400
Wire Wire Line
	6450 1550 6450 1600
Wire Wire Line
	6450 1600 6700 1600
Wire Wire Line
	6700 1600 6700 1550
Wire Wire Line
	6700 1550 7000 1550
Wire Wire Line
	6700 1400 7000 1400
Wire Wire Line
	6700 2200 6800 2200
Wire Wire Line
	6700 2400 6800 2400
Wire Wire Line
	6700 2550 6800 2550
Wire Wire Line
	6700 2700 6800 2700
Wire Wire Line
	6700 2900 6800 2900
Wire Wire Line
	6700 3050 6800 3050
Wire Wire Line
	6700 3200 6800 3200
Wire Wire Line
	4450 3200 4500 3200
Wire Wire Line
	4350 3350 4500 3350
Wire Wire Line
	4300 1400 6450 1400
Wire Wire Line
	4200 1900 4200 1550
Wire Wire Line
	4200 1550 6450 1550
Wire Wire Line
	5500 2850 4450 2850
Wire Wire Line
	4450 2850 4450 3200
Wire Wire Line
	4350 3350 4350 3000
Wire Wire Line
	4350 3000 5500 3000
Wire Wire Line
	5400 3200 5500 3200
Wire Wire Line
	5400 3750 5500 3750
Wire Wire Line
	5400 3900 5500 3900
$Comp
L +3.3V #PWR01
U 1 1 52A50B64
P 3700 1000
F 0 "#PWR01" H 3700 960 30  0001 C CNN
F 1 "+3.3V" H 3700 1110 30  0000 C CNN
F 2 "" H 3700 1000 60  0000 C CNN
F 3 "" H 3700 1000 60  0000 C CNN
	1    3700 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1000 3700 1000
$Sheet
S 2550 900  1050 500 
U 5224C4FA
F0 "power_regulation" 50
F1 "power_regulation.sch" 50
F2 "3.3V_600mA" O R 3600 1000 60 
F3 "BATT_IN" I L 2550 1150 60 
F4 "PWR_EN" I L 2550 1050 60 
$EndSheet
Wire Wire Line
	2550 1150 2550 1200
Wire Wire Line
	2550 1200 3000 1200
Wire Wire Line
	3000 1200 3000 1150
Wire Wire Line
	3000 1150 7000 1150
Text Notes 8650 7350 0    60   ~ 0
<See future_use.sch for unused items>
Text Notes 6800 4300 0    60   ~ 0
<Need to select proper bypass caps>
$Sheet
S 4300 5100 900  350 
U 52A6745A
F0 "interface_JTAG_2_wire" 50
F1 "interface_JTAG_2_wire.sch" 50
F2 "SBWTCK" O R 5200 5200 60 
F3 "SBWTDIO" B R 5200 5350 60 
$EndSheet
Wire Wire Line
	5200 5200 5500 5200
Wire Wire Line
	5200 5350 5500 5350
Wire Wire Line
	6900 1150 6900 1250
Wire Wire Line
	6900 1250 7000 1250
Connection ~ 6900 1150
$Sheet
S 4500 3650 900  1250
U 5224C595
F0 "interface_usb" 50
F1 "interface_usb.sch" 50
F2 "UART_RX" I R 5400 3750 60 
F3 "UART_TX" O R 5400 3900 60 
F4 "USB_SUSPEND" O L 4500 4100 60 
F5 "USB_5V" U L 4500 4300 60 
F6 "USB_D+" B L 4500 4450 60 
F7 "USB_D-" B L 4500 4600 60 
F8 "USB_ID" B L 4500 4750 60 
F9 "~RESET" I L 4500 3750 60 
$EndSheet
Wire Wire Line
	2200 4300 4500 4300
Wire Wire Line
	2200 4450 4500 4450
Wire Wire Line
	2200 4600 4500 4600
Wire Wire Line
	2200 1150 2300 1150
Wire Wire Line
	2300 1150 2300 2000
Wire Wire Line
	2300 2000 1100 2000
Wire Wire Line
	1100 2000 1100 2250
Wire Wire Line
	1100 2250 1200 2250
Wire Wire Line
	2450 2250 2200 2250
Wire Wire Line
	2450 1050 2450 2250
Wire Wire Line
	2450 1150 2550 1150
Wire Wire Line
	2200 2450 2600 2450
Wire Wire Line
	2600 2450 2600 1750
Connection ~ 4300 1750
Wire Wire Line
	2200 2600 2750 2600
Wire Wire Line
	2750 2600 2750 1900
Connection ~ 4200 1900
$Sheet
S 1200 2150 1000 2750
U 52929F4D
F0 "battery_charger" 50
F1 "battery_charger.sch" 50
F2 "USB_5V" U R 2200 4300 60 
F3 "USB_D+" B R 2200 4450 60 
F4 "USB_D-" B R 2200 4600 60 
F5 "STATUS" O R 2200 2800 60 
F6 "SCL" I R 2200 2450 60 
F7 "SDA" B R 2200 2600 60 
F8 "INT" O R 2200 2950 60 
F9 "OTG_EN" I R 2200 3150 60 
F10 "~CHG_EN" I R 2200 3300 60 
F11 "BATT" B L 1200 2250 60 
F12 "SYS_OUT" O R 2200 2250 60 
$EndSheet
$Comp
L TEST_PT U6
U 1 1 52B19189
P 6850 1800
F 0 "U6" H 6850 1600 60  0001 C CNN
F 1 "TEST_PT" H 6850 2000 60  0001 C CNN
F 2 "~" H 6850 1800 60  0000 C CNN
F 3 "~" H 6850 1800 60  0000 C CNN
	1    6850 1800
	1    0    0    -1  
$EndComp
$Comp
L TEST_PT U5
U 1 1 52B1A44A
P 8050 1650
F 0 "U5" H 8050 1450 60  0001 C CNN
F 1 "TEST_PT" H 8050 1850 60  0001 C CNN
F 2 "~" H 8050 1650 60  0000 C CNN
F 3 "~" H 8050 1650 60  0000 C CNN
	1    8050 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	7900 1650 7950 1650
Wire Wire Line
	6950 1800 7000 1800
$Comp
L TEST_PT U1
U 1 1 52B1ED13
P 9400 1150
F 0 "U1" H 9400 950 60  0001 C CNN
F 1 "TEST_PT" H 9400 1350 60  0001 C CNN
F 2 "~" H 9400 1150 60  0000 C CNN
F 3 "~" H 9400 1150 60  0000 C CNN
	1    9400 1150
	-1   0    0    1   
$EndComp
$Comp
L TEST_PT U2
U 1 1 52B1ED19
P 9400 1400
F 0 "U2" H 9400 1200 60  0001 C CNN
F 1 "TEST_PT" H 9400 1600 60  0001 C CNN
F 2 "~" H 9400 1400 60  0000 C CNN
F 3 "~" H 9400 1400 60  0000 C CNN
	1    9400 1400
	-1   0    0    1   
$EndComp
$Comp
L TEST_PT U4
U 1 1 52B1ED1F
P 9400 1550
F 0 "U4" H 9400 1350 60  0001 C CNN
F 1 "TEST_PT" H 9400 1750 60  0001 C CNN
F 2 "~" H 9400 1550 60  0000 C CNN
F 3 "~" H 9400 1550 60  0000 C CNN
	1    9400 1550
	-1   0    0    1   
$EndComp
$Comp
L TEST_PT U15
U 1 1 52B2155E
P 4350 4100
F 0 "U15" H 4350 3900 60  0001 C CNN
F 1 "TEST_PT" H 4350 4300 60  0001 C CNN
F 2 "~" H 4350 4100 60  0000 C CNN
F 3 "~" H 4350 4100 60  0000 C CNN
	1    4350 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4100 4500 4100
$Comp
L TEST_PT U19
U 1 1 52B2295F
P 4350 4750
F 0 "U19" H 4350 4550 60  0001 C CNN
F 1 "TEST_PT" H 4350 4950 60  0001 C CNN
F 2 "~" H 4350 4750 60  0000 C CNN
F 3 "~" H 4350 4750 60  0000 C CNN
	1    4350 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4750 4500 4750
Wire Wire Line
	2450 1050 2550 1050
Connection ~ 2450 1150
$Comp
L TEST_PT U7
U 1 1 52B2B981
P 1000 2250
F 0 "U7" H 1000 2050 60  0001 C CNN
F 1 "TEST_PT" H 1000 2450 60  0001 C CNN
F 2 "~" H 1000 2250 60  0000 C CNN
F 3 "~" H 1000 2250 60  0000 C CNN
	1    1000 2250
	1    0    0    -1  
$EndComp
$Comp
L TEST_PT U3
U 1 1 52B2C8DE
P 3750 1450
F 0 "U3" H 3750 1250 60  0001 C CNN
F 1 "TEST_PT" H 3750 1650 60  0001 C CNN
F 2 "~" H 3750 1450 60  0000 C CNN
F 3 "~" H 3750 1450 60  0000 C CNN
	1    3750 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 1350 3750 1300
Connection ~ 3750 1300
$Comp
L TEST_PT U12
U 1 1 52B32F47
P 5450 3600
F 0 "U12" H 5450 3400 60  0001 C CNN
F 1 "TEST_PT" H 5450 3800 60  0001 C CNN
F 2 "~" H 5450 3600 60  0000 C CNN
F 3 "~" H 5450 3600 60  0000 C CNN
	1    5450 3600
	0    1    1    0   
$EndComp
$Comp
L TEST_PT U14
U 1 1 52B3393A
P 5450 4050
F 0 "U14" H 5450 3850 60  0001 C CNN
F 1 "TEST_PT" H 5450 4250 60  0001 C CNN
F 2 "~" H 5450 4050 60  0000 C CNN
F 3 "~" H 5450 4050 60  0000 C CNN
	1    5450 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 3700 5450 3750
Connection ~ 5450 3750
Wire Wire Line
	5450 3900 5450 3950
Connection ~ 5450 3900
$Comp
L TEST_PT U18
U 1 1 52B350A4
P 4050 4150
F 0 "U18" H 4050 3950 60  0001 C CNN
F 1 "TEST_PT" H 4050 4350 60  0001 C CNN
F 2 "~" H 4050 4150 60  0000 C CNN
F 3 "~" H 4050 4150 60  0000 C CNN
	1    4050 4150
	0    1    1    0   
$EndComp
$Comp
L TEST_PT U17
U 1 1 52B350AA
P 3900 4150
F 0 "U17" H 3900 3950 60  0001 C CNN
F 1 "TEST_PT" H 3900 4350 60  0001 C CNN
F 2 "~" H 3900 4150 60  0000 C CNN
F 3 "~" H 3900 4150 60  0000 C CNN
	1    3900 4150
	0    1    1    0   
$EndComp
$Comp
L TEST_PT U16
U 1 1 52B350B0
P 3750 4150
F 0 "U16" H 3750 3950 60  0001 C CNN
F 1 "TEST_PT" H 3750 4350 60  0001 C CNN
F 2 "~" H 3750 4150 60  0000 C CNN
F 3 "~" H 3750 4150 60  0000 C CNN
	1    3750 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 4250 4050 4300
Connection ~ 4050 4300
Wire Wire Line
	3900 4250 3900 4450
Connection ~ 3900 4450
Wire Wire Line
	3750 4250 3750 4600
Connection ~ 3750 4600
$Comp
L TEST_PT U11
U 1 1 52B35EA5
P 5450 3350
F 0 "U11" H 5450 3150 60  0001 C CNN
F 1 "TEST_PT" H 5450 3550 60  0001 C CNN
F 2 "~" H 5450 3350 60  0000 C CNN
F 3 "~" H 5450 3350 60  0000 C CNN
	1    5450 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5450 3250 5450 3200
Connection ~ 5450 3200
$Comp
L TEST_PT U8
U 1 1 52B38585
P 2350 2800
F 0 "U8" H 2350 2600 60  0001 C CNN
F 1 "TEST_PT" H 2350 3000 60  0001 C CNN
F 2 "~" H 2350 2800 60  0000 C CNN
F 3 "~" H 2350 2800 60  0000 C CNN
	1    2350 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 2800 2250 2800
Wire Wire Line
	5500 2100 2900 2100
Wire Wire Line
	2900 2100 2900 2950
Wire Wire Line
	2900 2950 2200 2950
$Comp
L TEST_PT U9
U 1 1 52B3BE57
P 2350 3150
F 0 "U9" H 2350 2950 60  0001 C CNN
F 1 "TEST_PT" H 2350 3350 60  0001 C CNN
F 2 "~" H 2350 3150 60  0000 C CNN
F 3 "~" H 2350 3150 60  0000 C CNN
	1    2350 3150
	-1   0    0    1   
$EndComp
$Comp
L TEST_PT U10
U 1 1 52B3C205
P 2350 3300
F 0 "U10" H 2350 3100 60  0001 C CNN
F 1 "TEST_PT" H 2350 3500 60  0001 C CNN
F 2 "~" H 2350 3300 60  0000 C CNN
F 3 "~" H 2350 3300 60  0000 C CNN
	1    2350 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 3150 2200 3150
Wire Wire Line
	2250 3300 2200 3300
$Comp
L TEST_PT U13
U 1 1 52B3F6D1
P 4350 3750
F 0 "U13" H 4350 3550 60  0001 C CNN
F 1 "TEST_PT" H 4350 3950 60  0001 C CNN
F 2 "~" H 4350 3750 60  0000 C CNN
F 3 "~" H 4350 3750 60  0000 C CNN
	1    4350 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3750 4500 3750
Wire Notes Line
	8550 7350 8550 7150
Wire Notes Line
	8550 7150 10450 7150
Wire Notes Line
	10450 7100 8500 7100
Wire Notes Line
	8500 7100 8500 7350
Wire Notes Line
	8450 7350 8450 7050
Wire Notes Line
	8450 7050 10450 7050
$EndSCHEMATC

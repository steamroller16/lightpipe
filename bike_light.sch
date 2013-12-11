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
Sheet 1 18
Title "Bike Light"
Date "11 dec 2013"
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
$EndSheet
$Sheet
S 4500 3650 900  1250
U 5224C595
F0 "interface_usb" 50
F1 "interface_usb.sch" 50
F2 "UART_RX" I R 5400 3750 60 
F3 "UART_TX" O R 5400 3900 60 
F4 "USB_SUSPEND" O R 5400 4100 60 
F5 "USB_5V" U R 5400 4350 60 
F6 "USB_D+" B R 5400 4500 60 
F7 "USB_D-" B R 5400 4650 60 
F8 "USB_ID" B R 5400 4800 60 
$EndSheet
$Sheet
S 7050 5800 900  200 
U 527B19B4
F0 "sensors_temperature" 50
F1 "sensors_temperature.sch" 50
F2 "V_TEMP" O R 7950 5900 60 
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
S 7050 6600 900  650 
U 527F3E83
F0 "output_signal_brake" 50
F1 "output_signal_brake.sch" 50
F2 "SDI" I L 7050 6700 60 
F3 "CLK" I L 7050 6850 60 
F4 "LE" I L 7050 7000 60 
F5 "~OE" I L 7050 7150 60 
F6 "SDO" O R 7950 6700 60 
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
Text Notes 6500 5950 0    60   ~ 0
<Done>
Text Notes 7750 3350 0    60   ~ 0
<Done>
Text Notes 7500 6900 0    60   ~ 0
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
Text Notes 650  3550 0    60   ~ 0
<Make sure chip works at low LiFePO4 voltages>
$Sheet
S 1350 2250 900  750 
U 52929F4D
F0 "battery_charger" 50
F1 "battery_charger.sch" 50
$EndSheet
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
$Sheet
S 8200 1050 900  700 
U 52A3795F
F0 "output_headlight" 50
F1 "output_headlight.sch" 50
F2 "SCL" I L 8200 1400 60 
F3 "SDA" B L 8200 1550 60 
F4 "BATT_IN" I L 8200 1150 60 
$EndSheet
Text Notes 6500 6200 0    60   ~ 0
This should be integrated into the headlight module somehow. \nNot sure yet what way to do that.
Text Notes 8700 5550 0    60   ~ 0
Unused components go here:
Wire Wire Line
	5400 2300 5500 2300
Wire Wire Line
	5400 2450 5500 2450
Wire Wire Line
	5400 2600 5500 2600
Wire Wire Line
	4300 1750 4350 1750
Wire Wire Line
	4300 1400 4300 1750
Wire Wire Line
	4350 1900 4200 1900
Wire Wire Line
	5250 1750 5500 1750
Wire Wire Line
	7950 5900 8050 5900
Wire Notes Line
	10500 5600 6350 5600
Wire Notes Line
	6350 5600 6350 7350
Wire Wire Line
	8200 1450 8450 1450
Wire Wire Line
	8450 1450 8450 1400
Wire Wire Line
	8450 1400 9300 1400
Wire Wire Line
	8200 1600 8450 1600
Wire Wire Line
	8450 1600 8450 1550
Wire Wire Line
	8450 1550 9300 1550
Wire Wire Line
	8200 1200 8650 1200
Wire Wire Line
	8650 1200 8650 1150
Wire Wire Line
	8650 1150 9300 1150
Wire Wire Line
	7000 1150 7000 1200
Wire Wire Line
	7000 1200 7450 1200
Wire Wire Line
	7450 1200 7450 1150
Wire Wire Line
	7450 1150 8200 1150
Wire Wire Line
	7000 1400 7000 1450
Wire Wire Line
	7000 1450 7250 1450
Wire Wire Line
	7250 1450 7250 1400
Wire Wire Line
	7250 1400 8200 1400
Wire Wire Line
	7000 1550 7000 1600
Wire Wire Line
	7000 1600 7250 1600
Wire Wire Line
	7250 1600 7250 1550
Wire Wire Line
	7250 1550 8200 1550
Wire Wire Line
	8200 1150 8200 1200
Wire Wire Line
	8200 1400 8200 1450
Wire Wire Line
	8200 1550 8200 1600
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
	5500 3750 5400 3750
Wire Wire Line
	5400 3900 5500 3900
$Comp
L +3.3V #PWR?
U 1 1 52A50B64
P 3700 1000
F 0 "#PWR?" H 3700 960 30  0001 C CNN
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
$EndSheet
Wire Wire Line
	2200 1150 2550 1150
Wire Wire Line
	2550 1150 2550 1200
Wire Wire Line
	2550 1200 3000 1200
Wire Wire Line
	3000 1200 3000 1150
Wire Wire Line
	3000 1150 7000 1150
Text Notes 2300 800  0    60   ~ 0
<other 3.3V reg and 2.5V reg go in output sheets>
Text Notes 7200 650  0    60   ~ 0
<2.5V 1A Reg goes here (check that LED voltage)>
Wire Notes Line
	7200 700  7200 950 
Text Notes 8400 800  0    60   ~ 0
<3.3V 3A Reg goes here>
Wire Notes Line
	8400 850  8400 950 
Wire Notes Line
	4750 750  4900 750 
Wire Notes Line
	4900 750  4850 800 
Wire Notes Line
	4900 750  4850 700 
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
$Comp
L C C?
U 1 1 52A6923B
P 9800 6050
F 0 "C?" H 9800 6150 40  0000 L CNN
F 1 "Cap Nominal" H 9900 5950 40  0000 L CNN
F 2 "~" H 9838 5900 30  0000 C CNN
F 3 "~" H 9800 6050 60  0000 C CNN
	1    9800 6050
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 52A69241
P 9800 5800
F 0 "#PWR?" H 9800 5760 30  0001 C CNN
F 1 "+3.3V" H 9800 5910 30  0000 C CNN
F 2 "" H 9800 5800 60  0000 C CNN
F 3 "" H 9800 5800 60  0000 C CNN
	1    9800 5800
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 52A69247
P 9800 6300
F 0 "#PWR?" H 9800 6300 40  0001 C CNN
F 1 "DGND" H 9800 6230 40  0000 C CNN
F 2 "" H 9800 6300 60  0000 C CNN
F 3 "" H 9800 6300 60  0000 C CNN
	1    9800 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 5800 9800 5850
Wire Wire Line
	9800 6250 9800 6300
Wire Wire Line
	5200 5200 5500 5200
Wire Wire Line
	5200 5350 5500 5350
Wire Wire Line
	6900 1150 6900 1250
Wire Wire Line
	6900 1250 7000 1250
Connection ~ 6900 1150
$EndSCHEMATC

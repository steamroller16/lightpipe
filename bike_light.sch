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
Sheet 1 15
Title "Bike Light"
Date "2 dec 2013"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1250 1650 1000 350 
U 5224C457
F0 "battery_pack" 50
F1 "battery_pack.sch" 50
F2 "V_PACK" O R 2250 1750 60 
F3 "V_PACK_BUFFERED" O R 2250 1900 60 
$EndSheet
$Sheet
S 1200 2400 1000 950 
U 5224C4FA
F0 "power_regulation" 50
F1 "power_regulation.sch" 50
F2 "V_PACK+" I R 2200 2550 60 
F3 "V_PACK-" I R 2200 2700 60 
F4 "3.3V" O R 2200 2850 60 
$EndSheet
$Sheet
S 5500 1750 1100 2350
U 5224C543
F0 "micro_proc" 50
F1 "micro_proc.sch" 50
$EndSheet
$Sheet
S 1250 4250 900  1250
U 5224C595
F0 "interface_usb" 50
F1 "interface_usb.sch" 50
F2 "UART_RX" I R 2150 4350 60 
F3 "UART_TX" O R 2150 4500 60 
F4 "USB_SUSPEND" O R 2150 4700 60 
F5 "USB_5V" U R 2150 4950 60 
F6 "USB_D+" B R 2150 5100 60 
F7 "USB_D-" B R 2150 5250 60 
F8 "USB_ID" B R 2150 5400 60 
$EndSheet
$Sheet
S 4500 3750 900  200 
U 527B19B4
F0 "sensors_temperature" 50
F1 "sensors_temperature.sch" 50
F2 "V_TEMP" O R 5400 3850 60 
$EndSheet
$Sheet
S 4500 2550 900  350 
U 527B1CA6
F0 "sensors_light" 50
F1 "sensors_light.sch" 50
F2 "V_Light" O R 5400 2650 60 
F3 "CTRL_1" I L 4500 2650 60 
F4 "CTRL_2" I L 4500 2800 60 
$EndSheet
$Sheet
S 4500 3200 900  350 
U 527C7E4B
F0 "sensors_acceleration" 50
F1 "sensors_acceleration.sch" 50
F2 "SCL" I L 4500 3300 60 
F3 "SDA" B L 4500 3450 60 
F4 "~INT" O R 5400 3300 60 
$EndSheet
$Sheet
S 6700 1750 900  650 
U 527F3E83
F0 "output_signal_brake" 50
F1 "output_signal_brake.sch" 50
F2 "SDI" I L 6700 1850 60 
F3 "CLK" I L 6700 2000 60 
F4 "LE" I L 6700 2150 60 
F5 "~OE" I L 6700 2300 60 
F6 "SDO" O R 7600 1850 60 
$EndSheet
$Sheet
S 4500 1750 900  500 
U 527FE989
F0 "sensors_touch" 50
F1 "sensors_touch.sch" 50
F2 "TOUCH_1" O R 5400 1850 60 
F3 "TOUCH_2" O R 5400 2000 60 
F4 "TOUCH_3" O R 5400 2150 60 
$EndSheet
$Sheet
S 6700 2600 900  1200
U 528029D1
F0 "output_general" 50
F1 "output_general.sch" 50
F2 "SPEAKER" I L 6700 2700 60 
F3 "LED_1" I L 6700 2900 60 
F4 "LED_2" I L 6700 3050 60 
F5 "LED_3" I L 6700 3200 60 
F6 "RED_CTRL" I L 6700 3400 60 
F7 "BLUE_CTRL" I L 6700 3550 60 
F8 "GREEN_CTRL" I L 6700 3700 60 
$EndSheet
Wire Wire Line
	5400 1850 5500 1850
Wire Wire Line
	5400 2000 5500 2000
Wire Wire Line
	5400 2150 5500 2150
Wire Wire Line
	4500 2650 4450 2650
Wire Wire Line
	4450 2650 4450 2450
Wire Wire Line
	4450 2450 5500 2450
Wire Wire Line
	4500 2800 4350 2800
Wire Wire Line
	4350 2800 4350 2350
Wire Wire Line
	4350 2350 5500 2350
Wire Wire Line
	5400 2650 5500 2650
Wire Wire Line
	4500 3300 4450 3300
Wire Wire Line
	4450 3300 4450 3100
Wire Wire Line
	4450 3100 5500 3100
Wire Wire Line
	4500 3450 4350 3450
Wire Wire Line
	4350 3450 4350 3000
Wire Wire Line
	4350 3000 5500 3000
Wire Wire Line
	5400 3300 5500 3300
Wire Wire Line
	5400 3850 5500 3850
Wire Wire Line
	6600 1850 6700 1850
Wire Wire Line
	6700 2000 6600 2000
Wire Wire Line
	6700 2150 6600 2150
Wire Wire Line
	6700 2300 6600 2300
Wire Wire Line
	7600 1850 7850 1850
Wire Wire Line
	7850 1850 7850 2500
Wire Wire Line
	7850 2500 6600 2500
Wire Wire Line
	6700 2700 6600 2700
Wire Wire Line
	6700 2900 6600 2900
Wire Wire Line
	6700 3050 6600 3050
Wire Wire Line
	6700 3200 6600 3200
Wire Wire Line
	6700 3400 6600 3400
Wire Wire Line
	6700 3550 6600 3550
Wire Wire Line
	6700 3700 6600 3700
Text Notes 3950 1900 0    60   ~ 0
<Done>
Text Notes 3950 2700 0    60   ~ 0
<Done>
Text Notes 3950 3900 0    60   ~ 0
<Done>
Text Notes 7850 3500 0    60   ~ 0
<Done>
Text Notes 7900 2100 0    60   ~ 0
<Done>
Text Notes 5700 2400 0    60   ~ 0
<Choose one!>
Text Notes 3950 3400 0    60   ~ 0
<Done>
Text Notes 2350 1750 0    60   ~ 0
<Sense Resistor??>
Text Notes 2350 1850 0    60   ~ 0
<Fuse??>
Text Notes 2350 1950 0    60   ~ 0
<Current measuring for \nbattery level detection??>
Text Notes 2300 4850 0    60   ~ 0
<Done>
Text Notes 650  3550 0    60   ~ 0
<Make sure chip works at low LiFePO4 voltages>
$Sheet
S 1250 700  900  750 
U 52929F4D
F0 "battery_charger" 50
F1 "battery_charger.sch" 50
$EndSheet
$EndSCHEMATC

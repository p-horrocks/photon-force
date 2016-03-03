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
LIBS:parts
LIBS:commandpod-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date "3 mar 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PHOTON PH?
U 1 1 56BF15F2
P 5500 4000
F 0 "PH?" H 5350 3350 60  0001 C CNN
F 1 "PHOTON" V 5500 4000 60  0000 C CNN
F 2 "~" H 5460 4160 60  0000 C CNN
F 3 "~" H 5460 4160 60  0000 C CNN
	1    5500 4000
	1    0    0    -1  
$EndComp
NoConn ~ 6050 3550
NoConn ~ 6050 3650
NoConn ~ 4950 3650
NoConn ~ 4950 3750
NoConn ~ 6050 3850
NoConn ~ 6050 3950
$Comp
L +3.3V #PWR?
U 1 1 56D62628
P 6250 3300
F 0 "#PWR?" H 6250 3260 30  0001 C CNN
F 1 "+3.3V" H 6250 3410 30  0000 C CNN
F 2 "" H 6250 3300 60  0000 C CNN
F 3 "" H 6250 3300 60  0000 C CNN
	1    6250 3300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 56D6267B
P 4750 3300
F 0 "#PWR?" H 4750 3390 20  0001 C CNN
F 1 "+5V" H 4750 3390 30  0000 C CNN
F 2 "" H 4750 3300 60  0000 C CNN
F 3 "" H 4750 3300 60  0000 C CNN
	1    4750 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56D626D2
P 6250 3900
F 0 "#PWR?" H 6250 3900 30  0001 C CNN
F 1 "GND" H 6250 3830 30  0001 C CNN
F 2 "" H 6250 3900 60  0000 C CNN
F 3 "" H 6250 3900 60  0000 C CNN
	1    6250 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56D626E1
P 4750 3700
F 0 "#PWR?" H 4750 3700 30  0001 C CNN
F 1 "GND" H 4750 3630 30  0001 C CNN
F 2 "" H 4750 3700 60  0000 C CNN
F 3 "" H 4750 3700 60  0000 C CNN
	1    4750 3700
	1    0    0    -1  
$EndComp
$Sheet
S 3150 4450 750  450 
U 56D7A353
F0 "PowerSupply" 50
F1 "PowerSupply.sch" 50
F2 "Power Enable" I R 3900 4600 60 
F3 "Power Sense" I R 3900 4750 60 
$EndSheet
$Sheet
S 3150 3750 750  400 
U 56D7C127
F0 "Audio" 50
F1 "Audio.sch" 50
F2 "Line Out" I R 3900 3950 60 
$EndSheet
$Sheet
S 4850 6000 1300 750 
U 56D7C9B4
F0 "SensorPodIface" 50
F1 "SensorPodIface.sch" 50
F2 "IR Clock" I R 6150 6550 60 
F3 "IR Enable" I R 6150 6350 60 
F4 "NeoPixels" I R 6150 6150 60 
F5 "Body IR Out" I L 4850 6150 60 
F6 "Chest IR Out" I L 4850 6300 60 
F7 "Left IR Out" I L 4850 6450 60 
F8 "Right IR Out" I L 4850 6600 60 
$EndSheet
$Sheet
S 3150 5150 750  450 
U 56D7F0B9
F0 "GunIface" 50
F1 "GunIface.sch" 50
F2 "Trigger" I R 3900 5450 60 
F3 "IR LED" I R 3900 5300 60 
$EndSheet
Wire Wire Line
	6050 3450 6250 3450
Wire Wire Line
	6250 3450 6250 3300
Wire Wire Line
	4750 3300 4750 3450
Wire Wire Line
	4750 3450 4950 3450
Wire Wire Line
	4750 3700 4750 3550
Wire Wire Line
	4750 3550 4950 3550
Wire Wire Line
	6050 3750 6250 3750
Wire Wire Line
	6250 3750 6250 3900
Wire Wire Line
	3900 3950 4950 3950
Wire Wire Line
	6700 4350 6700 5450
Wire Wire Line
	6700 4350 6050 4350
Wire Wire Line
	6050 4250 6800 4250
Wire Wire Line
	6800 4250 6800 6150
Wire Wire Line
	6800 6150 6150 6150
Wire Wire Line
	6050 4150 6900 4150
Wire Wire Line
	6900 4150 6900 6350
Wire Wire Line
	6900 6350 6150 6350
Wire Wire Line
	6050 4050 7000 4050
Wire Wire Line
	7000 4050 7000 6550
Wire Wire Line
	7000 6550 6150 6550
Wire Wire Line
	4300 3850 4300 5300
Wire Wire Line
	4300 3850 4950 3850
Wire Wire Line
	4300 5300 3900 5300
Wire Wire Line
	6700 5450 3900 5450
Wire Wire Line
	3900 4600 4200 4600
Wire Wire Line
	4200 4600 4200 4250
Wire Wire Line
	4200 4250 4950 4250
Wire Wire Line
	4850 6150 4700 6150
Wire Wire Line
	4700 6150 4700 4450
Wire Wire Line
	4700 4450 4950 4450
Wire Wire Line
	4950 4550 4800 4550
Wire Wire Line
	4800 4550 4800 4750
Wire Wire Line
	4800 4750 3900 4750
Wire Wire Line
	4950 4350 4600 4350
Wire Wire Line
	4600 4350 4600 6300
Wire Wire Line
	4600 6300 4850 6300
Wire Wire Line
	4950 4150 4500 4150
Wire Wire Line
	4500 4150 4500 6450
Wire Wire Line
	4500 6450 4850 6450
Wire Wire Line
	4950 4050 4400 4050
Wire Wire Line
	4400 4050 4400 6600
Wire Wire Line
	4400 6600 4850 6600
$Sheet
S 7450 4250 750  450 
U 56D821A3
F0 "Haptic" 50
F1 "Haptic.sch" 50
F2 "SDA" I L 7450 4550 60 
F3 "SCL" I L 7450 4400 60 
$EndSheet
Wire Wire Line
	6050 4450 7100 4450
Wire Wire Line
	7100 4450 7100 4400
Wire Wire Line
	7100 4400 7450 4400
Wire Wire Line
	6050 4550 7450 4550
$EndSCHEMATC

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
LIBS:photon-force-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date "16 feb 2016"
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
P 5500 3900
F 0 "PH?" H 5350 3250 60  0001 C CNN
F 1 "PHOTON" V 5500 3900 60  0000 C CNN
F 2 "~" H 5460 4060 60  0000 C CNN
F 3 "~" H 5460 4060 60  0000 C CNN
	1    5500 3900
	1    0    0    -1  
$EndComp
$Comp
L IRFML8244TRPBF Q?
U 1 1 56BF1634
P 7100 4150
F 0 "Q?" V 7250 4300 60  0000 C CNN
F 1 "IRFML8244TRPBF" H 6350 3670 60  0001 C CNN
F 2 "~" H 6300 4150 60  0000 C CNN
F 3 "~" H 6300 4150 60  0000 C CNN
	1    7100 4150
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR?
U 1 1 56BF1657
P 7050 3700
F 0 "#PWR?" H 7050 3660 30  0001 C CNN
F 1 "+3.3V" H 7050 3810 30  0000 C CNN
F 2 "" H 7050 3700 60  0000 C CNN
F 3 "" H 7050 3700 60  0000 C CNN
	1    7050 3700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 56BF1668
P 7400 3700
F 0 "#PWR?" H 7400 3790 20  0001 C CNN
F 1 "+5V" H 7400 3790 30  0000 C CNN
F 2 "" H 7400 3700 60  0000 C CNN
F 3 "" H 7400 3700 60  0000 C CNN
	1    7400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4150 6800 4150
Wire Wire Line
	7050 3700 7050 3850
$Comp
L GENERIC_RESISTOR R?
U 1 1 56BF177E
P 7400 3900
F 0 "R?" V 7450 3800 60  0000 C CNN
F 1 "GENERIC_RESISTOR" H 7440 3680 60  0001 C CNN
F 2 "~" H 7350 3650 60  0000 C CNN
F 3 "~" H 7350 3650 60  0000 C CNN
	1    7400 3900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 4100 7400 4150
Wire Wire Line
	7400 4150 7650 4150
$Sheet
S 1600 1500 1700 1350
U 56BF0EB9
F0 "Gun" 50
F1 "gun.sch" 50
$EndSheet
$Sheet
S 9700 2500 1200 1050
U 56BF2119
F0 "Sensor Pod (back)" 50
F1 "sensorpod.sch" 50
F2 "NeoPixels" I L 9700 2700 60 
F3 "IR Recv Enable" I L 9700 2900 60 
F4 "IR Recv Clock" I L 9700 3100 60 
F5 "IR Recv Output" O L 9700 3300 60 
$EndSheet
$Sheet
S 9700 1000 1200 1050
U 56BF0E3B
F0 "Sensor Pod (chest)" 50
F1 "sensorpod.sch" 50
F2 "NeoPixels" I L 9700 1200 60 
F3 "IR Recv Enable" I L 9700 1400 60 
F4 "IR Recv Clock" I L 9700 1600 60 
F5 "IR Recv Output" O L 9700 1800 60 
$EndSheet
$Sheet
S 9700 5700 1200 1050
U 56C34A19
F0 "Sensor Pod (left)" 50
F1 "sensorpod.sch" 50
F2 "NeoPixels" I L 9700 5900 60 
F3 "IR Recv Enable" I L 9700 6100 60 
F4 "IR Recv Clock" I L 9700 6300 60 
F5 "IR Recv Output" O L 9700 6500 60 
$EndSheet
$Sheet
S 9700 4100 1200 1050
U 56C34E98
F0 "Sensor Pod (right)" 50
F1 "sensorpod.sch" 50
F2 "NeoPixels" I L 9700 4300 60 
F3 "IR Recv Enable" I L 9700 4500 60 
F4 "IR Recv Clock" I L 9700 4700 60 
F5 "IR Recv Output" O L 9700 4900 60 
$EndSheet
$EndSCHEMATC

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
Sheet 5 6
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
L GENERIC_RESISTOR R?
U 1 1 56D7F380
P 5750 3550
F 0 "R?" H 5760 3430 60  0000 C CNN
F 1 "GENERIC_RESISTOR" H 5790 3330 60  0001 C CNN
F 2 "~" H 5700 3300 60  0000 C CNN
F 3 "~" H 5700 3300 60  0000 C CNN
F 4 "~" H 5860 3530 60  0000 C CNN "Resistance"
F 5 "~" H 5960 3630 60  0001 C CNN "Part #"
	1    5750 3550
	1    0    0    -1  
$EndComp
$Comp
L IRFML8244TRPBF Q?
U 1 1 56D7F387
P 5300 4550
F 0 "Q?" V 5450 4700 60  0000 C CNN
F 1 "IRFML8244TRPBF" H 4550 4070 60  0001 C CNN
F 2 "~" H 4500 4550 60  0000 C CNN
F 3 "~" H 4500 4550 60  0000 C CNN
F 4 "IRFML8244TRPBF" H 5600 4500 60  0001 C CNN "Part #"
	1    5300 4550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 56D7F38D
P 4600 4800
F 0 "#PWR?" H 4600 4800 30  0001 C CNN
F 1 "GND" H 4600 4730 30  0001 C CNN
F 2 "" H 4600 4800 60  0000 C CNN
F 3 "" H 4600 4800 60  0000 C CNN
	1    4600 4800
	1    0    0    -1  
$EndComp
$Comp
L HEADER_(8_WAY) P?
U 1 1 56D7F394
P 6750 4450
F 0 "P?" H 6750 4150 60  0000 C CNN
F 1 "HEADER_(8_WAY)" H 6750 4650 60  0001 C CNN
F 2 "~" H 6800 4500 60  0000 C CNN
F 3 "~" H 6800 4500 60  0000 C CNN
F 4 "~" H 6850 4250 60  0001 C CNN "Part #"
	1    6750 4450
	1    0    0    -1  
$EndComp
Text GLabel 7150 4450 2    60   Input ~ 0
Audio +
Text GLabel 7150 4650 2    60   Input ~ 0
Audio -
$Comp
L GND #PWR?
U 1 1 56D7F39E
P 6400 4800
F 0 "#PWR?" H 6400 4800 30  0001 C CNN
F 1 "GND" H 6400 4730 30  0001 C CNN
F 2 "" H 6400 4800 60  0000 C CNN
F 3 "" H 6400 4800 60  0000 C CNN
	1    6400 4800
	1    0    0    -1  
$EndComp
NoConn ~ 6900 4650
$Comp
L +5V #PWR?
U 1 1 56D7F3A6
P 6400 4200
F 0 "#PWR?" H 6400 4290 20  0001 C CNN
F 1 "+5V" H 6400 4290 30  0000 C CNN
F 2 "" H 6400 4200 60  0000 C CNN
F 3 "" H 6400 4200 60  0000 C CNN
	1    6400 4200
	1    0    0    -1  
$EndComp
NoConn ~ 6600 4450
Wire Wire Line
	4600 4800 4600 4550
Wire Wire Line
	4600 4550 5000 4550
Wire Wire Line
	5250 3550 5250 4250
Wire Wire Line
	5600 4550 6600 4550
Wire Wire Line
	6400 4650 6600 4650
Wire Wire Line
	6900 4450 7150 4450
Wire Wire Line
	7000 4350 6900 4350
Wire Wire Line
	7000 3700 7000 4350
Wire Wire Line
	6900 4550 7000 4550
Wire Wire Line
	7000 4550 7000 4650
Wire Wire Line
	7000 4650 7150 4650
Wire Wire Line
	6400 4200 6400 4350
Wire Wire Line
	6400 4350 6600 4350
Wire Wire Line
	5250 3550 5550 3550
Text HLabel 7150 3700 2    60   Input ~ 0
Trigger
Text HLabel 7150 3550 2    60   Input ~ 0
IR LED
Wire Wire Line
	7000 3700 7150 3700
Wire Wire Line
	5950 3550 7150 3550
Wire Wire Line
	6400 4650 6400 4800
$EndSCHEMATC

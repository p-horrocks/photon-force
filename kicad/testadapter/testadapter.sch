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
LIBS:testadapter-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "21 sep 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L HEADER_(8_WAY) P2
U 1 1 57E11ACB
P 6700 2600
F 0 "P2" H 6700 2300 60  0000 C CNN
F 1 "HEADER_(8_WAY)" H 6700 2800 60  0001 C CNN
F 2 "Header_4x2" H 6750 2650 60  0001 C CNN
F 3 "~" H 6750 2650 60  0000 C CNN
F 4 "~" H 6800 2400 60  0001 C CNN "Part #"
	1    6700 2600
	1    0    0    -1  
$EndComp
$Comp
L HEADER_(8_WAY) P3
U 1 1 57E11AE4
P 6700 3500
F 0 "P3" H 6700 3200 60  0000 C CNN
F 1 "HEADER_(8_WAY)" H 6700 3700 60  0001 C CNN
F 2 "Header_4x2" H 6750 3550 60  0001 C CNN
F 3 "~" H 6750 3550 60  0000 C CNN
F 4 "~" H 6800 3300 60  0001 C CNN "Part #"
	1    6700 3500
	1    0    0    -1  
$EndComp
$Comp
L HEADER_(8_WAY) P5
U 1 1 57E11AFD
P 6700 5300
F 0 "P5" H 6700 5000 60  0000 C CNN
F 1 "HEADER_(8_WAY)" H 6700 5500 60  0001 C CNN
F 2 "Header_4x2" H 6750 5350 60  0001 C CNN
F 3 "~" H 6750 5350 60  0000 C CNN
F 4 "~" H 6800 5100 60  0001 C CNN "Part #"
	1    6700 5300
	1    0    0    -1  
$EndComp
$Comp
L HEADER_(8_WAY) P4
U 1 1 57E11B16
P 6700 4400
F 0 "P4" H 6700 4100 60  0000 C CNN
F 1 "HEADER_(8_WAY)" H 6700 4600 60  0001 C CNN
F 2 "Header_4x2" H 6750 4450 60  0001 C CNN
F 3 "~" H 6750 4450 60  0000 C CNN
F 4 "~" H 6800 4200 60  0001 C CNN "Part #"
	1    6700 4400
	1    0    0    -1  
$EndComp
$Comp
L HEADER_5X2 P1
U 1 1 57E12194
P 4800 3900
F 0 "P1" H 4800 3500 60  0000 C CNN
F 1 "HEADER_5X2" H 4800 4100 60  0001 C CNN
F 2 "Header_5x2" H 4850 3950 60  0001 C CNN
F 3 "~" H 4850 3950 60  0000 C CNN
F 4 "~" H 4900 3700 60  0001 C CNN "Part #"
	1    4800 3900
	1    0    0    -1  
$EndComp
$Comp
L IRFML8244TRPBF Q1
U 1 1 57E229BF
P 3100 3050
F 0 "Q1" V 3300 2900 60  0000 C CNN
F 1 "IRFML8244TRPBF" H 2350 2570 60  0001 C CNN
F 2 "SOT-23" H 2300 3050 60  0001 C CNN
F 3 "~" H 2300 3050 60  0000 C CNN
F 4 "IRFML8244TRPBF" H 3400 3000 60  0001 C CNN "Part #"
	1    3100 3050
	0    -1   -1   0   
$EndComp
$Comp
L IRFML8244TRPBF Q2
U 1 1 57E229D8
P 3100 4150
F 0 "Q2" V 3300 4000 60  0000 C CNN
F 1 "IRFML8244TRPBF" H 2350 3670 60  0001 C CNN
F 2 "SOT-23" H 2300 4150 60  0001 C CNN
F 3 "~" H 2300 4150 60  0000 C CNN
F 4 "IRFML8244TRPBF" H 3400 4100 60  0001 C CNN "Part #"
	1    3100 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 3750 4550 3800
Wire Wire Line
	4550 3800 4650 3800
Wire Wire Line
	4950 3800 5050 3800
Wire Wire Line
	5050 3800 5050 3750
$Comp
L +5V #PWR01
U 1 1 57E22A97
P 6450 2450
F 0 "#PWR01" H 6450 2540 20  0001 C CNN
F 1 "+5V" H 6450 2540 30  0000 C CNN
F 2 "" H 6450 2450 60  0000 C CNN
F 3 "" H 6450 2450 60  0000 C CNN
	1    6450 2450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 57E22AAE
P 6450 3350
F 0 "#PWR02" H 6450 3440 20  0001 C CNN
F 1 "+5V" H 6450 3440 30  0000 C CNN
F 2 "" H 6450 3350 60  0000 C CNN
F 3 "" H 6450 3350 60  0000 C CNN
	1    6450 3350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 57E22AB4
P 6450 4250
F 0 "#PWR03" H 6450 4340 20  0001 C CNN
F 1 "+5V" H 6450 4340 30  0000 C CNN
F 2 "" H 6450 4250 60  0000 C CNN
F 3 "" H 6450 4250 60  0000 C CNN
	1    6450 4250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR04
U 1 1 57E22ABA
P 6450 5150
F 0 "#PWR04" H 6450 5240 20  0001 C CNN
F 1 "+5V" H 6450 5240 30  0000 C CNN
F 2 "" H 6450 5150 60  0000 C CNN
F 3 "" H 6450 5150 60  0000 C CNN
	1    6450 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 5150 6450 5200
Wire Wire Line
	6450 5200 6550 5200
Wire Wire Line
	6450 4250 6450 4300
Wire Wire Line
	6450 4300 6550 4300
Wire Wire Line
	6450 3350 6450 3400
Wire Wire Line
	6450 3400 6550 3400
Wire Wire Line
	6450 2450 6450 2500
Wire Wire Line
	6450 2500 6550 2500
NoConn ~ 6850 5200
NoConn ~ 6850 4300
NoConn ~ 6850 3400
NoConn ~ 6850 2500
$Comp
L +3.3V #PWR05
U 1 1 57E22AE2
P 3250 3450
F 0 "#PWR05" H 3250 3410 30  0001 C CNN
F 1 "+3.3V" H 3250 3560 30  0000 C CNN
F 2 "" H 3250 3450 60  0000 C CNN
F 3 "" H 3250 3450 60  0000 C CNN
	1    3250 3450
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR06
U 1 1 57E22AF1
P 3250 4550
F 0 "#PWR06" H 3250 4510 30  0001 C CNN
F 1 "+3.3V" H 3250 4660 30  0000 C CNN
F 2 "" H 3250 4550 60  0000 C CNN
F 3 "" H 3250 4550 60  0000 C CNN
	1    3250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 4450 3150 4650
Wire Wire Line
	3150 3350 3150 3550
$Comp
L IRFML8244TRPBF Q3
U 1 1 57E22B1A
P 3100 5250
F 0 "Q3" V 3300 5100 60  0000 C CNN
F 1 "IRFML8244TRPBF" H 2350 4770 60  0001 C CNN
F 2 "SOT-23" H 2300 5250 60  0001 C CNN
F 3 "~" H 2300 5250 60  0000 C CNN
F 4 "IRFML8244TRPBF" H 3400 5200 60  0001 C CNN "Part #"
	1    3100 5250
	0    -1   -1   0   
$EndComp
$Comp
L +3.3V #PWR07
U 1 1 57E22B20
P 3250 5650
F 0 "#PWR07" H 3250 5610 30  0001 C CNN
F 1 "+3.3V" H 3250 5760 30  0000 C CNN
F 2 "" H 3250 5650 60  0000 C CNN
F 3 "" H 3250 5650 60  0000 C CNN
	1    3250 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 5550 3150 5750
$Comp
L GND #PWR08
U 1 1 57E22B29
P 6450 2900
F 0 "#PWR08" H 6450 2900 30  0001 C CNN
F 1 "GND" H 6450 2830 30  0001 C CNN
F 2 "" H 6450 2900 60  0000 C CNN
F 3 "" H 6450 2900 60  0000 C CNN
	1    6450 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 57E22B38
P 6450 3800
F 0 "#PWR09" H 6450 3800 30  0001 C CNN
F 1 "GND" H 6450 3730 30  0001 C CNN
F 2 "" H 6450 3800 60  0000 C CNN
F 3 "" H 6450 3800 60  0000 C CNN
	1    6450 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 57E22B47
P 6450 4700
F 0 "#PWR010" H 6450 4700 30  0001 C CNN
F 1 "GND" H 6450 4630 30  0001 C CNN
F 2 "" H 6450 4700 60  0000 C CNN
F 3 "" H 6450 4700 60  0000 C CNN
	1    6450 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 57E22B56
P 6450 5600
F 0 "#PWR011" H 6450 5600 30  0001 C CNN
F 1 "GND" H 6450 5530 30  0001 C CNN
F 2 "" H 6450 5600 60  0000 C CNN
F 3 "" H 6450 5600 60  0000 C CNN
	1    6450 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 57E22B65
P 6950 4700
F 0 "#PWR012" H 6950 4700 30  0001 C CNN
F 1 "GND" H 6950 4630 30  0001 C CNN
F 2 "" H 6950 4700 60  0000 C CNN
F 3 "" H 6950 4700 60  0000 C CNN
	1    6950 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 57E22B74
P 6950 5600
F 0 "#PWR013" H 6950 5600 30  0001 C CNN
F 1 "GND" H 6950 5530 30  0001 C CNN
F 2 "" H 6950 5600 60  0000 C CNN
F 3 "" H 6950 5600 60  0000 C CNN
	1    6950 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 57E22B8D
P 6950 3800
F 0 "#PWR014" H 6950 3800 30  0001 C CNN
F 1 "GND" H 6950 3730 30  0001 C CNN
F 2 "" H 6950 3800 60  0000 C CNN
F 3 "" H 6950 3800 60  0000 C CNN
	1    6950 3800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 57E22B9C
P 6950 2900
F 0 "#PWR015" H 6950 2900 30  0001 C CNN
F 1 "GND" H 6950 2830 30  0001 C CNN
F 2 "" H 6950 2900 60  0000 C CNN
F 3 "" H 6950 2900 60  0000 C CNN
	1    6950 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 2600 6450 2600
Wire Wire Line
	6450 2600 6450 2900
Wire Wire Line
	6850 2700 6950 2700
Wire Wire Line
	6950 2700 6950 2900
Wire Wire Line
	6550 3500 6450 3500
Wire Wire Line
	6450 3500 6450 3800
Wire Wire Line
	6550 4400 6450 4400
Wire Wire Line
	6450 4400 6450 4700
Wire Wire Line
	6850 4500 6950 4500
Wire Wire Line
	6950 4500 6950 4700
Wire Wire Line
	6850 3600 6950 3600
Wire Wire Line
	6950 3600 6950 3800
Wire Wire Line
	6550 5300 6450 5300
Wire Wire Line
	6450 5300 6450 5600
Wire Wire Line
	6850 5400 6950 5400
Wire Wire Line
	6950 5400 6950 5600
$Comp
L GENERIC_RESISTOR R1
U 1 1 57E22CAB
P 2700 2750
F 0 "R1" V 2650 2650 60  0000 C CNN
F 1 "GENERIC_RESISTOR" H 2740 2530 60  0001 C CNN
F 2 "0805" H 2650 2500 60  0001 C CNN
F 3 "~" H 2650 2500 60  0000 C CNN
F 4 "10K" V 2750 2600 60  0000 C CNN "Resistance"
F 5 "~" H 2910 2830 60  0001 C CNN "Part #"
	1    2700 2750
	0    1    1    0   
$EndComp
$Comp
L GENERIC_RESISTOR R2
U 1 1 57E22D04
P 2700 3850
F 0 "R2" V 2650 3750 60  0000 C CNN
F 1 "GENERIC_RESISTOR" H 2740 3630 60  0001 C CNN
F 2 "0805" H 2650 3600 60  0001 C CNN
F 3 "~" H 2650 3600 60  0000 C CNN
F 4 "10K" V 2750 3700 60  0000 C CNN "Resistance"
F 5 "~" H 2910 3930 60  0001 C CNN "Part #"
	1    2700 3850
	0    1    1    0   
$EndComp
$Comp
L GENERIC_RESISTOR R3
U 1 1 57E22D0C
P 2700 4950
F 0 "R3" V 2650 4850 60  0000 C CNN
F 1 "GENERIC_RESISTOR" H 2740 4730 60  0001 C CNN
F 2 "0805" H 2650 4700 60  0001 C CNN
F 3 "~" H 2650 4700 60  0000 C CNN
F 4 "10K" V 2750 4800 60  0000 C CNN "Resistance"
F 5 "~" H 2910 5030 60  0001 C CNN "Part #"
	1    2700 4950
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR016
U 1 1 57E22D14
P 2700 4650
F 0 "#PWR016" H 2700 4740 20  0001 C CNN
F 1 "+5V" H 2700 4740 30  0000 C CNN
F 2 "" H 2700 4650 60  0000 C CNN
F 3 "" H 2700 4650 60  0000 C CNN
	1    2700 4650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR017
U 1 1 57E22D23
P 2700 2450
F 0 "#PWR017" H 2700 2540 20  0001 C CNN
F 1 "+5V" H 2700 2540 30  0000 C CNN
F 2 "" H 2700 2450 60  0000 C CNN
F 3 "" H 2700 2450 60  0000 C CNN
	1    2700 2450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR018
U 1 1 57E22D32
P 2700 3550
F 0 "#PWR018" H 2700 3640 20  0001 C CNN
F 1 "+5V" H 2700 3640 30  0000 C CNN
F 2 "" H 2700 3550 60  0000 C CNN
F 3 "" H 2700 3550 60  0000 C CNN
	1    2700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5250 2600 5250
Wire Wire Line
	2800 4150 2600 4150
Wire Wire Line
	2800 3050 2600 3050
Text GLabel 2600 3050 0    60   Input ~ 0
NeoPixels
Text GLabel 2600 4150 0    60   Input ~ 0
Load
Text GLabel 2600 5250 0    60   Input ~ 0
Clock
Connection ~ 2700 5250
Connection ~ 2700 4150
Connection ~ 2700 3050
Text GLabel 7050 2600 2    60   Input ~ 0
NeoPixels
Text GLabel 7050 3500 2    60   Input ~ 0
NeoPixels
Text GLabel 7050 4400 2    60   Input ~ 0
NeoPixels
Text GLabel 7050 5300 2    60   Input ~ 0
NeoPixels
Wire Wire Line
	7050 5300 6850 5300
Wire Wire Line
	6850 4400 7050 4400
Wire Wire Line
	6850 3500 7050 3500
Wire Wire Line
	6850 2600 7050 2600
Text GLabel 7050 2800 2    60   Input ~ 0
Clock
Text GLabel 7050 3700 2    60   Input ~ 0
Clock
Text GLabel 7050 4600 2    60   Input ~ 0
Clock
Text GLabel 7050 5500 2    60   Input ~ 0
Clock
Wire Wire Line
	7050 5500 6850 5500
Wire Wire Line
	6850 4600 7050 4600
Wire Wire Line
	6850 3700 7050 3700
Wire Wire Line
	6850 2800 7050 2800
Text GLabel 6350 5500 0    60   Input ~ 0
Load
Text GLabel 6350 4600 0    60   Input ~ 0
Load
Text GLabel 6350 3700 0    60   Input ~ 0
Load
Text GLabel 6350 2800 0    60   Input ~ 0
Load
Wire Wire Line
	6350 2800 6550 2800
Wire Wire Line
	6350 3700 6550 3700
Wire Wire Line
	6350 4600 6550 4600
Wire Wire Line
	6350 5500 6550 5500
Wire Wire Line
	6550 2700 4400 2700
Wire Wire Line
	4400 2700 4400 4100
Wire Wire Line
	4400 4100 4650 4100
Wire Wire Line
	6550 3600 5400 3600
Wire Wire Line
	5400 3600 5400 4100
Wire Wire Line
	5400 4100 4950 4100
Wire Wire Line
	6550 4500 4400 4500
Wire Wire Line
	4400 4500 4400 4200
Wire Wire Line
	4400 4200 4650 4200
Wire Wire Line
	6550 5400 5400 5400
Wire Wire Line
	5400 5400 5400 4200
Wire Wire Line
	5400 4200 4950 4200
Wire Wire Line
	4550 4300 4550 3900
Wire Wire Line
	4550 3900 4650 3900
Wire Wire Line
	4950 3900 5150 3900
Wire Wire Line
	2700 3050 2700 2950
Wire Wire Line
	2700 2550 2700 2450
Wire Wire Line
	2700 3650 2700 3550
Wire Wire Line
	2700 4150 2700 4050
Wire Wire Line
	2700 5250 2700 5150
Wire Wire Line
	2700 4650 2700 4750
Wire Wire Line
	3150 3550 3250 3550
Wire Wire Line
	3250 3550 3250 3450
Wire Wire Line
	3150 4650 3250 4650
Wire Wire Line
	3250 4650 3250 4550
Wire Wire Line
	3150 5750 3250 5750
Wire Wire Line
	3250 5750 3250 5650
Wire Wire Line
	3400 3050 5150 3050
Wire Wire Line
	5150 3050 5150 3900
Wire Wire Line
	4650 4000 3800 4000
Wire Wire Line
	3800 4000 3800 4150
Wire Wire Line
	3800 4150 3400 4150
Wire Wire Line
	4950 4000 5150 4000
Wire Wire Line
	5150 4000 5150 5250
Wire Wire Line
	5150 5250 3400 5250
$Comp
L +5V #PWR019
U 1 1 57E2373F
P 4550 3750
F 0 "#PWR019" H 4550 3840 20  0001 C CNN
F 1 "+5V" H 4550 3840 30  0000 C CNN
F 2 "" H 4550 3750 60  0000 C CNN
F 3 "" H 4550 3750 60  0000 C CNN
	1    4550 3750
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR020
U 1 1 57E2374E
P 5050 3750
F 0 "#PWR020" H 5050 3710 30  0001 C CNN
F 1 "+3.3V" H 5050 3860 30  0000 C CNN
F 2 "" H 5050 3750 60  0000 C CNN
F 3 "" H 5050 3750 60  0000 C CNN
	1    5050 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 57E23A94
P 4550 4300
F 0 "#PWR021" H 4550 4300 30  0001 C CNN
F 1 "GND" H 4550 4230 30  0001 C CNN
F 2 "" H 4550 4300 60  0000 C CNN
F 3 "" H 4550 4300 60  0000 C CNN
	1    4550 4300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
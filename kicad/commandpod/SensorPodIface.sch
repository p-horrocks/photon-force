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
Sheet 4 6
Title ""
Date "7 mar 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L IRFML8244TRPBF Q2
U 1 1 56D7CA74
P 3100 4150
F 0 "Q2" V 3250 4300 60  0000 C CNN
F 1 "IRFML8244TRPBF" H 2350 3670 60  0001 C CNN
F 2 "~" H 2300 4150 60  0000 C CNN
F 3 "~" H 2300 4150 60  0000 C CNN
	1    3100 4150
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR020
U 1 1 56D7CA7A
P 3050 3700
F 0 "#PWR020" H 3050 3660 30  0001 C CNN
F 1 "+3.3V" H 3050 3810 30  0000 C CNN
F 2 "" H 3050 3700 60  0000 C CNN
F 3 "" H 3050 3700 60  0000 C CNN
	1    3050 3700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR021
U 1 1 56D7CA80
P 3400 3700
F 0 "#PWR021" H 3400 3790 20  0001 C CNN
F 1 "+5V" H 3400 3790 30  0000 C CNN
F 2 "" H 3400 3700 60  0000 C CNN
F 3 "" H 3400 3700 60  0000 C CNN
	1    3400 3700
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_RESISTOR R7
U 1 1 56D7CA87
P 3400 3900
F 0 "R7" V 3450 3800 60  0000 C CNN
F 1 "GENERIC_RESISTOR" H 3440 3680 60  0001 C CNN
F 2 "~" H 3350 3650 60  0000 C CNN
F 3 "~" H 3350 3650 60  0000 C CNN
F 4 "10K" V 3350 3700 60  0000 L CNN "Resistance"
	1    3400 3900
	0    -1   -1   0   
$EndComp
$Comp
L IRFML8244TRPBF Q1
U 1 1 56D7CA8E
P 3100 3300
F 0 "Q1" V 3250 3450 60  0000 C CNN
F 1 "IRFML8244TRPBF" H 2350 2820 60  0001 C CNN
F 2 "~" H 2300 3300 60  0000 C CNN
F 3 "~" H 2300 3300 60  0000 C CNN
	1    3100 3300
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR022
U 1 1 56D7CA94
P 3050 2850
F 0 "#PWR022" H 3050 2810 30  0001 C CNN
F 1 "+3.3V" H 3050 2960 30  0000 C CNN
F 2 "" H 3050 2850 60  0000 C CNN
F 3 "" H 3050 2850 60  0000 C CNN
	1    3050 2850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR023
U 1 1 56D7CA9A
P 3400 2850
F 0 "#PWR023" H 3400 2940 20  0001 C CNN
F 1 "+5V" H 3400 2940 30  0000 C CNN
F 2 "" H 3400 2850 60  0000 C CNN
F 3 "" H 3400 2850 60  0000 C CNN
	1    3400 2850
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_RESISTOR R6
U 1 1 56D7CAA1
P 3400 3050
F 0 "R6" V 3450 2950 60  0000 C CNN
F 1 "GENERIC_RESISTOR" H 3440 2830 60  0001 C CNN
F 2 "~" H 3350 2800 60  0000 C CNN
F 3 "~" H 3350 2800 60  0000 C CNN
F 4 "10K" V 3350 2850 60  0000 L CNN "Resistance"
	1    3400 3050
	0    -1   -1   0   
$EndComp
$Comp
L IRFML8244TRPBF Q3
U 1 1 56D7CAA7
P 3100 4950
F 0 "Q3" V 3250 5100 60  0000 C CNN
F 1 "IRFML8244TRPBF" H 2350 4470 60  0001 C CNN
F 2 "~" H 2300 4950 60  0000 C CNN
F 3 "~" H 2300 4950 60  0000 C CNN
	1    3100 4950
	0    1    1    0   
$EndComp
$Comp
L +3.3V #PWR024
U 1 1 56D7CAAD
P 3050 4500
F 0 "#PWR024" H 3050 4460 30  0001 C CNN
F 1 "+3.3V" H 3050 4610 30  0000 C CNN
F 2 "" H 3050 4500 60  0000 C CNN
F 3 "" H 3050 4500 60  0000 C CNN
	1    3050 4500
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR025
U 1 1 56D7CAB3
P 3400 4500
F 0 "#PWR025" H 3400 4590 20  0001 C CNN
F 1 "+5V" H 3400 4590 30  0000 C CNN
F 2 "" H 3400 4500 60  0000 C CNN
F 3 "" H 3400 4500 60  0000 C CNN
	1    3400 4500
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_RESISTOR R8
U 1 1 56D7CABA
P 3400 4700
F 0 "R8" V 3450 4600 60  0000 C CNN
F 1 "GENERIC_RESISTOR" H 3440 4480 60  0001 C CNN
F 2 "~" H 3350 4450 60  0000 C CNN
F 3 "~" H 3350 4450 60  0000 C CNN
F 4 "10K" V 3350 4500 60  0000 L CNN "Resistance"
	1    3400 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3050 3700 3050 3850
Wire Wire Line
	3400 4100 3400 4150
Wire Wire Line
	3050 2850 3050 3000
Wire Wire Line
	3400 3250 3400 3300
Wire Wire Line
	3050 4500 3050 4650
Wire Wire Line
	3400 4900 3400 4950
Wire Wire Line
	3400 4950 5300 4950
Text HLabel 2300 3300 0    60   Input ~ 0
IR Clock
Text HLabel 2300 4150 0    60   Input ~ 0
IR Enable
Text HLabel 2300 4950 0    60   Input ~ 0
NeoPixels
Wire Wire Line
	2300 3300 2800 3300
Wire Wire Line
	2800 4150 2300 4150
Wire Wire Line
	2300 4950 2800 4950
$Comp
L HEADER_(8_WAY) P4
U 1 1 56D7CE85
P 7200 5300
F 0 "P4" H 7200 5000 60  0000 C CNN
F 1 "HEADER_(8_WAY)" H 7200 5500 60  0001 C CNN
F 2 "~" H 7250 5350 60  0000 C CNN
F 3 "~" H 7250 5350 60  0000 C CNN
F 4 "~" H 7300 5100 60  0001 C CNN "Part #"
	1    7200 5300
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR026
U 1 1 56D7CE8B
P 7600 5100
F 0 "#PWR026" H 7600 5190 20  0001 C CNN
F 1 "+5V" H 7600 5190 30  0000 C CNN
F 2 "" H 7600 5100 60  0000 C CNN
F 3 "" H 7600 5100 60  0000 C CNN
	1    7600 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 56D7CE91
P 6800 5750
F 0 "#PWR027" H 6800 5750 30  0001 C CNN
F 1 "GND" H 6800 5680 30  0001 C CNN
F 2 "" H 6800 5750 60  0000 C CNN
F 3 "" H 6800 5750 60  0000 C CNN
	1    6800 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 56D7CE97
P 7600 5750
F 0 "#PWR028" H 7600 5750 30  0001 C CNN
F 1 "GND" H 7600 5680 30  0001 C CNN
F 2 "" H 7600 5750 60  0000 C CNN
F 3 "" H 7600 5750 60  0000 C CNN
	1    7600 5750
	1    0    0    -1  
$EndComp
$Comp
L HEADER_(8_WAY) P3
U 1 1 56D7CEA2
P 7200 4400
F 0 "P3" H 7200 4100 60  0000 C CNN
F 1 "HEADER_(8_WAY)" H 7200 4600 60  0001 C CNN
F 2 "~" H 7250 4450 60  0000 C CNN
F 3 "~" H 7250 4450 60  0000 C CNN
F 4 "~" H 7300 4200 60  0001 C CNN "Part #"
	1    7200 4400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR029
U 1 1 56D7CEA8
P 7600 4200
F 0 "#PWR029" H 7600 4290 20  0001 C CNN
F 1 "+5V" H 7600 4290 30  0000 C CNN
F 2 "" H 7600 4200 60  0000 C CNN
F 3 "" H 7600 4200 60  0000 C CNN
	1    7600 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 56D7CEAE
P 6800 4850
F 0 "#PWR030" H 6800 4850 30  0001 C CNN
F 1 "GND" H 6800 4780 30  0001 C CNN
F 2 "" H 6800 4850 60  0000 C CNN
F 3 "" H 6800 4850 60  0000 C CNN
	1    6800 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 56D7CEB4
P 7600 4850
F 0 "#PWR031" H 7600 4850 30  0001 C CNN
F 1 "GND" H 7600 4780 30  0001 C CNN
F 2 "" H 7600 4850 60  0000 C CNN
F 3 "" H 7600 4850 60  0000 C CNN
	1    7600 4850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR032
U 1 1 56D7CEC5
P 7600 3300
F 0 "#PWR032" H 7600 3390 20  0001 C CNN
F 1 "+5V" H 7600 3390 30  0000 C CNN
F 2 "" H 7600 3300 60  0000 C CNN
F 3 "" H 7600 3300 60  0000 C CNN
	1    7600 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 56D7CECB
P 6800 3950
F 0 "#PWR033" H 6800 3950 30  0001 C CNN
F 1 "GND" H 6800 3880 30  0001 C CNN
F 2 "" H 6800 3950 60  0000 C CNN
F 3 "" H 6800 3950 60  0000 C CNN
	1    6800 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 56D7CED1
P 7600 3950
F 0 "#PWR034" H 7600 3950 30  0001 C CNN
F 1 "GND" H 7600 3880 30  0001 C CNN
F 2 "" H 7600 3950 60  0000 C CNN
F 3 "" H 7600 3950 60  0000 C CNN
	1    7600 3950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR035
U 1 1 56D7CEE2
P 7600 2400
F 0 "#PWR035" H 7600 2490 20  0001 C CNN
F 1 "+5V" H 7600 2490 30  0000 C CNN
F 2 "" H 7600 2400 60  0000 C CNN
F 3 "" H 7600 2400 60  0000 C CNN
	1    7600 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 56D7CEE8
P 6800 3050
F 0 "#PWR036" H 6800 3050 30  0001 C CNN
F 1 "GND" H 6800 2980 30  0001 C CNN
F 2 "" H 6800 3050 60  0000 C CNN
F 3 "" H 6800 3050 60  0000 C CNN
	1    6800 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 56D7CEEE
P 7600 3050
F 0 "#PWR037" H 7600 3050 30  0001 C CNN
F 1 "GND" H 7600 2980 30  0001 C CNN
F 2 "" H 7600 3050 60  0000 C CNN
F 3 "" H 7600 3050 60  0000 C CNN
	1    7600 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5200 7050 5200
Wire Wire Line
	6800 5750 6800 5400
Wire Wire Line
	6800 5400 7050 5400
Wire Wire Line
	7350 5400 7600 5400
Wire Wire Line
	7600 5400 7600 5750
Wire Wire Line
	5300 5500 7050 5500
Wire Wire Line
	4900 4300 7050 4300
Wire Wire Line
	6800 4850 6800 4500
Wire Wire Line
	6800 4500 7050 4500
Wire Wire Line
	7350 4500 7600 4500
Wire Wire Line
	7600 4500 7600 4850
Wire Wire Line
	5300 4600 7050 4600
Wire Wire Line
	4900 3400 7050 3400
Wire Wire Line
	6800 3950 6800 3600
Wire Wire Line
	6800 3600 7050 3600
Wire Wire Line
	7350 3600 7600 3600
Wire Wire Line
	7600 3600 7600 3950
Wire Wire Line
	4900 2500 7050 2500
Wire Wire Line
	6800 3050 6800 2700
Wire Wire Line
	6800 2700 7050 2700
Wire Wire Line
	7350 2700 7600 2700
Wire Wire Line
	7600 2700 7600 3050
Wire Wire Line
	9050 5500 7350 5500
Wire Wire Line
	9050 4600 7350 4600
Wire Wire Line
	7350 3700 9050 3700
Wire Wire Line
	9050 2800 7350 2800
Text HLabel 9050 2800 2    60   Input ~ 0
Body IR Out
Text HLabel 9050 3700 2    60   Input ~ 0
Chest IR Out
Text HLabel 9050 4600 2    60   Input ~ 0
Left IR Out
Text HLabel 9050 5500 2    60   Input ~ 0
Right IR Out
Wire Wire Line
	7350 2500 7600 2500
Wire Wire Line
	7600 2500 7600 2400
Wire Wire Line
	7350 3400 7600 3400
Wire Wire Line
	7600 3400 7600 3300
Wire Wire Line
	7350 4300 7600 4300
Wire Wire Line
	7600 4300 7600 4200
Wire Wire Line
	7350 5200 7600 5200
Wire Wire Line
	7600 5200 7600 5100
Wire Wire Line
	5300 2800 5300 5500
Connection ~ 5300 4950
Wire Wire Line
	5300 3700 7050 3700
Connection ~ 5300 4600
Wire Wire Line
	5300 2800 7050 2800
Connection ~ 5300 3700
$Comp
L HEADER_(8_WAY) P1
U 1 1 56D7CEDC
P 7200 2600
F 0 "P1" H 7200 2300 60  0000 C CNN
F 1 "HEADER_(8_WAY)" H 7200 2800 60  0001 C CNN
F 2 "~" H 7250 2650 60  0000 C CNN
F 3 "~" H 7250 2650 60  0000 C CNN
F 4 "~" H 7300 2400 60  0001 C CNN "Part #"
	1    7200 2600
	1    0    0    -1  
$EndComp
$Comp
L HEADER_(8_WAY) P2
U 1 1 56D7CEBF
P 7200 3500
F 0 "P2" H 7200 3200 60  0000 C CNN
F 1 "HEADER_(8_WAY)" H 7200 3700 60  0001 C CNN
F 2 "~" H 7250 3550 60  0000 C CNN
F 3 "~" H 7250 3550 60  0000 C CNN
F 4 "~" H 7300 3300 60  0001 C CNN "Part #"
	1    7200 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3300 4900 3300
Wire Wire Line
	4900 2500 4900 5200
Connection ~ 4900 3300
Connection ~ 4900 3400
Connection ~ 4900 4300
Wire Wire Line
	3400 4150 5100 4150
Wire Wire Line
	5100 2600 5100 5300
Wire Wire Line
	5100 2600 7050 2600
Wire Wire Line
	5100 3500 7050 3500
Connection ~ 5100 3500
Wire Wire Line
	5100 4400 7050 4400
Connection ~ 5100 4150
Wire Wire Line
	5100 5300 7050 5300
Connection ~ 5100 4400
NoConn ~ 7350 2600
NoConn ~ 7350 3500
NoConn ~ 7350 4400
NoConn ~ 7350 5300
$EndSCHEMATC

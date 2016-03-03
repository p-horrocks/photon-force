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
Sheet 2 6
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
L LM2731 B2
U 1 1 56D7A438
P 6000 4100
F 0 "B2" H 6200 4350 60  0000 C CNN
F 1 "LM2731" V 5950 4100 60  0000 C CNN
F 2 "~" H 5900 4100 60  0000 C CNN
F 3 "~" H 5900 4100 60  0000 C CNN
F 4 "LM2731XMF" H 5900 3950 60  0001 C CNN "Part #"
	1    6000 4100
	-1   0    0    1   
$EndComp
$Comp
L GENERIC_RESISTOR R2
U 1 1 56D7A440
P 4800 4050
F 0 "R2" V 4850 3950 60  0000 C CNN
F 1 "GENERIC_RESISTOR" H 4840 3830 60  0001 C CNN
F 2 "~" H 4750 3800 60  0000 C CNN
F 3 "~" H 4750 3800 60  0000 C CNN
F 4 "51K" V 4750 3850 60  0000 L CNN "Resistance"
F 5 "~" H 5010 4130 60  0001 C CNN "Part #"
	1    4800 4050
	0    -1   -1   0   
$EndComp
$Comp
L BATTERY_ B1
U 1 1 56D7A447
P 3350 3750
F 0 "B1" V 3300 3900 60  0001 C CNN
F 1 "BATTERY_" H 3350 3950 60  0001 C CNN
F 2 "" H 3350 3750 60  0000 C CNN
F 3 "" H 3350 3750 60  0000 C CNN
F 4 "3.7-4.9V" V 3400 4000 60  0000 C CNN "Voltage"
	1    3350 3750
	0    1    1    0   
$EndComp
$Comp
L GENERIC_CAPACITOR C1
U 1 1 56D7A44F
P 4100 3750
F 0 "C1" V 4150 3650 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 4110 3550 60  0001 C CNN
F 2 "~" H 4070 3500 60  0000 C CNN
F 3 "~" H 4070 3500 60  0000 C CNN
F 4 "2.2µF" V 4000 3450 60  0000 L CNN "Capacitance"
F 5 "~" H 4410 3870 60  0001 C CNN "Part #"
	1    4100 3750
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR05
U 1 1 56D7A455
P 6700 4900
F 0 "#PWR05" H 6700 4900 30  0001 C CNN
F 1 "GND" H 6700 4830 30  0001 C CNN
F 2 "" H 6700 4900 60  0000 C CNN
F 3 "" H 6700 4900 60  0000 C CNN
	1    6700 4900
	1    0    0    -1  
$EndComp
$Comp
L SCHOTTKY_DIODE D1
U 1 1 56D7A45C
P 7150 4250
F 0 "D1" H 7150 4100 60  0000 C CNN
F 1 "SCHOTTKY_DIODE" H 7150 4400 60  0001 C CNN
F 2 "~" H 7150 4250 60  0000 C CNN
F 3 "~" H 7150 4250 60  0000 C CNN
F 4 "~" H 7250 4200 60  0001 C CNN "Part #"
	1    7150 4250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 56D7A462
P 8800 3400
F 0 "#PWR06" H 8800 3490 20  0001 C CNN
F 1 "+5V" H 8800 3490 30  0000 C CNN
F 2 "" H 8800 3400 60  0000 C CNN
F 3 "" H 8800 3400 60  0000 C CNN
	1    8800 3400
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 56D7A469
P 6050 5200
F 0 "L1" V 6150 5200 40  0000 C CNN
F 1 "INDUCTOR" V 6150 5200 40  0001 C CNN
F 2 "~" H 6050 5200 60  0000 C CNN
F 3 "~" H 6050 5200 60  0000 C CNN
F 4 "10µH" V 6000 5200 60  0000 C CNN "Inductance"
	1    6050 5200
	0    -1   -1   0   
$EndComp
$Comp
L VARIABLE_RESISTOR R3
U 1 1 56D7A471
P 8100 3800
F 0 "R3" V 8050 3700 60  0000 C CNN
F 1 "VARIABLE_RESISTOR" H 8140 3580 60  0001 C CNN
F 2 "~" H 8050 3550 60  0000 C CNN
F 3 "~" H 8050 3550 60  0000 C CNN
F 4 "100K" V 8150 3650 60  0000 C CNN "Resistance"
F 5 "~" H 8310 3880 60  0001 C CNN "Part #"
	1    8100 3800
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 56D7A477
P 7900 4900
F 0 "#PWR07" H 7900 4900 30  0001 C CNN
F 1 "GND" H 7900 4830 30  0001 C CNN
F 2 "" H 7900 4900 60  0000 C CNN
F 3 "" H 7900 4900 60  0000 C CNN
	1    7900 4900
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_CAPACITOR C3
U 1 1 56D7A47F
P 7900 4550
F 0 "C3" V 7950 4650 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 7910 4350 60  0001 C CNN
F 2 "~" H 7870 4300 60  0000 C CNN
F 3 "~" H 7870 4300 60  0000 C CNN
F 4 "4.7µF" V 7800 4700 60  0000 C CNN "Capacitance"
F 5 "~" H 8210 4670 60  0001 C CNN "Part #"
	1    7900 4550
	0    -1   -1   0   
$EndComp
$Comp
L GENERIC_CAPACITOR C2
U 1 1 56D7A487
P 7500 3950
F 0 "C2" V 7550 3850 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 7510 3750 60  0001 C CNN
F 2 "~" H 7470 3700 60  0000 C CNN
F 3 "~" H 7470 3700 60  0000 C CNN
F 4 "220pF" V 7400 3650 60  0000 L CNN "Capacitance"
F 5 "~" H 7810 4070 60  0001 C CNN "Part #"
	1    7500 3950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 4250 7000 4250
Wire Wire Line
	8800 4250 7300 4250
Wire Wire Line
	7900 4700 7900 4900
Connection ~ 7900 4250
Wire Wire Line
	6500 4100 6700 4100
Wire Wire Line
	6700 4100 6700 4900
Wire Wire Line
	7900 4250 7900 4400
Wire Wire Line
	8800 3400 8800 4250
Wire Wire Line
	6500 3950 7050 3950
Wire Wire Line
	7050 3950 7050 3800
Wire Wire Line
	7050 3800 7950 3800
Connection ~ 7500 3800
Wire Wire Line
	7500 4100 7500 4250
Connection ~ 7500 4250
$Comp
L GND #PWR08
U 1 1 56D7B34B
P 8100 4100
F 0 "#PWR08" H 8100 4100 30  0001 C CNN
F 1 "GND" H 8100 4030 30  0001 C CNN
F 2 "" H 8100 4100 60  0000 C CNN
F 3 "" H 8100 4100 60  0000 C CNN
	1    8100 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4000 8100 4100
Wire Wire Line
	8100 3600 8100 3500
Wire Wire Line
	8100 3500 8800 3500
Connection ~ 8800 3500
Wire Wire Line
	6900 4250 6900 5200
Wire Wire Line
	6900 5200 6350 5200
Connection ~ 6900 4250
Wire Wire Line
	4500 3850 5200 3850
Wire Wire Line
	5200 3850 5200 5200
Wire Wire Line
	5200 3950 5550 3950
Wire Wire Line
	4250 4250 5550 4250
Text HLabel 4250 4250 0    60   Input ~ 0
Power Enable
Connection ~ 4800 4250
Wire Wire Line
	3350 3650 3350 3600
Connection ~ 4100 3600
Wire Wire Line
	2600 3600 4500 3600
Wire Wire Line
	4500 3600 4500 3850
Connection ~ 4800 3850
$Comp
L GND #PWR09
U 1 1 56D7B7CF
P 3700 4050
F 0 "#PWR09" H 3700 4050 30  0001 C CNN
F 1 "GND" H 3700 3980 30  0001 C CNN
F 2 "" H 3700 4050 60  0000 C CNN
F 3 "" H 3700 4050 60  0000 C CNN
	1    3700 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3850 3350 4000
Wire Wire Line
	2600 4000 4100 4000
Wire Wire Line
	4100 4000 4100 3900
Wire Wire Line
	3700 4000 3700 4050
Connection ~ 3700 4000
Wire Wire Line
	5200 5200 5750 5200
Connection ~ 5200 3950
$Comp
L VARIABLE_RESISTOR R1
U 1 1 56D7B88F
P 2600 3800
F 0 "R1" V 2650 3700 60  0000 C CNN
F 1 "VARIABLE_RESISTOR" H 2640 3580 60  0001 C CNN
F 2 "~" H 2550 3550 60  0000 C CNN
F 3 "~" H 2550 3550 60  0000 C CNN
F 4 "100K" V 2550 3650 60  0000 C CNN "Resistance"
F 5 "~" H 2810 3880 60  0001 C CNN "Part #"
	1    2600 3800
	0    -1   -1   0   
$EndComp
Connection ~ 3350 3600
Connection ~ 3350 4000
Text HLabel 2050 3800 0    60   Input ~ 0
Power Sense
Wire Wire Line
	2050 3800 2450 3800
$EndSCHEMATC
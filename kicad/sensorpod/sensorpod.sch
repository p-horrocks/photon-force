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
LIBS:sensorpod-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L WS2812B NP?
U 1 1 56BF0F24
P 1650 1100
AR Path="/56BF0E3B/56BF0F24" Ref="NP?"  Part="1" 
AR Path="/56BF2119/56BF0F24" Ref="NP?"  Part="1" 
AR Path="/56BF0F24" Ref="NP1"  Part="1" 
F 0 "NP1" H 1500 900 60  0000 C CNN
F 1 "WS2812B" H 1650 1100 60  0000 C CNN
F 2 "5050" H 1620 850 60  0001 C CNN
F 3 "~" H 1620 850 60  0000 C CNN
	1    1650 1100
	1    0    0    -1  
$EndComp
$Comp
L WS2812B NP?
U 1 1 56BF0F33
P 1650 1650
AR Path="/56BF0E3B/56BF0F33" Ref="NP?"  Part="1" 
AR Path="/56BF2119/56BF0F33" Ref="NP?"  Part="1" 
AR Path="/56BF0F33" Ref="NP2"  Part="1" 
F 0 "NP2" H 1500 1450 60  0000 C CNN
F 1 "WS2812B" H 1650 1650 60  0000 C CNN
F 2 "5050" H 1620 1400 60  0001 C CNN
F 3 "~" H 1620 1400 60  0000 C CNN
	1    1650 1650
	1    0    0    -1  
$EndComp
$Comp
L WS2812B NP?
U 1 1 56BF0F42
P 1650 2200
AR Path="/56BF0E3B/56BF0F42" Ref="NP?"  Part="1" 
AR Path="/56BF2119/56BF0F42" Ref="NP?"  Part="1" 
AR Path="/56BF0F42" Ref="NP3"  Part="1" 
F 0 "NP3" H 1500 2000 60  0000 C CNN
F 1 "WS2812B" H 1650 2200 60  0000 C CNN
F 2 "5050" H 1620 1950 60  0001 C CNN
F 3 "~" H 1620 1950 60  0000 C CNN
	1    1650 2200
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_CAPACITOR C?
U 1 1 56BF0FF4
P 1000 1150
AR Path="/56BF0E3B/56BF0FF4" Ref="C?"  Part="1" 
AR Path="/56BF2119/56BF0FF4" Ref="C?"  Part="1" 
AR Path="/56BF0FF4" Ref="C1"  Part="1" 
F 0 "C1" V 1050 1250 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 1010 950 60  0001 C CNN
F 2 "0805" H 970 900 60  0001 C CNN
F 3 "~" H 970 900 60  0000 C CNN
F 4 "0.1µC" V 1050 950 60  0000 C CNN "Capacitance"
	1    1000 1150
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 56BF104A
P 800 900
AR Path="/56BF0E3B/56BF104A" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56BF104A" Ref="#PWR?"  Part="1" 
AR Path="/56BF104A" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 800 990 20  0001 C CNN
F 1 "+5V" H 800 990 30  0000 C CNN
F 2 "" H 800 900 60  0000 C CNN
F 3 "" H 800 900 60  0000 C CNN
	1    800  900 
	1    0    0    -1  
$EndComp
$Comp
L WS2812B NP?
U 1 1 56BF1078
P 1650 2750
AR Path="/56BF0E3B/56BF1078" Ref="NP?"  Part="1" 
AR Path="/56BF2119/56BF1078" Ref="NP?"  Part="1" 
AR Path="/56BF1078" Ref="NP4"  Part="1" 
F 0 "NP4" H 1500 2550 60  0000 C CNN
F 1 "WS2812B" H 1650 2750 60  0000 C CNN
F 2 "5050" H 1620 2500 60  0001 C CNN
F 3 "~" H 1620 2500 60  0000 C CNN
	1    1650 2750
	1    0    0    -1  
$EndComp
$Comp
L WS2812B NP?
U 1 1 56BF1091
P 1650 3300
AR Path="/56BF0E3B/56BF1091" Ref="NP?"  Part="1" 
AR Path="/56BF2119/56BF1091" Ref="NP?"  Part="1" 
AR Path="/56BF1091" Ref="NP5"  Part="1" 
F 0 "NP5" H 1500 3100 60  0000 C CNN
F 1 "WS2812B" H 1650 3300 60  0000 C CNN
F 2 "5050" H 1620 3050 60  0001 C CNN
F 3 "~" H 1620 3050 60  0000 C CNN
	1    1650 3300
	1    0    0    -1  
$EndComp
$Comp
L WS2812B NP?
U 1 1 56BF10AA
P 1650 3850
AR Path="/56BF0E3B/56BF10AA" Ref="NP?"  Part="1" 
AR Path="/56BF2119/56BF10AA" Ref="NP?"  Part="1" 
AR Path="/56BF10AA" Ref="NP6"  Part="1" 
F 0 "NP6" H 1500 3650 60  0000 C CNN
F 1 "WS2812B" H 1650 3850 60  0000 C CNN
F 2 "5050" H 1620 3600 60  0001 C CNN
F 3 "~" H 1620 3600 60  0000 C CNN
	1    1650 3850
	1    0    0    -1  
$EndComp
$Comp
L WS2812B NP?
U 1 1 56BF10B9
P 1650 4400
AR Path="/56BF0E3B/56BF10B9" Ref="NP?"  Part="1" 
AR Path="/56BF2119/56BF10B9" Ref="NP?"  Part="1" 
AR Path="/56BF10B9" Ref="NP7"  Part="1" 
F 0 "NP7" H 1500 4200 60  0000 C CNN
F 1 "WS2812B" H 1650 4400 60  0000 C CNN
F 2 "5050" H 1620 4150 60  0001 C CNN
F 3 "~" H 1620 4150 60  0000 C CNN
	1    1650 4400
	1    0    0    -1  
$EndComp
$Comp
L WS2812B NP?
U 1 1 56BF10C8
P 1650 4950
AR Path="/56BF0E3B/56BF10C8" Ref="NP?"  Part="1" 
AR Path="/56BF2119/56BF10C8" Ref="NP?"  Part="1" 
AR Path="/56BF10C8" Ref="NP8"  Part="1" 
F 0 "NP8" H 1500 4750 60  0000 C CNN
F 1 "WS2812B" H 1650 4950 60  0000 C CNN
F 2 "5050" H 1620 4700 60  0001 C CNN
F 3 "~" H 1620 4700 60  0000 C CNN
	1    1650 4950
	1    0    0    -1  
$EndComp
$Comp
L WS2812B NP?
U 1 1 56BF10D7
P 1650 5500
AR Path="/56BF0E3B/56BF10D7" Ref="NP?"  Part="1" 
AR Path="/56BF2119/56BF10D7" Ref="NP?"  Part="1" 
AR Path="/56BF10D7" Ref="NP9"  Part="1" 
F 0 "NP9" H 1500 5300 60  0000 C CNN
F 1 "WS2812B" H 1650 5500 60  0000 C CNN
F 2 "5050" H 1620 5250 60  0001 C CNN
F 3 "~" H 1620 5250 60  0000 C CNN
	1    1650 5500
	1    0    0    -1  
$EndComp
$Comp
L WS2812B NP?
U 1 1 56BF1104
P 1650 6050
AR Path="/56BF0E3B/56BF1104" Ref="NP?"  Part="1" 
AR Path="/56BF2119/56BF1104" Ref="NP?"  Part="1" 
AR Path="/56BF1104" Ref="NP10"  Part="1" 
F 0 "NP10" H 1500 5850 60  0000 C CNN
F 1 "WS2812B" H 1650 6050 60  0000 C CNN
F 2 "5050" H 1620 5800 60  0001 C CNN
F 3 "~" H 1620 5800 60  0000 C CNN
	1    1650 6050
	1    0    0    -1  
$EndComp
$Comp
L WS2812B NP?
U 1 1 56BF1113
P 1650 6600
AR Path="/56BF0E3B/56BF1113" Ref="NP?"  Part="1" 
AR Path="/56BF2119/56BF1113" Ref="NP?"  Part="1" 
AR Path="/56BF1113" Ref="NP11"  Part="1" 
F 0 "NP11" H 1500 6400 60  0000 C CNN
F 1 "WS2812B" H 1650 6600 60  0000 C CNN
F 2 "5050" H 1620 6350 60  0001 C CNN
F 3 "~" H 1620 6350 60  0000 C CNN
	1    1650 6600
	1    0    0    -1  
$EndComp
$Comp
L WS2812B NP?
U 1 1 56BF1123
P 1650 7150
AR Path="/56BF0E3B/56BF1123" Ref="NP?"  Part="1" 
AR Path="/56BF2119/56BF1123" Ref="NP?"  Part="1" 
AR Path="/56BF1123" Ref="NP12"  Part="1" 
F 0 "NP12" H 1500 6950 60  0000 C CNN
F 1 "WS2812B" H 1650 7150 60  0000 C CNN
F 2 "5050" H 1620 6900 60  0001 C CNN
F 3 "~" H 1620 6900 60  0000 C CNN
	1    1650 7150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56BF1576
P 2300 7350
AR Path="/56BF0E3B/56BF1576" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56BF1576" Ref="#PWR?"  Part="1" 
AR Path="/56BF1576" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 2300 7350 30  0001 C CNN
F 1 "GND" H 2300 7280 30  0001 C CNN
F 2 "" H 2300 7350 60  0000 C CNN
F 3 "" H 2300 7350 60  0000 C CNN
	1    2300 7350
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_CAPACITOR C?
U 1 1 56BF1585
P 1000 1700
AR Path="/56BF0E3B/56BF1585" Ref="C?"  Part="1" 
AR Path="/56BF2119/56BF1585" Ref="C?"  Part="1" 
AR Path="/56BF1585" Ref="C2"  Part="1" 
F 0 "C2" V 1050 1800 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 1010 1500 60  0001 C CNN
F 2 "0805" H 970 1450 60  0001 C CNN
F 3 "~" H 970 1450 60  0000 C CNN
F 4 "0.1µC" V 1050 1500 60  0000 C CNN "Capacitance"
	1    1000 1700
	0    -1   -1   0   
$EndComp
$Comp
L GENERIC_CAPACITOR C?
U 1 1 56BF1594
P 1000 2250
AR Path="/56BF0E3B/56BF1594" Ref="C?"  Part="1" 
AR Path="/56BF2119/56BF1594" Ref="C?"  Part="1" 
AR Path="/56BF1594" Ref="C3"  Part="1" 
F 0 "C3" V 1050 2350 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 1010 2050 60  0001 C CNN
F 2 "0805" H 970 2000 60  0001 C CNN
F 3 "~" H 970 2000 60  0000 C CNN
F 4 "0.1µC" V 1050 2050 60  0000 C CNN "Capacitance"
	1    1000 2250
	0    -1   -1   0   
$EndComp
$Comp
L GENERIC_CAPACITOR C?
U 1 1 56BF15A3
P 1000 2800
AR Path="/56BF0E3B/56BF15A3" Ref="C?"  Part="1" 
AR Path="/56BF2119/56BF15A3" Ref="C?"  Part="1" 
AR Path="/56BF15A3" Ref="C4"  Part="1" 
F 0 "C4" V 1050 2900 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 1010 2600 60  0001 C CNN
F 2 "0805" H 970 2550 60  0001 C CNN
F 3 "~" H 970 2550 60  0000 C CNN
F 4 "0.1µC" V 1050 2600 60  0000 C CNN "Capacitance"
	1    1000 2800
	0    -1   -1   0   
$EndComp
$Comp
L GENERIC_CAPACITOR C?
U 1 1 56BF15B2
P 1000 3350
AR Path="/56BF0E3B/56BF15B2" Ref="C?"  Part="1" 
AR Path="/56BF2119/56BF15B2" Ref="C?"  Part="1" 
AR Path="/56BF15B2" Ref="C5"  Part="1" 
F 0 "C5" V 1050 3450 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 1010 3150 60  0001 C CNN
F 2 "0805" H 970 3100 60  0001 C CNN
F 3 "~" H 970 3100 60  0000 C CNN
F 4 "0.1µC" V 1050 3150 60  0000 C CNN "Capacitance"
	1    1000 3350
	0    -1   -1   0   
$EndComp
$Comp
L GENERIC_CAPACITOR C?
U 1 1 56BF15C1
P 1000 3900
AR Path="/56BF0E3B/56BF15C1" Ref="C?"  Part="1" 
AR Path="/56BF2119/56BF15C1" Ref="C?"  Part="1" 
AR Path="/56BF15C1" Ref="C6"  Part="1" 
F 0 "C6" V 1050 4000 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 1010 3700 60  0001 C CNN
F 2 "0805" H 970 3650 60  0001 C CNN
F 3 "~" H 970 3650 60  0000 C CNN
F 4 "0.1µC" V 1050 3700 60  0000 C CNN "Capacitance"
	1    1000 3900
	0    -1   -1   0   
$EndComp
$Comp
L GENERIC_CAPACITOR C?
U 1 1 56BF15D0
P 1000 4450
AR Path="/56BF0E3B/56BF15D0" Ref="C?"  Part="1" 
AR Path="/56BF2119/56BF15D0" Ref="C?"  Part="1" 
AR Path="/56BF15D0" Ref="C7"  Part="1" 
F 0 "C7" V 1050 4550 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 1010 4250 60  0001 C CNN
F 2 "0805" H 970 4200 60  0001 C CNN
F 3 "~" H 970 4200 60  0000 C CNN
F 4 "0.1µC" V 1050 4250 60  0000 C CNN "Capacitance"
	1    1000 4450
	0    -1   -1   0   
$EndComp
$Comp
L GENERIC_CAPACITOR C?
U 1 1 56BF15DF
P 1000 5000
AR Path="/56BF0E3B/56BF15DF" Ref="C?"  Part="1" 
AR Path="/56BF2119/56BF15DF" Ref="C?"  Part="1" 
AR Path="/56BF15DF" Ref="C8"  Part="1" 
F 0 "C8" V 1050 5100 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 1010 4800 60  0001 C CNN
F 2 "0805" H 970 4750 60  0001 C CNN
F 3 "~" H 970 4750 60  0000 C CNN
F 4 "0.1µC" V 1050 4800 60  0000 C CNN "Capacitance"
	1    1000 5000
	0    -1   -1   0   
$EndComp
$Comp
L GENERIC_CAPACITOR C?
U 1 1 56BF15EE
P 1000 5550
AR Path="/56BF0E3B/56BF15EE" Ref="C?"  Part="1" 
AR Path="/56BF2119/56BF15EE" Ref="C?"  Part="1" 
AR Path="/56BF15EE" Ref="C9"  Part="1" 
F 0 "C9" V 1050 5650 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 1010 5350 60  0001 C CNN
F 2 "0805" H 970 5300 60  0001 C CNN
F 3 "~" H 970 5300 60  0000 C CNN
F 4 "0.1µC" V 1050 5350 60  0000 C CNN "Capacitance"
	1    1000 5550
	0    -1   -1   0   
$EndComp
$Comp
L GENERIC_CAPACITOR C?
U 1 1 56BF15FD
P 1000 6100
AR Path="/56BF0E3B/56BF15FD" Ref="C?"  Part="1" 
AR Path="/56BF2119/56BF15FD" Ref="C?"  Part="1" 
AR Path="/56BF15FD" Ref="C10"  Part="1" 
F 0 "C10" V 1050 6200 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 1010 5900 60  0001 C CNN
F 2 "0805" H 970 5850 60  0001 C CNN
F 3 "~" H 970 5850 60  0000 C CNN
F 4 "0.1µC" V 1050 5900 60  0000 C CNN "Capacitance"
	1    1000 6100
	0    -1   -1   0   
$EndComp
$Comp
L GENERIC_CAPACITOR C?
U 1 1 56BF160C
P 1000 6650
AR Path="/56BF0E3B/56BF160C" Ref="C?"  Part="1" 
AR Path="/56BF2119/56BF160C" Ref="C?"  Part="1" 
AR Path="/56BF160C" Ref="C11"  Part="1" 
F 0 "C11" V 1050 6750 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 1010 6450 60  0001 C CNN
F 2 "0805" H 970 6400 60  0001 C CNN
F 3 "~" H 970 6400 60  0000 C CNN
F 4 "0.1µC" V 1050 6450 60  0000 C CNN "Capacitance"
	1    1000 6650
	0    -1   -1   0   
$EndComp
$Comp
L GENERIC_CAPACITOR C?
U 1 1 56BF161B
P 1000 7200
AR Path="/56BF0E3B/56BF161B" Ref="C?"  Part="1" 
AR Path="/56BF2119/56BF161B" Ref="C?"  Part="1" 
AR Path="/56BF161B" Ref="C12"  Part="1" 
F 0 "C12" V 1050 7300 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 1010 7000 60  0001 C CNN
F 2 "0805" H 970 6950 60  0001 C CNN
F 3 "~" H 970 6950 60  0000 C CNN
F 4 "0.1µC" V 1050 7000 60  0000 C CNN "Capacitance"
	1    1000 7200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 56BF1E34
P 1000 1300
AR Path="/56BF0E3B/56BF1E34" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56BF1E34" Ref="#PWR?"  Part="1" 
AR Path="/56BF1E34" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 1000 1300 30  0001 C CNN
F 1 "GND" H 1000 1230 30  0001 C CNN
F 2 "" H 1000 1300 60  0000 C CNN
F 3 "" H 1000 1300 60  0000 C CNN
	1    1000 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56BF1E43
P 1000 1850
AR Path="/56BF0E3B/56BF1E43" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56BF1E43" Ref="#PWR?"  Part="1" 
AR Path="/56BF1E43" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 1000 1850 30  0001 C CNN
F 1 "GND" H 1000 1780 30  0001 C CNN
F 2 "" H 1000 1850 60  0000 C CNN
F 3 "" H 1000 1850 60  0000 C CNN
	1    1000 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56BF1E52
P 1000 2400
AR Path="/56BF0E3B/56BF1E52" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56BF1E52" Ref="#PWR?"  Part="1" 
AR Path="/56BF1E52" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 1000 2400 30  0001 C CNN
F 1 "GND" H 1000 2330 30  0001 C CNN
F 2 "" H 1000 2400 60  0000 C CNN
F 3 "" H 1000 2400 60  0000 C CNN
	1    1000 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56BF1E61
P 1000 2950
AR Path="/56BF0E3B/56BF1E61" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56BF1E61" Ref="#PWR?"  Part="1" 
AR Path="/56BF1E61" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 1000 2950 30  0001 C CNN
F 1 "GND" H 1000 2880 30  0001 C CNN
F 2 "" H 1000 2950 60  0000 C CNN
F 3 "" H 1000 2950 60  0000 C CNN
	1    1000 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56BF1E70
P 1000 3500
AR Path="/56BF0E3B/56BF1E70" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56BF1E70" Ref="#PWR?"  Part="1" 
AR Path="/56BF1E70" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 1000 3500 30  0001 C CNN
F 1 "GND" H 1000 3430 30  0001 C CNN
F 2 "" H 1000 3500 60  0000 C CNN
F 3 "" H 1000 3500 60  0000 C CNN
	1    1000 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56BF1E7F
P 1000 4050
AR Path="/56BF0E3B/56BF1E7F" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56BF1E7F" Ref="#PWR?"  Part="1" 
AR Path="/56BF1E7F" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 1000 4050 30  0001 C CNN
F 1 "GND" H 1000 3980 30  0001 C CNN
F 2 "" H 1000 4050 60  0000 C CNN
F 3 "" H 1000 4050 60  0000 C CNN
	1    1000 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56BF1E8E
P 1000 4600
AR Path="/56BF0E3B/56BF1E8E" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56BF1E8E" Ref="#PWR?"  Part="1" 
AR Path="/56BF1E8E" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 1000 4600 30  0001 C CNN
F 1 "GND" H 1000 4530 30  0001 C CNN
F 2 "" H 1000 4600 60  0000 C CNN
F 3 "" H 1000 4600 60  0000 C CNN
	1    1000 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56BF1E9D
P 1000 5150
AR Path="/56BF0E3B/56BF1E9D" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56BF1E9D" Ref="#PWR?"  Part="1" 
AR Path="/56BF1E9D" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 1000 5150 30  0001 C CNN
F 1 "GND" H 1000 5080 30  0001 C CNN
F 2 "" H 1000 5150 60  0000 C CNN
F 3 "" H 1000 5150 60  0000 C CNN
	1    1000 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56BF1EAC
P 1000 5700
AR Path="/56BF0E3B/56BF1EAC" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56BF1EAC" Ref="#PWR?"  Part="1" 
AR Path="/56BF1EAC" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 1000 5700 30  0001 C CNN
F 1 "GND" H 1000 5630 30  0001 C CNN
F 2 "" H 1000 5700 60  0000 C CNN
F 3 "" H 1000 5700 60  0000 C CNN
	1    1000 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56BF1EBB
P 1000 6250
AR Path="/56BF0E3B/56BF1EBB" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56BF1EBB" Ref="#PWR?"  Part="1" 
AR Path="/56BF1EBB" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 1000 6250 30  0001 C CNN
F 1 "GND" H 1000 6180 30  0001 C CNN
F 2 "" H 1000 6250 60  0000 C CNN
F 3 "" H 1000 6250 60  0000 C CNN
	1    1000 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56BF1ECA
P 1000 6800
AR Path="/56BF0E3B/56BF1ECA" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56BF1ECA" Ref="#PWR?"  Part="1" 
AR Path="/56BF1ECA" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 1000 6800 30  0001 C CNN
F 1 "GND" H 1000 6730 30  0001 C CNN
F 2 "" H 1000 6800 60  0000 C CNN
F 3 "" H 1000 6800 60  0000 C CNN
	1    1000 6800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56BF1ED9
P 1000 7350
AR Path="/56BF0E3B/56BF1ED9" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56BF1ED9" Ref="#PWR?"  Part="1" 
AR Path="/56BF1ED9" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 1000 7350 30  0001 C CNN
F 1 "GND" H 1000 7280 30  0001 C CNN
F 2 "" H 1000 7350 60  0000 C CNN
F 3 "" H 1000 7350 60  0000 C CNN
	1    1000 7350
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_CAPACITOR C?
U 1 1 56C300CE
P 6400 3400
AR Path="/56BF0E3B/56C300CE" Ref="C?"  Part="1" 
AR Path="/56BF2119/56C300CE" Ref="C?"  Part="1" 
AR Path="/56C300CE" Ref="C26"  Part="1" 
F 0 "C26" V 6450 3300 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 6410 3200 60  0001 C CNN
F 2 "0805" H 6370 3150 60  0001 C CNN
F 3 "~" H 6370 3150 60  0000 C CNN
F 4 "1µC" V 6350 3250 60  0000 C CNN "Capacitance"
	1    6400 3400
	0    -1   -1   0   
$EndComp
$Comp
L GENERIC_RESISTOR R?
U 1 1 56C30146
P 7450 5350
AR Path="/56BF0E3B/56C30146" Ref="R?"  Part="1" 
AR Path="/56BF2119/56C30146" Ref="R?"  Part="1" 
AR Path="/56C30146" Ref="R1"  Part="1" 
F 0 "R1" H 7500 5250 60  0000 C CNN
F 1 "GENERIC_RESISTOR" H 7490 5130 60  0001 C CNN
F 2 "0805" H 7400 5100 60  0001 C CNN
F 3 "~" H 7400 5100 60  0000 C CNN
F 4 "10K" H 7400 5450 60  0000 L CNN "Resistance"
	1    7450 5350
	-1   0    0    1   
$EndComp
$Comp
L SN74HC165 SR?
U 1 1 56C301BE
P 7100 3900
AR Path="/56BF0E3B/56C301BE" Ref="SR?"  Part="1" 
AR Path="/56BF2119/56C301BE" Ref="SR?"  Part="1" 
AR Path="/56C301BE" Ref="SR1"  Part="1" 
F 0 "SR1" H 6850 3400 60  0000 C CNN
F 1 "SN74HC165" V 7100 3900 60  0000 C CNN
F 2 "SOIC-16" H 7070 3900 60  0001 C CNN
F 3 "~" H 7070 3900 60  0000 C CNN
	1    7100 3900
	0    -1   -1   0   
$EndComp
$Comp
L TSOP38438 IR?
U 1 1 56C301CD
P 10600 1350
AR Path="/56BF0E3B/56C301CD" Ref="IR?"  Part="1" 
AR Path="/56BF2119/56C301CD" Ref="IR?"  Part="1" 
AR Path="/56C301CD" Ref="IR1"  Part="1" 
F 0 "IR1" H 10550 1000 60  0000 C CNN
F 1 "TSOP38438" V 10750 1350 60  0000 C CNN
F 2 "Minicast" H 10600 1350 60  0001 C CNN
F 3 "~" H 10600 1350 60  0000 C CNN
	1    10600 1350
	1    0    0    -1  
$EndComp
$Comp
L TSOP38438 IR?
U 1 1 56C301DC
P 10600 2200
AR Path="/56BF0E3B/56C301DC" Ref="IR?"  Part="1" 
AR Path="/56BF2119/56C301DC" Ref="IR?"  Part="1" 
AR Path="/56C301DC" Ref="IR2"  Part="1" 
F 0 "IR2" H 10550 1850 60  0000 C CNN
F 1 "TSOP38438" V 10750 2200 60  0000 C CNN
F 2 "Minicast" H 10600 2200 60  0001 C CNN
F 3 "~" H 10600 2200 60  0000 C CNN
	1    10600 2200
	1    0    0    -1  
$EndComp
$Comp
L TSOP38438 IR?
U 1 1 56C301EB
P 10600 3050
AR Path="/56BF0E3B/56C301EB" Ref="IR?"  Part="1" 
AR Path="/56BF2119/56C301EB" Ref="IR?"  Part="1" 
AR Path="/56C301EB" Ref="IR3"  Part="1" 
F 0 "IR3" H 10550 2700 60  0000 C CNN
F 1 "TSOP38438" V 10750 3050 60  0000 C CNN
F 2 "Minicast" H 10600 3050 60  0001 C CNN
F 3 "~" H 10600 3050 60  0000 C CNN
	1    10600 3050
	1    0    0    -1  
$EndComp
$Comp
L TSOP38438 IR?
U 1 1 56C301FA
P 10600 3900
AR Path="/56BF0E3B/56C301FA" Ref="IR?"  Part="1" 
AR Path="/56BF2119/56C301FA" Ref="IR?"  Part="1" 
AR Path="/56C301FA" Ref="IR4"  Part="1" 
F 0 "IR4" H 10550 3550 60  0000 C CNN
F 1 "TSOP38438" V 10750 3900 60  0000 C CNN
F 2 "Minicast" H 10600 3900 60  0001 C CNN
F 3 "~" H 10600 3900 60  0000 C CNN
	1    10600 3900
	1    0    0    -1  
$EndComp
NoConn ~ 7350 4550
$Comp
L GND #PWR?
U 1 1 56C3145D
P 7900 6550
AR Path="/56BF0E3B/56C3145D" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56C3145D" Ref="#PWR?"  Part="1" 
AR Path="/56C3145D" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 7900 6550 30  0001 C CNN
F 1 "GND" H 7900 6480 30  0001 C CNN
F 2 "" H 7900 6550 60  0000 C CNN
F 3 "" H 7900 6550 60  0000 C CNN
	1    7900 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56C317C5
P 6650 2950
AR Path="/56BF0E3B/56C317C5" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56C317C5" Ref="#PWR?"  Part="1" 
AR Path="/56C317C5" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 6650 2950 30  0001 C CNN
F 1 "GND" H 6650 2880 30  0001 C CNN
F 2 "" H 6650 2950 60  0000 C CNN
F 3 "" H 6650 2950 60  0000 C CNN
	1    6650 2950
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 56C318B8
P 6400 2950
AR Path="/56BF0E3B/56C318B8" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56C318B8" Ref="#PWR?"  Part="1" 
AR Path="/56C318B8" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 6400 3040 20  0001 C CNN
F 1 "+5V" H 6400 3040 30  0000 C CNN
F 2 "" H 6400 2950 60  0000 C CNN
F 3 "" H 6400 2950 60  0000 C CNN
	1    6400 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56C318C7
P 6400 3650
AR Path="/56BF0E3B/56C318C7" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56C318C7" Ref="#PWR?"  Part="1" 
AR Path="/56C318C7" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 6400 3650 30  0001 C CNN
F 1 "GND" H 6400 3580 30  0001 C CNN
F 2 "" H 6400 3650 60  0000 C CNN
F 3 "" H 6400 3650 60  0000 C CNN
	1    6400 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56C31AA9
P 7950 3200
AR Path="/56BF0E3B/56C31AA9" Ref="#PWR?"  Part="1" 
AR Path="/56BF2119/56C31AA9" Ref="#PWR?"  Part="1" 
AR Path="/56C31AA9" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 7950 3200 30  0001 C CNN
F 1 "GND" H 7950 3130 30  0001 C CNN
F 2 "" H 7950 3200 60  0000 C CNN
F 3 "" H 7950 3200 60  0000 C CNN
	1    7950 3200
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_CAPACITOR C?
U 1 1 56C328A5
P 9500 4100
AR Path="/56BF2119/56C328A5" Ref="C?"  Part="1" 
AR Path="/56BF0E3B/56C328A5" Ref="C?"  Part="1" 
AR Path="/56C328A5" Ref="C30"  Part="1" 
F 0 "C30" H 9600 4150 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 9510 3900 60  0001 C CNN
F 2 "0805" H 9470 3850 60  0001 C CNN
F 3 "~" H 9470 3850 60  0000 C CNN
F 4 "1µC" H 9600 4000 60  0000 C CNN "Capacitance"
	1    9500 4100
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_RESISTOR R?
U 1 1 56C328AC
P 10150 4100
AR Path="/56BF2119/56C328AC" Ref="R?"  Part="1" 
AR Path="/56BF0E3B/56C328AC" Ref="R?"  Part="1" 
AR Path="/56C328AC" Ref="R12"  Part="1" 
F 0 "R12" H 10200 4000 60  0000 C CNN
F 1 "GENERIC_RESISTOR" H 10190 3880 60  0001 C CNN
F 2 "0805" H 10100 3850 60  0001 C CNN
F 3 "~" H 10100 3850 60  0000 C CNN
F 4 "160R" H 10150 4200 60  0000 C CNN "Resistance"
	1    10150 4100
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR?
U 1 1 56C328B2
P 9800 3950
AR Path="/56BF2119/56C328B2" Ref="#PWR?"  Part="1" 
AR Path="/56BF0E3B/56C328B2" Ref="#PWR?"  Part="1" 
AR Path="/56C328B2" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 9800 4040 20  0001 C CNN
F 1 "+5V" H 9800 4040 30  0000 C CNN
F 2 "" H 9800 3950 60  0000 C CNN
F 3 "" H 9800 3950 60  0000 C CNN
	1    9800 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56C328B8
P 9350 4300
AR Path="/56BF2119/56C328B8" Ref="#PWR?"  Part="1" 
AR Path="/56BF0E3B/56C328B8" Ref="#PWR?"  Part="1" 
AR Path="/56C328B8" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 9350 4300 30  0001 C CNN
F 1 "GND" H 9350 4230 30  0001 C CNN
F 2 "" H 9350 4300 60  0000 C CNN
F 3 "" H 9350 4300 60  0000 C CNN
	1    9350 4300
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_CAPACITOR C?
U 1 1 56C328CF
P 9500 3250
AR Path="/56BF2119/56C328CF" Ref="C?"  Part="1" 
AR Path="/56BF0E3B/56C328CF" Ref="C?"  Part="1" 
AR Path="/56C328CF" Ref="C29"  Part="1" 
F 0 "C29" H 9600 3300 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 9510 3050 60  0001 C CNN
F 2 "0805" H 9470 3000 60  0001 C CNN
F 3 "~" H 9470 3000 60  0000 C CNN
F 4 "1µC" H 9600 3150 60  0000 C CNN "Capacitance"
	1    9500 3250
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_RESISTOR R?
U 1 1 56C328D6
P 10150 3250
AR Path="/56BF2119/56C328D6" Ref="R?"  Part="1" 
AR Path="/56BF0E3B/56C328D6" Ref="R?"  Part="1" 
AR Path="/56C328D6" Ref="R11"  Part="1" 
F 0 "R11" H 10200 3150 60  0000 C CNN
F 1 "GENERIC_RESISTOR" H 10190 3030 60  0001 C CNN
F 2 "0805" H 10100 3000 60  0001 C CNN
F 3 "~" H 10100 3000 60  0000 C CNN
F 4 "160R" H 10150 3350 60  0000 C CNN "Resistance"
	1    10150 3250
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR?
U 1 1 56C328DC
P 9800 3100
AR Path="/56BF2119/56C328DC" Ref="#PWR?"  Part="1" 
AR Path="/56BF0E3B/56C328DC" Ref="#PWR?"  Part="1" 
AR Path="/56C328DC" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 9800 3190 20  0001 C CNN
F 1 "+5V" H 9800 3190 30  0000 C CNN
F 2 "" H 9800 3100 60  0000 C CNN
F 3 "" H 9800 3100 60  0000 C CNN
	1    9800 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56C328E2
P 9350 3450
AR Path="/56BF2119/56C328E2" Ref="#PWR?"  Part="1" 
AR Path="/56BF0E3B/56C328E2" Ref="#PWR?"  Part="1" 
AR Path="/56C328E2" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 9350 3450 30  0001 C CNN
F 1 "GND" H 9350 3380 30  0001 C CNN
F 2 "" H 9350 3450 60  0000 C CNN
F 3 "" H 9350 3450 60  0000 C CNN
	1    9350 3450
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_RESISTOR R?
U 1 1 56C328F0
P 7450 6250
AR Path="/56BF2119/56C328F0" Ref="R?"  Part="1" 
AR Path="/56BF0E3B/56C328F0" Ref="R?"  Part="1" 
AR Path="/56C328F0" Ref="R4"  Part="1" 
F 0 "R4" H 7500 6150 60  0000 C CNN
F 1 "GENERIC_RESISTOR" H 7490 6030 60  0001 C CNN
F 2 "0805" H 7400 6000 60  0001 C CNN
F 3 "~" H 7400 6000 60  0000 C CNN
F 4 "10K" H 7400 6350 60  0000 L CNN "Resistance"
	1    7450 6250
	-1   0    0    1   
$EndComp
$Comp
L GENERIC_CAPACITOR C?
U 1 1 56C328F9
P 9500 2400
AR Path="/56BF2119/56C328F9" Ref="C?"  Part="1" 
AR Path="/56BF0E3B/56C328F9" Ref="C?"  Part="1" 
AR Path="/56C328F9" Ref="C28"  Part="1" 
F 0 "C28" H 9600 2450 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 9510 2200 60  0001 C CNN
F 2 "0805" H 9470 2150 60  0001 C CNN
F 3 "~" H 9470 2150 60  0000 C CNN
F 4 "1µC" H 9600 2300 60  0000 C CNN "Capacitance"
	1    9500 2400
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_RESISTOR R?
U 1 1 56C32900
P 10150 2400
AR Path="/56BF2119/56C32900" Ref="R?"  Part="1" 
AR Path="/56BF0E3B/56C32900" Ref="R?"  Part="1" 
AR Path="/56C32900" Ref="R10"  Part="1" 
F 0 "R10" H 10200 2300 60  0000 C CNN
F 1 "GENERIC_RESISTOR" H 10190 2180 60  0001 C CNN
F 2 "0805" H 10100 2150 60  0001 C CNN
F 3 "~" H 10100 2150 60  0000 C CNN
F 4 "160R" H 10150 2500 60  0000 C CNN "Resistance"
	1    10150 2400
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR?
U 1 1 56C32906
P 9800 2250
AR Path="/56BF2119/56C32906" Ref="#PWR?"  Part="1" 
AR Path="/56BF0E3B/56C32906" Ref="#PWR?"  Part="1" 
AR Path="/56C32906" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 9800 2340 20  0001 C CNN
F 1 "+5V" H 9800 2340 30  0000 C CNN
F 2 "" H 9800 2250 60  0000 C CNN
F 3 "" H 9800 2250 60  0000 C CNN
	1    9800 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56C3290C
P 9350 2600
AR Path="/56BF2119/56C3290C" Ref="#PWR?"  Part="1" 
AR Path="/56BF0E3B/56C3290C" Ref="#PWR?"  Part="1" 
AR Path="/56C3290C" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 9350 2600 30  0001 C CNN
F 1 "GND" H 9350 2530 30  0001 C CNN
F 2 "" H 9350 2600 60  0000 C CNN
F 3 "" H 9350 2600 60  0000 C CNN
	1    9350 2600
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_RESISTOR R?
U 1 1 56C3291A
P 7450 5950
AR Path="/56BF2119/56C3291A" Ref="R?"  Part="1" 
AR Path="/56BF0E3B/56C3291A" Ref="R?"  Part="1" 
AR Path="/56C3291A" Ref="R3"  Part="1" 
F 0 "R3" H 7500 5850 60  0000 C CNN
F 1 "GENERIC_RESISTOR" H 7490 5730 60  0001 C CNN
F 2 "0805" H 7400 5700 60  0001 C CNN
F 3 "~" H 7400 5700 60  0000 C CNN
F 4 "10K" H 7400 6050 60  0000 L CNN "Resistance"
	1    7450 5950
	-1   0    0    1   
$EndComp
$Comp
L GENERIC_CAPACITOR C?
U 1 1 56C32923
P 9500 1550
AR Path="/56BF2119/56C32923" Ref="C?"  Part="1" 
AR Path="/56BF0E3B/56C32923" Ref="C?"  Part="1" 
AR Path="/56C32923" Ref="C27"  Part="1" 
F 0 "C27" H 9600 1600 60  0000 C CNN
F 1 "GENERIC_CAPACITOR" H 9510 1350 60  0001 C CNN
F 2 "0805" H 9470 1300 60  0001 C CNN
F 3 "~" H 9470 1300 60  0000 C CNN
F 4 "1µC" H 9600 1450 60  0000 C CNN "Capacitance"
	1    9500 1550
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_RESISTOR R?
U 1 1 56C3292A
P 10150 1550
AR Path="/56BF2119/56C3292A" Ref="R?"  Part="1" 
AR Path="/56BF0E3B/56C3292A" Ref="R?"  Part="1" 
AR Path="/56C3292A" Ref="R9"  Part="1" 
F 0 "R9" H 10200 1450 60  0000 C CNN
F 1 "GENERIC_RESISTOR" H 10190 1330 60  0001 C CNN
F 2 "0805" H 10100 1300 60  0001 C CNN
F 3 "~" H 10100 1300 60  0000 C CNN
F 4 "160R" H 10150 1650 60  0000 C CNN "Resistance"
	1    10150 1550
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR?
U 1 1 56C32930
P 9800 1400
AR Path="/56BF2119/56C32930" Ref="#PWR?"  Part="1" 
AR Path="/56BF0E3B/56C32930" Ref="#PWR?"  Part="1" 
AR Path="/56C32930" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 9800 1490 20  0001 C CNN
F 1 "+5V" H 9800 1490 30  0000 C CNN
F 2 "" H 9800 1400 60  0000 C CNN
F 3 "" H 9800 1400 60  0000 C CNN
	1    9800 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56C32936
P 9350 1750
AR Path="/56BF2119/56C32936" Ref="#PWR?"  Part="1" 
AR Path="/56BF0E3B/56C32936" Ref="#PWR?"  Part="1" 
AR Path="/56C32936" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 9350 1750 30  0001 C CNN
F 1 "GND" H 9350 1680 30  0001 C CNN
F 2 "" H 9350 1750 60  0000 C CNN
F 3 "" H 9350 1750 60  0000 C CNN
	1    9350 1750
	1    0    0    -1  
$EndComp
$Comp
L GENERIC_RESISTOR R?
U 1 1 56C32944
P 7450 5650
AR Path="/56BF2119/56C32944" Ref="R?"  Part="1" 
AR Path="/56BF0E3B/56C32944" Ref="R?"  Part="1" 
AR Path="/56C32944" Ref="R2"  Part="1" 
F 0 "R2" H 7500 5550 60  0000 C CNN
F 1 "GENERIC_RESISTOR" H 7490 5430 60  0001 C CNN
F 2 "0805" H 7400 5400 60  0001 C CNN
F 3 "~" H 7400 5400 60  0000 C CNN
F 4 "10K" H 7400 5750 60  0000 L CNN "Resistance"
	1    7450 5650
	-1   0    0    1   
$EndComp
$Comp
L HEADER_(8_WAY) P1
U 1 1 56C54533
P 5450 1000
F 0 "P1" H 5450 700 60  0000 C CNN
F 1 "HEADER_(8_WAY)" H 5450 1200 60  0001 C CNN
F 2 "Header_4x2" H 5500 1050 60  0001 C CNN
F 3 "" H 5500 1050 60  0000 C CNN
	1    5450 1000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR028
U 1 1 56C54542
P 5150 800
F 0 "#PWR028" H 5150 890 20  0001 C CNN
F 1 "+5V" H 5150 890 30  0000 C CNN
F 2 "" H 5150 800 60  0000 C CNN
F 3 "" H 5150 800 60  0000 C CNN
	1    5150 800 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 56C547AB
P 5750 1300
F 0 "#PWR029" H 5750 1300 30  0001 C CNN
F 1 "GND" H 5750 1230 30  0001 C CNN
F 2 "" H 5750 1300 60  0000 C CNN
F 3 "" H 5750 1300 60  0000 C CNN
	1    5750 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 56C5416C
P 5150 1300
F 0 "#PWR030" H 5150 1300 30  0001 C CNN
F 1 "GND" H 5150 1230 30  0001 C CNN
F 2 "" H 5150 1300 60  0000 C CNN
F 3 "" H 5150 1300 60  0000 C CNN
	1    5150 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1200 1150 1400
Wire Wire Line
	1150 1400 2150 1400
Wire Wire Line
	2150 1400 2150 1550
Connection ~ 1000 1000
Wire Wire Line
	1150 1750 1150 1950
Wire Wire Line
	1150 1950 2150 1950
Wire Wire Line
	2150 1950 2150 2100
Wire Wire Line
	1150 2300 1150 2500
Wire Wire Line
	1150 2500 2150 2500
Wire Wire Line
	2150 2500 2150 2650
Wire Wire Line
	1150 2850 1150 3050
Wire Wire Line
	1150 3050 2150 3050
Wire Wire Line
	2150 3050 2150 3200
Wire Wire Line
	1150 3400 1150 3600
Wire Wire Line
	1150 3600 2150 3600
Wire Wire Line
	2150 3600 2150 3750
Wire Wire Line
	1150 3950 1150 4150
Wire Wire Line
	1150 4150 2150 4150
Wire Wire Line
	2150 4150 2150 4300
Wire Wire Line
	1150 4500 1150 4700
Wire Wire Line
	1150 4700 2150 4700
Wire Wire Line
	2150 4700 2150 4850
Wire Wire Line
	1150 5050 1150 5250
Wire Wire Line
	1150 5250 2150 5250
Wire Wire Line
	2150 5250 2150 5400
Wire Wire Line
	1150 5600 1150 5800
Wire Wire Line
	1150 5800 2150 5800
Wire Wire Line
	2150 5800 2150 5950
Wire Wire Line
	1150 6150 1150 6350
Wire Wire Line
	1150 6350 2150 6350
Wire Wire Line
	2150 6350 2150 6500
Wire Wire Line
	1150 6700 1150 6900
Wire Wire Line
	1150 6900 2150 6900
Wire Wire Line
	2150 6900 2150 7050
Wire Wire Line
	2150 1200 2300 1200
Wire Wire Line
	2300 1200 2300 7350
Wire Wire Line
	2150 7250 2300 7250
Connection ~ 2300 7250
Wire Wire Line
	2150 6700 2300 6700
Connection ~ 2300 6700
Wire Wire Line
	2150 6150 2300 6150
Connection ~ 2300 6150
Wire Wire Line
	2150 5600 2300 5600
Connection ~ 2300 5600
Wire Wire Line
	2150 5050 2300 5050
Connection ~ 2300 5050
Wire Wire Line
	2150 4500 2300 4500
Connection ~ 2300 4500
Wire Wire Line
	2150 3950 2300 3950
Connection ~ 2300 3950
Wire Wire Line
	2150 3400 2300 3400
Connection ~ 2300 3400
Wire Wire Line
	2150 2850 2300 2850
Connection ~ 2300 2850
Wire Wire Line
	2150 2300 2300 2300
Connection ~ 2300 2300
Wire Wire Line
	2150 1750 2300 1750
Connection ~ 2300 1750
Wire Wire Line
	800  7050 1150 7050
Connection ~ 800  1000
Connection ~ 1000 7050
Wire Wire Line
	800  1550 1150 1550
Connection ~ 800  1550
Connection ~ 1000 1550
Wire Wire Line
	800  2100 1150 2100
Connection ~ 800  2100
Connection ~ 1000 2100
Wire Wire Line
	800  2650 1150 2650
Connection ~ 1000 2650
Connection ~ 800  2650
Wire Wire Line
	800  3200 1150 3200
Connection ~ 800  3200
Connection ~ 1000 3200
Wire Wire Line
	800  3750 1150 3750
Connection ~ 800  3750
Connection ~ 1000 3750
Wire Wire Line
	800  4300 1150 4300
Connection ~ 1000 4300
Connection ~ 800  4300
Wire Wire Line
	800  4850 1150 4850
Connection ~ 800  4850
Connection ~ 1000 4850
Wire Wire Line
	800  5400 1150 5400
Connection ~ 800  5400
Wire Wire Line
	800  5950 1150 5950
Connection ~ 800  5950
Wire Wire Line
	800  6500 1150 6500
Connection ~ 800  6500
Connection ~ 1000 6500
Connection ~ 1000 5950
Connection ~ 1000 5400
Wire Wire Line
	6950 3250 6950 1150
Wire Wire Line
	6950 1150 10350 1150
Wire Wire Line
	7050 3250 7050 2000
Wire Wire Line
	7050 2000 10350 2000
Wire Wire Line
	7150 3250 7150 2850
Wire Wire Line
	7150 2850 10350 2850
Wire Wire Line
	7250 3250 7250 2950
Wire Wire Line
	7250 2950 8100 2950
Wire Wire Line
	8100 2950 8100 3700
Wire Wire Line
	8100 3700 10350 3700
Wire Wire Line
	6850 3250 6850 2800
Wire Wire Line
	6850 2800 6650 2800
Wire Wire Line
	6650 2800 6650 2950
Wire Wire Line
	6750 3150 6400 3150
Wire Wire Line
	6400 2950 6400 3250
Wire Wire Line
	7350 3250 7350 3050
Wire Wire Line
	7350 3050 7950 3050
Wire Wire Line
	7950 3050 7950 3200
Wire Wire Line
	6750 4800 6750 4550
Wire Wire Line
	5050 4800 6750 4800
Wire Wire Line
	6850 4900 6850 4550
Wire Wire Line
	5650 4900 6850 4900
Wire Wire Line
	10350 3900 10150 3900
Wire Wire Line
	10150 3900 10150 3800
Wire Wire Line
	10150 3800 9350 3800
Wire Wire Line
	9350 3800 9350 4300
Wire Wire Line
	9650 4100 9950 4100
Wire Wire Line
	9800 3950 9800 4100
Connection ~ 9800 4100
Connection ~ 9350 4100
Wire Wire Line
	10350 3050 10150 3050
Wire Wire Line
	10150 3050 10150 2950
Wire Wire Line
	10150 2950 9350 2950
Wire Wire Line
	9350 2950 9350 3450
Wire Wire Line
	9650 3250 9950 3250
Wire Wire Line
	9800 3100 9800 3250
Connection ~ 9800 3250
Connection ~ 9350 3250
Wire Wire Line
	10350 2200 10150 2200
Wire Wire Line
	10150 2200 10150 2100
Wire Wire Line
	10150 2100 9350 2100
Wire Wire Line
	9350 2100 9350 2600
Wire Wire Line
	9650 2400 9950 2400
Wire Wire Line
	9800 2250 9800 2400
Connection ~ 9800 2400
Connection ~ 9350 2400
Wire Wire Line
	10350 1350 10150 1350
Wire Wire Line
	10150 1350 10150 1250
Wire Wire Line
	10150 1250 9350 1250
Wire Wire Line
	9650 1550 9950 1550
Wire Wire Line
	9800 1400 9800 1550
Connection ~ 9800 1550
Connection ~ 9350 1550
Wire Wire Line
	5750 1100 5750 1300
Wire Wire Line
	5250 2500 7450 2500
Wire Wire Line
	7450 2500 7450 3250
Wire Wire Line
	5150 1000 5150 1300
Wire Wire Line
	800  900  800  7050
Wire Wire Line
	7250 4550 7250 5350
Wire Wire Line
	7150 4550 7150 5650
Wire Wire Line
	7150 5650 7250 5650
Wire Wire Line
	7050 4550 7050 5950
Wire Wire Line
	7050 5950 7250 5950
Wire Wire Line
	6950 4550 6950 6250
Wire Wire Line
	6950 6250 7250 6250
Wire Wire Line
	7450 4550 7450 4900
Wire Wire Line
	7450 4900 7900 4900
Wire Wire Line
	7900 4900 7900 6550
Wire Wire Line
	7650 6250 7900 6250
Connection ~ 7900 6250
Wire Wire Line
	7650 5950 7900 5950
Connection ~ 7900 5950
Wire Wire Line
	7650 5650 7900 5650
Connection ~ 7900 5650
Wire Wire Line
	7650 5350 7900 5350
Connection ~ 7900 5350
Wire Wire Line
	5150 900  5150 800 
Wire Wire Line
	2150 1000 3550 1000
Wire Wire Line
	5150 900  5300 900 
NoConn ~ 1150 7250
NoConn ~ 5600 900 
Wire Wire Line
	5150 1000 5300 1000
Wire Wire Line
	5300 1100 5250 1100
Wire Wire Line
	5600 1100 5750 1100
Wire Wire Line
	5250 1100 5250 2500
Wire Wire Line
	5300 1200 5050 1200
Wire Wire Line
	5050 1200 5050 4800
Wire Wire Line
	5600 1200 5650 1200
Wire Wire Line
	5650 1200 5650 4900
Wire Wire Line
	5600 1000 5750 1000
Wire Wire Line
	5750 1000 5750 600 
Wire Wire Line
	5750 600  3550 600 
Wire Wire Line
	3550 600  3550 1000
Wire Wire Line
	800  1000 1150 1000
Wire Wire Line
	6400 3650 6400 3550
Connection ~ 6400 3150
Wire Wire Line
	6750 3250 6750 3150
Wire Wire Line
	9350 1250 9350 1750
$EndSCHEMATC

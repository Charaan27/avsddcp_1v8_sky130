EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
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
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:dickson_ckt-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L mosfet_n M2
U 1 1 60D0753E
P 3750 2900
F 0 "M2" H 3750 2750 50  0000 R CNN
F 1 "mosfet_n" H 3850 2850 50  0000 R CNN
F 2 "" H 4050 2600 29  0000 C CNN
F 3 "" H 3850 2700 60  0000 C CNN
	1    3750 2900
	0    -1   1    0   
$EndComp
$Comp
L mosfet_n M3
U 1 1 60D0756C
P 4500 2900
F 0 "M3" H 4500 2750 50  0000 R CNN
F 1 "mosfet_n" H 4600 2850 50  0000 R CNN
F 2 "" H 4800 2600 29  0000 C CNN
F 3 "" H 4600 2700 60  0000 C CNN
	1    4500 2900
	0    -1   1    0   
$EndComp
$Comp
L mosfet_n M4
U 1 1 60D0759B
P 5250 2900
F 0 "M4" H 5250 2750 50  0000 R CNN
F 1 "mosfet_n" H 5350 2850 50  0000 R CNN
F 2 "" H 5550 2600 29  0000 C CNN
F 3 "" H 5350 2700 60  0000 C CNN
	1    5250 2900
	0    -1   1    0   
$EndComp
$Comp
L mosfet_n M5
U 1 1 60D076BB
P 6150 2900
F 0 "M5" H 6150 2750 50  0000 R CNN
F 1 "mosfet_n" H 6250 2850 50  0000 R CNN
F 2 "" H 6450 2600 29  0000 C CNN
F 3 "" H 6250 2700 60  0000 C CNN
	1    6150 2900
	0    -1   1    0   
$EndComp
Wire Wire Line
	5650 3100 6150 3100
Wire Wire Line
	4900 3100 5250 3100
Wire Wire Line
	4150 3100 4500 3100
Wire Wire Line
	3350 3100 3750 3100
$Comp
L capacitor C1
U 1 1 60D07829
P 3600 3600
F 0 "C1" H 3625 3700 50  0000 L CNN
F 1 "1p" H 3625 3500 50  0000 L CNN
F 2 "" H 3638 3450 30  0000 C CNN
F 3 "" H 3600 3600 60  0000 C CNN
	1    3600 3600
	1    0    0    -1  
$EndComp
$Comp
L capacitor C2
U 1 1 60D07898
P 4300 3600
F 0 "C2" H 4325 3700 50  0000 L CNN
F 1 "1p" H 4325 3500 50  0000 L CNN
F 2 "" H 4338 3450 30  0000 C CNN
F 3 "" H 4300 3600 60  0000 C CNN
	1    4300 3600
	1    0    0    -1  
$EndComp
$Comp
L capacitor C3
U 1 1 60D078CF
P 5050 3600
F 0 "C3" H 5075 3700 50  0000 L CNN
F 1 "1p" H 5075 3500 50  0000 L CNN
F 2 "" H 5088 3450 30  0000 C CNN
F 3 "" H 5050 3600 60  0000 C CNN
	1    5050 3600
	1    0    0    -1  
$EndComp
$Comp
L capacitor C4
U 1 1 60D0790D
P 5900 3600
F 0 "C4" H 5925 3700 50  0000 L CNN
F 1 "1p" H 5925 3500 50  0000 L CNN
F 2 "" H 5938 3450 30  0000 C CNN
F 3 "" H 5900 3600 60  0000 C CNN
	1    5900 3600
	1    0    0    -1  
$EndComp
$Comp
L capacitor Cout1
U 1 1 60D0794E
P 6850 3600
F 0 "Cout1" H 6875 3700 50  0000 L CNN
F 1 "1p" H 6875 3500 50  0000 L CNN
F 2 "" H 6888 3450 30  0000 C CNN
F 3 "" H 6850 3600 60  0000 C CNN
	1    6850 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2500 3600 3450
Connection ~ 3600 3100
Wire Wire Line
	4300 2500 4300 3450
Connection ~ 4300 3100
Wire Wire Line
	5050 2500 5050 3450
Connection ~ 5050 3100
Wire Wire Line
	5900 2500 5900 3450
Connection ~ 5900 3100
Wire Wire Line
	6850 3450 6850 3100
Wire Wire Line
	6550 3100 7400 3100
Wire Wire Line
	6850 4150 6850 3750
$Comp
L pulse v2
U 1 1 60D081E8
P 3600 4700
F 0 "v2" H 3400 4800 60  0000 C CNN
F 1 "pulse" H 3400 4650 60  0000 C CNN
F 2 "R1" H 3300 4700 60  0000 C CNN
F 3 "" H 3600 4700 60  0000 C CNN
	1    3600 4700
	1    0    0    -1  
$EndComp
$Comp
L pulse v3
U 1 1 60D0825E
P 4300 4700
F 0 "v3" H 4100 4800 60  0000 C CNN
F 1 "pulse" H 4100 4650 60  0000 C CNN
F 2 "R1" H 4000 4700 60  0000 C CNN
F 3 "" H 4300 4700 60  0000 C CNN
	1    4300 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 3750 3600 4250
Wire Wire Line
	3600 4050 5050 4050
Wire Wire Line
	5050 4050 5050 3750
Connection ~ 3600 4050
Wire Wire Line
	4300 3750 4300 4250
Wire Wire Line
	4300 4150 5900 4150
Wire Wire Line
	5900 4150 5900 3750
Connection ~ 4300 4150
$Comp
L GND #PWR01
U 1 1 60D08398
P 3600 5150
F 0 "#PWR01" H 3600 4900 50  0001 C CNN
F 1 "GND" H 3600 5000 50  0000 C CNN
F 2 "" H 3600 5150 50  0001 C CNN
F 3 "" H 3600 5150 50  0001 C CNN
	1    3600 5150
	1    0    0    -1  
$EndComp
$Comp
L DC v1
U 1 1 60D08662
P 2450 3950
F 0 "v1" H 2250 4050 60  0000 C CNN
F 1 "DC" H 2250 3900 60  0000 C CNN
F 2 "R1" H 2150 3950 60  0000 C CNN
F 3 "" H 2450 3950 60  0000 C CNN
	1    2450 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 3500 2450 3100
Wire Wire Line
	2450 3100 2950 3100
Wire Wire Line
	2750 3100 2750 2500
Wire Wire Line
	2750 2500 3150 2500
Wire Wire Line
	3150 2500 3150 2800
Connection ~ 2750 3100
Wire Wire Line
	3600 2500 3950 2500
Wire Wire Line
	3950 2500 3950 2800
Wire Wire Line
	4300 2500 4700 2500
Wire Wire Line
	4700 2500 4700 2800
Wire Wire Line
	5050 2500 5450 2500
Wire Wire Line
	5450 2500 5450 2800
Wire Wire Line
	5900 2500 6350 2500
Wire Wire Line
	6350 2500 6350 2800
$Comp
L resistor R1
U 1 1 60D08989
P 7350 3600
F 0 "R1" H 7400 3730 50  0000 C CNN
F 1 "1000k" H 7400 3550 50  0000 C CNN
F 2 "" H 7400 3580 30  0000 C CNN
F 3 "" V 7400 3650 30  0000 C CNN
	1    7350 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 3100 7400 3500
Connection ~ 6850 3100
Wire Wire Line
	7400 4150 7400 3800
Wire Wire Line
	7750 3200 7400 3200
Connection ~ 7400 3200
Wire Wire Line
	6500 4150 7400 4150
$Comp
L GND #PWR02
U 1 1 60D0B88D
P 6850 4150
F 0 "#PWR02" H 6850 3900 50  0001 C CNN
F 1 "GND" H 6850 4000 50  0000 C CNN
F 2 "" H 6850 4150 50  0001 C CNN
F 3 "" H 6850 4150 50  0001 C CNN
	1    6850 4150
	1    0    0    -1  
$EndComp
$Comp
L mosfet_n M1
U 1 1 60D0BCA1
P 2950 2900
F 0 "M1" H 2950 2750 50  0000 R CNN
F 1 "mosfet_n" H 3050 2850 50  0000 R CNN
F 2 "" H 3250 2600 29  0000 C CNN
F 3 "" H 3050 2700 60  0000 C CNN
	1    2950 2900
	0    -1   1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 60D07E5F
P 4300 5150
F 0 "#PWR03" H 4300 4900 50  0001 C CNN
F 1 "GND" H 4300 5000 50  0000 C CNN
F 2 "" H 4300 5150 50  0001 C CNN
F 3 "" H 4300 5150 50  0001 C CNN
	1    4300 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 60D07E9A
P 2450 4400
F 0 "#PWR04" H 2450 4150 50  0001 C CNN
F 1 "GND" H 2450 4250 50  0000 C CNN
F 2 "" H 2450 4400 50  0001 C CNN
F 3 "" H 2450 4400 50  0001 C CNN
	1    2450 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 3200 3300 3350
Wire Wire Line
	3300 3350 6500 3350
Wire Wire Line
	6500 3200 6500 4150
Connection ~ 6850 4150
Connection ~ 6500 3350
Wire Wire Line
	5600 3200 5600 3350
Connection ~ 5600 3350
Wire Wire Line
	4850 3200 4850 3350
Connection ~ 4850 3350
Wire Wire Line
	4100 3200 4100 3350
Connection ~ 4100 3350
Text GLabel 2450 3100 0    60   Input ~ 0
IN
Text GLabel 3600 2500 0    60   Input ~ 0
V1
Text GLabel 4300 2500 0    60   Input ~ 0
V2
Text GLabel 5050 2500 0    60   Input ~ 0
V3
Text GLabel 5900 2500 0    60   Input ~ 0
V4
Wire Wire Line
	7750 3200 7750 3050
Text GLabel 7750 3200 2    60   Input ~ 0
OUT
Text GLabel 3600 4050 0    60   Input ~ 0
CLK1
Text GLabel 4300 4150 0    60   Input ~ 0
CLK2
$Comp
L plot_v1 U1
U 1 1 60DB240D
P 7750 3250
F 0 "U1" H 7750 3750 60  0000 C CNN
F 1 "plot_v1" H 7950 3600 60  0000 C CNN
F 2 "" H 7750 3250 60  0000 C CNN
F 3 "" H 7750 3250 60  0000 C CNN
	1    7750 3250
	1    0    0    -1  
$EndComp
$EndSCHEMATC

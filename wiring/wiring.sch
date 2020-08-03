EESchema Schematic File Version 4
EELAYER 30 0
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
L Regulator_Linear:LT1584-ADJ U1
U 1 1 5F0843CF
P 2650 2950
F 0 "U1" H 2650 3192 50  0000 C CNN
F 1 "LT1584-ADJ" H 2650 3101 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2650 3200 50  0001 C CIN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/158457a.pdf" H 2650 2950 50  0001 C CNN
	1    2650 2950
	1    0    0    -1  
$EndComp
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A1
U 1 1 5F084B5B
P 7600 3350
F 0 "A1" H 7650 4231 50  0000 C CNN
F 1 "Pololu_Breakout_A4988" H 7650 4140 50  0000 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 7875 2600 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 7700 3050 50  0001 C CNN
	1    7600 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0101
U 1 1 5F085527
P 1650 4150
F 0 "#PWR0101" H 1650 4000 50  0001 C CNN
F 1 "+12V" H 1665 4323 50  0000 C CNN
F 2 "" H 1650 4150 50  0001 C CNN
F 3 "" H 1650 4150 50  0001 C CNN
	1    1650 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F085700
P 1650 4400
F 0 "#PWR0102" H 1650 4150 50  0001 C CNN
F 1 "GND" H 1655 4227 50  0000 C CNN
F 2 "" H 1650 4400 50  0001 C CNN
F 3 "" H 1650 4400 50  0001 C CNN
	1    1650 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4350 1650 4400
Wire Wire Line
	1650 4150 1650 4200
Wire Wire Line
	1650 4200 1900 4200
Wire Wire Line
	7600 2650 7600 2450
Wire Wire Line
	7600 2450 3100 2450
Wire Wire Line
	3100 2950 2950 2950
Wire Wire Line
	1900 4200 1900 2200
Wire Wire Line
	1900 2200 7800 2200
Wire Wire Line
	7800 2200 7800 2650
$Comp
L Motor:Stepper_Motor_bipolar M1
U 1 1 5F088A70
P 9900 3400
F 0 "M1" H 10088 3524 50  0000 L CNN
F 1 "Stepper_Motor_bipolar" H 10088 3433 50  0000 L CNN
F 2 "" H 9910 3390 50  0001 C CNN
F 3 "http://www.infineon.com/dgdl/Application-Note-TLE8110EE_driving_UniPolarStepperMotor_V1.1.pdf?fileId=db3a30431be39b97011be5d0aa0a00b0" H 9910 3390 50  0001 C CNN
	1    9900 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3100 9800 3000
Wire Wire Line
	9800 3000 8300 3000
Wire Wire Line
	8300 3000 8300 3350
Wire Wire Line
	8300 3350 8100 3350
Wire Wire Line
	10000 3100 10000 2850
Wire Wire Line
	10000 2850 8200 2850
Wire Wire Line
	8200 2850 8200 3250
Wire Wire Line
	8200 3250 8100 3250
Wire Wire Line
	9600 3300 8350 3300
Wire Wire Line
	8350 3300 8350 3450
Wire Wire Line
	8350 3450 8100 3450
Wire Wire Line
	9600 3500 8450 3500
Wire Wire Line
	8450 3500 8450 3550
Wire Wire Line
	8450 3550 8100 3550
$Comp
L MCU_Espressif:ESP8266EX U2
U 1 1 5F08B328
P 4750 5600
F 0 "U2" H 4750 4411 50  0000 C CNN
F 1 "ESP8266EX" H 4750 4320 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.45x3.45mm" H 4750 4300 50  0001 C CNN
F 3 "http://espressif.com/sites/default/files/documentation/0a-esp8266ex_datasheet_en.pdf" H 4850 4300 50  0001 C CNN
	1    4750 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4600 4950 2900
Wire Wire Line
	4950 2900 3100 2900
Wire Wire Line
	3100 2450 3100 2900
Connection ~ 3100 2900
Wire Wire Line
	3100 2900 3100 2950
Wire Wire Line
	5600 5600 5650 5600
Wire Wire Line
	6600 5600 6600 3350
Wire Wire Line
	6600 3350 7200 3350
Connection ~ 5650 5600
Wire Wire Line
	5650 5600 6600 5600
Wire Wire Line
	5650 5800 6950 5800
Wire Wire Line
	6950 5800 6950 3450
Wire Wire Line
	6950 3450 7200 3450
Wire Wire Line
	5650 6000 6200 6000
Wire Wire Line
	6200 6000 6200 3250
Wire Wire Line
	6200 3250 7200 3250
$Comp
L Device:CP C1
U 1 1 5F090C1A
P 3150 4000
F 0 "C1" H 3268 4046 50  0000 L CNN
F 1 "100uf" H 3268 3955 50  0000 L CNN
F 2 "" H 3188 3850 50  0001 C CNN
F 3 "~" H 3150 4000 50  0001 C CNN
	1    3150 4000
	1    0    0    -1  
$EndComp
NoConn ~ 4250 4600
NoConn ~ 4350 4600
NoConn ~ 4450 4600
NoConn ~ 4550 4600
NoConn ~ 4650 4600
NoConn ~ 4750 4600
NoConn ~ 4850 4600
NoConn ~ 5650 4900
NoConn ~ 5650 5000
NoConn ~ 5650 5100
NoConn ~ 5650 5200
NoConn ~ 5650 5300
NoConn ~ 5650 5400
NoConn ~ 5650 5500
NoConn ~ 5650 5700
NoConn ~ 5650 5900
NoConn ~ 5650 6100
NoConn ~ 5650 6200
NoConn ~ 5650 6300
NoConn ~ 5650 6400
NoConn ~ 3850 6400
NoConn ~ 3850 5900
NoConn ~ 3850 5600
NoConn ~ 3850 5500
NoConn ~ 3850 5400
NoConn ~ 3850 5300
NoConn ~ 3850 5200
NoConn ~ 3850 5100
NoConn ~ 2650 3250
Wire Wire Line
	7200 2950 7200 3050
NoConn ~ 7200 3650
NoConn ~ 7200 3750
NoConn ~ 7200 3850
Wire Wire Line
	7800 4150 7800 4350
Wire Wire Line
	3150 4150 3150 4350
Connection ~ 3150 4350
Wire Wire Line
	1650 4350 3150 4350
Wire Wire Line
	4750 6700 4750 7150
Wire Wire Line
	4750 7150 3150 7150
Wire Wire Line
	3150 7150 3150 4350
Wire Wire Line
	3150 4350 7600 4350
Wire Wire Line
	7600 4150 7600 4350
Connection ~ 7600 4350
Wire Wire Line
	7600 4350 7800 4350
Wire Wire Line
	3150 3850 3150 3750
Wire Wire Line
	2350 2950 2200 2950
Wire Wire Line
	2200 2950 2200 3750
Wire Wire Line
	2200 4200 1900 4200
Connection ~ 1900 4200
Wire Wire Line
	2200 3750 3150 3750
Connection ~ 2200 3750
Wire Wire Line
	2200 3750 2200 4200
$EndSCHEMATC

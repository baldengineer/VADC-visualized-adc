EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "vADC Bit Board"
Date "2021-03-01"
Rev "2"
Comp ""
Comment1 "For e14's Project14"
Comment2 "Data Conversion"
Comment3 ""
Comment4 ""
$EndDescr
Text Label 2050 2300 0    50   ~ 0
LATCH
Text Label 2050 2600 0    50   ~ 0
Vref
Text Label 2050 2500 0    50   ~ 0
GND
Wire Wire Line
	4400 2600 4800 2600
Wire Wire Line
	4800 2400 4400 2400
Wire Wire Line
	4800 2500 4400 2500
Text Label 4800 2600 2    50   ~ 0
Relay-5V
Text Label 4800 2300 2    50   ~ 0
CLK
Wire Wire Line
	4400 2300 4800 2300
Text Label 4800 2400 2    50   ~ 0
GND
Text Label 4800 2500 2    50   ~ 0
Vin
Wire Wire Line
	3500 2600 3900 2600
Text Label 3500 2600 0    50   ~ 0
Vref
Text Label 3500 2500 0    50   ~ 0
GND
Wire Wire Line
	3900 2500 3500 2500
Text Label 3500 2300 0    50   ~ 0
LATCH
Wire Wire Line
	3900 2300 3500 2300
Text Label 3500 2400 0    50   ~ 0
DataIn
Wire Wire Line
	3900 2400 3500 2400
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J2
U 1 1 603C4B3A
P 4100 2400
F 0 "J2" H 4150 2717 50  0000 C CNN
F 1 "In" H 4150 2626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 4100 2400 50  0001 C CNN
F 3 "~" H 4100 2400 50  0001 C CNN
	1    4100 2400
	1    0    0    -1  
$EndComp
Text Label 3350 2500 2    50   ~ 0
Vout
Text Label 7000 5100 3    50   ~ 0
CL4
Text Label 6700 5100 3    50   ~ 0
CL6
Text Label 7150 5100 3    50   ~ 0
CL5
Text Label 7300 5100 3    50   ~ 0
CL3
Text Label 6550 5100 3    50   ~ 0
CL2
Text Label 6850 5100 3    50   ~ 0
CL1
Wire Wire Line
	7150 4850 7150 5250
Wire Wire Line
	7300 5050 7300 5250
Wire Wire Line
	7000 5050 7000 5250
Wire Wire Line
	6850 4850 6850 5250
Wire Wire Line
	6700 5050 6700 5250
Wire Wire Line
	6550 4850 6550 5250
$Comp
L Mechanical:MountingHole H1
U 1 1 6055416A
P 6200 6850
F 0 "H1" H 6300 6850 50  0000 L CNN
F 1 "MountingHole" H 6300 6805 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.7mm" H 6200 6850 50  0001 C CNN
F 3 "~" H 6200 6850 50  0001 C CNN
	1    6200 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60553F0C
P 6550 6850
F 0 "H2" H 6650 6850 50  0000 L CNN
F 1 "MountingHole" H 6650 6805 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.7mm" H 6550 6850 50  0001 C CNN
F 3 "~" H 6550 6850 50  0001 C CNN
	1    6550 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 60553DE2
P 6900 6850
F 0 "H3" H 7000 6850 50  0000 L CNN
F 1 "MountingHole" H 7000 6805 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.7mm" H 6900 6850 50  0001 C CNN
F 3 "~" H 6900 6850 50  0001 C CNN
	1    6900 6850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 60553553
P 7250 6850
F 0 "H4" H 7350 6850 50  0000 L CNN
F 1 "MountingHole" H 7350 6805 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.7mm" H 7250 6850 50  0001 C CNN
F 3 "~" H 7250 6850 50  0001 C CNN
	1    7250 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2450 8950 2450
Connection ~ 9300 2450
Wire Wire Line
	9300 2500 9300 2450
Connection ~ 8950 2450
Wire Wire Line
	9650 2450 9300 2450
Wire Wire Line
	9650 2500 9650 2450
Wire Wire Line
	8950 2450 8600 2450
Wire Wire Line
	8950 2500 8950 2450
Wire Wire Line
	8950 2750 9100 2750
Connection ~ 8950 2750
Wire Wire Line
	8950 2700 8950 2750
Wire Wire Line
	9300 2750 9650 2750
Connection ~ 9300 2750
Wire Wire Line
	9300 2700 9300 2750
Wire Wire Line
	9650 2750 9650 2700
Wire Wire Line
	8600 2750 8950 2750
$Comp
L Device:C_Small C6
U 1 1 604D02C4
P 9650 2600
F 0 "C6" H 9742 2646 50  0000 L CNN
F 1 "22uF" H 9742 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9650 2600 50  0001 C CNN
F 3 "~" H 9650 2600 50  0001 C CNN
	1    9650 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 604D0036
P 9300 2600
F 0 "C5" H 9392 2646 50  0000 L CNN
F 1 "22uF" H 9392 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9300 2600 50  0001 C CNN
F 3 "~" H 9300 2600 50  0001 C CNN
	1    9300 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 604CFC66
P 8950 2600
F 0 "C4" H 9042 2646 50  0000 L CNN
F 1 "22uF" H 9042 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8950 2600 50  0001 C CNN
F 3 "~" H 8950 2600 50  0001 C CNN
	1    8950 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 604B4F8E
P 9100 2750
F 0 "#PWR0101" H 9100 2500 50  0001 C CNN
F 1 "GND" H 9105 2577 50  0000 C CNN
F 2 "" H 9100 2750 50  0001 C CNN
F 3 "" H 9100 2750 50  0001 C CNN
	1    9100 2750
	1    0    0    -1  
$EndComp
Text Label 8950 2450 0    50   ~ 0
Relay-5V
Wire Wire Line
	9050 6000 9200 6000
Wire Wire Line
	9050 5900 9050 6000
Wire Wire Line
	9050 5700 9200 5700
Wire Wire Line
	9050 5800 9050 5700
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 60472104
P 9200 5850
F 0 "JP2" V 9200 5650 50  0000 L CNN
F 1 "Vref" V 9100 5650 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 9200 5850 50  0001 C CNN
F 3 "~" H 9200 5850 50  0001 C CNN
	1    9200 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9100 5300 8650 5300
Text Label 3350 2400 2    50   ~ 0
GND
Wire Wire Line
	2950 2600 3350 2600
Wire Wire Line
	2050 2500 2450 2500
Wire Wire Line
	2050 2600 2450 2600
Wire Wire Line
	3350 2500 2950 2500
Wire Wire Line
	2950 2400 3350 2400
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J1
U 1 1 603E750E
P 2650 2400
F 0 "J1" H 2700 2717 50  0000 C CNN
F 1 "Out" H 2700 2626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 2650 2400 50  0001 C CNN
F 3 "~" H 2650 2400 50  0001 C CNN
	1    2650 2400
	1    0    0    -1  
$EndComp
Text Label 3350 2600 2    50   ~ 0
Relay-5V
Wire Wire Line
	2450 2300 2050 2300
Text Label 3350 2300 2    50   ~ 0
CLK
Wire Wire Line
	2950 2300 3350 2300
Text Label 2050 2400 0    50   ~ 0
DataOut
Wire Wire Line
	2450 2400 2050 2400
Text Label 6700 4400 3    50   ~ 0
LED6
Text Label 7150 4400 3    50   ~ 0
LED5
Text Label 7000 4400 3    50   ~ 0
LED4
Text Label 7300 4400 3    50   ~ 0
LED3
Text Label 6550 4400 3    50   ~ 0
LED2
Text Label 6850 4400 3    50   ~ 0
LED1
Wire Wire Line
	7300 4850 7300 4400
Wire Wire Line
	7150 4650 7150 4400
Wire Wire Line
	7000 4850 7000 4400
Wire Wire Line
	6850 4650 6850 4400
Wire Wire Line
	6700 4850 6700 4400
Wire Wire Line
	6550 4650 6550 4400
Wire Wire Line
	3900 5400 4050 5400
Connection ~ 3900 5400
Wire Wire Line
	3800 5400 3900 5400
Wire Wire Line
	3900 5200 3900 5400
Wire Wire Line
	4050 5200 3900 5200
Text Label 5450 5100 2    50   ~ 0
PFET
Text Label 5450 5000 2    50   ~ 0
LED6
Text Label 5450 4900 2    50   ~ 0
LED5
Text Label 5450 4800 2    50   ~ 0
LED4
Text Label 5450 4700 2    50   ~ 0
LED3
Text Label 5450 4600 2    50   ~ 0
LED2
Text Label 5450 4500 2    50   ~ 0
LED1
Wire Wire Line
	5050 5100 5450 5100
Wire Wire Line
	5050 5000 5450 5000
Wire Wire Line
	5050 4900 5450 4900
Wire Wire Line
	5050 4800 5450 4800
Wire Wire Line
	5050 4700 5450 4700
Wire Wire Line
	5050 4600 5450 4600
Wire Wire Line
	5050 4500 5450 4500
Wire Wire Line
	4550 5850 4550 5800
$Comp
L power:GND #PWR018
U 1 1 602BEBE8
P 4550 5850
F 0 "#PWR018" H 4550 5600 50  0001 C CNN
F 1 "GND" H 4555 5677 50  0000 C CNN
F 2 "" H 4550 5850 50  0001 C CNN
F 3 "" H 4550 5850 50  0001 C CNN
	1    4550 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 5500 4000 5550
Wire Wire Line
	4050 5500 4000 5500
$Comp
L power:GND #PWR016
U 1 1 602BC450
P 4000 5550
F 0 "#PWR016" H 4000 5300 50  0001 C CNN
F 1 "GND" H 4005 5377 50  0000 C CNN
F 2 "" H 4000 5550 50  0001 C CNN
F 3 "" H 4000 5550 50  0001 C CNN
	1    4000 5550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR015
U 1 1 602B9C3F
P 3800 5400
F 0 "#PWR015" H 3800 5250 50  0001 C CNN
F 1 "VCC" V 3815 5527 50  0000 L CNN
F 2 "" H 3800 5400 50  0001 C CNN
F 3 "" H 3800 5400 50  0001 C CNN
	1    3800 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 5100 1950 5200
Wire Wire Line
	2050 5100 1950 5100
$Comp
L power:GND #PWR014
U 1 1 602B6F7D
P 1950 5200
F 0 "#PWR014" H 1950 4950 50  0001 C CNN
F 1 "GND" H 1955 5027 50  0000 C CNN
F 2 "" H 1950 5200 50  0001 C CNN
F 3 "" H 1950 5200 50  0001 C CNN
	1    1950 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 4250 2450 4300
Connection ~ 2450 4250
Wire Wire Line
	1650 4250 1650 4800
Wire Wire Line
	1650 4250 2450 4250
Wire Wire Line
	2050 4800 1650 4800
Text Label 1750 5000 0    50   ~ 0
LATCH
Wire Wire Line
	2050 5000 1750 5000
Text Label 1750 4700 0    50   ~ 0
CLK
Wire Wire Line
	2050 4700 1750 4700
Text Label 1750 4500 0    50   ~ 0
DataIn
Wire Wire Line
	2050 4500 1750 4500
Text Label 3350 5400 2    50   ~ 0
DataOut
Wire Wire Line
	2850 5400 3350 5400
Wire Wire Line
	2850 5100 4050 5100
Wire Wire Line
	2850 5000 4050 5000
Wire Wire Line
	2850 4900 4050 4900
Wire Wire Line
	2850 4800 4050 4800
Wire Wire Line
	2850 4700 4050 4700
Wire Wire Line
	2850 4600 4050 4600
Wire Wire Line
	2850 4500 4050 4500
Wire Wire Line
	3550 3700 3750 3700
Connection ~ 3550 3700
$Comp
L power:VCC #PWR09
U 1 1 6029E5D0
P 3550 3700
F 0 "#PWR09" H 3550 3550 50  0001 C CNN
F 1 "VCC" H 3565 3873 50  0000 C CNN
F 2 "" H 3550 3700 50  0001 C CNN
F 3 "" H 3550 3700 50  0001 C CNN
	1    3550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3700 3550 3700
Wire Wire Line
	3550 3900 3750 3900
Connection ~ 3550 3900
Wire Wire Line
	3350 3900 3550 3900
$Comp
L power:GND #PWR010
U 1 1 6029B768
P 3550 3900
F 0 "#PWR010" H 3550 3650 50  0001 C CNN
F 1 "GND" H 3555 3727 50  0000 C CNN
F 2 "" H 3550 3900 50  0001 C CNN
F 3 "" H 3550 3900 50  0001 C CNN
	1    3550 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 6029B31C
P 3750 3800
F 0 "C2" H 3842 3846 50  0000 L CNN
F 1 "1uF" H 3842 3755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3750 3800 50  0001 C CNN
F 3 "~" H 3750 3800 50  0001 C CNN
	1    3750 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 6029A501
P 3350 3800
F 0 "C1" H 3150 3850 50  0000 L CNN
F 1 "1uF" H 3100 3750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3350 3800 50  0001 C CNN
F 3 "~" H 3350 3800 50  0001 C CNN
	1    3350 3800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR013
U 1 1 60295E1C
P 9000 4700
F 0 "#PWR013" H 9000 4550 50  0001 C CNN
F 1 "VCC" H 9015 4873 50  0000 C CNN
F 2 "" H 9000 4700 50  0001 C CNN
F 3 "" H 9000 4700 50  0001 C CNN
	1    9000 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4700 9000 4700
Text Label 8850 4700 2    50   ~ 0
Relay-5V
$Comp
L power:VCC #PWR011
U 1 1 6028E9C2
P 4550 4100
F 0 "#PWR011" H 4550 3950 50  0001 C CNN
F 1 "VCC" H 4565 4273 50  0000 C CNN
F 2 "" H 4550 4100 50  0001 C CNN
F 3 "" H 4550 4100 50  0001 C CNN
	1    4550 4100
	1    0    0    -1  
$EndComp
Text Label 8650 5800 0    50   ~ 0
Relay-5V
Wire Wire Line
	9050 5800 8650 5800
Wire Wire Line
	4550 4100 4550 4200
Wire Wire Line
	2450 4200 2450 4250
$Comp
L power:VCC #PWR012
U 1 1 6028BC8F
P 2450 4200
F 0 "#PWR012" H 2450 4050 50  0001 C CNN
F 1 "VCC" H 2465 4373 50  0000 C CNN
F 2 "" H 2450 4200 50  0001 C CNN
F 3 "" H 2450 4200 50  0001 C CNN
	1    2450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5600 2450 5650
$Comp
L power:GND #PWR017
U 1 1 60289C9C
P 2450 5650
F 0 "#PWR017" H 2450 5400 50  0001 C CNN
F 1 "GND" H 2455 5477 50  0000 C CNN
F 2 "" H 2450 5650 50  0001 C CNN
F 3 "" H 2450 5650 50  0001 C CNN
	1    2450 5650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC245 U2
U 1 1 60284858
P 4550 5000
F 0 "U2" H 4750 5800 50  0000 C CNN
F 1 "74HC245" H 4850 5700 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 4550 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 4550 5000 50  0001 C CNN
	1    4550 5000
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HCT595 U1
U 1 1 60281C08
P 2450 4900
F 0 "U1" H 2650 5600 50  0000 C CNN
F 1 "74HCT595" H 2800 5500 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 2450 4900 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT595.pdf" H 2450 4900 50  0001 C CNN
	1    2450 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1900 6900 1950
Wire Wire Line
	7500 2150 7900 2150
Wire Wire Line
	7300 2150 7200 2150
$Comp
L Device:R_Small R3
U 1 1 6027B18E
P 7400 2150
F 0 "R3" H 7350 2200 50  0000 R CNN
F 1 "100" H 7350 2100 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7400 2150 50  0001 C CNN
F 3 "~" H 7400 2150 50  0001 C CNN
	1    7400 2150
	0    -1   -1   0   
$EndComp
Text Label 7900 2150 2    50   ~ 0
PFET
Connection ~ 6900 3150
$Comp
L power:GND #PWR06
U 1 1 60272F2C
P 6900 3150
F 0 "#PWR06" H 6900 2900 50  0001 C CNN
F 1 "GND" H 6905 2977 50  0000 C CNN
F 2 "" H 6900 3150 50  0001 C CNN
F 3 "" H 6900 3150 50  0001 C CNN
	1    6900 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PMOS_GSD Q1
U 1 1 6026FF14
P 7000 2150
F 0 "Q1" H 7205 2104 50  0000 L CNN
F 1 "pmv50epear" H 6550 2000 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7200 2250 50  0001 C CNN
F 3 "~" H 7000 2150 50  0001 C CNN
	1    7000 2150
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 6026AB84
P 7300 4950
F 0 "R9" V 7104 4950 50  0000 C CNN
F 1 "330" V 7195 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7300 4950 50  0001 C CNN
F 3 "~" H 7300 4950 50  0001 C CNN
	1    7300 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 6026A8F7
P 7150 4750
F 0 "R6" V 6954 4750 50  0000 C CNN
F 1 "330" V 7045 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7150 4750 50  0001 C CNN
F 3 "~" H 7150 4750 50  0001 C CNN
	1    7150 4750
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 6026A701
P 7000 4950
F 0 "R8" V 6804 4950 50  0000 C CNN
F 1 "330" V 6895 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7000 4950 50  0001 C CNN
F 3 "~" H 7000 4950 50  0001 C CNN
	1    7000 4950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 6026A3A6
P 6850 4750
F 0 "R5" V 6654 4750 50  0000 C CNN
F 1 "330" V 6745 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6850 4750 50  0001 C CNN
F 3 "~" H 6850 4750 50  0001 C CNN
	1    6850 4750
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 6026A081
P 6700 4950
F 0 "R7" V 6504 4950 50  0000 C CNN
F 1 "330" V 6595 4950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6700 4950 50  0001 C CNN
F 3 "~" H 6700 4950 50  0001 C CNN
	1    6700 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 5500 9100 5400
Wire Wire Line
	9200 5500 9100 5500
Wire Wire Line
	9100 5200 9100 5300
Wire Wire Line
	9200 5200 9100 5200
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 602BC414
P 9200 5350
F 0 "JP1" V 9154 5418 50  0000 L CNN
F 1 "First_Module" V 9245 5418 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 9200 5350 50  0001 C CNN
F 3 "~" H 9200 5350 50  0001 C CNN
	1    9200 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 2200 6500 2450
Wire Wire Line
	6500 1750 7950 1750
Connection ~ 6500 1750
Wire Wire Line
	6500 2000 6500 1750
Wire Wire Line
	6150 1750 6500 1750
Wire Wire Line
	6850 5500 6850 5600
Wire Wire Line
	6700 5500 6850 5500
Connection ~ 6700 5500
Wire Wire Line
	6700 5450 6700 5500
Wire Wire Line
	6850 5500 7000 5500
Connection ~ 6850 5500
Wire Wire Line
	6850 5450 6850 5500
Wire Wire Line
	7000 5500 7150 5500
Connection ~ 7000 5500
Wire Wire Line
	6550 5500 6700 5500
Wire Wire Line
	7000 5450 7000 5500
Wire Wire Line
	7150 5500 7300 5500
Connection ~ 7150 5500
Wire Wire Line
	7150 5450 7150 5500
Wire Wire Line
	7300 5500 7300 5450
Wire Wire Line
	6550 5450 6550 5500
$Comp
L Device:LED_Small D7
U 1 1 60259EF5
P 7150 5350
F 0 "D7" V 7196 5280 50  0001 R CNN
F 1 "LED_Small" V 7105 5280 50  0001 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_ReverseMount_Hole1.8x2.4mm" V 7150 5350 50  0001 C CNN
F 3 "~" V 7150 5350 50  0001 C CNN
	1    7150 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D6
U 1 1 60259EEF
P 7000 5350
F 0 "D6" V 7046 5280 50  0001 R CNN
F 1 "LED_Small" V 6955 5280 50  0001 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_ReverseMount_Hole1.8x2.4mm" V 7000 5350 50  0001 C CNN
F 3 "~" V 7000 5350 50  0001 C CNN
	1    7000 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6900 2400 6900 2450
Connection ~ 6900 2400
Wire Wire Line
	6900 2400 7350 2400
Wire Wire Line
	6900 3150 7350 3150
Wire Wire Line
	6900 3050 6900 3150
Wire Wire Line
	7350 2850 7350 3150
Wire Wire Line
	7350 2650 7350 2400
Wire Wire Line
	5600 1750 5950 1750
$Comp
L Device:R_Small R1
U 1 1 6023F352
P 6050 1750
F 0 "R1" V 5854 1750 50  0000 C CNN
F 1 "R" V 5945 1750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6050 1750 50  0001 C CNN
F 3 "~" H 6050 1750 50  0001 C CNN
	1    6050 1750
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6022E166
P 6850 5600
F 0 "#PWR04" H 6850 5350 50  0001 C CNN
F 1 "GND" H 6855 5427 50  0000 C CNN
F 2 "" H 6850 5600 50  0001 C CNN
F 3 "" H 6850 5600 50  0001 C CNN
	1    6850 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 6022A456
P 6550 4750
F 0 "R4" V 6354 4750 50  0000 C CNN
F 1 "330" V 6445 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6550 4750 50  0001 C CNN
F 3 "~" H 6550 4750 50  0001 C CNN
	1    6550 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 3050 6400 3300
Text Label 6400 3300 1    50   ~ 0
Vref
Text Label 6900 1900 0    50   ~ 0
Relay-5V
Wire Wire Line
	6900 2350 6900 2400
Wire Wire Line
	9550 4550 9550 4600
Wire Wire Line
	9400 4550 9550 4550
$Comp
L power:GND #PWR02
U 1 1 602267C1
P 9550 4600
F 0 "#PWR02" H 9550 4350 50  0001 C CNN
F 1 "GND" H 9555 4427 50  0000 C CNN
F 2 "" H 9550 4600 50  0001 C CNN
F 3 "" H 9550 4600 50  0001 C CNN
	1    9550 4600
	1    0    0    -1  
$EndComp
Text Label 9400 4550 0    50   ~ 0
GND
$Comp
L Device:R_Small R2
U 1 1 60210776
P 6500 2100
F 0 "R2" H 6650 2050 50  0000 R CNN
F 1 "2R" H 6650 2150 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 6500 2100 50  0001 C CNN
F 3 "~" H 6500 2100 50  0001 C CNN
	1    6500 2100
	-1   0    0    1   
$EndComp
Text Label 7950 1750 2    50   ~ 0
Vout
Text Label 5600 1750 0    50   ~ 0
Vin
Text Label 8650 5300 0    50   ~ 0
Vin
Wire Wire Line
	9050 5900 8650 5900
Text Label 8650 5900 0    50   ~ 0
Vref
$Comp
L Device:D_Small D1
U 1 1 602E5083
P 7350 2750
F 0 "D1" V 7304 2820 50  0000 L CNN
F 1 "1n4001" V 7395 2820 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" V 7350 2750 50  0001 C CNN
F 3 "~" V 7350 2750 50  0001 C CNN
	1    7350 2750
	0    1    1    0   
$EndComp
$Comp
L Device:LED_Small D5
U 1 1 6027A56C
P 7300 5350
F 0 "D5" V 7346 5280 50  0001 R CNN
F 1 "LED_Small" V 7255 5280 50  0001 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_ReverseMount_Hole1.8x2.4mm" V 7300 5350 50  0001 C CNN
F 3 "~" V 7300 5350 50  0001 C CNN
	1    7300 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D4
U 1 1 6027A13B
P 6550 5350
F 0 "D4" V 6596 5280 50  0001 R CNN
F 1 "LED_Small" V 6505 5280 50  0001 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_ReverseMount_Hole1.8x2.4mm" V 6550 5350 50  0001 C CNN
F 3 "~" V 6550 5350 50  0001 C CNN
	1    6550 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D3
U 1 1 60279C79
P 6850 5350
F 0 "D3" V 6896 5280 50  0001 R CNN
F 1 "LED_Small" V 6805 5280 50  0001 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_ReverseMount_Hole1.8x2.4mm" V 6850 5350 50  0001 C CNN
F 3 "~" V 6850 5350 50  0001 C CNN
	1    6850 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D2
U 1 1 60277368
P 6700 5350
F 0 "D2" V 6746 5280 50  0001 R CNN
F 1 "LED_Small" V 6655 5280 50  0001 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_ReverseMount_Hole1.8x2.4mm" V 6700 5350 50  0001 C CNN
F 3 "~" V 6700 5350 50  0001 C CNN
	1    6700 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 3050 6600 3150
$Comp
L power:GND #PWR01
U 1 1 6023B3A6
P 6600 3150
F 0 "#PWR01" H 6600 2900 50  0001 C CNN
F 1 "GND" H 6605 2977 50  0000 C CNN
F 2 "" H 6600 3150 50  0001 C CNN
F 3 "" H 6600 3150 50  0001 C CNN
	1    6600 3150
	1    0    0    -1  
$EndComp
$Comp
L Relay:Y14x-1C-xxDS K1
U 1 1 6023B39F
P 6700 2750
F 0 "K1" H 6270 2704 50  0000 R CNN
F 1 "DIPxx-1Cxx-51x" H 6270 2795 50  0001 R CNN
F 2 "Relay_THT:Relay_SPDT_HsinDa_Y14" H 7150 2700 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 6700 2750 50  0001 C CNN
	1    6700 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 5400 8650 5400
Text Label 8650 5400 0    50   ~ 0
GND
Connection ~ 9100 2750
Wire Wire Line
	9100 2750 9300 2750
Wire Wire Line
	8600 2700 8600 2750
Wire Wire Line
	8600 2450 8600 2500
$Comp
L Device:C_Small C3
U 1 1 604CF5FA
P 8600 2600
F 0 "C3" H 8692 2646 50  0000 L CNN
F 1 "22uF" H 8692 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8600 2600 50  0001 C CNN
F 3 "~" H 8600 2600 50  0001 C CNN
	1    8600 2600
	1    0    0    -1  
$EndComp
Text Notes 5950 1400 0    50   ~ 0
3906 can be substituted for the PMV. If so, R3=1K
Text Notes 9350 5150 0    50   ~ 0
If LSB board, close JP1
Text Notes 9350 5700 0    50   ~ 0
Close JP2 to make Vref 5V
Text Notes 6300 4250 0    50   ~ 0
LEDs re-ordered after PCB placement
Text Notes 8050 2150 0    50   ~ 0
PFET is inverted.\nHIGH = Relay OFF\nLOW = Relay ON
Text Notes 8450 3100 0    50   ~ 0
approx. 100 uF for relay decoupling
Text Notes 2300 1900 0    50   ~ 0
Layout assumes 2x4 right-angle socket and pin header
Text Notes 2650 6200 0    50   ~ 0
HC or HCT can be used for either chip.
Text Notes 6500 7100 0    50   ~ 0
Mounting Holes
$EndSCHEMATC

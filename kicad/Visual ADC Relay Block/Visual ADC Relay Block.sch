EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
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
L Relay:Y14x-1C-xxDS K1
U 1 1 6023B39F
P 11350 6550
F 0 "K1" H 10920 6504 50  0000 R CNN
F 1 "DIPxx-1Cxx-51x" H 10920 6595 50  0001 R CNN
F 2 "Relay_THT:Relay_SPDT_HsinDa_Y14" H 11800 6500 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 11350 6550 50  0001 C CNN
	1    11350 6550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 6023B3A6
P 11250 6950
F 0 "#PWR01" H 11250 6700 50  0001 C CNN
F 1 "GND" H 11255 6777 50  0000 C CNN
F 2 "" H 11250 6950 50  0001 C CNN
F 3 "" H 11250 6950 50  0001 C CNN
	1    11250 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	11250 6850 11250 6950
$Comp
L Device:LED_Small D2
U 1 1 60277368
P 14900 9150
F 0 "D2" V 14946 9080 50  0001 R CNN
F 1 "LED_Small" V 14855 9080 50  0001 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_ReverseMount_Hole1.8x2.4mm" V 14900 9150 50  0001 C CNN
F 3 "~" V 14900 9150 50  0001 C CNN
	1    14900 9150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D3
U 1 1 60279C79
P 15050 9150
F 0 "D3" V 15096 9080 50  0001 R CNN
F 1 "LED_Small" V 15005 9080 50  0001 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_ReverseMount_Hole1.8x2.4mm" V 15050 9150 50  0001 C CNN
F 3 "~" V 15050 9150 50  0001 C CNN
	1    15050 9150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D4
U 1 1 6027A13B
P 14750 9150
F 0 "D4" V 14796 9080 50  0001 R CNN
F 1 "LED_Small" V 14705 9080 50  0001 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_ReverseMount_Hole1.8x2.4mm" V 14750 9150 50  0001 C CNN
F 3 "~" V 14750 9150 50  0001 C CNN
	1    14750 9150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D5
U 1 1 6027A56C
P 15500 9150
F 0 "D5" V 15546 9080 50  0001 R CNN
F 1 "LED_Small" V 15455 9080 50  0001 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_ReverseMount_Hole1.8x2.4mm" V 15500 9150 50  0001 C CNN
F 3 "~" V 15500 9150 50  0001 C CNN
	1    15500 9150
	0    -1   -1   0   
$EndComp
$Comp
L Device:D_Small D1
U 1 1 602E5083
P 12000 6550
F 0 "D1" V 11954 6620 50  0000 L CNN
F 1 "1n4001" V 12045 6620 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" V 12000 6550 50  0001 C CNN
F 3 "~" V 12000 6550 50  0001 C CNN
	1    12000 6550
	0    1    1    0   
$EndComp
Text Label 14100 7000 2    50   ~ 0
Vref
Wire Wire Line
	13550 7000 14100 7000
Text Label 13550 6550 2    50   ~ 0
GND
Text Label 13550 6450 2    50   ~ 0
Vin
Text Label 10250 5550 0    50   ~ 0
Vin
Text Label 12600 5550 2    50   ~ 0
Vout
$Comp
L Device:R_Small R2
U 1 1 60210776
P 11150 5900
F 0 "R2" H 11091 5854 50  0000 R CNN
F 1 "2R" H 11091 5945 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 11150 5900 50  0001 C CNN
F 3 "~" H 11150 5900 50  0001 C CNN
	1    11150 5900
	-1   0    0    1   
$EndComp
Text Label 14050 8850 2    50   ~ 0
GND
$Comp
L power:GND #PWR02
U 1 1 602267C1
P 14150 8950
F 0 "#PWR02" H 14150 8700 50  0001 C CNN
F 1 "GND" H 14155 8777 50  0000 C CNN
F 2 "" H 14150 8950 50  0001 C CNN
F 3 "" H 14150 8950 50  0001 C CNN
	1    14150 8950
	1    0    0    -1  
$EndComp
Wire Wire Line
	14050 8850 14150 8850
Wire Wire Line
	14150 8850 14150 8950
Wire Wire Line
	11550 6150 11550 6200
Text Label 11550 5700 0    50   ~ 0
Relay-5V
Text Label 11050 7100 1    50   ~ 0
Vref
Wire Wire Line
	11050 6850 11050 7100
$Comp
L Device:R_Small R4
U 1 1 6022A456
P 14750 8750
F 0 "R4" V 14554 8750 50  0000 C CNN
F 1 "R" V 14645 8750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 14750 8750 50  0001 C CNN
F 3 "~" H 14750 8750 50  0001 C CNN
	1    14750 8750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6022E166
P 15050 9400
F 0 "#PWR04" H 15050 9150 50  0001 C CNN
F 1 "GND" H 15055 9227 50  0000 C CNN
F 2 "" H 15050 9400 50  0001 C CNN
F 3 "" H 15050 9400 50  0001 C CNN
	1    15050 9400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 6023F352
P 10700 5550
F 0 "R1" V 10504 5550 50  0000 C CNN
F 1 "R" V 10595 5550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 10700 5550 50  0001 C CNN
F 3 "~" H 10700 5550 50  0001 C CNN
	1    10700 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 5550 10600 5550
Wire Wire Line
	12000 6450 12000 6200
Wire Wire Line
	12000 6650 12000 6950
Wire Wire Line
	11550 6850 11550 6950
Wire Wire Line
	11550 6950 12000 6950
Wire Wire Line
	11550 6200 12000 6200
Connection ~ 11550 6200
Wire Wire Line
	11550 6200 11550 6250
$Comp
L Device:LED_Small D6
U 1 1 60259EEF
P 15200 9150
F 0 "D6" V 15246 9080 50  0001 R CNN
F 1 "LED_Small" V 15155 9080 50  0001 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_ReverseMount_Hole1.8x2.4mm" V 15200 9150 50  0001 C CNN
F 3 "~" V 15200 9150 50  0001 C CNN
	1    15200 9150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED_Small D7
U 1 1 60259EF5
P 15350 9150
F 0 "D7" V 15396 9080 50  0001 R CNN
F 1 "LED_Small" V 15305 9080 50  0001 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_ReverseMount_Hole1.8x2.4mm" V 15350 9150 50  0001 C CNN
F 3 "~" V 15350 9150 50  0001 C CNN
	1    15350 9150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14750 9250 14750 9300
Wire Wire Line
	15500 9300 15500 9250
Wire Wire Line
	15350 9250 15350 9300
Connection ~ 15350 9300
Wire Wire Line
	15350 9300 15500 9300
Wire Wire Line
	15200 9250 15200 9300
Wire Wire Line
	14750 9300 14900 9300
Connection ~ 15200 9300
Wire Wire Line
	15200 9300 15350 9300
Wire Wire Line
	15050 9250 15050 9300
Connection ~ 15050 9300
Wire Wire Line
	15050 9300 15200 9300
Wire Wire Line
	14900 9250 14900 9300
Connection ~ 14900 9300
Wire Wire Line
	14900 9300 15050 9300
Wire Wire Line
	14750 9050 14750 8850
Wire Wire Line
	15350 8850 15350 9050
Wire Wire Line
	15050 9050 15050 8850
Wire Wire Line
	15050 9300 15050 9400
Wire Wire Line
	10800 5550 11150 5550
Wire Wire Line
	11150 5800 11150 5550
Connection ~ 11150 5550
Wire Wire Line
	11150 5550 12600 5550
Wire Wire Line
	11150 6000 11150 6250
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 602BC414
P 13800 6500
F 0 "JP1" V 13754 6568 50  0000 L CNN
F 1 "First_Module" V 13845 6568 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 13800 6500 50  0001 C CNN
F 3 "~" H 13800 6500 50  0001 C CNN
	1    13800 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	13800 6350 13700 6350
Wire Wire Line
	13700 6350 13700 6450
Wire Wire Line
	13800 6650 13700 6650
Wire Wire Line
	13700 6650 13700 6550
$Comp
L Device:R_Small R7
U 1 1 6026A081
P 14900 8950
F 0 "R7" V 14704 8950 50  0000 C CNN
F 1 "R" V 14795 8950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 14900 8950 50  0001 C CNN
F 3 "~" H 14900 8950 50  0001 C CNN
	1    14900 8950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 6026A3A6
P 15050 8750
F 0 "R5" V 14854 8750 50  0000 C CNN
F 1 "R" V 14945 8750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 15050 8750 50  0001 C CNN
F 3 "~" H 15050 8750 50  0001 C CNN
	1    15050 8750
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 6026A701
P 15200 8950
F 0 "R8" V 15004 8950 50  0000 C CNN
F 1 "R" V 15095 8950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 15200 8950 50  0001 C CNN
F 3 "~" H 15200 8950 50  0001 C CNN
	1    15200 8950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 6026A8F7
P 15350 8750
F 0 "R6" V 15154 8750 50  0000 C CNN
F 1 "R" V 15245 8750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 15350 8750 50  0001 C CNN
F 3 "~" H 15350 8750 50  0001 C CNN
	1    15350 8750
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 6026AB84
P 15500 8950
F 0 "R9" V 15304 8950 50  0000 C CNN
F 1 "R" V 15395 8950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 15500 8950 50  0001 C CNN
F 3 "~" H 15500 8950 50  0001 C CNN
	1    15500 8950
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_PMOS_GSD Q1
U 1 1 6026FF14
P 11650 5950
F 0 "Q1" H 11855 5904 50  0000 L CNN
F 1 "P-NMOS" H 11300 5800 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 11850 6050 50  0001 C CNN
F 3 "~" H 11650 5950 50  0001 C CNN
	1    11650 5950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 60272F2C
P 11550 6950
F 0 "#PWR06" H 11550 6700 50  0001 C CNN
F 1 "GND" H 11555 6777 50  0000 C CNN
F 2 "" H 11550 6950 50  0001 C CNN
F 3 "" H 11550 6950 50  0001 C CNN
	1    11550 6950
	1    0    0    -1  
$EndComp
Connection ~ 11550 6950
Text Label 12550 5950 2    50   ~ 0
PFET
$Comp
L Device:R_Small R3
U 1 1 6027B18E
P 12050 5950
F 0 "R3" H 11991 5904 50  0000 R CNN
F 1 "2R" H 11991 5995 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 12050 5950 50  0001 C CNN
F 3 "~" H 12050 5950 50  0001 C CNN
	1    12050 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11950 5950 11850 5950
Wire Wire Line
	12150 5950 12550 5950
Wire Wire Line
	11550 5700 11550 5750
$Comp
L 74xx:74HCT595 U1
U 1 1 60281C08
P 10150 8700
F 0 "U1" H 10350 9400 50  0000 C CNN
F 1 "74HCT595" H 10500 9300 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 10150 8700 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74HC_HCT595.pdf" H 10150 8700 50  0001 C CNN
	1    10150 8700
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC245 U2
U 1 1 60284858
P 12250 8800
F 0 "U2" H 12450 9600 50  0000 C CNN
F 1 "74HC245" H 12550 9500 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 12250 8800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC245" H 12250 8800 50  0001 C CNN
	1    12250 8800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 60289C9C
P 10150 9450
F 0 "#PWR017" H 10150 9200 50  0001 C CNN
F 1 "GND" H 10155 9277 50  0000 C CNN
F 2 "" H 10150 9450 50  0001 C CNN
F 3 "" H 10150 9450 50  0001 C CNN
	1    10150 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 9400 10150 9450
$Comp
L power:VCC #PWR012
U 1 1 6028BC8F
P 10150 8000
F 0 "#PWR012" H 10150 7850 50  0001 C CNN
F 1 "VCC" H 10165 8173 50  0000 C CNN
F 2 "" H 10150 8000 50  0001 C CNN
F 3 "" H 10150 8000 50  0001 C CNN
	1    10150 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 8000 10150 8050
Wire Wire Line
	12250 7900 12250 8000
Wire Wire Line
	13550 6900 14100 6900
Text Label 14100 6900 2    50   ~ 0
Relay-5V
$Comp
L power:VCC #PWR011
U 1 1 6028E9C2
P 12250 7900
F 0 "#PWR011" H 12250 7750 50  0001 C CNN
F 1 "VCC" H 12265 8073 50  0000 C CNN
F 2 "" H 12250 7900 50  0001 C CNN
F 3 "" H 12250 7900 50  0001 C CNN
	1    12250 7900
	1    0    0    -1  
$EndComp
Text Label 14050 8600 2    50   ~ 0
Relay-5V
Wire Wire Line
	14050 8600 14200 8600
$Comp
L power:VCC #PWR013
U 1 1 60295E1C
P 14200 8600
F 0 "#PWR013" H 14200 8450 50  0001 C CNN
F 1 "VCC" H 14215 8773 50  0000 C CNN
F 2 "" H 14200 8600 50  0001 C CNN
F 3 "" H 14200 8600 50  0001 C CNN
	1    14200 8600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 6029A501
P 11000 7750
F 0 "C1" H 11092 7796 50  0000 L CNN
F 1 "1uF" H 11092 7705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 11000 7750 50  0001 C CNN
F 3 "~" H 11000 7750 50  0001 C CNN
	1    11000 7750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 6029B31C
P 11350 7750
F 0 "C2" H 11442 7796 50  0000 L CNN
F 1 "1uF" H 11442 7705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 11350 7750 50  0001 C CNN
F 3 "~" H 11350 7750 50  0001 C CNN
	1    11350 7750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 6029B768
P 11150 7850
F 0 "#PWR010" H 11150 7600 50  0001 C CNN
F 1 "GND" H 11155 7677 50  0000 C CNN
F 2 "" H 11150 7850 50  0001 C CNN
F 3 "" H 11150 7850 50  0001 C CNN
	1    11150 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 7850 11150 7850
Connection ~ 11150 7850
Wire Wire Line
	11150 7850 11350 7850
Wire Wire Line
	11000 7650 11150 7650
$Comp
L power:VCC #PWR09
U 1 1 6029E5D0
P 11150 7650
F 0 "#PWR09" H 11150 7500 50  0001 C CNN
F 1 "VCC" H 11165 7823 50  0000 C CNN
F 2 "" H 11150 7650 50  0001 C CNN
F 3 "" H 11150 7650 50  0001 C CNN
	1    11150 7650
	1    0    0    -1  
$EndComp
Connection ~ 11150 7650
Wire Wire Line
	11150 7650 11350 7650
Wire Wire Line
	10550 8300 11750 8300
Wire Wire Line
	10550 8400 11750 8400
Wire Wire Line
	10550 8500 11750 8500
Wire Wire Line
	10550 8600 11750 8600
Wire Wire Line
	10550 8700 11750 8700
Wire Wire Line
	10550 8800 11750 8800
Wire Wire Line
	10550 8900 11750 8900
Wire Wire Line
	10550 9200 11050 9200
Text Label 11050 9200 2    50   ~ 0
DataOut
Wire Wire Line
	9750 8300 9450 8300
Text Label 9450 8300 0    50   ~ 0
DataIn
Wire Wire Line
	9750 8500 9450 8500
Text Label 9450 8500 0    50   ~ 0
CLK
Wire Wire Line
	9750 8800 9450 8800
Text Label 9450 8800 0    50   ~ 0
LATCH
Wire Wire Line
	9750 8600 9350 8600
Wire Wire Line
	9350 8050 10150 8050
Wire Wire Line
	9350 8050 9350 8600
Connection ~ 10150 8050
Wire Wire Line
	10150 8050 10150 8100
$Comp
L power:GND #PWR014
U 1 1 602B6F7D
P 9650 9000
F 0 "#PWR014" H 9650 8750 50  0001 C CNN
F 1 "GND" H 9655 8827 50  0000 C CNN
F 2 "" H 9650 9000 50  0001 C CNN
F 3 "" H 9650 9000 50  0001 C CNN
	1    9650 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 8900 9650 8900
Wire Wire Line
	9650 8900 9650 9000
$Comp
L power:VCC #PWR015
U 1 1 602B9C3F
P 11500 9200
F 0 "#PWR015" H 11500 9050 50  0001 C CNN
F 1 "VCC" V 11515 9327 50  0000 L CNN
F 2 "" H 11500 9200 50  0001 C CNN
F 3 "" H 11500 9200 50  0001 C CNN
	1    11500 9200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 602BC450
P 11700 9350
F 0 "#PWR016" H 11700 9100 50  0001 C CNN
F 1 "GND" H 11705 9177 50  0000 C CNN
F 2 "" H 11700 9350 50  0001 C CNN
F 3 "" H 11700 9350 50  0001 C CNN
	1    11700 9350
	1    0    0    -1  
$EndComp
Wire Wire Line
	11750 9300 11700 9300
Wire Wire Line
	11700 9300 11700 9350
$Comp
L power:GND #PWR018
U 1 1 602BEBE8
P 12250 9650
F 0 "#PWR018" H 12250 9400 50  0001 C CNN
F 1 "GND" H 12255 9477 50  0000 C CNN
F 2 "" H 12250 9650 50  0001 C CNN
F 3 "" H 12250 9650 50  0001 C CNN
	1    12250 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	12250 9650 12250 9600
Wire Wire Line
	12750 8300 13150 8300
Wire Wire Line
	12750 8400 13150 8400
Wire Wire Line
	12750 8500 13150 8500
Wire Wire Line
	12750 8600 13150 8600
Wire Wire Line
	12750 8700 13150 8700
Wire Wire Line
	12750 8800 13150 8800
Wire Wire Line
	12750 8900 13150 8900
Text Label 13150 8300 2    50   ~ 0
LED1
Text Label 13150 8400 2    50   ~ 0
LED2
Text Label 13150 8500 2    50   ~ 0
LED3
Text Label 13150 8600 2    50   ~ 0
LED4
Text Label 13150 8700 2    50   ~ 0
LED5
Text Label 13150 8800 2    50   ~ 0
LED6
Text Label 13150 8900 2    50   ~ 0
PFET
Wire Wire Line
	11750 9000 11600 9000
Wire Wire Line
	11600 9000 11600 9200
Wire Wire Line
	11500 9200 11600 9200
Connection ~ 11600 9200
Wire Wire Line
	11600 9200 11750 9200
Wire Wire Line
	14750 8650 14750 8400
Wire Wire Line
	14900 8850 14900 8400
Wire Wire Line
	15050 8650 15050 8400
Wire Wire Line
	15200 8850 15200 8400
Wire Wire Line
	15350 8650 15350 8400
Wire Wire Line
	15500 8850 15500 8400
Text Label 14750 8400 3    50   ~ 0
LED1
Text Label 14900 8400 3    50   ~ 0
LED2
Text Label 15050 8400 3    50   ~ 0
LED3
Text Label 15200 8400 3    50   ~ 0
LED4
Text Label 15350 8400 3    50   ~ 0
LED5
Text Label 15500 8400 3    50   ~ 0
LED6
Wire Wire Line
	9400 7050 9050 7050
Text Label 9050 7050 0    50   ~ 0
DataIn
Wire Wire Line
	9400 6950 9050 6950
Text Label 9050 6950 0    50   ~ 0
CLK
Wire Wire Line
	9400 6850 9050 6850
Text Label 9050 6850 0    50   ~ 0
LATCH
Text Label 10300 6850 2    50   ~ 0
Relay-5V
Text Label 10300 6950 2    50   ~ 0
Vref
Text Label 10300 7150 2    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_02x04_Counter_Clockwise J2
U 1 1 603C4B3A
P 9600 6950
F 0 "J2" H 9650 7267 50  0000 C CNN
F 1 "Out" H 9650 7176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 9600 6950 50  0001 C CNN
F 3 "~" H 9600 6950 50  0001 C CNN
	1    9600 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 7150 9050 7150
Text Label 10300 7050 2    50   ~ 0
Vin
Wire Wire Line
	10300 7050 9900 7050
Wire Wire Line
	10300 6950 9900 6950
Wire Wire Line
	10300 7150 9900 7150
Wire Wire Line
	9900 6850 10300 6850
Text Label 9050 7150 0    50   ~ 0
GND
Wire Wire Line
	9400 6300 9050 6300
Text Label 9050 6300 0    50   ~ 0
DataOut
Wire Wire Line
	9400 6200 9050 6200
Text Label 9050 6200 0    50   ~ 0
CLK
Wire Wire Line
	9400 6100 9050 6100
Text Label 9050 6100 0    50   ~ 0
LATCH
Text Label 10300 6100 2    50   ~ 0
Relay-5V
Text Label 10300 6200 2    50   ~ 0
Vref
Text Label 10300 6400 2    50   ~ 0
GND
$Comp
L Connector_Generic:Conn_02x04_Counter_Clockwise J1
U 1 1 603E750E
P 9600 6200
F 0 "J1" H 9650 6517 50  0000 C CNN
F 1 "In" H 9650 6426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 9600 6200 50  0001 C CNN
F 3 "~" H 9600 6200 50  0001 C CNN
	1    9600 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 6400 9050 6400
Text Label 10300 6300 2    50   ~ 0
VOut
Wire Wire Line
	10300 6300 9900 6300
Wire Wire Line
	10300 6200 9900 6200
Wire Wire Line
	10300 6400 9900 6400
Wire Wire Line
	9900 6100 10300 6100
Text Label 9050 6400 0    50   ~ 0
GND
Wire Wire Line
	13700 6450 13550 6450
Wire Wire Line
	13700 6550 13550 6550
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 60472104
P 13400 6950
F 0 "JP2" V 13354 7018 50  0000 L CNN
F 1 "Vref" V 13445 7018 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 13400 6950 50  0001 C CNN
F 3 "~" H 13400 6950 50  0001 C CNN
	1    13400 6950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13550 6900 13550 6800
Wire Wire Line
	13550 6800 13400 6800
Wire Wire Line
	13550 7000 13550 7100
Wire Wire Line
	13550 7100 13400 7100
Text Label 12700 5650 0    50   ~ 0
Relay-5V
Wire Wire Line
	12700 5650 12700 5700
$Comp
L power:GND #PWR0101
U 1 1 604B4F8E
P 13050 5950
F 0 "#PWR0101" H 13050 5700 50  0001 C CNN
F 1 "GND" H 13055 5777 50  0000 C CNN
F 2 "" H 13050 5950 50  0001 C CNN
F 3 "" H 13050 5950 50  0001 C CNN
	1    13050 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	12700 5900 12700 5950
$Comp
L Device:C_Small C3
U 1 1 604CF5FA
P 12700 5800
F 0 "C3" H 12792 5846 50  0000 L CNN
F 1 "22uF" H 12792 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 12700 5800 50  0001 C CNN
F 3 "~" H 12700 5800 50  0001 C CNN
	1    12700 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 604CFC66
P 13050 5800
F 0 "C4" H 13142 5846 50  0000 L CNN
F 1 "22uF" H 13142 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 13050 5800 50  0001 C CNN
F 3 "~" H 13050 5800 50  0001 C CNN
	1    13050 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 604D0036
P 13400 5800
F 0 "C5" H 13492 5846 50  0000 L CNN
F 1 "22uF" H 13492 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 13400 5800 50  0001 C CNN
F 3 "~" H 13400 5800 50  0001 C CNN
	1    13400 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 604D02C4
P 13750 5800
F 0 "C6" H 13842 5846 50  0000 L CNN
F 1 "22uF" H 13842 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 13750 5800 50  0001 C CNN
F 3 "~" H 13750 5800 50  0001 C CNN
	1    13750 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	12700 5950 13050 5950
Wire Wire Line
	13750 5950 13750 5900
Wire Wire Line
	13400 5900 13400 5950
Connection ~ 13400 5950
Wire Wire Line
	13400 5950 13750 5950
Wire Wire Line
	13050 5900 13050 5950
Connection ~ 13050 5950
Wire Wire Line
	13050 5950 13400 5950
Wire Wire Line
	13050 5700 13050 5650
Wire Wire Line
	13050 5650 12700 5650
Wire Wire Line
	13750 5700 13750 5650
Wire Wire Line
	13750 5650 13400 5650
Connection ~ 13050 5650
Wire Wire Line
	13400 5700 13400 5650
Connection ~ 13400 5650
Wire Wire Line
	13400 5650 13050 5650
$Comp
L Mechanical:MountingHole H?
U 1 1 60553553
P 13850 3850
F 0 "H?" H 13950 3850 50  0000 L CNN
F 1 "MountingHole" H 13950 3805 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.7mm" H 13850 3850 50  0001 C CNN
F 3 "~" H 13850 3850 50  0001 C CNN
	1    13850 3850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 60553DE2
P 13600 3850
F 0 "H?" H 13700 3850 50  0000 L CNN
F 1 "MountingHole" H 13700 3805 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.7mm" H 13600 3850 50  0001 C CNN
F 3 "~" H 13600 3850 50  0001 C CNN
	1    13600 3850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 60553F0C
P 13350 3850
F 0 "H?" H 13450 3850 50  0000 L CNN
F 1 "MountingHole" H 13450 3805 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.7mm" H 13350 3850 50  0001 C CNN
F 3 "~" H 13350 3850 50  0001 C CNN
	1    13350 3850
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H?
U 1 1 6055416A
P 13150 3850
F 0 "H?" H 13250 3850 50  0000 L CNN
F 1 "MountingHole" H 13250 3805 50  0001 L CNN
F 2 "MountingHole:MountingHole_2.7mm" H 13150 3850 50  0001 C CNN
F 3 "~" H 13150 3850 50  0001 C CNN
	1    13150 3850
	1    0    0    -1  
$EndComp
$EndSCHEMATC

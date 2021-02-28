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
L Analog:LF398_DIP8 U1
U 1 1 60371A5C
P 3300 3550
F 0 "U1" H 3600 3900 50  0000 L CNN
F 1 "74HCT04" H 3600 3800 50  0000 L CNN
F 2 "" H 3300 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 3300 3550 50  0001 C CNN
F 4 "Sample/Hold" H 3600 3700 50  0000 L CNN "Desc"
	1    3300 3550
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U2
U 1 1 603720F3
P 5000 3450
F 0 "U2" H 5000 2993 50  0000 C CNN
F 1 "74HCT04" H 5000 3084 50  0000 C CNN
F 2 "" H 5000 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 5000 3450 50  0001 C CNN
F 4 "Comparator" H 5000 3175 50  0000 C CNN "Desc"
	1    5000 3450
	1    0    0    1   
$EndComp
$Comp
L 74xx:74HCT04 U3
U 1 1 6037552A
P 6150 3450
F 0 "U3" H 6150 3857 50  0000 C CNN
F 1 "74HCT04" H 6150 3766 50  0000 C CNN
F 2 "" H 6150 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 6150 3450 50  0001 C CNN
F 4 "Inv/LED Drive" H 6150 3675 50  0000 C CNN "Desc"
	1    6150 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_Small D1
U 1 1 60377974
P 6700 3850
F 0 "D1" V 6746 3780 50  0000 R CNN
F 1 "Blue" V 6655 3780 50  0000 R CNN
F 2 "" V 6700 3850 50  0001 C CNN
F 3 "~" V 6700 3850 50  0001 C CNN
	1    6700 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 3450 2400 3450
$Comp
L Device:C_Small C3
U 1 1 60378700
P 3400 4050
F 0 "C3" H 3492 4141 50  0000 L CNN
F 1 "470n" H 3492 4050 50  0000 L CNN
F 2 "" H 3400 4050 50  0001 C CNN
F 3 "~" H 3400 4050 50  0001 C CNN
F 4 "Film" H 3492 3959 50  0000 L CNN "Dielectric"
	1    3400 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3850 3400 3950
$Comp
L power:GND #PWR08
U 1 1 60378DEE
P 3400 4250
F 0 "#PWR08" H 3400 4000 50  0001 C CNN
F 1 "GND" H 3405 4077 50  0000 C CNN
F 2 "" H 3400 4250 50  0001 C CNN
F 3 "" H 3400 4250 50  0001 C CNN
	1    3400 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 4150 3400 4250
Wire Wire Line
	3000 3550 2400 3550
$Comp
L power:GND #PWR05
U 1 1 60379557
P 2900 3700
F 0 "#PWR05" H 2900 3450 50  0001 C CNN
F 1 "GND" H 2905 3527 50  0000 C CNN
F 2 "" H 2900 3700 50  0001 C CNN
F 3 "" H 2900 3700 50  0001 C CNN
	1    2900 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3650 2900 3650
Wire Wire Line
	2900 3650 2900 3700
$Comp
L power:+9V #PWR06
U 1 1 60379BF9
P 3200 3200
F 0 "#PWR06" H 3200 3050 50  0001 C CNN
F 1 "+9V" H 3215 3373 50  0000 C CNN
F 2 "" H 3200 3200 50  0001 C CNN
F 3 "" H 3200 3200 50  0001 C CNN
	1    3200 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3200 3200 3250
$Comp
L power:-9V #PWR07
U 1 1 6037A4E4
P 3200 3900
F 0 "#PWR07" H 3200 3775 50  0001 C CNN
F 1 "-9V" H 3215 4073 50  0000 C CNN
F 2 "" H 3200 3900 50  0001 C CNN
F 3 "" H 3200 3900 50  0001 C CNN
	1    3200 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3200 3850 3200 3900
Text Label 2400 3450 0    50   ~ 0
AnalogIn
Text Label 2400 3550 0    50   ~ 0
DigitalCtrl
Text Label 4200 3550 2    50   ~ 0
AnalogOut
$Comp
L Device:R_Small R2
U 1 1 6037C914
P 5000 3950
F 0 "R2" V 4804 3950 50  0000 C CNN
F 1 "1M" V 4895 3950 50  0000 C CNN
F 2 "" H 5000 3950 50  0001 C CNN
F 3 "~" H 5000 3950 50  0001 C CNN
	1    5000 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 6037CD91
P 4450 3550
F 0 "R1" V 4254 3550 50  0000 C CNN
F 1 "1K" V 4345 3550 50  0000 C CNN
F 2 "" H 4450 3550 50  0001 C CNN
F 3 "~" H 4450 3550 50  0001 C CNN
	1    4450 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 3550 4650 3550
Wire Wire Line
	4650 3550 4650 3950
Wire Wire Line
	4650 3950 4900 3950
Connection ~ 4650 3550
Wire Wire Line
	4650 3550 4700 3550
Wire Wire Line
	5300 3450 5350 3450
Wire Wire Line
	5350 3450 5350 3950
Connection ~ 5350 3450
Wire Wire Line
	5100 3950 5350 3950
Text Label 5750 3450 2    50   ~ 0
CompOut
Wire Wire Line
	5350 3450 5850 3450
Wire Wire Line
	3600 3550 4350 3550
Wire Wire Line
	4700 3350 4600 3350
Wire Wire Line
	4600 3350 4600 3100
Wire Wire Line
	4600 3100 4350 3100
Text Label 4350 3100 0    50   ~ 0
DACin
$Comp
L Device:R_Small R3
U 1 1 603805A1
P 6700 3600
F 0 "R3" H 6641 3554 50  0000 R CNN
F 1 "1K" H 6641 3645 50  0000 R CNN
F 2 "" H 6700 3600 50  0001 C CNN
F 3 "~" H 6700 3600 50  0001 C CNN
	1    6700 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	6700 3450 6700 3500
$Comp
L power:GND #PWR09
U 1 1 603816D0
P 6700 4050
F 0 "#PWR09" H 6700 3800 50  0001 C CNN
F 1 "GND" H 6705 3877 50  0000 C CNN
F 2 "" H 6700 4050 50  0001 C CNN
F 3 "" H 6700 4050 50  0001 C CNN
	1    6700 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3950 6700 4050
Connection ~ 6700 3450
Text Label 7100 3450 2    50   ~ 0
~CompOut
Wire Wire Line
	6700 3450 7100 3450
Wire Wire Line
	6700 3700 6700 3750
Wire Wire Line
	6450 3450 6700 3450
$Comp
L Amplifier_Operational:LM358 U2
U 3 1 60384C8C
P 4650 4550
F 0 "U2" H 4462 4641 50  0000 R CNN
F 1 "74HCT04" H 4462 4550 50  0000 R CNN
F 2 "" H 4650 4550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 4650 4550 50  0001 C CNN
F 4 "Comparator" H 4462 4459 50  0000 R CNN "Desc"
	3    4650 4550
	-1   0    0    -1  
$EndComp
$Comp
L 74xx:74HCT04 U3
U 7 1 6038713D
P 6150 4500
F 0 "U3" H 6380 4591 50  0000 L CNN
F 1 "74HCT04" H 6380 4500 50  0000 L CNN
F 2 "" H 6150 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2904-n.pdf" H 6150 4500 50  0001 C CNN
F 4 "Inv/LED Drive" H 6380 4409 50  0000 L CNN "Desc"
	7    6150 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 60387AD0
P 4400 4550
F 0 "C4" H 4492 4596 50  0000 L CNN
F 1 "1uF" H 4492 4505 50  0000 L CNN
F 2 "" H 4400 4550 50  0001 C CNN
F 3 "~" H 4400 4550 50  0001 C CNN
F 4 "Cer" H 4492 4459 50  0001 L CNN "Dielectric"
	1    4400 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4450 4400 4250
Wire Wire Line
	4400 4250 4750 4250
Wire Wire Line
	4400 4650 4400 4850
Wire Wire Line
	4400 4850 4750 4850
$Comp
L Device:C_Small C5
U 1 1 6038C0DF
P 5800 4550
F 0 "C5" H 5708 4504 50  0000 R CNN
F 1 "1uF" H 5708 4595 50  0000 R CNN
F 2 "" H 5800 4550 50  0001 C CNN
F 3 "~" H 5800 4550 50  0001 C CNN
F 4 "Cer" H 5892 4459 50  0001 L CNN "Dielectric"
	1    5800 4550
	1    0    0    1   
$EndComp
Wire Wire Line
	6150 4000 5800 4000
Wire Wire Line
	5800 4000 5800 4450
Wire Wire Line
	5800 4650 5800 5000
Wire Wire Line
	5800 5000 6150 5000
$Comp
L Device:C_Small C1
U 1 1 6038D484
P 2100 4350
F 0 "C1" H 2192 4396 50  0000 L CNN
F 1 "1uF" H 2192 4305 50  0000 L CNN
F 2 "" H 2100 4350 50  0001 C CNN
F 3 "~" H 2100 4350 50  0001 C CNN
F 4 "Cer" H 2192 4259 50  0001 L CNN "Dielectric"
	1    2100 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 6038D785
P 2500 4350
F 0 "C2" H 2592 4396 50  0000 L CNN
F 1 "1uF" H 2592 4305 50  0000 L CNN
F 2 "" H 2500 4350 50  0001 C CNN
F 3 "~" H 2500 4350 50  0001 C CNN
F 4 "Cer" H 2592 4259 50  0001 L CNN "Dielectric"
	1    2500 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR01
U 1 1 6038DCA3
P 2100 4250
F 0 "#PWR01" H 2100 4100 50  0001 C CNN
F 1 "+9V" H 2115 4423 50  0000 C CNN
F 2 "" H 2100 4250 50  0001 C CNN
F 3 "" H 2100 4250 50  0001 C CNN
	1    2100 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6038E11C
P 2100 4450
F 0 "#PWR02" H 2100 4200 50  0001 C CNN
F 1 "GND" H 2105 4277 50  0000 C CNN
F 2 "" H 2100 4450 50  0001 C CNN
F 3 "" H 2100 4450 50  0001 C CNN
	1    2100 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6038E372
P 2500 4450
F 0 "#PWR04" H 2500 4200 50  0001 C CNN
F 1 "GND" H 2505 4277 50  0000 C CNN
F 2 "" H 2500 4450 50  0001 C CNN
F 3 "" H 2500 4450 50  0001 C CNN
	1    2500 4450
	1    0    0    -1  
$EndComp
$Comp
L power:-9V #PWR03
U 1 1 6038E5C7
P 2500 4250
F 0 "#PWR03" H 2500 4125 50  0001 C CNN
F 1 "-9V" H 2515 4423 50  0000 C CNN
F 2 "" H 2500 4250 50  0001 C CNN
F 3 "" H 2500 4250 50  0001 C CNN
	1    2500 4250
	1    0    0    -1  
$EndComp
$EndSCHEMATC

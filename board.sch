EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "esp32-warm-water control board"
Date "2021-06-19"
Rev "v0.1"
Comp "author: wolffshots"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP32-WROOM-32 U1
U 1 1 60CD47A6
P 3700 3050
F 0 "U1" H 3700 4631 50  0000 R CNN
F 1 "ESP32-WROOM-32" H 3700 4540 50  0000 R CNN
F 2 "RF_Module:ESP32-WROOM-32" H 3700 1550 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 3400 3100 50  0001 C CNN
	1    3700 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 60CDEB35
P 6400 1750
F 0 "J1" V 6480 1792 50  0000 L CNN
F 1 "TEMPS" V 6480 1701 50  0000 R CNN
F 2 "Connector_JST:JST_EH_S3B-EH_1x03_P2.50mm_Horizontal" H 6400 1750 50  0001 C CNN
F 3 "~" H 6400 1750 50  0001 C CNN
	1    6400 1750
	0    -1   -1   0   
$EndComp
Text Notes 5900 1500 0    50   ~ 0
Temp sensors
Text Notes 3700 1350 0    50   ~ 0
IC
Text Notes 9100 1350 0    50   ~ 0
Relay
Text Notes 9100 3650 0    50   ~ 0
OLED
Text Notes 3400 5450 0    50   ~ 0
Programming input
$Comp
L Device:R R1
U 1 1 60E49C74
P 6400 2200
F 0 "R1" H 6470 2246 50  0000 L CNN
F 1 "4k7" H 6470 2155 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 6330 2200 50  0001 C CNN
F 3 "~" H 6400 2200 50  0001 C CNN
	1    6400 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1950 6400 2000
$Comp
L power:+3V3 #PWR0101
U 1 1 60E4BBF1
P 6100 1950
F 0 "#PWR0101" H 6100 1800 50  0001 C CNN
F 1 "+3V3" H 6115 2123 50  0000 C CNN
F 2 "" H 6100 1950 50  0001 C CNN
F 3 "" H 6100 1950 50  0001 C CNN
	1    6100 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1950 6100 2000
Wire Wire Line
	6100 2000 6400 2000
Connection ~ 6400 2000
Wire Wire Line
	6400 2000 6400 2050
Wire Wire Line
	6300 1950 6300 2350
Wire Wire Line
	6300 2350 6400 2350
Text GLabel 6300 2150 0    50   Input ~ 0
GPIO14
$Comp
L power:GND #PWR0102
U 1 1 60E4DD96
P 6750 2050
F 0 "#PWR0102" H 6750 1800 50  0001 C CNN
F 1 "GND" H 6755 1877 50  0000 C CNN
F 2 "" H 6750 2050 50  0001 C CNN
F 3 "" H 6750 2050 50  0001 C CNN
	1    6750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1950 6500 2000
Wire Wire Line
	6500 2000 6750 2000
Wire Wire Line
	6750 2000 6750 2050
Text GLabel 4400 2650 2    50   Input ~ 0
GPIO14
Wire Wire Line
	4300 2650 4400 2650
$Comp
L power:GND #PWR0103
U 1 1 60E4F914
P 3700 4550
F 0 "#PWR0103" H 3700 4300 50  0001 C CNN
F 1 "GND" H 3705 4377 50  0000 C CNN
F 2 "" H 3700 4550 50  0001 C CNN
F 3 "" H 3700 4550 50  0001 C CNN
	1    3700 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 60E50FEA
P 9300 3900
F 0 "J2" V 9238 3612 50  0000 R CNN
F 1 "OLED" V 9147 3612 50  0000 R CNN
F 2 "Connector_JST:JST_EH_B4B-EH-A_1x04_P2.50mm_Vertical" H 9300 3900 50  0001 C CNN
F 3 "~" H 9300 3900 50  0001 C CNN
	1    9300 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60E53021
P 9200 4200
F 0 "#PWR0104" H 9200 3950 50  0001 C CNN
F 1 "GND" H 9205 4027 50  0000 C CNN
F 2 "" H 9200 4200 50  0001 C CNN
F 3 "" H 9200 4200 50  0001 C CNN
	1    9200 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 4100 9200 4200
$Comp
L power:+3V3 #PWR0105
U 1 1 60E55E20
P 8950 4450
F 0 "#PWR0105" H 8950 4300 50  0001 C CNN
F 1 "+3V3" H 8965 4623 50  0000 C CNN
F 2 "" H 8950 4450 50  0001 C CNN
F 3 "" H 8950 4450 50  0001 C CNN
	1    8950 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 4450 9300 4450
Wire Wire Line
	9300 4450 9300 4100
Text GLabel 9400 4100 3    50   Input ~ 0
SCL
Text GLabel 9500 4100 3    50   Input ~ 0
SDA
Text Notes 9000 4850 0    50   ~ 0
SDA is pin 21 and \nSCL is pin 22 on \nLOLIN32\n
Text GLabel 4400 3250 2    50   Input ~ 0
SDA
Text GLabel 4400 3350 2    50   Input ~ 0
SCL
Wire Wire Line
	4300 3250 4400 3250
Wire Wire Line
	4300 3350 4400 3350
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 60E5AFDE
P 9350 1550
F 0 "J3" V 9288 1262 50  0000 R CNN
F 1 "RELAY" V 9197 1262 50  0000 R CNN
F 2 "Connector_JST:JST_EH_B4B-EH-A_1x04_P2.50mm_Vertical" H 9350 1550 50  0001 C CNN
F 3 "~" H 9350 1550 50  0001 C CNN
	1    9350 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 60E5C419
P 9250 1850
F 0 "#PWR0106" H 9250 1600 50  0001 C CNN
F 1 "GND" H 9255 1677 50  0000 R CNN
F 2 "" H 9250 1850 50  0001 C CNN
F 3 "" H 9250 1850 50  0001 C CNN
	1    9250 1850
	1    0    0    -1  
$EndComp
Text GLabel 9350 1850 3    50   Input ~ 0
CH1
Text GLabel 9450 1850 3    50   Input ~ 0
CH2
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 60E5E64D
P 9550 2050
F 0 "J4" V 9704 1862 50  0000 R CNN
F 1 "RELAY_EN" V 9613 1862 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9550 2050 50  0001 C CNN
F 3 "~" H 9550 2050 50  0001 C CNN
	1    9550 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9550 1750 9550 1850
Wire Wire Line
	9450 1750 9450 1850
Wire Wire Line
	9350 1750 9350 1850
Wire Wire Line
	9250 1750 9250 1850
$Comp
L power:+5V #PWR0107
U 1 1 60E61D76
P 10000 1750
F 0 "#PWR0107" H 10000 1600 50  0001 C CNN
F 1 "+5V" H 10015 1923 50  0000 C CNN
F 2 "" H 10000 1750 50  0001 C CNN
F 3 "" H 10000 1750 50  0001 C CNN
	1    10000 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1750 10000 1800
Wire Wire Line
	10000 1800 9650 1800
Wire Wire Line
	9650 1800 9650 1850
Text GLabel 4400 3050 2    50   Input ~ 0
CH1
Text GLabel 4400 3150 2    50   Input ~ 0
CH2
Wire Wire Line
	4400 3050 4300 3050
Wire Wire Line
	4400 3150 4300 3150
$Comp
L Device:LED D1
U 1 1 60E6779F
P 6450 4650
F 0 "D1" V 6489 4532 50  0000 R CNN
F 1 "LED" V 6398 4532 50  0000 R CNN
F 2 "LED_SMD:LED_0201_0603Metric" H 6450 4650 50  0001 C CNN
F 3 "~" H 6450 4650 50  0001 C CNN
	1    6450 4650
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR01
U 1 1 60E6985D
P 6450 4000
F 0 "#PWR01" H 6450 3850 50  0001 C CNN
F 1 "+3V3" H 6465 4173 50  0000 C CNN
F 2 "" H 6450 4000 50  0001 C CNN
F 3 "" H 6450 4000 50  0001 C CNN
	1    6450 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60E6DB9C
P 6450 4250
F 0 "R2" H 6520 4296 50  0000 L CNN
F 1 "R" H 6520 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0201_0603Metric" V 6380 4250 50  0001 C CNN
F 3 "~" H 6450 4250 50  0001 C CNN
	1    6450 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60E6FC7F
P 6450 4900
F 0 "#PWR02" H 6450 4650 50  0001 C CNN
F 1 "GND" H 6455 4727 50  0000 C CNN
F 2 "" H 6450 4900 50  0001 C CNN
F 3 "" H 6450 4900 50  0001 C CNN
	1    6450 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4000 6450 4100
Wire Wire Line
	6450 4400 6450 4500
Wire Wire Line
	6450 4800 6450 4900
Text Notes 6350 3700 0    50   ~ 0
Power LED
$Comp
L Connector:Conn_01x06_Female J5
U 1 1 60E727C6
P 3650 6150
F 0 "J5" V 3588 5762 50  0000 R CNN
F 1 "PRGRM_INPT" V 3497 5762 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 3650 6150 50  0001 C CNN
F 3 "~" H 3650 6150 50  0001 C CNN
	1    3650 6150
	0    -1   -1   0   
$EndComp
Text Notes 3400 6000 0    50   ~ 0
Connect via jumpers \nrather than direct board \nto board (to ensure the \nability to swap RX and \nTX depending on \nprogrammer)
NoConn ~ 4300 1850
NoConn ~ 4300 1950
NoConn ~ 4300 2050
NoConn ~ 4300 2150
NoConn ~ 4300 2250
NoConn ~ 4300 2350
NoConn ~ 4300 2450
NoConn ~ 4300 2550
NoConn ~ 4300 2750
NoConn ~ 4300 2850
NoConn ~ 4300 2950
NoConn ~ 4300 3450
NoConn ~ 4300 3550
NoConn ~ 4300 3650
NoConn ~ 4300 3750
NoConn ~ 4300 3850
NoConn ~ 4300 3950
NoConn ~ 4300 4050
NoConn ~ 4300 4150
NoConn ~ 3100 3550
NoConn ~ 3100 3450
NoConn ~ 3100 3350
NoConn ~ 3100 3250
NoConn ~ 3100 3150
NoConn ~ 3100 3050
NoConn ~ 3100 2050
NoConn ~ 3100 2150
NoConn ~ 3100 1850
NoConn ~ 3450 6350
NoConn ~ 3550 6350
NoConn ~ 3650 6350
NoConn ~ 3750 6350
NoConn ~ 3850 6350
NoConn ~ 3950 6350
NoConn ~ 4350 4050
$Comp
L power:+3V3 #PWR0108
U 1 1 60E7EE5E
P 3800 1650
F 0 "#PWR0108" H 3800 1500 50  0001 C CNN
F 1 "+3V3" H 3815 1823 50  0000 C CNN
F 2 "" H 3800 1650 50  0001 C CNN
F 3 "" H 3800 1650 50  0001 C CNN
	1    3800 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1650 3800 1650
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 60E8504B
P 1700 5700
F 0 "U2" H 1700 5942 50  0000 C CNN
F 1 "AMS1117-3.3" H 1700 5851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1700 5900 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1800 5450 50  0001 C CNN
	1    1700 5700
	1    0    0    -1  
$EndComp
Text Notes 1350 5350 0    50   ~ 0
Voltage regulation
$Comp
L power:GND #PWR04
U 1 1 60E88977
P 1700 6100
F 0 "#PWR04" H 1700 5850 50  0001 C CNN
F 1 "GND" H 1705 5927 50  0000 C CNN
F 2 "" H 1700 6100 50  0001 C CNN
F 3 "" H 1700 6100 50  0001 C CNN
	1    1700 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 60E89AAB
P 1150 5700
F 0 "#PWR03" H 1150 5550 50  0001 C CNN
F 1 "+5V" H 1165 5873 50  0000 C CNN
F 2 "" H 1150 5700 50  0001 C CNN
F 3 "" H 1150 5700 50  0001 C CNN
	1    1150 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 60E89EBB
P 2100 5700
F 0 "#PWR05" H 2100 5550 50  0001 C CNN
F 1 "+3V3" H 2115 5873 50  0000 C CNN
F 2 "" H 2100 5700 50  0001 C CNN
F 3 "" H 2100 5700 50  0001 C CNN
	1    2100 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 5700 1250 5700
$Comp
L power:PWR_FLAG #FLG01
U 1 1 60E8C6F2
P 1150 5700
F 0 "#FLG01" H 1150 5775 50  0001 C CNN
F 1 "PWR_FLAG" V 1150 5827 50  0000 L CNN
F 2 "" H 1150 5700 50  0001 C CNN
F 3 "~" H 1150 5700 50  0001 C CNN
	1    1150 5700
	0    -1   -1   0   
$EndComp
Connection ~ 1150 5700
$Comp
L power:PWR_FLAG #FLG03
U 1 1 60E8D3BA
P 2100 5700
F 0 "#FLG03" H 2100 5775 50  0001 C CNN
F 1 "PWR_FLAG" V 2100 5828 50  0000 L CNN
F 2 "" H 2100 5700 50  0001 C CNN
F 3 "~" H 2100 5700 50  0001 C CNN
	1    2100 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 4450 3700 4550
Text Notes 1200 2550 0    50   ~ 0
Power in
Wire Wire Line
	2000 5700 2100 5700
Connection ~ 2100 5700
Wire Wire Line
	1700 6000 1700 6050
Text Notes 1200 2800 0    50   ~ 0
Barrel plug or USB input\nType C?
Text Notes 1200 2950 0    50   ~ 0
5V
$Comp
L Device:C C1
U 1 1 60E94711
P 1400 6050
F 0 "C1" V 1148 6050 50  0000 C CNN
F 1 "10uF" V 1239 6050 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.3" H 1438 5900 50  0001 C CNN
F 3 "~" H 1400 6050 50  0001 C CNN
	1    1400 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 6050 1700 6050
Connection ~ 1700 6050
Wire Wire Line
	1700 6050 1700 6100
Wire Wire Line
	1250 5700 1250 6050
Connection ~ 1250 5700
Wire Wire Line
	1250 5700 1400 5700
$EndSCHEMATC

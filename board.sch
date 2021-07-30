EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "esp32-warm-water control board"
Date "2021-07-07"
Rev "v0.2"
Comp "author: wolffshots"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP32-WROOM-32 U1
U 1 1 60CD47A6
P 8900 2750
F 0 "U1" H 8900 4331 50  0000 R CNN
F 1 "ESP32-WROOM-32" H 8900 4240 50  0000 R CNN
F 2 "RF_Module:ESP32-WROOM-32" H 8900 1250 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 8600 2800 50  0001 C CNN
F 4 "C82899" H 8900 2750 50  0001 C CNN "Part No"
	1    8900 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 60CDEB35
P 2200 3950
F 0 "J1" V 2280 3992 50  0000 L CNN
F 1 "TEMPS" V 2300 3700 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 2200 3950 50  0001 C CNN
F 3 "~" H 2200 3950 50  0001 C CNN
	1    2200 3950
	0    -1   -1   0   
$EndComp
Text Notes 1700 3800 0    50   ~ 0
Temp sensors
Text Notes 1750 2500 0    50   ~ 0
Relay
Text Notes 1750 1000 0    50   ~ 0
OLED
Text Notes 3700 2550 0    50   ~ 0
USB for programming/power
$Comp
L Device:R R1
U 1 1 60E49C74
P 2200 4400
F 0 "R1" H 2270 4446 50  0000 L CNN
F 1 "4k7" H 2270 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2130 4400 50  0001 C CNN
F 3 "~" H 2200 4400 50  0001 C CNN
	1    2200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4150 2200 4200
$Comp
L power:+3V3 #PWR0101
U 1 1 60E4BBF1
P 1900 4150
F 0 "#PWR0101" H 1900 4000 50  0001 C CNN
F 1 "+3V3" H 1915 4323 50  0000 C CNN
F 2 "" H 1900 4150 50  0001 C CNN
F 3 "" H 1900 4150 50  0001 C CNN
	1    1900 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4150 1900 4200
Wire Wire Line
	1900 4200 2200 4200
Connection ~ 2200 4200
Wire Wire Line
	2200 4200 2200 4250
Wire Wire Line
	2100 4150 2100 4550
Wire Wire Line
	2100 4550 2200 4550
Text GLabel 2100 4350 0    50   Input ~ 0
GPIO14
$Comp
L power:GND #PWR0102
U 1 1 60E4DD96
P 2550 4250
F 0 "#PWR0102" H 2550 4000 50  0001 C CNN
F 1 "GND" H 2555 4077 50  0000 C CNN
F 2 "" H 2550 4250 50  0001 C CNN
F 3 "" H 2550 4250 50  0001 C CNN
	1    2550 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4150 2300 4200
Wire Wire Line
	2300 4200 2550 4200
Wire Wire Line
	2550 4200 2550 4250
Text GLabel 9650 2350 2    50   Input ~ 0
GPIO14
$Comp
L power:GND #PWR0103
U 1 1 60E4F914
P 8900 4250
F 0 "#PWR0103" H 8900 4000 50  0001 C CNN
F 1 "GND" H 8905 4077 50  0000 C CNN
F 2 "" H 8900 4250 50  0001 C CNN
F 3 "" H 8900 4250 50  0001 C CNN
	1    8900 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 60E50FEA
P 2200 1050
F 0 "J2" V 2138 762 50  0000 R CNN
F 1 "OLED" V 2047 762 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 2200 1050 50  0001 C CNN
F 3 "~" H 2200 1050 50  0001 C CNN
	1    2200 1050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60E53021
P 2100 1350
F 0 "#PWR0104" H 2100 1100 50  0001 C CNN
F 1 "GND" H 2105 1177 50  0000 C CNN
F 2 "" H 2100 1350 50  0001 C CNN
F 3 "" H 2100 1350 50  0001 C CNN
	1    2100 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1250 2100 1350
$Comp
L power:+3V3 #PWR0105
U 1 1 60E55E20
P 1850 1600
F 0 "#PWR0105" H 1850 1450 50  0001 C CNN
F 1 "+3V3" H 1865 1773 50  0000 C CNN
F 2 "" H 1850 1600 50  0001 C CNN
F 3 "" H 1850 1600 50  0001 C CNN
	1    1850 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1600 2200 1600
Wire Wire Line
	2200 1600 2200 1250
Text GLabel 2300 1250 3    50   Input ~ 0
SCL
Text GLabel 2400 1250 3    50   Input ~ 0
SDA
Text GLabel 9650 2950 2    50   Input ~ 0
SDA
Text GLabel 9650 3050 2    50   Input ~ 0
SCL
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 60E5AFDE
P 2050 2550
F 0 "J3" V 1988 2262 50  0000 R CNN
F 1 "RELAY" V 1897 2262 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 2050 2550 50  0001 C CNN
F 3 "~" H 2050 2550 50  0001 C CNN
	1    2050 2550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 60E5C419
P 1950 2850
F 0 "#PWR0106" H 1950 2600 50  0001 C CNN
F 1 "GND" H 1955 2677 50  0000 R CNN
F 2 "" H 1950 2850 50  0001 C CNN
F 3 "" H 1950 2850 50  0001 C CNN
	1    1950 2850
	1    0    0    -1  
$EndComp
Text GLabel 2050 2850 3    50   Input ~ 0
CH1
Text GLabel 2150 2850 3    50   Input ~ 0
CH2
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 60E5E64D
P 2250 3050
F 0 "J4" V 2404 2862 50  0000 R CNN
F 1 "RELAY_EN" V 2313 2862 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2250 3050 50  0001 C CNN
F 3 "~" H 2250 3050 50  0001 C CNN
	1    2250 3050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 2800 2350 2800
Wire Wire Line
	2350 2800 2350 2850
Text GLabel 9650 2750 2    50   Input ~ 0
CH1
Text GLabel 9650 2850 2    50   Input ~ 0
CH2
$Comp
L Device:LED D1
U 1 1 60E6779F
P 3850 1850
F 0 "D1" V 3889 1732 50  0000 R CNN
F 1 "PLED" V 3798 1732 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 3850 1850 50  0001 C CNN
F 3 "~" H 3850 1850 50  0001 C CNN
	1    3850 1850
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR01
U 1 1 60E6985D
P 3850 1200
F 0 "#PWR01" H 3850 1050 50  0001 C CNN
F 1 "+3V3" H 3865 1373 50  0000 C CNN
F 2 "" H 3850 1200 50  0001 C CNN
F 3 "" H 3850 1200 50  0001 C CNN
	1    3850 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60E6DB9C
P 3850 1450
F 0 "R2" H 3920 1496 50  0000 L CNN
F 1 "330" H 3920 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3780 1450 50  0001 C CNN
F 3 "~" H 3850 1450 50  0001 C CNN
	1    3850 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60E6FC7F
P 3850 2100
F 0 "#PWR02" H 3850 1850 50  0001 C CNN
F 1 "GND" H 3855 1927 50  0000 C CNN
F 2 "" H 3850 2100 50  0001 C CNN
F 3 "" H 3850 2100 50  0001 C CNN
	1    3850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1200 3850 1300
Wire Wire Line
	3850 1600 3850 1700
Wire Wire Line
	3850 2000 3850 2100
Text Notes 3750 950  0    50   ~ 0
Power LED
NoConn ~ 9500 1950
NoConn ~ 9500 2050
NoConn ~ 9500 2250
NoConn ~ 9500 2450
NoConn ~ 9500 2550
NoConn ~ 9500 2650
NoConn ~ 9500 3150
NoConn ~ 9500 3250
NoConn ~ 9500 3350
NoConn ~ 9500 3550
NoConn ~ 9500 3650
NoConn ~ 9500 3750
NoConn ~ 8300 3250
NoConn ~ 8300 3150
NoConn ~ 8300 3050
NoConn ~ 8300 2950
NoConn ~ 8300 2850
NoConn ~ 8300 2750
NoConn ~ 8300 1750
NoConn ~ 8300 1850
$Comp
L power:+3V3 #PWR0108
U 1 1 60E7EE5E
P 9000 1350
F 0 "#PWR0108" H 9000 1200 50  0001 C CNN
F 1 "+3V3" H 9015 1523 50  0000 C CNN
F 2 "" H 9000 1350 50  0001 C CNN
F 3 "" H 9000 1350 50  0001 C CNN
	1    9000 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1350 9000 1350
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 60E8504B
P 2250 6100
F 0 "U2" H 2250 6342 50  0000 C CNN
F 1 "AMS1117-3.3" H 2250 6251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2250 6300 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 2350 5850 50  0001 C CNN
	1    2250 6100
	1    0    0    -1  
$EndComp
Text Notes 1600 5800 0    50   ~ 0
Voltage regulation
$Comp
L power:GND #PWR04
U 1 1 60E88977
P 2250 6500
F 0 "#PWR04" H 2250 6250 50  0001 C CNN
F 1 "GND" H 2255 6327 50  0000 C CNN
F 2 "" H 2250 6500 50  0001 C CNN
F 3 "" H 2250 6500 50  0001 C CNN
	1    2250 6500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 60E89EBB
P 2650 6100
F 0 "#PWR05" H 2650 5950 50  0001 C CNN
F 1 "+3V3" H 2665 6273 50  0000 C CNN
F 2 "" H 2650 6100 50  0001 C CNN
F 3 "" H 2650 6100 50  0001 C CNN
	1    2650 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6100 1800 6100
Wire Wire Line
	8900 4150 8900 4250
Wire Wire Line
	2550 6100 2650 6100
Wire Wire Line
	2250 6400 2250 6450
$Comp
L Device:C C1
U 1 1 60E94711
P 1950 6450
F 0 "C1" V 1698 6450 50  0000 C CNN
F 1 "10uF" V 1789 6450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1988 6300 50  0001 C CNN
F 3 "~" H 1950 6450 50  0001 C CNN
	1    1950 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 6450 2250 6450
Connection ~ 2250 6450
Wire Wire Line
	2250 6450 2250 6500
Wire Wire Line
	1800 6100 1800 6450
Connection ~ 1800 6100
Wire Wire Line
	1800 6100 1950 6100
$Comp
L Connector:USB_B_Micro J5
U 1 1 60E70FA2
P 3950 3100
F 0 "J5" H 4007 3567 50  0000 C CNN
F 1 "USB_B_Micro" H 4007 3476 50  0000 C CNN
F 2 "Connector_USB:USB_Micro-B_Molex_47346-0001" H 4100 3050 50  0001 C CNN
F 3 "~" H 4100 3050 50  0001 C CNN
	1    3950 3100
	1    0    0    -1  
$EndComp
NoConn ~ 3850 3500
$Comp
L power:GND #PWR06
U 1 1 60E7A963
P 3950 3600
F 0 "#PWR06" H 3950 3350 50  0001 C CNN
F 1 "GND" H 3955 3427 50  0000 C CNN
F 2 "" H 3950 3600 50  0001 C CNN
F 3 "" H 3950 3600 50  0001 C CNN
	1    3950 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3600 3950 3500
$Comp
L Switch:SW_Push SW1
U 1 1 60E9C8B4
P 7750 1750
F 0 "SW1" H 7950 1850 50  0000 R CNN
F 1 "SW_RESET" H 7700 1850 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_SPST_B3U-1000P-B" H 7750 1950 50  0001 C CNN
F 3 "~" H 7750 1950 50  0001 C CNN
	1    7750 1750
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 60EA118C
P 7450 1550
F 0 "C2" V 7702 1550 50  0000 C CNN
F 1 "10uF" V 7611 1550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7488 1400 50  0001 C CNN
F 3 "~" H 7450 1550 50  0001 C CNN
	1    7450 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60EA41E2
P 7300 1650
F 0 "#PWR0107" H 7300 1400 50  0001 C CNN
F 1 "GND" H 7305 1477 50  0000 C CNN
F 2 "" H 7300 1650 50  0001 C CNN
F 3 "" H 7300 1650 50  0001 C CNN
	1    7300 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0109
U 1 1 60EA502F
P 7600 1150
F 0 "#PWR0109" H 7600 1000 50  0001 C CNN
F 1 "+3V3" H 7615 1323 50  0000 C CNN
F 2 "" H 7600 1150 50  0001 C CNN
F 3 "" H 7600 1150 50  0001 C CNN
	1    7600 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1550 7300 1650
$Comp
L Device:R R3
U 1 1 60EAAA83
P 7600 1350
F 0 "R3" H 7670 1396 50  0000 L CNN
F 1 "10K" H 7670 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7530 1350 50  0001 C CNN
F 3 "~" H 7600 1350 50  0001 C CNN
	1    7600 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1500 7600 1550
Wire Wire Line
	7600 1550 7750 1550
Wire Wire Line
	7600 1150 7600 1200
Connection ~ 7750 1550
$Comp
L power:GND #PWR0110
U 1 1 60EB5BAB
P 7750 2050
F 0 "#PWR0110" H 7750 1800 50  0001 C CNN
F 1 "GND" H 7755 1877 50  0000 C CNN
F 2 "" H 7750 2050 50  0001 C CNN
F 3 "" H 7750 2050 50  0001 C CNN
	1    7750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2050 7750 1950
Text Notes 3700 4100 0    50   ~ 0
Decoupling capacitors
$Comp
L power:GND #PWR0111
U 1 1 60EBC3E7
P 4150 4850
F 0 "#PWR0111" H 4150 4600 50  0001 C CNN
F 1 "GND" H 4155 4677 50  0000 C CNN
F 2 "" H 4150 4850 50  0001 C CNN
F 3 "" H 4150 4850 50  0001 C CNN
	1    4150 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0112
U 1 1 60EBD934
P 4150 4350
F 0 "#PWR0112" H 4150 4200 50  0001 C CNN
F 1 "+3V3" H 4165 4523 50  0000 C CNN
F 2 "" H 4150 4350 50  0001 C CNN
F 3 "" H 4150 4350 50  0001 C CNN
	1    4150 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 60EBFBEA
P 4250 4600
F 0 "C5" H 4365 4646 50  0000 L CNN
F 1 "10uF" H 4365 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4288 4450 50  0001 C CNN
F 3 "~" H 4250 4600 50  0001 C CNN
	1    4250 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60EC10E0
P 4050 4600
F 0 "C4" H 4165 4646 50  0000 L CNN
F 1 "100nF" H 4165 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4088 4450 50  0001 C CNN
F 3 "~" H 4050 4600 50  0001 C CNN
	1    4050 4600
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 4450 4050 4400
Wire Wire Line
	4050 4400 4150 4400
Wire Wire Line
	4150 4400 4150 4350
Wire Wire Line
	4250 4450 4250 4400
Wire Wire Line
	4250 4400 4150 4400
Connection ~ 4150 4400
Wire Wire Line
	4050 4750 4050 4800
Wire Wire Line
	4050 4800 4150 4800
Wire Wire Line
	4150 4800 4150 4850
Wire Wire Line
	4250 4750 4250 4800
Wire Wire Line
	4250 4800 4150 4800
Connection ~ 4150 4800
$Comp
L power:VBUS #PWR0113
U 1 1 60EF0BEA
P 4400 2900
F 0 "#PWR0113" H 4400 2750 50  0001 C CNN
F 1 "VBUS" H 4415 3073 50  0000 C CNN
F 2 "" H 4400 2900 50  0001 C CNN
F 3 "" H 4400 2900 50  0001 C CNN
	1    4400 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2900 4400 2900
$Comp
L power:VBUS #PWR0118
U 1 1 60F18E0A
P 2700 2800
F 0 "#PWR0118" H 2700 2650 50  0001 C CNN
F 1 "VBUS" H 2715 2973 50  0000 C CNN
F 2 "" H 2700 2800 50  0001 C CNN
F 3 "" H 2700 2800 50  0001 C CNN
	1    2700 2800
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0119
U 1 1 60F1BD37
P 1700 6100
F 0 "#PWR0119" H 1700 5950 50  0001 C CNN
F 1 "VBUS" H 1715 6273 50  0000 C CNN
F 2 "" H 1700 6100 50  0001 C CNN
F 3 "" H 1700 6100 50  0001 C CNN
	1    1700 6100
	1    0    0    -1  
$EndComp
Wire Notes Line
	1750 3100 2850 3100
Wire Notes Line
	1750 2500 2850 2500
Wire Notes Line
	2700 3800 1700 3800
Wire Notes Line
	1700 3800 1700 4600
Wire Notes Line
	1700 4600 2700 4600
Wire Notes Line
	2700 4600 2700 3800
Wire Notes Line
	2700 1000 2700 1650
Wire Notes Line
	2700 1650 1750 1650
Wire Notes Line
	1750 1650 1750 1000
Wire Notes Line
	1750 1000 2700 1000
Wire Notes Line
	4600 4100 4600 5100
Wire Notes Line
	4600 5100 3700 5100
Wire Notes Line
	3700 5100 3700 4100
Wire Notes Line
	3700 4100 4600 4100
Wire Notes Line
	4200 950  4200 2350
Wire Notes Line
	4200 2350 3750 2350
Wire Notes Line
	3750 2350 3750 950 
Wire Notes Line
	3750 950  4200 950 
Wire Notes Line
	3700 2550 3700 3850
Wire Notes Line
	4800 3850 4800 2550
Wire Notes Line
	3700 3850 4800 3850
Wire Notes Line
	3700 2550 4800 2550
Wire Notes Line
	1600 5800 1600 6750
Wire Notes Line
	7050 900  7050 4500
Wire Notes Line
	7050 4500 10300 4500
Wire Notes Line
	10300 4500 10300 900 
Wire Notes Line
	10300 900  7050 900 
Text Notes 7050 900  0    50   ~ 0
ESP32 IC
Wire Notes Line
	2800 6750 2800 5800
Wire Notes Line
	1600 6750 2800 6750
Wire Notes Line
	2800 5800 1600 5800
Text Label 3850 1600 3    25   ~ 0
PLED_V
Text Label 2250 2750 3    25   ~ 0
RELAY_V
Wire Wire Line
	2150 2750 2150 2850
Wire Wire Line
	2050 2750 2050 2850
Wire Wire Line
	1950 2750 1950 2850
Wire Wire Line
	2250 2750 2250 2850
Wire Notes Line
	2850 2500 2850 3100
Wire Notes Line
	1750 2500 1750 3100
Connection ~ 7600 1550
NoConn ~ 4250 3100
NoConn ~ 4250 3200
NoConn ~ 4250 3300
Wire Wire Line
	7750 1550 8300 1550
Text Label 7950 1550 0    25   ~ 0
RESET
Text Notes 3700 5800 0    50   ~ 0
Programming pins
Text GLabel 4500 6200 2    50   Input ~ 0
RX
Text GLabel 4500 6400 2    50   Input ~ 0
TX
$Comp
L power:GND #PWR07
U 1 1 60F6C481
P 3850 6100
F 0 "#PWR07" H 3850 5850 50  0001 C CNN
F 1 "GND" H 3855 5927 50  0000 C CNN
F 2 "" H 3850 6100 50  0001 C CNN
F 3 "" H 3850 6100 50  0001 C CNN
	1    3850 6100
	1    0    0    -1  
$EndComp
Text GLabel 9650 1850 2    50   Input ~ 0
RX
Text GLabel 9650 1650 2    50   Input ~ 0
TX
Wire Notes Line
	3700 5800 3700 6750
Wire Notes Line
	3700 6750 4800 6750
Wire Notes Line
	4800 6750 4800 5800
Wire Notes Line
	4800 5800 3700 5800
$Comp
L Connector_Generic:Conn_02x05_Counter_Clockwise J6
U 1 1 60FA548B
P 4200 6300
F 0 "J6" H 4250 6717 50  0000 C CNN
F 1 "CONN_PROG" H 4250 6626 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x05_P1.27mm_Vertical_SMD" H 4200 6300 50  0001 C CNN
F 3 "~" H 4200 6300 50  0001 C CNN
	1    4200 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR03
U 1 1 60F68DFE
P 4600 6100
F 0 "#PWR03" H 4600 5950 50  0001 C CNN
F 1 "+3V3" H 4615 6273 50  0000 C CNN
F 2 "" H 4600 6100 50  0001 C CNN
F 3 "" H 4600 6100 50  0001 C CNN
	1    4600 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 6100 4600 6100
Text GLabel 9650 1550 2    50   Input ~ 0
GPIO0
Text GLabel 4500 6300 2    50   Input ~ 0
GPIO0
Wire Wire Line
	3850 6100 4000 6100
NoConn ~ 4500 6500
NoConn ~ 4000 6500
NoConn ~ 4000 6400
NoConn ~ 4000 6300
NoConn ~ 4000 6200
Text Label 9500 1750 0    50   ~ 0
IO2
Text Label 9500 1950 0    50   ~ 0
IO4
Text Label 9500 2050 0    50   ~ 0
IO5
Text Label 9500 2150 0    50   ~ 0
IO12
Text Label 9500 2250 0    50   ~ 0
IO13
Text Label 9500 2450 0    50   ~ 0
IO15
Text Label 9500 2550 0    50   ~ 0
IO16
Text Label 9500 2650 0    50   ~ 0
IO17
Text Label 9500 3150 0    50   ~ 0
IO23
Text Label 9500 3250 0    50   ~ 0
IO25
Text Label 9500 3350 0    50   ~ 0
IO26
Text Label 9500 3450 0    50   ~ 0
IO27
Text Label 9500 3550 0    50   ~ 0
IO32
Text Label 9500 3650 0    50   ~ 0
IO33
Text Label 9500 3750 0    50   ~ 0
IO34
Text Label 9500 3850 0    50   ~ 0
IO35
Text Label 8300 2750 2    50   ~ 0
SD0
Text Label 8300 2850 2    50   ~ 0
SD1
Text Label 8300 2950 2    50   ~ 0
SD2
Text Label 8300 3050 2    50   ~ 0
SD3
Text Label 8300 3150 2    50   ~ 0
CLK
Text Label 8300 3250 2    50   ~ 0
CMD
$Comp
L Device:LED D2
U 1 1 6104F0EA
P 5500 1850
F 0 "D2" V 5539 1732 50  0000 R CNN
F 1 "SLED1" V 5448 1732 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 5500 1850 50  0001 C CNN
F 3 "~" H 5500 1850 50  0001 C CNN
	1    5500 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 6104F0F6
P 5500 1450
F 0 "R4" H 5570 1496 50  0000 L CNN
F 1 "330" H 5570 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5430 1450 50  0001 C CNN
F 3 "~" H 5500 1450 50  0001 C CNN
	1    5500 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 6104F0FC
P 5500 2100
F 0 "#PWR0114" H 5500 1850 50  0001 C CNN
F 1 "GND" H 5505 1927 50  0000 C CNN
F 2 "" H 5500 2100 50  0001 C CNN
F 3 "" H 5500 2100 50  0001 C CNN
	1    5500 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1600 5500 1700
Wire Wire Line
	5500 2000 5500 2100
Text Notes 5400 900  0    50   ~ 0
Status LEDs
Text Label 5500 1600 3    25   ~ 0
SLED_V1
Text GLabel 5500 1300 1    50   Input ~ 0
SLED1
Text GLabel 9700 2150 2    50   Input ~ 0
SLED1
Wire Wire Line
	9700 2150 9500 2150
$Comp
L Device:LED D3
U 1 1 6106E5AC
P 6000 1850
F 0 "D3" V 6039 1732 50  0000 R CNN
F 1 "SLED2" V 5948 1732 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric" H 6000 1850 50  0001 C CNN
F 3 "~" H 6000 1850 50  0001 C CNN
	1    6000 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 6106E5B2
P 6000 1450
F 0 "R5" H 6070 1496 50  0000 L CNN
F 1 "330" H 6070 1405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5930 1450 50  0001 C CNN
F 3 "~" H 6000 1450 50  0001 C CNN
	1    6000 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 6106E5B8
P 6000 2100
F 0 "#PWR0115" H 6000 1850 50  0001 C CNN
F 1 "GND" H 6005 1927 50  0000 C CNN
F 2 "" H 6000 2100 50  0001 C CNN
F 3 "" H 6000 2100 50  0001 C CNN
	1    6000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1600 6000 1700
Wire Wire Line
	6000 2000 6000 2100
Text Label 6000 1600 3    25   ~ 0
SLED_V2
Text GLabel 6000 1300 1    50   Input ~ 0
SLED2
Wire Notes Line
	6400 900  6400 2350
Wire Notes Line
	5400 900  5400 2350
Wire Notes Line
	5400 900  6400 900 
Wire Notes Line
	5400 2350 6400 2350
Text GLabel 9650 3450 2    50   Input ~ 0
SLED2
Wire Wire Line
	9500 3450 9650 3450
Wire Wire Line
	9650 1550 9500 1550
Wire Wire Line
	9500 1650 9650 1650
Wire Wire Line
	9500 1850 9650 1850
Wire Wire Line
	9500 2350 9650 2350
Wire Wire Line
	9500 2750 9650 2750
Wire Wire Line
	9500 2850 9650 2850
Wire Wire Line
	9500 2950 9650 2950
Wire Wire Line
	9500 3050 9650 3050
NoConn ~ 9500 3850
NoConn ~ 9500 1750
Text Label 4250 3100 0    50   ~ 0
USB_3
Text Label 4250 3200 0    50   ~ 0
USB_2
Text Label 4250 3300 0    50   ~ 0
USB_4
Text Label 4400 2900 0    50   ~ 0
USB_1
Text Label 3950 3550 0    50   ~ 0
USB_5
Text Label 3850 3500 3    50   ~ 0
USB_6
$EndSCHEMATC

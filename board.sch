EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 7874 6693
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
P 5500 2550
F 0 "U1" H 5500 4131 50  0000 R CNN
F 1 "ESP32-WROOM-32" H 5500 4040 50  0000 R CNN
F 2 "RF_Module:ESP32-WROOM-32" H 5500 1050 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 5200 2600 50  0001 C CNN
F 4 "C82899" H 5500 2550 50  0001 C CNN "Part No"
	1    5500 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 60CDEB35
P 1250 2600
F 0 "J1" V 1330 2642 50  0000 L CNN
F 1 "TEMPS" V 1350 2350 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 1250 2600 50  0001 C CNN
F 3 "https://www.diyelectronics.co.za/store/headers-sockets/2595-jst-xh-3-way-vertical-header-male.html" H 1250 2600 50  0001 C CNN
	1    1250 2600
	0    -1   -1   0   
$EndComp
Text Notes 750  2450 0    50   ~ 0
Temp sensors
Text Notes 750  1600 0    50   ~ 0
Relay
Text Notes 750  700  0    50   ~ 0
OLED
Text Notes 750  4800 0    50   ~ 0
Power in
$Comp
L Device:R R1
U 1 1 60E49C74
P 1250 3050
F 0 "R1" H 1320 3096 50  0000 L CNN
F 1 "4k7" H 1320 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1180 3050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1808281533_UNI-ROYAL-Uniroyal-Elec-0805W8F4701T5E_C17673.pdf" H 1250 3050 50  0001 C CNN
F 4 "C17673" H 1250 3050 50  0001 C CNN "Part No"
	1    1250 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2800 1250 2850
$Comp
L power:+3V3 #PWR0101
U 1 1 60E4BBF1
P 950 2800
F 0 "#PWR0101" H 950 2650 50  0001 C CNN
F 1 "+3V3" H 965 2973 50  0000 C CNN
F 2 "" H 950 2800 50  0001 C CNN
F 3 "" H 950 2800 50  0001 C CNN
	1    950  2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  2800 950  2850
Wire Wire Line
	950  2850 1250 2850
Connection ~ 1250 2850
Wire Wire Line
	1250 2850 1250 2900
Wire Wire Line
	1150 2800 1150 3200
Wire Wire Line
	1150 3200 1250 3200
Text GLabel 1150 3000 0    50   Input ~ 0
GPIO14
$Comp
L power:GND #PWR0102
U 1 1 60E4DD96
P 1600 2900
F 0 "#PWR0102" H 1600 2650 50  0001 C CNN
F 1 "GND" H 1605 2727 50  0000 C CNN
F 2 "" H 1600 2900 50  0001 C CNN
F 3 "" H 1600 2900 50  0001 C CNN
	1    1600 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2800 1350 2850
Wire Wire Line
	1350 2850 1600 2850
Wire Wire Line
	1600 2850 1600 2900
Text GLabel 6250 2150 2    50   Input ~ 0
GPIO14
$Comp
L power:GND #PWR0103
U 1 1 60E4F914
P 5500 4050
F 0 "#PWR0103" H 5500 3800 50  0001 C CNN
F 1 "GND" H 5505 3877 50  0000 C CNN
F 2 "" H 5500 4050 50  0001 C CNN
F 3 "" H 5500 4050 50  0001 C CNN
	1    5500 4050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 60E50FEA
P 1200 750
F 0 "J2" V 1138 462 50  0000 R CNN
F 1 "OLED" V 1047 462 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 1200 750 50  0001 C CNN
F 3 "https://www.diyelectronics.co.za/store/headers-sockets/2597-jst-xh-4-way-vertical-header-male.html" H 1200 750 50  0001 C CNN
	1    1200 750 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 60E53021
P 1100 1050
F 0 "#PWR0104" H 1100 800 50  0001 C CNN
F 1 "GND" H 1105 877 50  0000 C CNN
F 2 "" H 1100 1050 50  0001 C CNN
F 3 "" H 1100 1050 50  0001 C CNN
	1    1100 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 950  1100 1050
$Comp
L power:+3V3 #PWR0105
U 1 1 60E55E20
P 850 1300
F 0 "#PWR0105" H 850 1150 50  0001 C CNN
F 1 "+3V3" H 865 1473 50  0000 C CNN
F 2 "" H 850 1300 50  0001 C CNN
F 3 "" H 850 1300 50  0001 C CNN
	1    850  1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1300 1200 1300
Wire Wire Line
	1200 1300 1200 950 
Text GLabel 1300 950  3    50   Input ~ 0
SCL
Text GLabel 1400 950  3    50   Input ~ 0
SDA
Text GLabel 6250 2750 2    50   Input ~ 0
SDA
Text GLabel 6250 2850 2    50   Input ~ 0
SCL
$Comp
L Connector:Conn_01x04_Female J3
U 1 1 60E5AFDE
P 1050 1650
F 0 "J3" V 988 1362 50  0000 R CNN
F 1 "RELAY" V 897 1362 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 1050 1650 50  0001 C CNN
F 3 "https://www.diyelectronics.co.za/store/headers-sockets/2597-jst-xh-4-way-vertical-header-male.html" H 1050 1650 50  0001 C CNN
	1    1050 1650
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 60E5C419
P 950 1950
F 0 "#PWR0106" H 950 1700 50  0001 C CNN
F 1 "GND" H 955 1777 50  0000 R CNN
F 2 "" H 950 1950 50  0001 C CNN
F 3 "" H 950 1950 50  0001 C CNN
	1    950  1950
	1    0    0    -1  
$EndComp
Text GLabel 1050 1950 3    50   Input ~ 0
CH1
Text GLabel 1150 1950 3    50   Input ~ 0
CH2
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 60E5E64D
P 1250 2150
F 0 "J4" V 1404 1962 50  0000 R CNN
F 1 "RELAY_EN" V 1313 1962 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1250 2150 50  0001 C CNN
F 3 "https://www.robotics.org.za/MH-2X16-254" H 1250 2150 50  0001 C CNN
	1    1250 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 1900 1350 1900
Wire Wire Line
	1350 1900 1350 1950
Text GLabel 6250 2550 2    50   Input ~ 0
CH1
Text GLabel 6250 2650 2    50   Input ~ 0
CH2
$Comp
L Device:LED D2
U 1 1 60E6779F
P 2500 2700
F 0 "D2" V 2539 2582 50  0000 R CNN
F 1 "PLED" V 2448 2582 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2500 2700 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810231112_Hubei-KENTO-Elec-KT-0603R_C2286.pdf" H 2500 2700 50  0001 C CNN
F 4 "C2286" H 2500 2700 50  0001 C CNN "Part No"
	1    2500 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR01
U 1 1 60E6985D
P 2500 2050
F 0 "#PWR01" H 2500 1900 50  0001 C CNN
F 1 "+3V3" H 2515 2223 50  0000 C CNN
F 2 "" H 2500 2050 50  0001 C CNN
F 3 "" H 2500 2050 50  0001 C CNN
	1    2500 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60E6DB9C
P 2500 2300
F 0 "R2" H 2570 2346 50  0000 L CNN
F 1 "330" H 2570 2255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2430 2300 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811131121_UNI-ROYAL-Uniroyal-Elec-0805W8F3300T5E_C17630.pdf" H 2500 2300 50  0001 C CNN
F 4 "C17630" H 2500 2300 50  0001 C CNN "Part No"
	1    2500 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60E6FC7F
P 2500 2950
F 0 "#PWR02" H 2500 2700 50  0001 C CNN
F 1 "GND" H 2505 2777 50  0000 C CNN
F 2 "" H 2500 2950 50  0001 C CNN
F 3 "" H 2500 2950 50  0001 C CNN
	1    2500 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2050 2500 2150
Wire Wire Line
	2500 2450 2500 2550
Wire Wire Line
	2500 2850 2500 2950
Text Notes 2400 1800 0    50   ~ 0
Power LED
NoConn ~ 6100 1750
NoConn ~ 6100 1850
NoConn ~ 6100 2050
NoConn ~ 6100 2250
NoConn ~ 6100 2350
NoConn ~ 6100 2450
NoConn ~ 6100 2950
NoConn ~ 6100 3050
NoConn ~ 6100 3150
NoConn ~ 6100 3350
NoConn ~ 6100 3450
NoConn ~ 6100 3550
NoConn ~ 4900 3050
NoConn ~ 4900 2950
NoConn ~ 4900 2850
NoConn ~ 4900 2750
NoConn ~ 4900 2650
NoConn ~ 4900 2550
NoConn ~ 4900 1550
NoConn ~ 4900 1650
$Comp
L power:+3V3 #PWR0108
U 1 1 60E7EE5E
P 5600 1150
F 0 "#PWR0108" H 5600 1000 50  0001 C CNN
F 1 "+3V3" H 5615 1323 50  0000 C CNN
F 2 "" H 5600 1150 50  0001 C CNN
F 3 "" H 5600 1150 50  0001 C CNN
	1    5600 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1150 5600 1150
Text Notes 750  3550 0    50   ~ 0
Voltage regulation
$Comp
L power:GND #PWR04
U 1 1 60E88977
P 1400 4250
F 0 "#PWR04" H 1400 4000 50  0001 C CNN
F 1 "GND" H 1405 4077 50  0000 C CNN
F 2 "" H 1400 4250 50  0001 C CNN
F 3 "" H 1400 4250 50  0001 C CNN
	1    1400 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 60E89EBB
P 1800 3850
F 0 "#PWR05" H 1800 3700 50  0001 C CNN
F 1 "+3V3" H 1815 4023 50  0000 C CNN
F 2 "" H 1800 3850 50  0001 C CNN
F 3 "" H 1800 3850 50  0001 C CNN
	1    1800 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  3850 950  3850
Wire Wire Line
	5500 3950 5500 4050
Wire Wire Line
	1700 3850 1800 3850
Wire Wire Line
	1400 4150 1400 4200
$Comp
L Device:C C1
U 1 1 60E94711
P 1100 4200
F 0 "C1" V 848 4200 50  0000 C CNN
F 1 "10uF" V 939 4200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1138 4050 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811121310_Samsung-Electro-Mechanics-CL21A106KAYNNNE_C15850.pdf" H 1100 4200 50  0001 C CNN
F 4 "C15850" H 1100 4200 50  0001 C CNN "Part No"
	1    1100 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 4200 1400 4200
Connection ~ 1400 4200
Wire Wire Line
	1400 4200 1400 4250
Wire Wire Line
	950  3850 950  4200
Connection ~ 950  3850
Wire Wire Line
	950  3850 1100 3850
$Comp
L power:GND #PWR06
U 1 1 60E7A963
P 1550 5600
F 0 "#PWR06" H 1550 5350 50  0001 C CNN
F 1 "GND" H 1555 5427 50  0000 C CNN
F 2 "" H 1550 5600 50  0001 C CNN
F 3 "" H 1550 5600 50  0001 C CNN
	1    1550 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 5600 1550 5500
$Comp
L Switch:SW_Push SW1
U 1 1 60E9C8B4
P 4350 1550
F 0 "SW1" H 4550 1650 50  0000 R CNN
F 1 "SW_RESET" H 4300 1650 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H13mm" H 4350 1750 50  0001 C CNN
F 3 "https://www.robotics.org.za/TAC4P-020-TH" H 4350 1750 50  0001 C CNN
	1    4350 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C2
U 1 1 60EA118C
P 4050 1350
F 0 "C2" V 4302 1350 50  0000 C CNN
F 1 "10uF" V 4211 1350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4088 1200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811121310_Samsung-Electro-Mechanics-CL21A106KAYNNNE_C15850.pdf" H 4050 1350 50  0001 C CNN
F 4 "C15850" H 4050 1350 50  0001 C CNN "Part No"
	1    4050 1350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 60EA41E2
P 3900 1450
F 0 "#PWR0107" H 3900 1200 50  0001 C CNN
F 1 "GND" H 3905 1277 50  0000 C CNN
F 2 "" H 3900 1450 50  0001 C CNN
F 3 "" H 3900 1450 50  0001 C CNN
	1    3900 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0109
U 1 1 60EA502F
P 4200 950
F 0 "#PWR0109" H 4200 800 50  0001 C CNN
F 1 "+3V3" H 4215 1123 50  0000 C CNN
F 2 "" H 4200 950 50  0001 C CNN
F 3 "" H 4200 950 50  0001 C CNN
	1    4200 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1350 3900 1450
$Comp
L Device:R R3
U 1 1 60EAAA83
P 4200 1150
F 0 "R3" H 4270 1196 50  0000 L CNN
F 1 "10K" H 4270 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4130 1150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810271610_UNI-ROYAL-Uniroyal-Elec-0805W8F1002T5E_C17414.pdf" H 4200 1150 50  0001 C CNN
F 4 "C17414" H 4200 1150 50  0001 C CNN "Part No"
	1    4200 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1300 4200 1350
Wire Wire Line
	4200 1350 4350 1350
Wire Wire Line
	4200 950  4200 1000
Connection ~ 4350 1350
$Comp
L power:GND #PWR0110
U 1 1 60EB5BAB
P 4350 1850
F 0 "#PWR0110" H 4350 1600 50  0001 C CNN
F 1 "GND" H 4355 1677 50  0000 C CNN
F 2 "" H 4350 1850 50  0001 C CNN
F 3 "" H 4350 1850 50  0001 C CNN
	1    4350 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1850 4350 1750
Text Notes 2150 3400 0    50   ~ 0
Decoupling capacitors
$Comp
L power:GND #PWR0111
U 1 1 60EBC3E7
P 2600 4150
F 0 "#PWR0111" H 2600 3900 50  0001 C CNN
F 1 "GND" H 2605 3977 50  0000 C CNN
F 2 "" H 2600 4150 50  0001 C CNN
F 3 "" H 2600 4150 50  0001 C CNN
	1    2600 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0112
U 1 1 60EBD934
P 2600 3650
F 0 "#PWR0112" H 2600 3500 50  0001 C CNN
F 1 "+3V3" H 2615 3823 50  0000 C CNN
F 2 "" H 2600 3650 50  0001 C CNN
F 3 "" H 2600 3650 50  0001 C CNN
	1    2600 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 60EBFBEA
P 2700 3900
F 0 "C5" H 2815 3946 50  0000 L CNN
F 1 "10uF" H 2815 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2738 3750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811121310_Samsung-Electro-Mechanics-CL21A106KAYNNNE_C15850.pdf" H 2700 3900 50  0001 C CNN
F 4 "C15850" H 2700 3900 50  0001 C CNN "Part No"
	1    2700 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60EC10E0
P 2500 3900
F 0 "C4" H 2615 3946 50  0000 L CNN
F 1 "100nF" H 2615 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2538 3750 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810101813_YAGEO-CC0805KRX7R9BB104_C49678.pdf" H 2500 3900 50  0001 C CNN
F 4 "C49678" H 2500 3900 50  0001 C CNN "Part No"
	1    2500 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 3750 2500 3700
Wire Wire Line
	2500 3700 2600 3700
Wire Wire Line
	2600 3700 2600 3650
Wire Wire Line
	2700 3750 2700 3700
Wire Wire Line
	2700 3700 2600 3700
Connection ~ 2600 3700
Wire Wire Line
	2500 4050 2500 4100
Wire Wire Line
	2500 4100 2600 4100
Wire Wire Line
	2600 4100 2600 4150
Wire Wire Line
	2700 4050 2700 4100
Wire Wire Line
	2700 4100 2600 4100
Connection ~ 2600 4100
$Comp
L power:VBUS #PWR0113
U 1 1 60EF0BEA
P 1550 5400
F 0 "#PWR0113" H 1550 5250 50  0001 C CNN
F 1 "VBUS" H 1565 5573 50  0000 C CNN
F 2 "" H 1550 5400 50  0001 C CNN
F 3 "" H 1550 5400 50  0001 C CNN
	1    1550 5400
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0118
U 1 1 60F18E0A
P 1700 1900
F 0 "#PWR0118" H 1700 1750 50  0001 C CNN
F 1 "VBUS" H 1715 2073 50  0000 C CNN
F 2 "" H 1700 1900 50  0001 C CNN
F 3 "" H 1700 1900 50  0001 C CNN
	1    1700 1900
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR0119
U 1 1 60F1BD37
P 850 3850
F 0 "#PWR0119" H 850 3700 50  0001 C CNN
F 1 "VBUS" H 865 4023 50  0000 C CNN
F 2 "" H 850 3850 50  0001 C CNN
F 3 "" H 850 3850 50  0001 C CNN
	1    850  3850
	1    0    0    -1  
$EndComp
Wire Notes Line
	750  2200 1850 2200
Wire Notes Line
	750  1600 1850 1600
Wire Notes Line
	1750 2450 750  2450
Wire Notes Line
	750  2450 750  3250
Wire Notes Line
	750  3250 1750 3250
Wire Notes Line
	1750 3250 1750 2450
Wire Notes Line
	1700 700  1700 1350
Wire Notes Line
	1700 1350 750  1350
Wire Notes Line
	750  1350 750  700 
Wire Notes Line
	750  700  1700 700 
Wire Notes Line
	3050 3400 3050 4400
Wire Notes Line
	3050 4400 2150 4400
Wire Notes Line
	2150 4400 2150 3400
Wire Notes Line
	2150 3400 3050 3400
Wire Notes Line
	2850 1800 2850 3200
Wire Notes Line
	2850 3200 2400 3200
Wire Notes Line
	2400 3200 2400 1800
Wire Notes Line
	2400 1800 2850 1800
Wire Notes Line
	750  4800 750  6100
Wire Notes Line
	1850 6100 1850 4800
Wire Notes Line
	750  6100 1850 6100
Wire Notes Line
	750  4800 1850 4800
Wire Notes Line
	750  3550 750  4500
Wire Notes Line
	3650 700  3650 4300
Wire Notes Line
	3650 4300 6900 4300
Wire Notes Line
	6900 4300 6900 700 
Wire Notes Line
	6900 700  3650 700 
Text Notes 3650 700  0    50   ~ 0
ESP32 IC
Wire Notes Line
	1950 4500 1950 3550
Wire Notes Line
	750  4500 1950 4500
Wire Notes Line
	1950 3550 750  3550
Text Label 2500 2450 3    25   ~ 0
PLED_V
Text Label 1250 1850 3    25   ~ 0
RELAY_V
Wire Wire Line
	1150 1850 1150 1950
Wire Wire Line
	1050 1850 1050 1950
Wire Wire Line
	950  1850 950  1950
Wire Wire Line
	1250 1850 1250 1950
Wire Notes Line
	1850 1600 1850 2200
Wire Notes Line
	750  1600 750  2200
Connection ~ 4200 1350
Wire Wire Line
	4350 1350 4900 1350
Text Label 4550 1350 0    25   ~ 0
RESET
Text Notes 2050 700  0    50   ~ 0
Programming pins
Text GLabel 2950 1250 2    50   Input ~ 0
RX
Text GLabel 2450 1350 0    50   Input ~ 0
TX
$Comp
L power:GND #PWR07
U 1 1 60F6C481
P 2200 1150
F 0 "#PWR07" H 2200 900 50  0001 C CNN
F 1 "GND" H 2205 977 50  0000 C CNN
F 2 "" H 2200 1150 50  0001 C CNN
F 3 "" H 2200 1150 50  0001 C CNN
	1    2200 1150
	1    0    0    -1  
$EndComp
Text GLabel 6250 1650 2    50   Input ~ 0
RX
Text GLabel 6250 1450 2    50   Input ~ 0
TX
Wire Notes Line
	2050 700  2050 1650
Text GLabel 6250 1350 2    50   Input ~ 0
GPIO0
Text GLabel 2950 1150 2    50   Input ~ 0
GPIO0
Text Label 6100 1550 0    50   ~ 0
IO2
Text Label 6100 1750 0    50   ~ 0
IO4
Text Label 6100 1850 0    50   ~ 0
IO5
Text Label 6100 1950 0    50   ~ 0
IO12
Text Label 6100 2050 0    50   ~ 0
IO13
Text Label 6100 2250 0    50   ~ 0
IO15
Text Label 6100 2350 0    50   ~ 0
IO16
Text Label 6100 2450 0    50   ~ 0
IO17
Text Label 6100 2950 0    50   ~ 0
IO23
Text Label 6100 3050 0    50   ~ 0
IO25
Text Label 6100 3150 0    50   ~ 0
IO26
Text Label 6100 3250 0    50   ~ 0
IO27
Text Label 6100 3350 0    50   ~ 0
IO32
Text Label 6100 3450 0    50   ~ 0
IO33
Text Label 6100 3550 0    50   ~ 0
IO34
Text Label 6100 3650 0    50   ~ 0
IO35
Text Label 4900 2550 2    50   ~ 0
SD0
Text Label 4900 2650 2    50   ~ 0
SD1
Text Label 4900 2750 2    50   ~ 0
SD2
Text Label 4900 2850 2    50   ~ 0
SD3
Text Label 4900 2950 2    50   ~ 0
CLK
Text Label 4900 3050 2    50   ~ 0
CMD
$Comp
L Device:LED D1
U 1 1 6104F0EA
P 2100 5600
F 0 "D1" V 2139 5482 50  0000 R CNN
F 1 "SLED1" V 2048 5482 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2100 5600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810231112_Hubei-KENTO-Elec-KT-0603R_C2286.pdf" H 2100 5600 50  0001 C CNN
F 4 "C2286" H 2100 5600 50  0001 C CNN "Part No"
	1    2100 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 6104F0F6
P 2100 5200
F 0 "R4" H 2170 5246 50  0000 L CNN
F 1 "330" H 2170 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2030 5200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811131121_UNI-ROYAL-Uniroyal-Elec-0805W8F3300T5E_C17630.pdf" H 2100 5200 50  0001 C CNN
F 4 "C17630" H 2100 5200 50  0001 C CNN "Part No"
	1    2100 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 6104F0FC
P 2100 5850
F 0 "#PWR0114" H 2100 5600 50  0001 C CNN
F 1 "GND" H 2105 5677 50  0000 C CNN
F 2 "" H 2100 5850 50  0001 C CNN
F 3 "" H 2100 5850 50  0001 C CNN
	1    2100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 5350 2100 5450
Wire Wire Line
	2100 5750 2100 5850
Text Notes 2000 4650 0    50   ~ 0
Status LEDs
Text Label 2100 5350 3    25   ~ 0
SLED_V1
Text GLabel 2100 5050 1    50   Input ~ 0
SLED1
Text GLabel 6300 1950 2    50   Input ~ 0
SLED1
Wire Wire Line
	6300 1950 6100 1950
$Comp
L Device:LED D3
U 1 1 6106E5AC
P 2600 5600
F 0 "D3" V 2639 5482 50  0000 R CNN
F 1 "SLED2" V 2548 5482 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2600 5600 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1810231112_Hubei-KENTO-Elec-KT-0603R_C2286.pdf" H 2600 5600 50  0001 C CNN
F 4 "C2286" H 2600 5600 50  0001 C CNN "Part No"
	1    2600 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 6106E5B2
P 2600 5200
F 0 "R5" H 2670 5246 50  0000 L CNN
F 1 "330" H 2670 5155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2530 5200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/lcsc/1811131121_UNI-ROYAL-Uniroyal-Elec-0805W8F3300T5E_C17630.pdf" H 2600 5200 50  0001 C CNN
F 4 "C17630" H 2600 5200 50  0001 C CNN "Part No"
	1    2600 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 6106E5B8
P 2600 5850
F 0 "#PWR0115" H 2600 5600 50  0001 C CNN
F 1 "GND" H 2605 5677 50  0000 C CNN
F 2 "" H 2600 5850 50  0001 C CNN
F 3 "" H 2600 5850 50  0001 C CNN
	1    2600 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5350 2600 5450
Wire Wire Line
	2600 5750 2600 5850
Text Label 2600 5350 3    25   ~ 0
SLED_V2
Text GLabel 2600 5050 1    50   Input ~ 0
SLED2
Wire Notes Line
	3000 4650 3000 6100
Wire Notes Line
	2000 4650 2000 6100
Wire Notes Line
	2000 4650 3000 4650
Wire Notes Line
	2000 6100 3000 6100
Text GLabel 6250 3250 2    50   Input ~ 0
SLED2
Wire Wire Line
	6100 3250 6250 3250
Wire Wire Line
	6250 1350 6100 1350
Wire Wire Line
	6100 1450 6250 1450
Wire Wire Line
	6100 1650 6250 1650
Wire Wire Line
	6100 2150 6250 2150
Wire Wire Line
	6100 2550 6250 2550
Wire Wire Line
	6100 2650 6250 2650
Wire Wire Line
	6100 2750 6250 2750
Wire Wire Line
	6100 2850 6250 2850
NoConn ~ 6100 3650
NoConn ~ 6100 1550
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 60E8504B
P 1400 3850
F 0 "U2" H 1400 4092 50  0000 C CNN
F 1 "AMS1117-3.3" H 1400 4001 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1400 4050 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 1500 3600 50  0001 C CNN
F 4 "C6186" H 1400 3850 50  0001 C CNN "Part No"
	1    1400 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J5
U 1 1 61215010
P 1000 5500
F 0 "J5" H 892 5175 50  0000 C CNN
F 1 "PWR_IN" H 892 5266 50  0000 C CNN
F 2 "Connector_JST:JST_XH_S2B-XH-A-1_1x02_P2.50mm_Horizontal" H 1000 5500 50  0001 C CNN
F 3 "https://www.robotics.org.za/JST-KIT" H 1000 5500 50  0001 C CNN
	1    1000 5500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1200 5400 1550 5400
Wire Wire Line
	1550 5500 1200 5500
$Comp
L power:+3V3 #PWR03
U 1 1 60F68DFE
P 3350 1350
F 0 "#PWR03" H 3350 1200 50  0001 C CNN
F 1 "+3V3" H 3365 1523 50  0000 C CNN
F 2 "" H 3350 1350 50  0001 C CNN
F 3 "" H 3350 1350 50  0001 C CNN
	1    3350 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x03_Top_Bottom J6
U 1 1 612B7058
P 2650 1250
F 0 "J6" H 2700 1567 50  0000 C CNN
F 1 "CONN_PROG" H 2700 1476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 2650 1250 50  0001 C CNN
F 3 "https://www.robotics.org.za/MH-2X16-254" H 2650 1250 50  0001 C CNN
	1    2650 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1150 2450 1150
NoConn ~ 2450 1250
Wire Wire Line
	2950 1350 3350 1350
Wire Notes Line
	3500 1650 3500 700 
Wire Notes Line
	2050 1650 3500 1650
Wire Notes Line
	2050 700  3500 700 
$EndSCHEMATC

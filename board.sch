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
L RF_Module:ESP32-WROOM-32 U?
U 1 1 60CD47A6
P 3700 3050
F 0 "U?" H 3700 4631 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 3700 4540 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 3700 1550 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 3400 3100 50  0001 C CNN
	1    3700 3050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J?
U 1 1 60CDEB35
P 5950 1750
F 0 "J?" H 6030 1792 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 6030 1701 50  0000 L CNN
F 2 "" H 5950 1750 50  0001 C CNN
F 3 "~" H 5950 1750 50  0001 C CNN
	1    5950 1750
	1    0    0    -1  
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
Programming
$EndSCHEMATC

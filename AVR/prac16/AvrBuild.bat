@ECHO OFF
"C:\Program Files (x86)\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "E:\PROJECT\MP\AVR\prac16\labels.tmp" -fI -W+ie -C V2E -o "E:\PROJECT\MP\AVR\prac16\prac16.hex" -d "E:\PROJECT\MP\AVR\prac16\prac16.obj" -e "E:\PROJECT\MP\AVR\prac16\prac16.eep" -m "E:\PROJECT\MP\AVR\prac16\prac16.map" "E:\PROJECT\MP\AVR\prac16\prac16.asm"

.include "m32def.inc"
LDI R26, 0x60;
LDI R27, 0x00;
LDI R16, 0x0A;
LDI R17, 0x00;
LD R18, x+;
ADD R17,R18;
DEC R16;
ST x,R17;

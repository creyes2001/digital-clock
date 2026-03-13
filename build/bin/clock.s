subtitle "Microchip MPLAB XC8 C Compiler v3.10 (Free license) build 20250813170317 Og1 "

pagewidth 120

	opt flic

	processor	18F4550
include "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/18f4550.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
skiprom24 macro arg1
	btfsc arg1,7
endm
	global	__ramtop
	global	__accesstop
# 52 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 72 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 149 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 249 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRM equ 0F66h ;# 
# 256 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRML equ 0F66h ;# 
# 334 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 374 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIR equ 0F68h ;# 
# 430 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIE equ 0F69h ;# 
# 486 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 537 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 588 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 648 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 763 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 842 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 950 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1058 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1166 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1274 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1382 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1490 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1598 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1782 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1858 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1934 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2010 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2086 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2162 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2314 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2453 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2563 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2705 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTD equ 0F83h ;# 
# 2826 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTE equ 0F84h ;# 
# 2973 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATA equ 0F89h ;# 
# 3073 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3185 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3263 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3375 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3427 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3432 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRA equ 0F92h ;# 
# 3625 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISB equ 0F93h ;# 
# 3630 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRB equ 0F93h ;# 
# 3847 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISC equ 0F94h ;# 
# 3852 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4001 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4006 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4228 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4325 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4384 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4468 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4552 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4636 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4707 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4778 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4849 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4915 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4922 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4936 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4941 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5151 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5402 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG equ 0FADh ;# 
# 5407 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5414 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5419 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5426 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5431 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5438 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5445 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5566 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5573 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5580 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5587 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5677 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5762 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5767 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5924 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6062 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6067 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6242 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6306 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6313 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6320 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6327 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6332 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6489 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6496 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6503 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6510 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6581 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6666 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6785 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6792 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6799 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6806 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6868 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6938 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7186 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7193 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7200 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7298 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7303 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7408 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7415 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7518 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7525 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7532 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7539 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCON equ 0FD0h ;# 
# 7688 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7716 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7721 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7986 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8069 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8139 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8153 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8160 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8231 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8245 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8252 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8259 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8266 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8273 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8280 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8287 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8294 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8301 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8308 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8315 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8322 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8329 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8336 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8343 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8350 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8357 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8364 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8371 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8378 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8385 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8392 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8399 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8406 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8413 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8505 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8582 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PROD equ 0FF3h ;# 
# 8706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8713 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8720 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8729 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8736 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8743 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8750 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8759 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8766 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PC equ 0FF9h ;# 
# 8773 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCL equ 0FF9h ;# 
# 8780 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8787 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8794 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8870 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOS equ 0FFDh ;# 
# 8877 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8884 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8891 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 72 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 149 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 249 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRM equ 0F66h ;# 
# 256 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRML equ 0F66h ;# 
# 334 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 374 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIR equ 0F68h ;# 
# 430 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIE equ 0F69h ;# 
# 486 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 537 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 588 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 648 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 763 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 842 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 950 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1058 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1166 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1274 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1382 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1490 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1598 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1782 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1858 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1934 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2010 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2086 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2162 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2314 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2453 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2563 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2705 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTD equ 0F83h ;# 
# 2826 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTE equ 0F84h ;# 
# 2973 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATA equ 0F89h ;# 
# 3073 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3185 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3263 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3375 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3427 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3432 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRA equ 0F92h ;# 
# 3625 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISB equ 0F93h ;# 
# 3630 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRB equ 0F93h ;# 
# 3847 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISC equ 0F94h ;# 
# 3852 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4001 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4006 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4228 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4325 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4384 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4468 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4552 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4636 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4707 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4778 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4849 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4915 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4922 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4936 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4941 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5151 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5402 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG equ 0FADh ;# 
# 5407 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5414 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5419 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5426 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5431 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5438 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5445 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5566 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5573 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5580 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5587 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5677 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5762 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5767 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5924 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6062 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6067 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6242 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6306 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6313 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6320 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6327 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6332 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6489 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6496 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6503 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6510 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6581 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6666 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6785 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6792 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6799 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6806 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6868 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6938 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7186 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7193 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7200 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7298 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7303 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7408 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7415 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7518 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7525 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7532 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7539 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCON equ 0FD0h ;# 
# 7688 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7716 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7721 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7986 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8069 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8139 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8153 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8160 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8231 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8245 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8252 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8259 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8266 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8273 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8280 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8287 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8294 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8301 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8308 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8315 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8322 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8329 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8336 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8343 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8350 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8357 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8364 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8371 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8378 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8385 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8392 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8399 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8406 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8413 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8505 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8582 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PROD equ 0FF3h ;# 
# 8706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8713 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8720 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8729 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8736 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8743 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8750 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8759 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8766 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PC equ 0FF9h ;# 
# 8773 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCL equ 0FF9h ;# 
# 8780 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8787 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8794 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8870 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOS equ 0FFDh ;# 
# 8877 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8884 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8891 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 72 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 149 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 249 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRM equ 0F66h ;# 
# 256 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRML equ 0F66h ;# 
# 334 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 374 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIR equ 0F68h ;# 
# 430 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIE equ 0F69h ;# 
# 486 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 537 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 588 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 648 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 763 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 842 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 950 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1058 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1166 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1274 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1382 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1490 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1598 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1782 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1858 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1934 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2010 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2086 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2162 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2314 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2453 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2563 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2705 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTD equ 0F83h ;# 
# 2826 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTE equ 0F84h ;# 
# 2973 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATA equ 0F89h ;# 
# 3073 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3185 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3263 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3375 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3427 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3432 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRA equ 0F92h ;# 
# 3625 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISB equ 0F93h ;# 
# 3630 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRB equ 0F93h ;# 
# 3847 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISC equ 0F94h ;# 
# 3852 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4001 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4006 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4228 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4325 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4384 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4468 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4552 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4636 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4707 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4778 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4849 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4915 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4922 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4936 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4941 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5151 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5402 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG equ 0FADh ;# 
# 5407 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5414 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5419 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5426 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5431 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5438 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5445 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5566 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5573 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5580 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5587 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5677 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5762 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5767 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5924 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6062 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6067 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6242 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6306 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6313 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6320 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6327 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6332 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6489 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6496 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6503 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6510 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6581 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6666 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6785 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6792 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6799 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6806 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6868 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6938 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7186 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7193 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7200 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7298 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7303 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7408 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7415 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7518 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7525 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7532 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7539 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCON equ 0FD0h ;# 
# 7688 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7716 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7721 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7986 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8069 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8139 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8153 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8160 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8231 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8245 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8252 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8259 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8266 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8273 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8280 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8287 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8294 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8301 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8308 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8315 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8322 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8329 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8336 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8343 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8350 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8357 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8364 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8371 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8378 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8385 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8392 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8399 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8406 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8413 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8505 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8582 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PROD equ 0FF3h ;# 
# 8706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8713 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8720 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8729 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8736 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8743 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8750 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8759 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8766 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PC equ 0FF9h ;# 
# 8773 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCL equ 0FF9h ;# 
# 8780 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8787 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8794 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8870 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOS equ 0FFDh ;# 
# 8877 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8884 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8891 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 72 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 149 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 249 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRM equ 0F66h ;# 
# 256 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRML equ 0F66h ;# 
# 334 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 374 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIR equ 0F68h ;# 
# 430 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIE equ 0F69h ;# 
# 486 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 537 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 588 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 648 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 763 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 842 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 950 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1058 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1166 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1274 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1382 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1490 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1598 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1782 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1858 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1934 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2010 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2086 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2162 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2314 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2453 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2563 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2705 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTD equ 0F83h ;# 
# 2826 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTE equ 0F84h ;# 
# 2973 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATA equ 0F89h ;# 
# 3073 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3185 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3263 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3375 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3427 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3432 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRA equ 0F92h ;# 
# 3625 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISB equ 0F93h ;# 
# 3630 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRB equ 0F93h ;# 
# 3847 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISC equ 0F94h ;# 
# 3852 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4001 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4006 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4228 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4325 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4384 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4468 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4552 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4636 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4707 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4778 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4849 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4915 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4922 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4936 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4941 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5151 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5402 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG equ 0FADh ;# 
# 5407 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5414 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5419 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5426 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5431 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5438 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5445 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5566 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5573 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5580 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5587 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5677 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5762 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5767 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5924 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6062 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6067 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6242 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6306 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6313 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6320 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6327 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6332 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6489 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6496 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6503 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6510 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6581 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6666 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6785 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6792 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6799 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6806 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6868 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6938 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7186 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7193 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7200 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7298 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7303 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7408 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7415 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7518 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7525 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7532 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7539 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCON equ 0FD0h ;# 
# 7688 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7716 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7721 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7986 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8069 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8139 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8153 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8160 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8231 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8245 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8252 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8259 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8266 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8273 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8280 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8287 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8294 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8301 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8308 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8315 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8322 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8329 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8336 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8343 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8350 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8357 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8364 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8371 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8378 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8385 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8392 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8399 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8406 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8413 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8505 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8582 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PROD equ 0FF3h ;# 
# 8706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8713 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8720 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8729 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8736 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8743 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8750 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8759 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8766 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PC equ 0FF9h ;# 
# 8773 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCL equ 0FF9h ;# 
# 8780 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8787 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8794 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8870 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOS equ 0FFDh ;# 
# 8877 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8884 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8891 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 72 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 149 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 249 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRM equ 0F66h ;# 
# 256 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRML equ 0F66h ;# 
# 334 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 374 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIR equ 0F68h ;# 
# 430 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIE equ 0F69h ;# 
# 486 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 537 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 588 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 648 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 763 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 842 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 950 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1058 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1166 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1274 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1382 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1490 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1598 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1782 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1858 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1934 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2010 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2086 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2162 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2314 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2453 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2563 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2705 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTD equ 0F83h ;# 
# 2826 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTE equ 0F84h ;# 
# 2973 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATA equ 0F89h ;# 
# 3073 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3185 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3263 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3375 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3427 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3432 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRA equ 0F92h ;# 
# 3625 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISB equ 0F93h ;# 
# 3630 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRB equ 0F93h ;# 
# 3847 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISC equ 0F94h ;# 
# 3852 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4001 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4006 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4228 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4325 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4384 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4468 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4552 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4636 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4707 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4778 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4849 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4915 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4922 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4936 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4941 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5151 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5402 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG equ 0FADh ;# 
# 5407 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5414 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5419 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5426 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5431 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5438 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5445 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5566 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5573 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5580 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5587 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5677 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5762 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5767 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5924 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6062 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6067 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6242 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6306 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6313 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6320 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6327 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6332 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6489 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6496 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6503 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6510 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6581 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6666 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6785 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6792 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6799 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6806 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6868 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6938 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7186 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7193 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7200 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7298 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7303 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7408 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7415 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7518 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7525 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7532 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7539 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCON equ 0FD0h ;# 
# 7688 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7716 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7721 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7986 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8069 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8139 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8153 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8160 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8231 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8245 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8252 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8259 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8266 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8273 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8280 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8287 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8294 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8301 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8308 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8315 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8322 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8329 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8336 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8343 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8350 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8357 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8364 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8371 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8378 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8385 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8392 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8399 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8406 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8413 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8505 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8582 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PROD equ 0FF3h ;# 
# 8706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8713 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8720 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8729 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8736 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8743 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8750 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8759 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8766 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PC equ 0FF9h ;# 
# 8773 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCL equ 0FF9h ;# 
# 8780 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8787 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8794 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8870 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOS equ 0FFDh ;# 
# 8877 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8884 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8891 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 72 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 149 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 249 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRM equ 0F66h ;# 
# 256 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRML equ 0F66h ;# 
# 334 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 374 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIR equ 0F68h ;# 
# 430 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIE equ 0F69h ;# 
# 486 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 537 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 588 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 648 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 763 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 842 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 950 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1058 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1166 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1274 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1382 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1490 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1598 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1782 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1858 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1934 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2010 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2086 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2162 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2314 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2453 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2563 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2705 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTD equ 0F83h ;# 
# 2826 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTE equ 0F84h ;# 
# 2973 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATA equ 0F89h ;# 
# 3073 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3185 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3263 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3375 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3427 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3432 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRA equ 0F92h ;# 
# 3625 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISB equ 0F93h ;# 
# 3630 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRB equ 0F93h ;# 
# 3847 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISC equ 0F94h ;# 
# 3852 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4001 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4006 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4228 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4325 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4384 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4468 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4552 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4636 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4707 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4778 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4849 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4915 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4922 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4936 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4941 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5151 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5402 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG equ 0FADh ;# 
# 5407 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5414 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5419 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5426 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5431 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5438 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5445 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5566 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5573 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5580 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5587 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5677 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5762 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5767 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5924 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6062 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6067 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6242 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6306 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6313 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6320 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6327 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6332 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6489 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6496 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6503 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6510 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6581 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6666 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6785 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6792 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6799 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6806 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6868 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6938 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7186 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7193 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7200 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7298 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7303 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7408 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7415 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7518 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7525 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7532 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7539 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCON equ 0FD0h ;# 
# 7688 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7716 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7721 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7986 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8069 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8139 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8153 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8160 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8231 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8245 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8252 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8259 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8266 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8273 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8280 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8287 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8294 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8301 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8308 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8315 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8322 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8329 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8336 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8343 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8350 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8357 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8364 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8371 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8378 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8385 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8392 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8399 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8406 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8413 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8505 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8582 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PROD equ 0FF3h ;# 
# 8706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8713 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8720 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8729 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8736 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8743 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8750 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8759 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8766 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PC equ 0FF9h ;# 
# 8773 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCL equ 0FF9h ;# 
# 8780 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8787 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8794 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8870 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOS equ 0FFDh ;# 
# 8877 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8884 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8891 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 72 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 149 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 249 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRM equ 0F66h ;# 
# 256 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRML equ 0F66h ;# 
# 334 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 374 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIR equ 0F68h ;# 
# 430 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIE equ 0F69h ;# 
# 486 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 537 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 588 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 648 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 763 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 842 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 950 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1058 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1166 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1274 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1382 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1490 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1598 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1782 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1858 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1934 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2010 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2086 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2162 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2314 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2453 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2563 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2705 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTD equ 0F83h ;# 
# 2826 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTE equ 0F84h ;# 
# 2973 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATA equ 0F89h ;# 
# 3073 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3185 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3263 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3375 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3427 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3432 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRA equ 0F92h ;# 
# 3625 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISB equ 0F93h ;# 
# 3630 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRB equ 0F93h ;# 
# 3847 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISC equ 0F94h ;# 
# 3852 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4001 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4006 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4228 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4325 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4384 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4468 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4552 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4636 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4707 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4778 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4849 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4915 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4922 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4936 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4941 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5151 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5402 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG equ 0FADh ;# 
# 5407 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5414 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5419 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5426 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5431 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5438 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5445 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5566 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5573 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5580 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5587 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5677 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5762 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5767 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5924 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6062 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6067 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6242 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6306 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6313 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6320 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6327 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6332 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6489 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6496 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6503 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6510 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6581 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6666 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6785 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6792 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6799 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6806 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6868 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6938 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7186 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7193 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7200 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7298 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7303 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7408 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7415 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7518 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7525 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7532 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7539 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCON equ 0FD0h ;# 
# 7688 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7716 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7721 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7986 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8069 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8139 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8153 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8160 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8231 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8245 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8252 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8259 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8266 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8273 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8280 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8287 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8294 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8301 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8308 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8315 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8322 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8329 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8336 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8343 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8350 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8357 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8364 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8371 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8378 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8385 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8392 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8399 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8406 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8413 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8505 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8582 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PROD equ 0FF3h ;# 
# 8706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8713 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8720 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8729 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8736 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8743 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8750 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8759 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8766 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PC equ 0FF9h ;# 
# 8773 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCL equ 0FF9h ;# 
# 8780 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8787 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8794 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8870 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOS equ 0FFDh ;# 
# 8877 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8884 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8891 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSU equ 0FFFh ;# 
# 52 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 72 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 149 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 249 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRM equ 0F66h ;# 
# 256 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRML equ 0F66h ;# 
# 334 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 374 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIR equ 0F68h ;# 
# 430 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UIE equ 0F69h ;# 
# 486 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 537 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 588 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 648 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 763 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 842 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 950 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1058 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1166 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1274 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1382 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1490 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1598 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1782 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1858 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1934 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2010 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2086 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2162 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2314 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2453 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2563 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2705 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTD equ 0F83h ;# 
# 2826 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PORTE equ 0F84h ;# 
# 2973 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATA equ 0F89h ;# 
# 3073 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3185 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3263 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3375 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3427 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3432 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRA equ 0F92h ;# 
# 3625 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISB equ 0F93h ;# 
# 3630 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRB equ 0F93h ;# 
# 3847 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISC equ 0F94h ;# 
# 3852 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4001 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4006 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4223 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4228 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4325 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4384 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4468 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4552 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4636 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4707 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4778 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4849 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4915 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4922 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4936 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4941 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5151 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5402 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG equ 0FADh ;# 
# 5407 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5414 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5419 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5426 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5431 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5438 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5445 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5566 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5573 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5580 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5587 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5677 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5762 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5767 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5924 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5929 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6062 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6067 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6242 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6306 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6313 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6320 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6327 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6332 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6489 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6496 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6503 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6510 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6581 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6666 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6785 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6792 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6799 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6806 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6868 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6938 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7186 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7193 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7200 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7298 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7303 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7408 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7415 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7518 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7525 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7532 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7539 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
RCON equ 0FD0h ;# 
# 7688 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7716 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7721 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7986 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8069 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8139 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8146 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8153 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8160 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8231 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8238 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8245 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8252 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8259 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8266 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8273 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8280 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8287 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8294 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8301 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8308 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8315 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8322 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8329 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8336 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8343 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8350 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8357 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8364 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8371 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8378 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8385 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8392 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8399 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8406 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8413 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8505 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8582 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8699 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PROD equ 0FF3h ;# 
# 8706 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8713 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8720 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8729 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8736 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8743 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8750 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8759 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8766 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PC equ 0FF9h ;# 
# 8773 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCL equ 0FF9h ;# 
# 8780 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8787 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8794 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8870 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOS equ 0FFDh ;# 
# 8877 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8884 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8891 "/opt/microchip/mplabx/v6.25/packs/Microchip/PIC18Fxxxx_DFP/1.7.171/xc8/pic/include/proc/pic18f4550.h"
TOSU equ 0FFFh ;# 
;; Function __out_buffer is unused but had its address taken
global __out_buffer
__out_buffer equ 0
;; Function __out_null is unused but had its address taken
global __out_null
__out_null equ 0
;; Function __out_char is unused but had its address taken
global __out_char
__out_char equ 0
;; Function __out_fct is unused but had its address taken
global __out_fct
__out_fct equ 0
	debug_source C
	FNCALL	_main,_App_Init
	FNCALL	_main,_App_Task
	FNCALL	_main,_Button_Task
	FNCALL	_main,_Uart_Init
	FNCALL	_main,_Uart_Start
	FNCALL	_main,_clock_init
	FNCALL	_main,_clock_update_1s
	FNCALL	_main,_display_init
	FNCALL	_main,_display_push
	FNCALL	_main,_display_set_colon_blink
	FNCALL	_main,_display_task
	FNCALL	_main,_get_time
	FNCALL	_main,_isr_init
	FNCALL	_main,_system_tick_is_1ms
	FNCALL	_main,_system_tick_is_1s
	FNCALL	_main,_system_tick_task
	FNCALL	_main,_timer0_init
	FNCALL	_main,_timer0_start
	FNCALL	_timer0_init,_timer0_reload
	FNCALL	_display_task,_level_write
	FNCALL	_display_push,___lwdiv
	FNCALL	_display_push,___lwmod
	FNCALL	_display_init,_Gpio_Init
	FNCALL	_display_init,_level_write
	FNCALL	_level_write,_Gpio_Write
	FNCALL	_clock_init,_ClockStorage_Init
	FNCALL	_clock_init,___awmod
	FNCALL	_ClockStorage_Init,_ClockStorage_SaveTime
	FNCALL	_ClockStorage_Init,_EEPROM_ReadByte
	FNCALL	_ClockStorage_Init,_EEPROM_WriteByte
	FNCALL	_Uart_Start,_Buffer_Init
	FNCALL	_Uart_Start,_Gpio_Init
	FNCALL	_Button_Task,_button_update
	FNCALL	_button_update,_Gpio_Read
	FNCALL	_App_Task,_ClockStorage_SaveTime
	FNCALL	_App_Task,_button_get_event
	FNCALL	_ClockStorage_SaveTime,_EEPROM_WriteByte
	FNCALL	_App_Init,_button_init
	FNCALL	_button_init,_Gpio_Init
	FNROOT	_main
	FNCALL	_ISR,_Uart_InterruptHandler
	FNCALL	_ISR,_system_tick_1ms
	FNCALL	_Uart_InterruptHandler,_Buffer_Add
	FNCALL	_Uart_InterruptHandler,_Buffer_Get
	FNCALL	intlevel2,_ISR
	global	intlevel2
	FNROOT	intlevel2
	global	_colon_rate
	global	_button_cfg
	global	_uart_config
	global	_control
	global	_clk_display
	global	_button_dcr
	global	_button_inc
	global	_tx
	global	_rx
	global	_colon_control
	global	_colon
	global	_data
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"src/ss_display.c"
	line	17

;initializer for _colon_rate
	dw	(01h)&0ffffh
	file	"app/app.c"
	line	8

;initializer for _button_cfg
		db	low(3987)
	db	high(3987)

		db	low(3978)
	db	high(3978)

		db	low(3969)
	db	high(3969)

	db	low(0)
	file	"app/main.c"
	line	137

;initializer for _uart_config
		db	low(_rx)

		db	low(_tx)

	dw	(02580h) & 0xffff
	dw	highword(02580h)
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	line	65

;initializer for _control
		db	low(3987)
	db	high(3987)

		db	low(3978)
	db	high(3978)

		db	low(3969)
	db	high(3969)

	db	low(04h)
		db	low(3987)
	db	high(3987)

		db	low(3978)
	db	high(3978)

		db	low(3969)
	db	high(3969)

	db	low(05h)
		db	low(3987)
	db	high(3987)

		db	low(3978)
	db	high(3978)

		db	low(3969)
	db	high(3969)

	db	low(06h)
		db	low(3987)
	db	high(3987)

		db	low(3978)
	db	high(3978)

		db	low(3969)
	db	high(3969)

	db	low(07h)
	line	110

;initializer for _clk_display
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(04h)
		db	low(_data)
	db	high(_data)

		db	low(_control)

		db	low(_colon)

		db	low(_colon_control)

	file	"app/app.c"
	line	22

;initializer for _button_dcr
		db	low(3987)
	db	high(3987)

		db	low(3978)
	db	high(3978)

		db	low(3969)
	db	high(3969)

	db	low(02h)
	line	15

;initializer for _button_inc
		db	low(3987)
	db	high(3987)

		db	low(3978)
	db	high(3978)

		db	low(3969)
	db	high(3969)

	db	low(01h)
	file	"app/main.c"
	line	130

;initializer for _tx
		db	low(3988)
	db	high(3988)

		db	low(3979)
	db	high(3979)

		db	low(3970)
	db	high(3970)

	db	low(06h)
	line	123

;initializer for _rx
		db	low(3988)
	db	high(3988)

		db	low(3979)
	db	high(3979)

		db	low(3970)
	db	high(3970)

	db	low(07h)
	line	102

;initializer for _colon_control
		db	low(3990)
	db	high(3990)

		db	low(3981)
	db	high(3981)

		db	low(3972)
	db	high(3972)

	db	low(0)
	line	95

;initializer for _colon
		db	low(3989)
	db	high(3989)

		db	low(3980)
	db	high(3980)

		db	low(3971)
	db	high(3971)

	db	low(07h)
psect	idataBANK1,class=CODE,space=0,delta=1,noexec
global __pidataBANK1
__pidataBANK1:
	line	14

;initializer for _data
		db	low(3989)
	db	high(3989)

		db	low(3980)
	db	high(3980)

		db	low(3971)
	db	high(3971)

	db	low(0)
		db	low(3989)
	db	high(3989)

		db	low(3980)
	db	high(3980)

		db	low(3971)
	db	high(3971)

	db	low(01h)
		db	low(3989)
	db	high(3989)

		db	low(3980)
	db	high(3980)

		db	low(3971)
	db	high(3971)

	db	low(02h)
		db	low(3989)
	db	high(3989)

		db	low(3980)
	db	high(3980)

		db	low(3971)
	db	high(3971)

	db	low(03h)
		db	low(3989)
	db	high(3989)

		db	low(3980)
	db	high(3980)

		db	low(3971)
	db	high(3971)

	db	low(04h)
		db	low(3989)
	db	high(3989)

		db	low(3980)
	db	high(3980)

		db	low(3971)
	db	high(3971)

	db	low(05h)
		db	low(3989)
	db	high(3989)

		db	low(3980)
	db	high(3980)

		db	low(3971)
	db	high(3971)

	db	low(06h)
	global	_numbers
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"src/ss_display.c"
	line	19
_numbers:
	db	low(03Fh)
	db	low(06h)
	db	low(05Bh)
	db	low(04Fh)
	db	low(066h)
	db	low(06Dh)
	db	low(07Dh)
	db	low(07h)
	db	low(07Fh)
	db	low(067h)
	global __end_of_numbers
__end_of_numbers:
	global	_numbers
	global	fctprintf@F291
	global	_buffer
	global	display_task@ms
	global	_data@ss_display$F1115
	global	_tick_1ms
	global	_digit_flag
	global	_digit_number
	global	_colon_pin
	global	_colon_control@ss_display$F1117
	global	_control@ss_display$F1116
	global	_control_polarity
	global	_segment_polarity
	global	_colon_status
	global	_flag_1ms
	global	_one_second_flag
	global	_pending_ticks
	global	_btn_dcr
	global	_btn_inc
	global	_btn_cfg
	global	_sys_clock
	global	_app
	global	_rx_buffer
	global	_tx_buffer
	global	_EECON2
_EECON2	set	0xFA7
	global	_EECON1bits
_EECON1bits	set	0xFA6
	global	_EEDATA
_EEDATA	set	0xFA8
	global	_EEADR
_EEADR	set	0xFA9
	global	_RCONbits
_RCONbits	set	0xFD0
	global	_TMR0L
_TMR0L	set	0xFD6
	global	_TMR0H
_TMR0H	set	0xFD7
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_T0CONbits
_T0CONbits	set	0xFD5
	global	_T0CON
_T0CON	set	0xFD5
	global	_TXREG
_TXREG	set	0xFAD
	global	_RCREG
_RCREG	set	0xFAE
	global	_PIE1bits
_PIE1bits	set	0xF9D
	global	_PIR1bits
_PIR1bits	set	0xF9E
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_SPBRGH
_SPBRGH	set	0xFB0
	global	_BAUDCONbits
_BAUDCONbits	set	0xFB8
	global	_RCSTAbits
_RCSTAbits	set	0xFAB
	global	_TXSTAbits
_TXSTAbits	set	0xFAC
	global	_PORTC
_PORTC	set	0xF82
	global	_LATC
_LATC	set	0xF8B
	global	_TRISC
_TRISC	set	0xF94
	global	_PORTE
_PORTE	set	0xF84
	global	_LATE
_LATE	set	0xF8D
	global	_TRISE
_TRISE	set	0xF96
	global	_PORTB
_PORTB	set	0xF81
	global	_LATB
_LATB	set	0xF8A
	global	_TRISB
_TRISB	set	0xF93
	global	_PORTD
_PORTD	set	0xF83
	global	_LATD
_LATD	set	0xF8C
	global	_TRISD
_TRISD	set	0xF95
	
STR_1:
	db	37
	db	48	;'0'
	db	50	;'2'
	db	117	;'u'
	db	58	;':'
	db	37
	db	48	;'0'
	db	50	;'2'
	db	117	;'u'
	db	58	;':'
	db	37
	db	48	;'0'
	db	50	;'2'
	db	117	;'u'
	db	13
	db	10
	db	0
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config PLLDIV = "1"
	config CPUDIV = "OSC1_PLL2"
	config USBDIV = "1"
	config FOSC = "HS"
	config FCMEN = "OFF"
	config IESO = "OFF"
	config PWRT = "ON"
	config BOR = "ON"
	config BORV = "3"
	config WDT = "OFF"
	config PBADEN = "OFF"
	config LPT1OSC = "OFF"
	config MCLRE = "ON"
	config STVREN = "ON"
	config LVP = "OFF"
	config XINST = "OFF"
	file	"build/bin/clock.s"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
fctprintf@F291:
       ds      4
_buffer:
       ds      4
display_task@ms:
       ds      2
_data@ss_display$F1115:
       ds      2
_tick_1ms:
       ds      2
_digit_flag:
       ds      1
_digit_number:
       ds      1
_colon_pin:
       ds      1
_colon_control@ss_display$F1117:
       ds      1
_control@ss_display$F1116:
       ds      1
_control_polarity:
       ds      1
_segment_polarity:
       ds      1
_colon_status:
       ds      1
_flag_1ms:
       ds      1
_one_second_flag:
       ds      1
_pending_ticks:
       ds      1
	global	_btn_dcr
_btn_dcr:
       ds      7
	global	_btn_inc
_btn_inc:
       ds      7
	global	_btn_cfg
_btn_cfg:
       ds      7
	global	_sys_clock
_sys_clock:
       ds      3
	global	_app
_app:
       ds      2
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"src/ss_display.c"
	line	17
_colon_rate:
       ds      2
psect	dataCOMRAM
	file	"app/app.c"
	line	8
	global	_button_cfg
_button_cfg:
       ds      7
psect	dataCOMRAM
	file	"app/main.c"
	line	137
	global	_uart_config
_uart_config:
       ds      6
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
_rx_buffer:
       ds      22
_tx_buffer:
       ds      22
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"app/main.c"
	line	65
	global	_control
_control:
       ds      28
psect	dataBANK0
	file	"app/main.c"
	line	110
	global	_clk_display
_clk_display:
       ds      9
psect	dataBANK0
	file	"app/app.c"
	line	22
	global	_button_dcr
_button_dcr:
       ds      7
psect	dataBANK0
	file	"app/app.c"
	line	15
	global	_button_inc
_button_inc:
       ds      7
psect	dataBANK0
	file	"app/main.c"
	line	130
_tx:
       ds      7
psect	dataBANK0
	file	"app/main.c"
	line	123
_rx:
       ds      7
psect	dataBANK0
	file	"app/main.c"
	line	102
	global	_colon_control
_colon_control:
       ds      7
psect	dataBANK0
	file	"app/main.c"
	line	95
	global	_colon
_colon:
       ds      7
psect	dataBANK1,class=BANK1,space=1,noexec,lowdata
global __pdataBANK1
__pdataBANK1:
	file	"app/main.c"
	line	14
	global	_data
_data:
       ds      49
	file	"build/bin/clock.s"
	line	#
psect	cinit
; Initialize objects allocated to BANK1 (49 bytes)
	global __pidataBANK1
	; load TBLPTR registers with __pidataBANK1
	movlw	low (__pidataBANK1)
	movwf	tblptrl
	movlw	high(__pidataBANK1)
	movwf	tblptrh
	movlw	low highword(__pidataBANK1)
	movwf	tblptru
	lfsr	0,__pdataBANK1
	lfsr	1,49
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to BANK0 (79 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,79
	copy_data1:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data1
; Initialize objects allocated to COMRAM (15 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,15
	copy_data2:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data2
	line	#
; Clear objects allocated to BANK0 (44 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	44
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (51 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	51
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec,lowdata
global __pcstackBANK0
__pcstackBANK0:
?_App_Task:	; 1 bytes @ 0x0
?_button_update:	; 1 bytes @ 0x0
?_ClockStorage_Init:	; 1 bytes @ 0x0
	global	App_Task@app
App_Task@app:	; 1 bytes @ 0x0
	global	button_update@btn
button_update@btn:	; 1 bytes @ 0x0
	global	ClockStorage_Init@h
ClockStorage_Init@h:	; 1 bytes @ 0x0
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
??_Gpio_Init:	; 1 bytes @ 0x0
??_Gpio_Write:	; 1 bytes @ 0x0
	ds   1
	global	ClockStorage_Init@m
ClockStorage_Init@m:	; 1 bytes @ 0x1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
??_App_Task:	; 1 bytes @ 0x1
??_button_update:	; 1 bytes @ 0x1
	ds   1
	global	ClockStorage_Init@s
ClockStorage_Init@s:	; 1 bytes @ 0x2
	ds   1
?_clock_init:	; 1 bytes @ 0x3
?_display_push:	; 1 bytes @ 0x3
	global	clock_init@clk
clock_init@clk:	; 1 bytes @ 0x3
	global	button_update@state
button_update@state:	; 1 bytes @ 0x3
	global	display_push@buffer_clk
display_push@buffer_clk:	; 2 bytes @ 0x3
	ds   1
	global	clock_init@h
clock_init@h:	; 1 bytes @ 0x4
	ds   1
?_button_init:	; 1 bytes @ 0x5
?_level_write:	; 1 bytes @ 0x5
	global	clock_init@m
clock_init@m:	; 1 bytes @ 0x5
	global	button_init@btn
button_init@btn:	; 1 bytes @ 0x5
	global	display_push@dig
display_push@dig:	; 1 bytes @ 0x5
	global	level_write@gpio
level_write@gpio:	; 2 bytes @ 0x5
	ds   1
	global	clock_init@s
clock_init@s:	; 1 bytes @ 0x6
	global	button_init@gpio
button_init@gpio:	; 1 bytes @ 0x6
	global	display_push@i
display_push@i:	; 1 bytes @ 0x6
	ds   1
	global	button_init@polarity
button_init@polarity:	; 1 bytes @ 0x7
	global	level_write@level
level_write@level:	; 1 bytes @ 0x7
	ds   1
	global	button_init@debounce_ticks
button_init@debounce_ticks:	; 1 bytes @ 0x8
	global	level_write@pin_type
level_write@pin_type:	; 1 bytes @ 0x8
	ds   1
?_App_Init:	; 1 bytes @ 0x9
?_display_init:	; 1 bytes @ 0x9
	global	App_Init@app
App_Init@app:	; 1 bytes @ 0x9
	global	display_init@display
display_init@display:	; 1 bytes @ 0x9
??_display_task:	; 1 bytes @ 0x9
	ds   1
	global	App_Init@clk
App_Init@clk:	; 1 bytes @ 0xA
	global	display_init@i_1158
display_init@i_1158:	; 1 bytes @ 0xA
	ds   1
	global	display_init@i
display_init@i:	; 1 bytes @ 0xB
	ds   3
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_timer0_init:	; 1 bytes @ 0x0
?_timer0_start:	; 1 bytes @ 0x0
?_isr_init:	; 1 bytes @ 0x0
?_system_tick_task:	; 1 bytes @ 0x0
?_system_tick_is_1ms:	; 1 bytes @ 0x0
?_Button_Task:	; 1 bytes @ 0x0
?_display_task:	; 1 bytes @ 0x0
?_system_tick_is_1s:	; 1 bytes @ 0x0
?_timer0_reload:	; 1 bytes @ 0x0
?_system_tick_1ms:	; 1 bytes @ 0x0
?_Buffer_Add:	; 1 bytes @ 0x0
?_Buffer_Get:	; 1 bytes @ 0x0
?_Uart_InterruptHandler:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
?_EEPROM_ReadByte:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	Buffer_Add@buffer
Buffer_Add@buffer:	; 1 bytes @ 0x0
	global	Buffer_Get@buffer
Buffer_Get@buffer:	; 1 bytes @ 0x0
??_system_tick_1ms:	; 1 bytes @ 0x0
	ds   1
	global	Buffer_Add@element
Buffer_Add@element:	; 1 bytes @ 0x1
	global	Buffer_Get@element
Buffer_Get@element:	; 1 bytes @ 0x1
	ds   1
??_Buffer_Add:	; 1 bytes @ 0x2
??_Buffer_Get:	; 1 bytes @ 0x2
	ds   1
	global	Buffer_Add@next_head
Buffer_Add@next_head:	; 1 bytes @ 0x3
	ds   1
	global	Uart_InterruptHandler@c
Uart_InterruptHandler@c:	; 1 bytes @ 0x4
??_Uart_InterruptHandler:	; 1 bytes @ 0x4
	ds   1
	global	Uart_InterruptHandler@c_700
Uart_InterruptHandler@c_700:	; 1 bytes @ 0x5
	ds   1
??_ISR:	; 1 bytes @ 0x6
	ds   5
?_Uart_Init:	; 1 bytes @ 0xB
?_clock_update_1s:	; 1 bytes @ 0xB
?_display_set_colon_blink:	; 1 bytes @ 0xB
?_button_get_event:	; 1 bytes @ 0xB
?_Gpio_Init:	; 1 bytes @ 0xB
?_Gpio_Write:	; 1 bytes @ 0xB
?_Gpio_Read:	; 1 bytes @ 0xB
?_Buffer_Init:	; 1 bytes @ 0xB
?_EEPROM_WriteByte:	; 1 bytes @ 0xB
	global	?_get_time
?_get_time:	; 2 bytes @ 0xB
	global	?___awmod
?___awmod:	; 2 bytes @ 0xB
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0xB
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0xB
	global	Gpio_Read@gpio
Gpio_Read@gpio:	; 1 bytes @ 0xB
	global	Buffer_Init@buffer
Buffer_Init@buffer:	; 1 bytes @ 0xB
	global	Uart_Init@uart
Uart_Init@uart:	; 1 bytes @ 0xB
	global	clock_update_1s@clk
clock_update_1s@clk:	; 1 bytes @ 0xB
	global	get_time@clk
get_time@clk:	; 1 bytes @ 0xB
	global	button_get_event@btn
button_get_event@btn:	; 1 bytes @ 0xB
	global	EEPROM_WriteByte@data
EEPROM_WriteByte@data:	; 1 bytes @ 0xB
	global	EEPROM_ReadByte@address
EEPROM_ReadByte@address:	; 1 bytes @ 0xB
	global	Gpio_Init@gpio
Gpio_Init@gpio:	; 2 bytes @ 0xB
	global	Gpio_Write@gpio
Gpio_Write@gpio:	; 2 bytes @ 0xB
	global	display_set_colon_blink@blink_rate
display_set_colon_blink@blink_rate:	; 2 bytes @ 0xB
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0xB
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0xB
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xB
??_timer0_init:	; 1 bytes @ 0xB
??_timer0_start:	; 1 bytes @ 0xB
??_isr_init:	; 1 bytes @ 0xB
??_system_tick_task:	; 1 bytes @ 0xB
??_system_tick_is_1ms:	; 1 bytes @ 0xB
??_system_tick_is_1s:	; 1 bytes @ 0xB
??_timer0_reload:	; 1 bytes @ 0xB
??_EEPROM_ReadByte:	; 1 bytes @ 0xB
	ds   1
	global	button_get_event@event
button_get_event@event:	; 1 bytes @ 0xC
	global	EEPROM_WriteByte@address
EEPROM_WriteByte@address:	; 1 bytes @ 0xC
??_Uart_Init:	; 1 bytes @ 0xC
??_clock_update_1s:	; 1 bytes @ 0xC
??_button_get_event:	; 1 bytes @ 0xC
??_Gpio_Read:	; 1 bytes @ 0xC
??_Buffer_Init:	; 1 bytes @ 0xC
??_EEPROM_WriteByte:	; 1 bytes @ 0xC
	ds   1
	global	Gpio_Init@dir
Gpio_Init@dir:	; 1 bytes @ 0xD
	global	Gpio_Write@level
Gpio_Write@level:	; 1 bytes @ 0xD
	global	EEPROM_WriteByte@gie_state
EEPROM_WriteByte@gie_state:	; 1 bytes @ 0xD
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0xD
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0xD
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xD
??_get_time:	; 1 bytes @ 0xD
??_display_set_colon_blink:	; 1 bytes @ 0xD
	ds   1
?_Uart_Start:	; 1 bytes @ 0xE
?_ClockStorage_SaveTime:	; 1 bytes @ 0xE
	global	Uart_Start@uart
Uart_Start@uart:	; 1 bytes @ 0xE
	global	level_write@gpio_level
level_write@gpio_level:	; 1 bytes @ 0xE
	global	ClockStorage_SaveTime@minutes
ClockStorage_SaveTime@minutes:	; 1 bytes @ 0xE
??_button_init:	; 1 bytes @ 0xE
??_level_write:	; 1 bytes @ 0xE
	ds   1
	global	display_task@i
display_task@i:	; 1 bytes @ 0xF
	global	ClockStorage_SaveTime@seconds
ClockStorage_SaveTime@seconds:	; 1 bytes @ 0xF
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0xF
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xF
??_App_Init:	; 1 bytes @ 0xF
??_Uart_Start:	; 1 bytes @ 0xF
??_display_init:	; 1 bytes @ 0xF
??___awmod:	; 1 bytes @ 0xF
??___lwdiv:	; 1 bytes @ 0xF
??___lwmod:	; 1 bytes @ 0xF
	ds   1
	global	display_task@i_1162
display_task@i_1162:	; 1 bytes @ 0x10
	global	ClockStorage_SaveTime@hours
ClockStorage_SaveTime@hours:	; 1 bytes @ 0x10
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x10
??_ClockStorage_SaveTime:	; 1 bytes @ 0x10
	ds   1
??_clock_init:	; 1 bytes @ 0x11
??_Button_Task:	; 1 bytes @ 0x11
??_display_push:	; 1 bytes @ 0x11
??_ClockStorage_Init:	; 1 bytes @ 0x11
??_main:	; 1 bytes @ 0x11
;!
;!Data Sizes:
;!    Strings     17
;!    Constant    10
;!    Data        143
;!    BSS         95
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     17      83
;!    BANK0           160     14     137
;!    BANK1           256      0      49
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    app$clock	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(COMRAM[3]), 
;!
;!    App_Init@app	PTR struct . size(1) Largest target is 3
;!		 -> app(COMRAM[2]), 
;!
;!    App_Init@app$clock	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(COMRAM[3]), 
;!
;!    App_Init@clk	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(COMRAM[3]), 
;!
;!    App_Task@app	PTR struct . size(1) Largest target is 3
;!		 -> app(COMRAM[2]), 
;!
;!    App_Task@app$clock	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(COMRAM[3]), 
;!
;!    btn_cfg$gpio	PTR struct . size(1) Largest target is 7
;!		 -> button_cfg(COMRAM[7]), button_dcr(BANK0[7]), button_inc(BANK0[7]), 
;!
;!    btn_cfg$gpio$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    btn_cfg$gpio$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    btn_cfg$gpio$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    btn_dcr$gpio	PTR struct . size(1) Largest target is 7
;!		 -> button_cfg(COMRAM[7]), button_dcr(BANK0[7]), button_inc(BANK0[7]), 
;!
;!    btn_dcr$gpio$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    btn_dcr$gpio$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    btn_dcr$gpio$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    btn_inc$gpio	PTR struct . size(1) Largest target is 7
;!		 -> button_cfg(COMRAM[7]), button_dcr(BANK0[7]), button_inc(BANK0[7]), 
;!
;!    btn_inc$gpio$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    btn_inc$gpio$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    btn_inc$gpio$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    Buffer_Add@buffer	PTR volatile struct . size(1) Largest target is 22
;!		 -> rx_buffer(BANK0[22]), tx_buffer(BANK0[22]), 
;!
;!    Buffer_Get@buffer	PTR volatile struct . size(1) Largest target is 22
;!		 -> rx_buffer(BANK0[22]), tx_buffer(BANK0[22]), 
;!
;!    Buffer_Get@element	PTR unsigned char  size(1) Largest target is 1
;!		 -> Uart_InterruptHandler@c_700(COMRAM[1]), 
;!
;!    Buffer_Init@buffer	PTR volatile struct . size(1) Largest target is 22
;!		 -> rx_buffer(BANK0[22]), tx_buffer(BANK0[22]), 
;!
;!    button_cfg$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    button_cfg$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    button_cfg$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    button_dcr$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    button_dcr$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    button_dcr$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    button_get_event@btn	PTR struct . size(1) Largest target is 8
;!		 -> btn_cfg(COMRAM[7]), btn_dcr(COMRAM[7]), btn_inc(COMRAM[7]), 
;!
;!    button_get_event@btn$gpio	PTR struct . size(1) Largest target is 7
;!		 -> button_cfg(COMRAM[7]), button_dcr(BANK0[7]), button_inc(BANK0[7]), 
;!
;!    button_inc$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    button_inc$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    button_inc$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    button_init@btn	PTR struct . size(1) Largest target is 8
;!		 -> btn_cfg(COMRAM[7]), btn_dcr(COMRAM[7]), btn_inc(COMRAM[7]), 
;!
;!    button_init@btn$gpio	PTR struct . size(1) Largest target is 7
;!		 -> button_cfg(COMRAM[7]), button_dcr(BANK0[7]), button_inc(BANK0[7]), 
;!
;!    button_init@btn$gpio$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    button_init@btn$gpio$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    button_init@btn$gpio$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    button_init@gpio	PTR struct . size(1) Largest target is 7
;!		 -> button_cfg(COMRAM[7]), button_dcr(BANK0[7]), button_inc(BANK0[7]), 
;!
;!    button_update@btn	PTR struct . size(1) Largest target is 8
;!		 -> btn_cfg(COMRAM[7]), btn_dcr(COMRAM[7]), btn_inc(COMRAM[7]), 
;!
;!    button_update@btn$gpio	PTR struct . size(1) Largest target is 7
;!		 -> button_cfg(COMRAM[7]), button_dcr(BANK0[7]), button_inc(BANK0[7]), 
;!
;!    clk_display$colon_control_pin	PTR struct . size(1) Largest target is 7
;!		 -> colon_control(BANK0[7]), 
;!
;!    clk_display$colon_pin	PTR struct . size(1) Largest target is 7
;!		 -> colon(BANK0[7]), 
;!
;!    clk_display$control	PTR struct . size(1) Largest target is 28
;!		 -> control(BANK0[28]), 
;!
;!    clk_display$data	PTR struct . size(2) Largest target is 49
;!		 -> data(BANK1[49]), 
;!
;!    clock_init@clk	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(COMRAM[3]), 
;!
;!    clock_update_1s@clk	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(COMRAM[3]), 
;!
;!    ClockStorage_Init@h	PTR unsigned char  size(1) Largest target is 3
;!		 -> sys_clock(COMRAM[3]), 
;!
;!    ClockStorage_Init@m	PTR unsigned char  size(1) Largest target is 3
;!		 -> sys_clock(COMRAM[3]), 
;!
;!    ClockStorage_Init@s	PTR unsigned char  size(1) Largest target is 3
;!		 -> sys_clock(COMRAM[3]), 
;!
;!    colon$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    colon$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    colon$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    colon_control$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    colon_control$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    colon_control$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    colon_control@ss_display$F1117	PTR struct . size(1) Largest target is 7
;!		 -> colon_control(BANK0[7]), NULL(NULL[0]), 
;!
;!    colon_control@ss_display$F1117$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    colon_control@ss_display$F1117$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    colon_control@ss_display$F1117$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    colon_pin	PTR struct . size(1) Largest target is 7
;!		 -> colon(BANK0[7]), NULL(NULL[0]), 
;!
;!    colon_pin$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    colon_pin$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    colon_pin$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    control$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    control$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    control$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    control@ss_display$F1116	PTR struct . size(1) Largest target is 28
;!		 -> control(BANK0[28]), NULL(NULL[0]), 
;!
;!    control@ss_display$F1116$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    control@ss_display$F1116$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    control@ss_display$F1116$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    data$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    data$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    data$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    data@ss_display$F1115	PTR struct . size(2) Largest target is 49
;!		 -> data(BANK1[49]), NULL(NULL[0]), 
;!
;!    data@ss_display$F1115$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    data@ss_display$F1115$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    data@ss_display$F1115$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    display_init@display	PTR struct . size(1) Largest target is 12
;!		 -> clk_display(BANK0[9]), 
;!
;!    display_init@display$colon_control_pin	PTR struct . size(1) Largest target is 7
;!		 -> colon_control(BANK0[7]), 
;!
;!    display_init@display$colon_pin	PTR struct . size(1) Largest target is 7
;!		 -> colon(BANK0[7]), 
;!
;!    display_init@display$control	PTR struct . size(1) Largest target is 28
;!		 -> control(BANK0[28]), 
;!
;!    display_init@display$data	PTR struct . size(2) Largest target is 49
;!		 -> data(BANK1[49]), 
;!
;!    F291$arg	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    F291$fct	PTR FTN(unsigned char ,PTR void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    get_time@clk	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(COMRAM[3]), 
;!
;!    Gpio_Init@gpio	PTR struct . size(2) Largest target is 49
;!		 -> button_cfg(COMRAM[7]), button_dcr(BANK0[7]), button_inc(BANK0[7]), colon(BANK0[7]), 
;!		 -> colon_control(BANK0[7]), control(BANK0[28]), data(BANK1[49]), rx(BANK0[7]), 
;!		 -> tx(BANK0[7]), NULL(NULL[0]), 
;!
;!    Gpio_Init@gpio$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    Gpio_Init@gpio$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    Gpio_Init@gpio$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    Gpio_Read@gpio	PTR struct . size(1) Largest target is 7
;!		 -> button_cfg(COMRAM[7]), button_dcr(BANK0[7]), button_inc(BANK0[7]), 
;!
;!    Gpio_Read@gpio$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    Gpio_Read@gpio$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    Gpio_Read@gpio$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    Gpio_Toggle@gpio$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    Gpio_Toggle@gpio$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    Gpio_Toggle@gpio$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    Gpio_Write@gpio	PTR struct . size(2) Largest target is 49
;!		 -> colon(BANK0[7]), colon_control(BANK0[7]), control(BANK0[28]), data(BANK1[49]), 
;!		 -> NULL(NULL[0]), 
;!
;!    Gpio_Write@gpio$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    Gpio_Write@gpio$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    Gpio_Write@gpio$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    level_write@gpio	PTR struct . size(2) Largest target is 49
;!		 -> colon(BANK0[7]), colon_control(BANK0[7]), control(BANK0[28]), data(BANK1[49]), 
;!		 -> NULL(NULL[0]), 
;!
;!    NULL$1	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    out$1	PTR void  size(2) Largest target is 2047
;!		 -> printf_@buffer(COMRAM[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    out$1	PTR void  size(2) Largest target is 2047
;!		 -> printf_@buffer(COMRAM[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    out$1	PTR void  size(2) Largest target is 2047
;!		 -> printf_@buffer(COMRAM[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    out$1	PTR void  size(2) Largest target is 2047
;!		 -> printf_@buffer(COMRAM[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    _out_fct@buffer$arg	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    _out_fct@buffer$fct	PTR FTN(unsigned char ,PTR void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    out_fct_wrap$arg	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    out_fct_wrap$fct	PTR FTN(unsigned char ,PTR void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    printf_@buffer$arg	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    printf_@buffer$fct	PTR FTN(unsigned char ,PTR void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    rx$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    rx$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    rx$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    S1256$0$1	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    S1256$arg	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    S1256$fct	PTR FTN(unsigned char ,PTR void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S233$gpio	PTR struct . size(1) Largest target is 7
;!		 -> button_cfg(COMRAM[7]), button_dcr(BANK0[7]), button_inc(BANK0[7]), 
;!
;!    S24$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    S24$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    S24$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    S44$colon_control_pin	PTR struct . size(1) Largest target is 7
;!		 -> colon_control(BANK0[7]), 
;!
;!    S44$colon_pin	PTR struct . size(1) Largest target is 7
;!		 -> colon(BANK0[7]), 
;!
;!    S44$control	PTR struct . size(1) Largest target is 28
;!		 -> control(BANK0[28]), 
;!
;!    S44$data	PTR struct . size(2) Largest target is 49
;!		 -> data(BANK1[49]), 
;!
;!    S56$rx	PTR struct . size(1) Largest target is 7
;!		 -> rx(BANK0[7]), 
;!
;!    S56$tx	PTR struct . size(1) Largest target is 7
;!		 -> tx(BANK0[7]), 
;!
;!    S68$clock	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(COMRAM[3]), 
;!
;!    tx$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    tx$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    tx$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    uart_config$rx	PTR struct . size(1) Largest target is 7
;!		 -> rx(BANK0[7]), 
;!
;!    uart_config$tx	PTR struct . size(1) Largest target is 7
;!		 -> tx(BANK0[7]), 
;!
;!    Uart_Init@uart	PTR const struct . size(1) Largest target is 8
;!		 -> uart_config(COMRAM[6]), 
;!
;!    Uart_Init@uart$rx	PTR struct . size(1) Largest target is 7
;!		 -> rx(BANK0[7]), 
;!
;!    Uart_Init@uart$tx	PTR struct . size(1) Largest target is 7
;!		 -> tx(BANK0[7]), 
;!
;!    Uart_Start@uart	PTR const struct . size(1) Largest target is 8
;!		 -> uart_config(COMRAM[6]), 
;!
;!    Uart_Start@uart$rx	PTR struct . size(1) Largest target is 7
;!		 -> rx(BANK0[7]), 
;!
;!    Uart_Start@uart$tx	PTR struct . size(1) Largest target is 7
;!		 -> tx(BANK0[7]), 
;!
;!    vprintf_@buffer$arg	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    vprintf_@buffer$fct	PTR FTN(unsigned char ,PTR void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_display_init
;!    _main->_display_task
;!    _main->_get_time
;!    _display_task->_level_write
;!    _display_push->_get_time
;!    _display_init->_level_write
;!    _level_write->_Gpio_Write
;!    _clock_init->___awmod
;!    _ClockStorage_Init->_ClockStorage_SaveTime
;!    _Uart_Start->_Gpio_Init
;!    _button_update->_Gpio_Read
;!    _App_Task->_ClockStorage_SaveTime
;!    _ClockStorage_SaveTime->_EEPROM_WriteByte
;!    _App_Init->_button_init
;!    _button_init->_Gpio_Init
;!
;!Critical Paths under _ISR in COMRAM
;!
;!    _ISR->_Uart_InterruptHandler
;!    _Uart_InterruptHandler->_Buffer_Add
;!    _Uart_InterruptHandler->_Buffer_Get
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_display_task
;!    _display_task->_level_write
;!    _display_push->___lwdiv
;!    _display_init->_level_write
;!    _level_write->_Gpio_Write
;!    _clock_init->_ClockStorage_Init
;!    _Uart_Start->_Gpio_Init
;!    _Button_Task->_button_update
;!    _App_Init->_button_init
;!    _button_init->_Gpio_Init
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK7
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 3     3      0    8583
;!                           _App_Init
;!                           _App_Task
;!                        _Button_Task
;!                          _Uart_Init
;!                         _Uart_Start
;!                         _clock_init
;!                    _clock_update_1s
;!                       _display_init
;!                       _display_push
;!            _display_set_colon_blink
;!                       _display_task
;!                           _get_time
;!                           _isr_init
;!                 _system_tick_is_1ms
;!                  _system_tick_is_1s
;!                   _system_tick_task
;!                        _timer0_init
;!                       _timer0_start
;! ---------------------------------------------------------------------------------
;! (1) _timer0_start                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _timer0_init                                          0     0      0       0
;!                      _timer0_reload
;! ---------------------------------------------------------------------------------
;! (2) _timer0_reload                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _system_tick_task                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _system_tick_is_1s                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _system_tick_is_1ms                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _isr_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _get_time                                             6     4      2      47
;!                                             11 COMRAM     6     4      2
;! ---------------------------------------------------------------------------------
;! (1) _display_task                                         7     7      0    1194
;!                                             15 COMRAM     2     2      0
;!                                              9 BANK0      5     5      0
;!                        _level_write
;! ---------------------------------------------------------------------------------
;! (1) _display_set_colon_blink                              2     0      2      25
;!                                             11 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _display_push                                         4     2      2     844
;!                                              3 BANK0      4     2      2
;!                            ___lwdiv
;!                            ___lwmod
;!                           _get_time (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     238
;!                                             11 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     354
;!                                             11 COMRAM     4     0      4
;!                                              0 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _display_init                                         5     4      1    1649
;!                                             15 COMRAM     2     2      0
;!                                              9 BANK0      3     2      1
;!                          _Gpio_Init
;!                        _level_write
;! ---------------------------------------------------------------------------------
;! (2) _level_write                                          5     1      4     792
;!                                             14 COMRAM     1     1      0
;!                                              5 BANK0      4     0      4
;!                         _Gpio_Write
;! ---------------------------------------------------------------------------------
;! (3) _Gpio_Write                                           8     5      3     222
;!                                             11 COMRAM     3     0      3
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (1) _clock_update_1s                                      2     1      1     199
;!                                             11 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _clock_init                                           4     0      4    1143
;!                                              3 BANK0      4     0      4
;!                  _ClockStorage_Init
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              6     2      4     302
;!                                             11 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) _ClockStorage_Init                                    3     0      3     550
;!                                              0 BANK0      3     0      3
;!              _ClockStorage_SaveTime
;!                    _EEPROM_ReadByte
;!                   _EEPROM_WriteByte
;! ---------------------------------------------------------------------------------
;! (3) _EEPROM_ReadByte                                      1     1      0      29
;!                                             11 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _Uart_Start                                           3     2      1     311
;!                                             14 COMRAM     2     1      1
;!                        _Buffer_Init
;!                          _Gpio_Init
;! ---------------------------------------------------------------------------------
;! (2) _Buffer_Init                                          1     0      1      46
;!                                             11 COMRAM     1     0      1
;! ---------------------------------------------------------------------------------
;! (1) _Uart_Init                                            5     4      1      23
;!                                             11 COMRAM     5     4      1
;! ---------------------------------------------------------------------------------
;! (1) _Button_Task                                          0     0      0     938
;!                      _button_update
;! ---------------------------------------------------------------------------------
;! (2) _button_update                                        4     3      1     938
;!                                              0 BANK0      4     3      1
;!                          _Gpio_Read
;! ---------------------------------------------------------------------------------
;! (3) _Gpio_Read                                            6     5      1      68
;!                                             11 COMRAM     6     5      1
;! ---------------------------------------------------------------------------------
;! (1) _App_Task                                             3     2      1    1197
;!                                              0 BANK0      3     2      1
;!              _ClockStorage_SaveTime
;!                   _button_get_event
;! ---------------------------------------------------------------------------------
;! (2) _button_get_event                                     2     1      1      70
;!                                             11 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (3) _ClockStorage_SaveTime                                3     1      2     155
;!                                             14 COMRAM     3     1      2
;!                   _EEPROM_WriteByte
;! ---------------------------------------------------------------------------------
;! (4) _EEPROM_WriteByte                                     3     2      1      78
;!                                             11 COMRAM     3     2      1
;! ---------------------------------------------------------------------------------
;! (1) _App_Init                                             2     0      2     869
;!                                              9 BANK0      2     0      2
;!                        _button_init
;! ---------------------------------------------------------------------------------
;! (2) _button_init                                          5     1      4     731
;!                                             14 COMRAM     1     1      0
;!                                              5 BANK0      4     0      4
;!                          _Gpio_Init
;! ---------------------------------------------------------------------------------
;! (3) _Gpio_Init                                            8     5      3     197
;!                                             11 COMRAM     3     0      3
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _ISR                                                  5     5      0     454
;!                                              6 COMRAM     5     5      0
;!              _Uart_InterruptHandler
;!                    _system_tick_1ms
;! ---------------------------------------------------------------------------------
;! (6) _system_tick_1ms                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _Uart_InterruptHandler                                2     2      0     454
;!                                              4 COMRAM     2     2      0
;!                         _Buffer_Add
;!                         _Buffer_Get
;! ---------------------------------------------------------------------------------
;! (7) _Buffer_Get                                           4     2      2     180
;!                                              0 COMRAM     4     2      2
;! ---------------------------------------------------------------------------------
;! (7) _Buffer_Add                                           4     2      2     204
;!                                              0 COMRAM     4     2      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _App_Init
;!     _button_init
;!       _Gpio_Init
;!   _App_Task
;!     _ClockStorage_SaveTime
;!       _EEPROM_WriteByte
;!     _button_get_event
;!   _Button_Task
;!     _button_update
;!       _Gpio_Read
;!   _Uart_Init
;!   _Uart_Start
;!     _Buffer_Init
;!     _Gpio_Init
;!   _clock_init
;!     _ClockStorage_Init
;!       _ClockStorage_SaveTime
;!       _EEPROM_ReadByte
;!       _EEPROM_WriteByte
;!     ___awmod
;!   _clock_update_1s
;!   _display_init
;!     _Gpio_Init
;!     _level_write
;!       _Gpio_Write
;!   _display_push
;!     ___lwdiv
;!     ___lwmod
;!     _get_time (ARG)
;!   _display_set_colon_blink
;!   _display_task
;!     _level_write
;!   _get_time
;!   _isr_init
;!   _system_tick_is_1ms
;!   _system_tick_is_1s
;!   _system_tick_task
;!   _timer0_init
;!     _timer0_reload
;!   _timer0_start
;!
;! _ISR (ROOT)
;!   _Uart_InterruptHandler
;!     _Buffer_Add
;!     _Buffer_Get
;!   _system_tick_1ms
;!

;!Address spaces:

;!Name               Size   Autos  Total    Usage
;!BIGRAM            2047      0       0      0.0%
;!BITBANK7           256      0       0      0.0%
;!BANK7              256      0       0      0.0%
;!BITBANK6           256      0       0      0.0%
;!BANK6              256      0       0      0.0%
;!BITBANK5           256      0       0      0.0%
;!BANK5              256      0       0      0.0%
;!BITBANK4           256      0       0      0.0%
;!BANK4              256      0       0      0.0%
;!BITBANK3           256      0       0      0.0%
;!BANK3              256      0       0      0.0%
;!BITBANK2           256      0       0      0.0%
;!BANK2              256      0       0      0.0%
;!BITBANK1           256      0       0      0.0%
;!BANK1              256      0      49     19.1%
;!BITBANK0           160      0       0      0.0%
;!BANK0              160     14     137     85.6%
;!BITCOMRAM           94      0       0      0.0%
;!COMRAM              94     17      83     88.3%
;!BITBIGSFRh          82      0       0      0.0%
;!BITBIGSFRllh        36      0       0      0.0%
;!BITBIGSFRlll        33      0       0      0.0%
;!BITBIGSFRlh          5      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0     269      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 147 in file "app/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  seconds         1    0        unsigned char 
;;  minutes         1    0        unsigned char 
;;  hours           1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   84[None  ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_App_Init
;;		_App_Task
;;		_Button_Task
;;		_Uart_Init
;;		_Uart_Start
;;		_clock_init
;;		_clock_update_1s
;;		_display_init
;;		_display_push
;;		_display_set_colon_blink
;;		_display_task
;;		_get_time
;;		_isr_init
;;		_system_tick_is_1ms
;;		_system_tick_is_1s
;;		_system_tick_task
;;		_timer0_init
;;		_timer0_start
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"app/main.c"
	line	147
global __ptext0
__ptext0:
psect	text0
	file	"app/main.c"
	line	147
	
_main:
;incstack = 0
	callstack 25
	line	150
	
l4388:
		movlw	low(_app)
	movlb	0	; () banked
	movwf	((App_Init@app))&0ffh

		movlw	low(_sys_clock)
	movwf	((App_Init@clk))&0ffh

	call	_App_Init	;wreg free
	line	152
		movlw	low(_uart_config)
	movwf	((c:Uart_Init@uart))^00h,c

	call	_Uart_Init	;wreg free
	line	153
		movlw	low(_uart_config)
	movwf	((c:Uart_Start@uart))^00h,c

	call	_Uart_Start	;wreg free
	line	155
	
l4390:
	call	_timer0_init	;wreg free
	line	156
	
l4392:
	call	_timer0_start	;wreg free
	line	158
	
l4394:
		movlw	low(_clk_display)
	movlb	0	; () banked
	movwf	((display_init@display))&0ffh

	call	_display_init	;wreg free
	line	161
	
l4396:
	call	_isr_init	;wreg free
	line	164
	
l4398:
	
l4400:
	
l4402:
	line	165
	
l4404:
		movlw	low(_sys_clock)
	movlb	0	; () banked
	movwf	((clock_init@clk))&0ffh

	movlw	low(0)
	movwf	((clock_init@h))&0ffh
	movlw	low(0)
	movwf	((clock_init@m))&0ffh
	movlw	low(0)
	movwf	((clock_init@s))&0ffh
	call	_clock_init	;wreg free
	line	170
	
l4406:
	call	_system_tick_task	;wreg free
	line	171
	
l4408:
		movlw	low(_app)
	movlb	0	; () banked
	movwf	((App_Task@app))&0ffh

	call	_App_Task	;wreg free
	line	173
	
l4410:
	call	_system_tick_is_1ms	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u5201
	goto	u5200
u5201:
	goto	l4416
u5200:
	line	175
	
l4412:
	call	_Button_Task	;wreg free
	line	176
	
l4414:
	call	_display_task	;wreg free
	line	179
	
l4416:
	call	_system_tick_is_1s	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u5211
	goto	u5210
u5211:
	goto	l4426
u5210:
	
l4418:
	movf	(0+((c:_app)+01h))^00h,c,w
	btfss	status,2
	goto	u5221
	goto	u5220
u5221:
	goto	l4426
u5220:
	line	181
	
l4420:
		movlw	low(_sys_clock)
	movwf	((c:clock_update_1s@clk))^00h,c

	call	_clock_update_1s	;wreg free
	line	182
	
l4422:
		movlw	low(_sys_clock)
	movwf	((c:get_time@clk))^00h,c

	call	_get_time	;wreg free
	movff	0+?_get_time,(display_push@buffer_clk)
	movff	1+?_get_time,(display_push@buffer_clk+1)
	call	_display_push	;wreg free
	line	184
	
l4424:
	movlw	high(01F4h)
	movwf	((c:display_set_colon_blink@blink_rate+1))^00h,c
	movlw	low(01F4h)
	movwf	((c:display_set_colon_blink@blink_rate))^00h,c
	call	_display_set_colon_blink	;wreg free
	line	187
	
l4426:
		decf	(0+((c:_app)+01h))^00h,c,w
	btfss	status,2
	goto	u5231
	goto	u5230

u5231:
	goto	l4432
u5230:
	line	189
	
l4428:
	clrf	((c:display_set_colon_blink@blink_rate+1))^00h,c
	movlw	low(096h)
	movwf	((c:display_set_colon_blink@blink_rate))^00h,c
	call	_display_set_colon_blink	;wreg free
	line	190
	
l4430:
		movlw	low(_sys_clock)
	movwf	((c:get_time@clk))^00h,c

	call	_get_time	;wreg free
	movff	0+?_get_time,(display_push@buffer_clk)
	movff	1+?_get_time,(display_push@buffer_clk+1)
	call	_display_push	;wreg free
	line	193
	
l4432:
		movlw	2
	xorwf	(0+((c:_app)+01h))^00h,c,w
	btfss	status,2
	goto	u5241
	goto	u5240

u5241:
	goto	l4406
u5240:
	line	195
	
l4434:
	clrf	((c:display_set_colon_blink@blink_rate+1))^00h,c
	movlw	low(096h)
	movwf	((c:display_set_colon_blink@blink_rate))^00h,c
	call	_display_set_colon_blink	;wreg free
	line	196
	
l4436:
		movlw	low(_sys_clock)
	movwf	((c:get_time@clk))^00h,c

	call	_get_time	;wreg free
	movff	0+?_get_time,(display_push@buffer_clk)
	movff	1+?_get_time,(display_push@buffer_clk+1)
	call	_display_push	;wreg free
	goto	l4406
	global	start
	goto	start
	callstack 0
	line	211
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_timer0_start

;; *************** function _timer0_start *****************
;; Defined at:
;;		line 20 in file "src/timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	file	"src/timer0.c"
	line	20
global __ptext1
__ptext1:
psect	text1
	file	"src/timer0.c"
	line	20
	
_timer0_start:
;incstack = 0
	callstack 27
	line	22
	
l2944:
	bsf	((c:4053))^0f00h,c,7	;volatile
	line	23
	
l248:
	return	;funcret
	callstack 0
GLOBAL	__end_of_timer0_start
	__end_of_timer0_start:
	signat	_timer0_start,89
	global	_timer0_init

;; *************** function _timer0_init *****************
;; Defined at:
;;		line 6 in file "src/timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_timer0_reload
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	line	6
global __ptext2
__ptext2:
psect	text2
	file	"src/timer0.c"
	line	6
	
_timer0_init:
;incstack = 0
	callstack 26
	line	8
	
l2934:
	clrf	((c:4053))^0f00h,c	;volatile
	line	9
	bcf	((c:4053))^0f00h,c,6	;volatile
	line	10
	bcf	((c:4053))^0f00h,c,5	;volatile
	line	11
	bcf	((c:4053))^0f00h,c,3	;volatile
	line	12
	
l2936:
	movf	((c:4053))^0f00h,c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(01h & ((1<<3)-1))<<0
	movwf	((c:4053))^0f00h,c	;volatile
	line	14
	
l2938:
	call	_timer0_reload	;wreg free
	line	16
	
l2940:
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	17
	
l2942:
	bsf	((c:4082))^0f00h,c,5	;volatile
	line	18
	
l245:
	return	;funcret
	callstack 0
GLOBAL	__end_of_timer0_init
	__end_of_timer0_init:
	signat	_timer0_init,89
	global	_timer0_reload

;; *************** function _timer0_reload *****************
;; Defined at:
;;		line 30 in file "src/timer0.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_timer0_init
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	line	30
global __ptext3
__ptext3:
psect	text3
	file	"src/timer0.c"
	line	30
	
_timer0_reload:
;incstack = 0
	callstack 26
	line	32
	
l2798:
	movlw	low(0FBh)
	movwf	((c:4055))^0f00h,c	;volatile
	line	33
	movlw	low(01Eh)
	movwf	((c:4054))^0f00h,c	;volatile
	line	34
	
l254:
	return	;funcret
	callstack 0
GLOBAL	__end_of_timer0_reload
	__end_of_timer0_reload:
	signat	_timer0_reload,89
	global	_system_tick_task

;; *************** function _system_tick_task *****************
;; Defined at:
;;		line 16 in file "src/system_tick.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"src/system_tick.c"
	line	16
global __ptext4
__ptext4:
psect	text4
	file	"src/system_tick.c"
	line	16
	
_system_tick_task:
;incstack = 0
	callstack 27
	line	18
	
l2982:
	goto	l299
	line	20
	
l2984:
	decf	((c:_pending_ticks))^00h,c	;volatile
	line	21
	
l2986:
	movlw	low(01h)
	movwf	((c:_flag_1ms))^00h,c
	line	22
	
l2988:
	infsnz	((c:_tick_1ms))^00h,c
	incf	((c:_tick_1ms+1))^00h,c
	line	24
	
l2990:
		movlw	232
	subwf	 ((c:_tick_1ms))^00h,c,w
	movlw	3
	subwfb	((c:_tick_1ms+1))^00h,c,w
	btfss	status,0
	goto	u2601
	goto	u2600

u2601:
	goto	l299
u2600:
	line	26
	
l2992:
	clrf	((c:_tick_1ms+1))^00h,c
	movlw	low(0)
	movwf	((c:_tick_1ms))^00h,c
	line	27
	movlw	low(01h)
	movwf	((c:_one_second_flag))^00h,c	;volatile
	line	29
	
l299:
	line	18
	movf	((c:_pending_ticks))^00h,c,w	;volatile
	btfss	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l2984
u2610:
	line	30
	
l303:
	return	;funcret
	callstack 0
GLOBAL	__end_of_system_tick_task
	__end_of_system_tick_task:
	signat	_system_tick_task,89
	global	_system_tick_is_1s

;; *************** function _system_tick_is_1s *****************
;; Defined at:
;;		line 42 in file "src/system_tick.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	line	42
global __ptext5
__ptext5:
psect	text5
	file	"src/system_tick.c"
	line	42
	
_system_tick_is_1s:
;incstack = 0
	callstack 27
	line	44
	
l3112:
	movf	((c:_one_second_flag))^00h,c,w	;volatile
	btfsc	status,2
	goto	u2821
	goto	u2820
u2821:
	goto	l3120
u2820:
	line	46
	
l3114:
	clrf	((c:_one_second_flag))^00h,c	;volatile
	line	47
	
l3116:
	movlw	(01h)&0ffh
	goto	l311
	line	50
	
l3120:
	movlw	(0)&0ffh
	line	51
	
l311:
	return	;funcret
	callstack 0
GLOBAL	__end_of_system_tick_is_1s
	__end_of_system_tick_is_1s:
	signat	_system_tick_is_1s,89
	global	_system_tick_is_1ms

;; *************** function _system_tick_is_1ms *****************
;; Defined at:
;;		line 32 in file "src/system_tick.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	line	32
global __ptext6
__ptext6:
psect	text6
	file	"src/system_tick.c"
	line	32
	
_system_tick_is_1ms:
;incstack = 0
	callstack 27
	line	34
	
l3044:
	movf	((c:_flag_1ms))^00h,c,w
	btfsc	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l3052
u2730:
	line	36
	
l3046:
	clrf	((c:_flag_1ms))^00h,c
	line	37
	
l3048:
	movlw	(01h)&0ffh
	goto	l307
	line	39
	
l3052:
	movlw	(0)&0ffh
	line	40
	
l307:
	return	;funcret
	callstack 0
GLOBAL	__end_of_system_tick_is_1ms
	__end_of_system_tick_is_1ms:
	signat	_system_tick_is_1ms,89
	global	_isr_init

;; *************** function _isr_init *****************
;; Defined at:
;;		line 35 in file "src/isr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=0
	file	"src/isr.c"
	line	35
global __ptext7
__ptext7:
psect	text7
	file	"src/isr.c"
	line	35
	
_isr_init:
;incstack = 0
	callstack 27
	line	37
	
l2978:
	bcf	((c:4048))^0f00h,c,7	;volatile
	line	38
	bsf	((c:4082))^0f00h,c,6	;volatile
	line	39
	bsf	((c:4082))^0f00h,c,7	;volatile
	line	40
	
l278:
	return	;funcret
	callstack 0
GLOBAL	__end_of_isr_init
	__end_of_isr_init:
	signat	_isr_init,89
	global	_get_time

;; *************** function _get_time *****************
;; Defined at:
;;		line 36 in file "src/clock.c"
;; Parameters:    Size  Location     Type
;;  clk             1   11[COMRAM] PTR struct .
;;		 -> sys_clock(3), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   11[COMRAM] unsigned short 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=0
	file	"src/clock.c"
	line	36
global __ptext8
__ptext8:
psect	text8
	file	"src/clock.c"
	line	36
	
_get_time:
;incstack = 0
	callstack 27
	line	38
	
l3132:
	movf	((c:get_time@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_get_time+0)^00h,c
	movf	((c:get_time@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_get_time+1)^00h,c
	movf	((??_get_time+1))^00h,c,w
	mullw	064h
	movff	prodl,??_get_time+2
	movff	prodh,??_get_time+2+1
	movf	((??_get_time+0))^00h,c,w
	addwf	(??_get_time+2)^00h,c,w
	movwf	((c:?_get_time))^00h,c
	movlw	0
	addwfc	(??_get_time+2+1)^00h,c,w
	movwf	1+((c:?_get_time))^00h,c
	line	39
	
l327:
	return	;funcret
	callstack 0
GLOBAL	__end_of_get_time
	__end_of_get_time:
	signat	_get_time,4218
	global	_display_task

;; *************** function _display_task *****************
;; Defined at:
;;		line 95 in file "src/ss_display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   16[COMRAM] unsigned char 
;;  i               1   15[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0       0       0
;;      Totals:         2       5       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_level_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0
	file	"src/ss_display.c"
	line	95
global __ptext9
__ptext9:
psect	text9
	file	"src/ss_display.c"
	line	95
	
_display_task:
;incstack = 0
	callstack 26
	line	99
	
l4322:
	movf	((c:_digit_flag))^00h,c,w
	mullw	07h
	movf	((c:_control@ss_display$F1116))^00h,c,w
	addwf	(prodl)^0f00h,c,w
	movlb	0	; () banked
	movwf	(??_display_task+0)&0ffh
		movff	(??_display_task+0),(level_write@gpio)
	clrf	((level_write@gpio+1))&0ffh

	movlw	low(0)
	movwf	((level_write@level))&0ffh
	movlw	low(0)
	movwf	((level_write@pin_type))&0ffh
	call	_level_write	;wreg free
	line	101
	
l4324:
	clrf	((c:display_task@i))^00h,c
	line	103
	
l4330:
	movf	((c:display_task@i))^00h,c,w
	mullw	07h
	movff	prodl,??_display_task+0
	movff	prodh,??_display_task+0+1
	movlb	0	; () banked
	movf	(??_display_task+0)&0ffh,w
	addwf	((c:_data@ss_display$F1115))^00h,c,w
	movwf	((level_write@gpio))&0ffh
	movf	(??_display_task+0+1)&0ffh,w
	addwfc	((c:_data@ss_display$F1115+1))^00h,c,w
	movwf	1+((level_write@gpio))&0ffh
	movlw	low(0)
	movwf	((level_write@level))&0ffh
	movlw	low(01h)
	movwf	((level_write@pin_type))&0ffh
	call	_level_write	;wreg free
	line	104
	
l4332:
	incf	((c:display_task@i))^00h,c
	
l4334:
		movlw	07h-1
	cpfsgt	((c:display_task@i))^00h,c
	goto	u5111
	goto	u5110

u5111:
	goto	l4330
u5110:
	line	107
	
l4336:
	infsnz	((c:display_task@ms))^00h,c
	incf	((c:display_task@ms+1))^00h,c
	line	108
	
l4338:
	movff	(c:_colon_rate),??_display_task+0
	movff	(c:_colon_rate+1),??_display_task+0+1
	bcf	status,0
	movlb	0	; () banked
	rlcf	(??_display_task+0)&0ffh,f
	rlcf	(??_display_task+0+1)&0ffh,f
		movf	(??_display_task+0)&0ffh,w
	subwf	((c:display_task@ms))^00h,c,w
	movf	(??_display_task+0+1)&0ffh,w
	subwfb	((c:display_task@ms+1))^00h,c,w
	btfss	status,0
	goto	u5121
	goto	u5120

u5121:
	goto	l4342
u5120:
	line	110
	
l4340:; BSR set to: 0

	clrf	((c:display_task@ms+1))^00h,c
	movlw	low(0)
	movwf	((c:display_task@ms))^00h,c
	line	113
	
l4342:; BSR set to: 0

		decf	((c:_colon_status))^00h,c,w
	btfss	status,2
	goto	u5131
	goto	u5130

u5131:
	goto	l4352
u5130:
	line	115
	
l4344:; BSR set to: 0

		movff	(c:_colon_control@ss_display$F1117),(level_write@gpio)
	clrf	((level_write@gpio+1))&0ffh

	movlw	low(01h)
	movwf	((level_write@level))&0ffh
	movlw	low(0)
	movwf	((level_write@pin_type))&0ffh
	call	_level_write	;wreg free
	line	116
		movff	(c:_colon_pin),(level_write@gpio)
	movlb	0	; () banked
	clrf	((level_write@gpio+1))&0ffh

	movlw	low(0)
	movwf	((level_write@level))&0ffh
	movlw	low(01h)
	movwf	((level_write@pin_type))&0ffh
	call	_level_write	;wreg free
	line	117
	
l4346:
		movf	((c:_colon_rate))^00h,c,w
	subwf	((c:display_task@ms))^00h,c,w
	movf	((c:_colon_rate+1))^00h,c,w
	subwfb	((c:display_task@ms+1))^00h,c,w
	btfsc	status,0
	goto	u5141
	goto	u5140

u5141:
	goto	l4350
u5140:
	line	119
	
l4348:
		movff	(c:_colon_pin),(level_write@gpio)
	movlb	0	; () banked
	clrf	((level_write@gpio+1))&0ffh

	movlw	low(01h)
	movwf	((level_write@level))&0ffh
	movlw	low(01h)
	movwf	((level_write@pin_type))&0ffh
	call	_level_write	;wreg free
	line	120
	goto	l4352
	line	123
	
l4350:
		movff	(c:_colon_pin),(level_write@gpio)
	movlb	0	; () banked
	clrf	((level_write@gpio+1))&0ffh

	movlw	low(0)
	movwf	((level_write@level))&0ffh
	movlw	low(01h)
	movwf	((level_write@pin_type))&0ffh
	call	_level_write	;wreg free
	line	128
	
l4352:
	incf	((c:_digit_flag))^00h,c
	line	129
	
l4354:
		movf	((c:_digit_number))^00h,c,w
	subwf	((c:_digit_flag))^00h,c,w
	btfss	status,0
	goto	u5151
	goto	u5150

u5151:
	goto	l408
u5150:
	line	131
	
l4356:
	clrf	((c:_digit_flag))^00h,c
	line	132
	
l408:
	line	134
	clrf	((c:display_task@i_1162))^00h,c
	line	136
	
l4362:
	movf	((c:display_task@i_1162))^00h,c,w
	mullw	07h
	movff	prodl,??_display_task+0
	movff	prodh,??_display_task+0+1
	movlb	0	; () banked
	movf	(??_display_task+0)&0ffh,w
	addwf	((c:_data@ss_display$F1115))^00h,c,w
	movwf	((level_write@gpio))&0ffh
	movf	(??_display_task+0+1)&0ffh,w
	addwfc	((c:_data@ss_display$F1115+1))^00h,c,w
	movwf	1+((level_write@gpio))&0ffh
	movlw	low(0)
	movwf	((level_write@level))&0ffh
	movlw	low(01h)
	movwf	((level_write@pin_type))&0ffh
	call	_level_write	;wreg free
	line	138
	
l4364:
	movf	((c:_digit_flag))^00h,c,w
	addlw	low(_buffer)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_display_task+0)&0ffh
	movf	((??_display_task+0))&0ffh,w
	addlw	low(_numbers)
	movwf	(??_display_task+1)&0ffh
	movff	(??_display_task+1),tblptrl
	if	1	;There is more than 1 active tblptr byte
	global __smallconst
movlw	high(__smallconst)
	movwf	tblptrh
	endif
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	movlw	low highword(__smallconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,??_display_task+2
	movff	(c:display_task@i_1162),??_display_task+3
	movlw	(01h)&0ffh
	movwf	(??_display_task+4)&0ffh
	incf	(??_display_task+3)&0ffh
	goto	u5164
u5165:
	bcf	status,0
	rlcf	((??_display_task+4))&0ffh
u5164:
	decfsz	(??_display_task+3)&0ffh
	goto	u5165
	movlb	0	; () banked
	movf	((??_display_task+4))&0ffh,w
	andwf	(??_display_task+2)&0ffh,w
	iorlw	0
	btfsc	status,2
	goto	u5171
	goto	u5170
u5171:
	goto	l4368
u5170:
	line	140
	
l4366:; BSR set to: 0

	movf	((c:display_task@i_1162))^00h,c,w
	mullw	07h
	movff	prodl,??_display_task+0
	movff	prodh,??_display_task+0+1
	movf	(??_display_task+0)&0ffh,w
	addwf	((c:_data@ss_display$F1115))^00h,c,w
	movwf	((level_write@gpio))&0ffh
	movf	(??_display_task+0+1)&0ffh,w
	addwfc	((c:_data@ss_display$F1115+1))^00h,c,w
	movwf	1+((level_write@gpio))&0ffh
	movlw	low(01h)
	movwf	((level_write@level))&0ffh
	movlw	low(01h)
	movwf	((level_write@pin_type))&0ffh
	call	_level_write	;wreg free
	line	141
	goto	l4370
	line	144
	
l4368:; BSR set to: 0

	movf	((c:display_task@i_1162))^00h,c,w
	mullw	07h
	movff	prodl,??_display_task+0
	movff	prodh,??_display_task+0+1
	movf	(??_display_task+0)&0ffh,w
	addwf	((c:_data@ss_display$F1115))^00h,c,w
	movwf	((level_write@gpio))&0ffh
	movf	(??_display_task+0+1)&0ffh,w
	addwfc	((c:_data@ss_display$F1115+1))^00h,c,w
	movwf	1+((level_write@gpio))&0ffh
	movlw	low(0)
	movwf	((level_write@level))&0ffh
	movlw	low(01h)
	movwf	((level_write@pin_type))&0ffh
	call	_level_write	;wreg free
	line	146
	
l4370:
	incf	((c:display_task@i_1162))^00h,c
	
l4372:
		movlw	07h-1
	cpfsgt	((c:display_task@i_1162))^00h,c
	goto	u5181
	goto	u5180

u5181:
	goto	l4362
u5180:
	line	148
	
l4374:
	movf	((c:_digit_flag))^00h,c,w
	mullw	07h
	movf	((c:_control@ss_display$F1116))^00h,c,w
	addwf	(prodl)^0f00h,c,w
	movlb	0	; () banked
	movwf	(??_display_task+0)&0ffh
		movff	(??_display_task+0),(level_write@gpio)
	clrf	((level_write@gpio+1))&0ffh

	movlw	low(01h)
	movwf	((level_write@level))&0ffh
	movlw	low(0)
	movwf	((level_write@pin_type))&0ffh
	call	_level_write	;wreg free
	line	149
	
l413:
	return	;funcret
	callstack 0
GLOBAL	__end_of_display_task
	__end_of_display_task:
	signat	_display_task,89
	global	_display_set_colon_blink

;; *************** function _display_set_colon_blink *****************
;; Defined at:
;;		line 151 in file "src/ss_display.c"
;; Parameters:    Size  Location     Type
;;  blink_rate      2   11[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	line	151
global __ptext10
__ptext10:
psect	text10
	file	"src/ss_display.c"
	line	151
	
_display_set_colon_blink:
;incstack = 0
	callstack 27
	line	153
	
l3148:
	movff	(c:display_set_colon_blink@blink_rate),(c:_colon_rate)
	movff	(c:display_set_colon_blink@blink_rate+1),(c:_colon_rate+1)
	line	154
	
l416:
	return	;funcret
	callstack 0
GLOBAL	__end_of_display_set_colon_blink
	__end_of_display_set_colon_blink:
	signat	_display_set_colon_blink,4217
	global	_display_push

;; *************** function _display_push *****************
;; Defined at:
;;		line 156 in file "src/ss_display.c"
;; Parameters:    Size  Location     Type
;;  buffer_clk      2    3[BANK0 ] unsigned short 
;; Auto vars:     Size  Location     Type
;;  i               1    6[BANK0 ] unsigned char 
;;  dig             1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       2       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	line	156
global __ptext11
__ptext11:
psect	text11
	file	"src/ss_display.c"
	line	156
	
_display_push:
;incstack = 0
	callstack 26
	line	159
	
l4376:
	movlb	0	; () banked
	clrf	((display_push@i))&0ffh
	goto	l4386
	line	161
	
l4378:; BSR set to: 0

	movff	(display_push@buffer_clk),(c:___lwmod@dividend)
	movff	(display_push@buffer_clk+1),(c:___lwmod@dividend+1)
	clrf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	movlb	0	; () banked
	movwf	((display_push@dig))&0ffh
	line	162
	
l4380:; BSR set to: 0

	movf	((display_push@i))&0ffh,w
	sublw	low(_buffer+-1)
	addwf	((c:_digit_number))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(display_push@dig),indf2

	line	163
	
l4382:; BSR set to: 0

	movff	(display_push@buffer_clk),(c:___lwdiv@dividend)
	movff	(display_push@buffer_clk+1),(c:___lwdiv@dividend+1)
	clrf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(display_push@buffer_clk)
	movff	1+?___lwdiv,(display_push@buffer_clk+1)
	line	164
	
l4384:
	movlb	0	; () banked
	incf	((display_push@i))&0ffh
	
l4386:; BSR set to: 0

		movf	((c:_digit_number))^00h,c,w
	subwf	((display_push@i))&0ffh,w
	btfss	status,0
	goto	u5191
	goto	u5190

u5191:
	goto	l4378
u5190:
	line	165
	
l422:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_display_push
	__end_of_display_push:
	signat	_display_push,4217
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 7 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   11[COMRAM] unsigned int 
;;  divisor         2   13[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   15[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   11[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_push
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/lwmod.c"
	line	7
global __ptext12
__ptext12:
psect	text12
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/lwmod.c"
	line	7
	
___lwmod:; BSR set to: 0

;incstack = 0
	callstack 26
	line	12
	
l3862:
	movf	((c:___lwmod@divisor))^00h,c,w
iorwf	((c:___lwmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u4411
	goto	u4410

u4411:
	goto	l1340
u4410:
	line	13
	
l3864:
	movlw	low(01h)
	movwf	((c:___lwmod@counter))^00h,c
	line	14
	goto	l3868
	line	15
	
l3866:
	bcf	status,0
	rlcf	((c:___lwmod@divisor))^00h,c
	rlcf	((c:___lwmod@divisor+1))^00h,c
	line	16
	incf	((c:___lwmod@counter))^00h,c
	line	14
	
l3868:
	
	btfss	((c:___lwmod@divisor+1))^00h,c,(15)&7
	goto	u4421
	goto	u4420
u4421:
	goto	l3866
u4420:
	line	19
	
l3870:
		movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c,w
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u4431
	goto	u4430

u4431:
	goto	l3874
u4430:
	line	20
	
l3872:
	movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c

	line	21
	
l3874:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1))^00h,c
	rrcf	((c:___lwmod@divisor))^00h,c
	line	22
	
l3876:
	decfsz	((c:___lwmod@counter))^00h,c
	
	goto	l3870
	line	23
	
l1340:
	line	24
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	25
	
l1347:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 7 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   11[COMRAM] unsigned int 
;;  divisor         2   13[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    1[BANK0 ] unsigned int 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   11[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       3       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_push
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/lwdiv.c"
	line	7
global __ptext13
__ptext13:
psect	text13
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/lwdiv.c"
	line	7
	
___lwdiv:
;incstack = 0
	callstack 26
	line	13
	
l4206:
	movlb	0	; () banked
	clrf	((___lwdiv@quotient+1))&0ffh
	movlw	low(0)
	movwf	((___lwdiv@quotient))&0ffh
	line	14
	
l4208:; BSR set to: 0

	movf	((c:___lwdiv@divisor))^00h,c,w
iorwf	((c:___lwdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u4941
	goto	u4940

u4941:
	goto	l1330
u4940:
	line	15
	
l4210:; BSR set to: 0

	movlw	low(01h)
	movwf	((___lwdiv@counter))&0ffh
	line	16
	goto	l4214
	line	17
	
l4212:; BSR set to: 0

	bcf	status,0
	rlcf	((c:___lwdiv@divisor))^00h,c
	rlcf	((c:___lwdiv@divisor+1))^00h,c
	line	18
	incf	((___lwdiv@counter))&0ffh
	line	16
	
l4214:; BSR set to: 0

	
	btfss	((c:___lwdiv@divisor+1))^00h,c,(15)&7
	goto	u4951
	goto	u4950
u4951:
	goto	l4212
u4950:
	line	21
	
l4216:; BSR set to: 0

	bcf	status,0
	rlcf	((___lwdiv@quotient))&0ffh
	rlcf	((___lwdiv@quotient+1))&0ffh
	line	22
	
l4218:; BSR set to: 0

		movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c,w
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u4961
	goto	u4960

u4961:
	goto	l4224
u4960:
	line	23
	
l4220:; BSR set to: 0

	movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c

	line	24
	
l4222:; BSR set to: 0

	bsf	(0+(0/8)+(___lwdiv@quotient))&0ffh,(0)&7
	line	26
	
l4224:; BSR set to: 0

	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1))^00h,c
	rrcf	((c:___lwdiv@divisor))^00h,c
	line	27
	
l4226:; BSR set to: 0

	decfsz	((___lwdiv@counter))&0ffh
	
	goto	l4216
	line	28
	
l1330:; BSR set to: 0

	line	29
	movff	(___lwdiv@quotient),(c:?___lwdiv)
	movff	(___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	30
	
l1337:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_display_init

;; *************** function _display_init *****************
;; Defined at:
;;		line 62 in file "src/ss_display.c"
;; Parameters:    Size  Location     Type
;;  display         1    9[BANK0 ] PTR struct .
;;		 -> clk_display(9), 
;; Auto vars:     Size  Location     Type
;;  i               1   10[BANK0 ] unsigned char 
;;  i               1   11[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       1       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2       3       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_Gpio_Init
;;		_level_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=0
	file	"src/ss_display.c"
	line	62
global __ptext14
__ptext14:
psect	text14
	file	"src/ss_display.c"
	line	62
	
_display_init:; BSR set to: 0

;incstack = 0
	callstack 25
	line	64
	
l4238:
	movlb	0	; () banked
	movf	((display_init@display))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	movff	postinc2,(c:_data@ss_display$F1115)
	movff	postdec2,(c:_data@ss_display$F1115+1)
	line	65
	movf	((display_init@display))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movf	indf2,w
	movwf	((c:_control@ss_display$F1116))^00h,c
	line	66
	movf	((display_init@display))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(08h)
	addwf	fsr2l

	movf	indf2,w
	movwf	((c:_colon_control@ss_display$F1117))^00h,c
	line	67
	movf	((display_init@display))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

	movf	indf2,w
	movwf	((c:_colon_pin))^00h,c
	line	68
	
l4240:; BSR set to: 0

	movf	((display_init@display))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:_colon_status))^00h,c
	line	69
	
l4242:; BSR set to: 0

	movf	((display_init@display))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movf	indf2,w
	movwf	((c:_segment_polarity))^00h,c
	line	70
	
l4244:; BSR set to: 0

	movf	((display_init@display))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movf	indf2,w
	movwf	((c:_control_polarity))^00h,c
	line	71
	
l4246:; BSR set to: 0

	movf	((display_init@display))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	movf	indf2,w
	movwf	((c:_digit_number))^00h,c
	line	73
	
l4248:; BSR set to: 0

	clrf	((display_init@i))&0ffh
	line	75
	
l4254:; BSR set to: 0

	movf	((display_init@i))&0ffh,w
	mullw	07h
	movff	prodl,??_display_init+0
	movff	prodh,??_display_init+0+1
	movf	(??_display_init+0)^00h,c,w
	addwf	((c:_data@ss_display$F1115))^00h,c,w
	movwf	((c:Gpio_Init@gpio))^00h,c
	movf	(??_display_init+0+1)^00h,c,w
	addwfc	((c:_data@ss_display$F1115+1))^00h,c,w
	movwf	1+((c:Gpio_Init@gpio))^00h,c
	movlw	low(0)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	76
	movlb	0	; () banked
	movf	((display_init@i))&0ffh,w
	mullw	07h
	movff	prodl,??_display_init+0
	movff	prodh,??_display_init+0+1
	movf	(??_display_init+0)^00h,c,w
	addwf	((c:_data@ss_display$F1115))^00h,c,w
	movwf	((level_write@gpio))&0ffh
	movf	(??_display_init+0+1)^00h,c,w
	addwfc	((c:_data@ss_display$F1115+1))^00h,c,w
	movwf	1+((level_write@gpio))&0ffh
	movlw	low(0)
	movwf	((level_write@level))&0ffh
	movlw	low(01h)
	movwf	((level_write@pin_type))&0ffh
	call	_level_write	;wreg free
	line	77
	
l4256:
	movlb	0	; () banked
	incf	((display_init@i))&0ffh
	
l4258:; BSR set to: 0

		movlw	07h-1
	cpfsgt	((display_init@i))&0ffh
	goto	u4971
	goto	u4970

u4971:
	goto	l4254
u4970:
	
l392:; BSR set to: 0

	line	79
	clrf	((display_init@i_1158))&0ffh
	goto	l4264
	line	81
	
l4260:; BSR set to: 0

	movf	((display_init@i_1158))&0ffh,w
	mullw	07h
	movf	((c:_control@ss_display$F1116))^00h,c,w
	addwf	(prodl)^0f00h,c,w
	movwf	(??_display_init+0)^00h,c
		movff	(??_display_init+0),(c:Gpio_Init@gpio)
	clrf	((c:Gpio_Init@gpio+1))^00h,c

	movlw	low(0)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	82
	movlb	0	; () banked
	movf	((display_init@i_1158))&0ffh,w
	mullw	07h
	movf	((c:_control@ss_display$F1116))^00h,c,w
	addwf	(prodl)^0f00h,c,w
	movwf	(??_display_init+0)^00h,c
		movff	(??_display_init+0),(level_write@gpio)
	clrf	((level_write@gpio+1))&0ffh

	movlw	low(0)
	movwf	((level_write@level))&0ffh
	movlw	low(0)
	movwf	((level_write@pin_type))&0ffh
	call	_level_write	;wreg free
	line	83
	
l4262:
	movlb	0	; () banked
	incf	((display_init@i_1158))&0ffh
	
l4264:; BSR set to: 0

		movf	((c:_digit_number))^00h,c,w
	subwf	((display_init@i_1158))&0ffh,w
	btfss	status,0
	goto	u4981
	goto	u4980

u4981:
	goto	l4260
u4980:
	line	85
	
l4266:; BSR set to: 0

		decf	((c:_colon_status))^00h,c,w
	btfss	status,2
	goto	u4991
	goto	u4990

u4991:
	goto	l397
u4990:
	line	87
	
l4268:; BSR set to: 0

		movff	(c:_colon_pin),(c:Gpio_Init@gpio)
	clrf	((c:Gpio_Init@gpio+1))^00h,c

	movlw	low(0)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	88
		movff	(c:_colon_pin),(level_write@gpio)
	movlb	0	; () banked
	clrf	((level_write@gpio+1))&0ffh

	movlw	low(0)
	movwf	((level_write@level))&0ffh
	movlw	low(01h)
	movwf	((level_write@pin_type))&0ffh
	call	_level_write	;wreg free
	line	89
		movff	(c:_colon_control@ss_display$F1117),(c:Gpio_Init@gpio)
	clrf	((c:Gpio_Init@gpio+1))^00h,c

	movlw	low(0)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	90
		movff	(c:_colon_control@ss_display$F1117),(level_write@gpio)
	movlb	0	; () banked
	clrf	((level_write@gpio+1))&0ffh

	movlw	low(0)
	movwf	((level_write@level))&0ffh
	movlw	low(0)
	movwf	((level_write@pin_type))&0ffh
	call	_level_write	;wreg free
	line	92
	
l397:
	return	;funcret
	callstack 0
GLOBAL	__end_of_display_init
	__end_of_display_init:
	signat	_display_init,4217
	global	_level_write

;; *************** function _level_write *****************
;; Defined at:
;;		line 32 in file "src/ss_display.c"
;; Parameters:    Size  Location     Type
;;  gpio            2    5[BANK0 ] PTR struct .
;;		 -> NULL(0), colon_control(7), colon(7), control(28), 
;;		 -> data(49), 
;;  level           1    7[BANK0 ] enum E64
;;  pin_type        1    8[BANK0 ] enum E72
;; Auto vars:     Size  Location     Type
;;  gpio_level      1   14[COMRAM] enum E40
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       4       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_Gpio_Write
;; This function is called by:
;;		_display_init
;;		_display_task
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=0
	line	32
global __ptext15
__ptext15:
psect	text15
	file	"src/ss_display.c"
	line	32
	
_level_write:
;incstack = 0
	callstack 26
	line	35
	
l4190:
	movlb	0	; () banked
	movf	((level_write@pin_type))&0ffh,w
	btfss	status,2
	goto	u4871
	goto	u4870
u4871:
	goto	l4198
u4870:
	line	37
	
l4192:; BSR set to: 0

		decf	((c:_control_polarity))^00h,c,w
	btfss	status,2
	goto	u4881
	goto	u4880

u4881:
	goto	l4196
u4880:
	line	39
	
l4194:; BSR set to: 0

		decf	((level_write@level))&0ffh,w
	btfsc	status,2
	goto	u4891
	goto	u4890

u4891:
	movlw	1
	goto	u4900
u4890:
	movlw	0
u4900:
	movwf	((c:level_write@gpio_level))^00h,c
	line	40
	goto	l4204
	line	43
	
l4196:; BSR set to: 0

	movf	((level_write@level))&0ffh,w
	btfsc	status,2
	goto	u4911
	goto	u4910
u4911:
	movlw	1
	goto	u4920
u4910:
	movlw	0
u4920:
	movwf	((c:level_write@gpio_level))^00h,c
	goto	l4204
	line	49
	
l4198:; BSR set to: 0

		decf	((c:_segment_polarity))^00h,c,w
	btfss	status,2
	goto	u4931
	goto	u4930

u4931:
	goto	l4196
u4930:
	goto	l4194
	line	59
	
l4204:; BSR set to: 0

		movff	(level_write@gpio),(c:Gpio_Write@gpio)
	movff	(level_write@gpio+1),(c:Gpio_Write@gpio+1)

	movff	(c:level_write@gpio_level),(c:Gpio_Write@level)
	call	_Gpio_Write	;wreg free
	line	60
	
l388:
	return	;funcret
	callstack 0
GLOBAL	__end_of_level_write
	__end_of_level_write:
	signat	_level_write,12409
	global	_Gpio_Write

;; *************** function _Gpio_Write *****************
;; Defined at:
;;		line 16 in file "src/gpio.c"
;; Parameters:    Size  Location     Type
;;  gpio            2   11[COMRAM] PTR struct .
;;		 -> NULL(0), colon_control(7), colon(7), control(28), 
;;		 -> data(49), 
;;  level           1   13[COMRAM] enum E3347
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0       0       0
;;      Totals:         3       5       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_level_write
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=0
	file	"src/gpio.c"
	line	16
global __ptext16
__ptext16:
psect	text16
	file	"src/gpio.c"
	line	16
	
_Gpio_Write:
;incstack = 0
	callstack 25
	line	18
	
l4138:
		decf	((c:Gpio_Write@level))^00h,c,w
	btfss	status,2
	goto	u4731
	goto	u4730

u4731:
	goto	l4142
u4730:
	line	20
	
l4140:
	lfsr	2,06h
	movf	((c:Gpio_Write@gpio))^00h,c,w
	addwf	fsr2l
	movf	((c:Gpio_Write@gpio+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_Gpio_Write+0)&0ffh
	movlw	(01h)&0ffh
	movwf	(??_Gpio_Write+1)&0ffh
	incf	((??_Gpio_Write+0))&0ffh
	goto	u4744
u4745:
	bcf	status,0
	rlcf	((??_Gpio_Write+1))&0ffh
u4744:
	decfsz	((??_Gpio_Write+0))&0ffh
	goto	u4745
	lfsr	2,02h
	movf	((c:Gpio_Write@gpio))^00h,c,w
	addwf	fsr2l
	movf	((c:Gpio_Write@gpio+1))^00h,c,w
	addwfc	fsr2h
	movff	postinc2,??_Gpio_Write+2
	movff	postdec2,??_Gpio_Write+2+1
	movff	??_Gpio_Write+2,fsr2l
	movff	??_Gpio_Write+2+1,fsr2h
	movlb	0	; () banked
	movf	((??_Gpio_Write+1))&0ffh,w
	iorwf	indf2
	line	21
	goto	l153
	line	24
	
l4142:
	lfsr	2,06h
	movf	((c:Gpio_Write@gpio))^00h,c,w
	addwf	fsr2l
	movf	((c:Gpio_Write@gpio+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_Gpio_Write+0)&0ffh
	movlw	(01h)&0ffh
	movwf	(??_Gpio_Write+1)&0ffh
	incf	((??_Gpio_Write+0))&0ffh
	goto	u4754
u4755:
	bcf	status,0
	rlcf	((??_Gpio_Write+1))&0ffh
u4754:
	decfsz	((??_Gpio_Write+0))&0ffh
	goto	u4755
	movlb	0	; () banked
	movf	((??_Gpio_Write+1))&0ffh,w
	xorlw	0ffh
	movwf	(??_Gpio_Write+2)&0ffh
	lfsr	2,02h
	movf	((c:Gpio_Write@gpio))^00h,c,w
	addwf	fsr2l
	movf	((c:Gpio_Write@gpio+1))^00h,c,w
	addwfc	fsr2h
	movff	postinc2,??_Gpio_Write+3
	movff	postdec2,??_Gpio_Write+3+1
	movff	??_Gpio_Write+3,fsr2l
	movff	??_Gpio_Write+3+1,fsr2h
	movf	((??_Gpio_Write+2))&0ffh,w
	andwf	indf2
	line	26
	
l153:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_Gpio_Write
	__end_of_Gpio_Write:
	signat	_Gpio_Write,8313
	global	_clock_update_1s

;; *************** function _clock_update_1s *****************
;; Defined at:
;;		line 14 in file "src/clock.c"
;; Parameters:    Size  Location     Type
;;  clk             1   11[COMRAM] PTR struct .
;;		 -> sys_clock(3), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=0
	file	"src/clock.c"
	line	14
global __ptext17
__ptext17:
psect	text17
	file	"src/clock.c"
	line	14
	
_clock_update_1s:; BSR set to: 0

;incstack = 0
	callstack 27
	line	16
	
l3124:
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	incf	indf2

	line	18
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

		movlw	03Ch-1
	cpfsgt	indf2
	goto	u2831
	goto	u2830

u2831:
	goto	l324
u2830:
	line	20
	
l3126:
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	clrf	indf2
	line	21
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	incf	indf2

	line	23
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

		movlw	03Ch-1
	cpfsgt	indf2
	goto	u2841
	goto	u2840

u2841:
	goto	l324
u2840:
	line	25
	
l3128:
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	clrf	indf2
	line	26
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	incf	indf2

	line	28
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
		movlw	018h-1
	cpfsgt	indf2
	goto	u2851
	goto	u2850

u2851:
	goto	l324
u2850:
	line	30
	
l3130:
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	34
	
l324:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clock_update_1s
	__end_of_clock_update_1s:
	signat	_clock_update_1s,4217
	global	_clock_init

;; *************** function _clock_init *****************
;; Defined at:
;;		line 5 in file "src/clock.c"
;; Parameters:    Size  Location     Type
;;  clk             1    3[BANK0 ] PTR struct .
;;		 -> sys_clock(3), 
;;  h               1    4[BANK0 ] unsigned char 
;;  m               1    5[BANK0 ] unsigned char 
;;  s               1    6[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_ClockStorage_Init
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=0
	line	5
global __ptext18
__ptext18:
psect	text18
	file	"src/clock.c"
	line	5
	
_clock_init:
;incstack = 0
	callstack 25
	line	7
	
l3936:
	movlb	0	; () banked
	movf	((clock_init@clk))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(clock_init@h),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(018h)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	indf2,c

	line	8
	movlb	0	; () banked
	movf	((clock_init@clk))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movff	(clock_init@m),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(03Ch)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	indf2,c

	line	9
	movlb	0	; () banked
	movf	((clock_init@clk))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movff	(clock_init@s),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(03Ch)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	indf2,c

	line	11
		movff	(clock_init@clk),(ClockStorage_Init@h)

	movlb	0	; () banked
	incf	((clock_init@clk))&0ffh,w
	movwf	((ClockStorage_Init@m))&0ffh
	movf	((clock_init@clk))&0ffh,w
	addlw	low(02h)
	movwf	((ClockStorage_Init@s))&0ffh
	call	_ClockStorage_Init	;wreg free
	line	12
	
l318:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clock_init
	__end_of_clock_init:
	signat	_clock_init,16505
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 7 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   11[COMRAM] int 
;;  divisor         2   13[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   16[COMRAM] unsigned char 
;;  counter         1   15[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   11[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_clock_init
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/awmod.c"
	line	7
global __ptext19
__ptext19:
psect	text19
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/awmod.c"
	line	7
	
___awmod:
;incstack = 0
	callstack 26
	line	12
	
l2826:
	clrf	((c:___awmod@sign))^00h,c
	line	13
	
l2828:
	btfsc	((c:___awmod@dividend+1))^00h,c,7
	goto	u2430
	goto	u2431

u2431:
	goto	l2834
u2430:
	line	14
	
l2830:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	15
	
l2832:
	movlw	low(01h)
	movwf	((c:___awmod@sign))^00h,c
	line	17
	
l2834:
	btfsc	((c:___awmod@divisor+1))^00h,c,7
	goto	u2440
	goto	u2441

u2441:
	goto	l2838
u2440:
	line	18
	
l2836:
	negf	((c:___awmod@divisor))^00h,c
	comf	((c:___awmod@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@divisor+1))^00h,c
	line	19
	
l2838:
	movf	((c:___awmod@divisor))^00h,c,w
iorwf	((c:___awmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u2451
	goto	u2450

u2451:
	goto	l2854
u2450:
	line	20
	
l2840:
	movlw	low(01h)
	movwf	((c:___awmod@counter))^00h,c
	line	21
	goto	l2844
	line	22
	
l2842:
	bcf	status,0
	rlcf	((c:___awmod@divisor))^00h,c
	rlcf	((c:___awmod@divisor+1))^00h,c
	line	23
	incf	((c:___awmod@counter))^00h,c
	line	21
	
l2844:
	
	btfss	((c:___awmod@divisor+1))^00h,c,(15)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l2842
u2460:
	line	26
	
l2846:
		movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c,w
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u2471
	goto	u2470

u2471:
	goto	l2850
u2470:
	line	27
	
l2848:
	movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c

	line	28
	
l2850:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1))^00h,c
	rrcf	((c:___awmod@divisor))^00h,c
	line	29
	
l2852:
	decfsz	((c:___awmod@counter))^00h,c
	
	goto	l2846
	line	31
	
l2854:
	movf	((c:___awmod@sign))^00h,c,w
	btfsc	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l2858
u2480:
	line	32
	
l2856:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	33
	
l2858:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	line	34
	
l1083:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	_ClockStorage_Init

;; *************** function _ClockStorage_Init *****************
;; Defined at:
;;		line 10 in file "app/clock_storage.c"
;; Parameters:    Size  Location     Type
;;  h               1    0[BANK0 ] PTR unsigned char 
;;		 -> sys_clock(3), 
;;  m               1    1[BANK0 ] PTR unsigned char 
;;		 -> sys_clock(3), 
;;  s               1    2[BANK0 ] PTR unsigned char 
;;		 -> sys_clock(3), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       3       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_ClockStorage_SaveTime
;;		_EEPROM_ReadByte
;;		_EEPROM_WriteByte
;; This function is called by:
;;		_clock_init
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=0
	file	"app/clock_storage.c"
	line	10
global __ptext20
__ptext20:
psect	text20
	file	"app/clock_storage.c"
	line	10
	
_ClockStorage_Init:
;incstack = 0
	callstack 25
	line	12
	
l3814:
	movlw	(0)&0ffh
	
	call	_EEPROM_ReadByte
	xorlw	0A5h
	btfsc	status,2
	goto	u4301
	goto	u4300
u4301:
	goto	l3822
u4300:
	line	14
	
l3816:
	movlb	0	; () banked
	movf	((ClockStorage_Init@h))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0Ch)
	movwf	indf2
	line	15
	movf	((ClockStorage_Init@m))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	16
	movf	((ClockStorage_Init@s))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	18
	
l3818:; BSR set to: 0

	movf	((ClockStorage_Init@m))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:ClockStorage_SaveTime@minutes))^00h,c
	movf	((ClockStorage_Init@s))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:ClockStorage_SaveTime@seconds))^00h,c
	movf	((ClockStorage_Init@h))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	
	call	_ClockStorage_SaveTime
	line	20
	
l3820:
	movlw	low(0A5h)
	movwf	((c:EEPROM_WriteByte@data))^00h,c
	movlw	(0)&0ffh
	
	call	_EEPROM_WriteByte
	line	21
	goto	l452
	line	24
	
l3822:
	movlb	0	; () banked
	movf	((ClockStorage_Init@h))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	(01h)&0ffh
	
	call	_EEPROM_ReadByte
	movwf	indf2,c

	line	25
	movlb	0	; () banked
	movf	((ClockStorage_Init@m))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	(02h)&0ffh
	
	call	_EEPROM_ReadByte
	movwf	indf2,c

	line	26
	movlb	0	; () banked
	movf	((ClockStorage_Init@s))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	(03h)&0ffh
	
	call	_EEPROM_ReadByte
	movwf	indf2,c

	line	28
	
l452:
	return	;funcret
	callstack 0
GLOBAL	__end_of_ClockStorage_Init
	__end_of_ClockStorage_Init:
	signat	_ClockStorage_Init,12409
	global	_EEPROM_ReadByte

;; *************** function _EEPROM_ReadByte *****************
;; Defined at:
;;		line 29 in file "src/eeprom.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ClockStorage_Init
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=0
	file	"src/eeprom.c"
	line	29
global __ptext21
__ptext21:
psect	text21
	file	"src/eeprom.c"
	line	29
	
_EEPROM_ReadByte:
;incstack = 0
	callstack 25
	movwf	((c:EEPROM_ReadByte@address))^00h,c
	line	31
	
l2700:
	movff	(c:EEPROM_ReadByte@address),(c:4009)	;volatile
	line	33
	
l2702:
	bcf	((c:4006))^0f00h,c,7	;volsfr
	line	34
	
l2704:
	bcf	((c:4006))^0f00h,c,6	;volsfr
	line	36
	
l2706:
	bsf	((c:4006))^0f00h,c,0	;volsfr
	line	38
	
l2708:
	movf	((c:4008))^0f00h,c,w	;volatile
	line	39
	
l441:
	return	;funcret
	callstack 0
GLOBAL	__end_of_EEPROM_ReadByte
	__end_of_EEPROM_ReadByte:
	signat	_EEPROM_ReadByte,4217
	global	_Uart_Start

;; *************** function _Uart_Start *****************
;; Defined at:
;;		line 33 in file "src/uart.c"
;; Parameters:    Size  Location     Type
;;  uart            1   14[COMRAM] PTR const struct .
;;		 -> uart_config(6), 
;; Auto vars:     Size  Location     Type
;;  dummy           1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_Buffer_Init
;;		_Gpio_Init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	33
global __ptext22
__ptext22:
psect	text22
	file	"src/uart.c"
	line	33
	
_Uart_Start:
;incstack = 0
	callstack 26
	line	35
	
l3888:
	movf	((c:Uart_Start@uart))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_Uart_Start+0)^00h,c
		movff	(??_Uart_Start+0),(c:Gpio_Init@gpio)
	clrf	((c:Gpio_Init@gpio+1))^00h,c

	movlw	low(01h)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	36
	movf	((c:Uart_Start@uart))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_Uart_Start+0)^00h,c
		movff	(??_Uart_Start+0),(c:Gpio_Init@gpio)
	clrf	((c:Gpio_Init@gpio+1))^00h,c

	movlw	low(01h)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	38
		movlw	low(_tx_buffer)
	movwf	((c:Buffer_Init@buffer))^00h,c

	call	_Buffer_Init	;wreg free
	line	39
		movlw	low(_rx_buffer)
	movwf	((c:Buffer_Init@buffer))^00h,c

	call	_Buffer_Init	;wreg free
	line	41
	
l3890:
	bsf	((c:4011))^0f00h,c,7	;volatile
	line	42
	
l3892:
	bsf	((c:4012))^0f00h,c,5	;volatile
	line	43
	
l3894:
	bsf	((c:4011))^0f00h,c,4	;volatile
	line	45
	
l3896:
	bcf	((c:3998))^0f00h,c,4	;volatile
	line	46
	
l3898:
	bcf	((c:3997))^0f00h,c,4	;volatile
	line	49
	
l3900:
	btfss	((c:3998))^0f00h,c,5	;volatile
	goto	u4441
	goto	u4440
u4441:
	goto	l211
u4440:
	line	51
	
l3902:
	movf	((c:4014))^0f00h,c,w	;volatile
	line	53
	
l211:
	line	54
	bsf	((c:3997))^0f00h,c,5	;volatile
	line	56
	
l212:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Uart_Start
	__end_of_Uart_Start:
	signat	_Uart_Start,4217
	global	_Buffer_Init

;; *************** function _Buffer_Init *****************
;; Defined at:
;;		line 3 in file "src/buffer.c"
;; Parameters:    Size  Location     Type
;;  buffer          1   11[COMRAM] PTR volatile struct .
;;		 -> rx_buffer(22), tx_buffer(22), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Uart_Start
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=0
	file	"src/buffer.c"
	line	3
global __ptext23
__ptext23:
psect	text23
	file	"src/buffer.c"
	line	3
	
_Buffer_Init:
;incstack = 0
	callstack 26
	line	5
	
l2764:
	movf	((c:Buffer_Init@buffer))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(014h)
	addwf	fsr2l

	clrf	indf2
	line	6
	movf	((c:Buffer_Init@buffer))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(015h)
	addwf	fsr2l

	clrf	indf2
	line	7
	
l163:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Buffer_Init
	__end_of_Buffer_Init:
	signat	_Buffer_Init,4217
	global	_Uart_Init

;; *************** function _Uart_Init *****************
;; Defined at:
;;		line 10 in file "src/uart.c"
;; Parameters:    Size  Location     Type
;;  uart            1   11[COMRAM] PTR const struct .
;;		 -> uart_config(6), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	10
global __ptext24
__ptext24:
psect	text24
	file	"src/uart.c"
	line	10
	
_Uart_Init:
;incstack = 0
	callstack 27
	line	12
	
l2910:
	bcf	((c:4012))^0f00h,c,6	;volatile
	line	13
	bcf	((c:4011))^0f00h,c,6	;volatile
	line	14
	bcf	((c:4012))^0f00h,c,4	;volatile
	line	16
	
l2912:
	movf	((c:Uart_Init@uart))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movlw	128
	xorwf	postinc2,w
	bnz	u2551
movlw	37
	xorwf	postinc2,w
iorwf	postinc2,w
iorwf	postinc2,w
	btfss	status,2
	goto	u2551
	goto	u2550

u2551:
	goto	l208
u2550:
	line	18
	
l2914:
	bsf	((c:4012))^0f00h,c,2	;volatile
	line	19
	bcf	((c:4024))^0f00h,c,3	;volatile
	line	21
	clrf	((c:4016))^0f00h,c	;volatile
	line	22
	
l2916:
	movlw	low(081h)
	movwf	((c:4015))^0f00h,c	;volatile
	line	30
	
l208:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Uart_Init
	__end_of_Uart_Init:
	signat	_Uart_Init,4217
	global	_Button_Task

;; *************** function _Button_Task *****************
;; Defined at:
;;		line 43 in file "app/app.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_button_update
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=0
	file	"app/app.c"
	line	43
global __ptext25
__ptext25:
psect	text25
	file	"app/app.c"
	line	43
	
_Button_Task:
;incstack = 0
	callstack 25
	line	45
	
l4320:
		movlw	low(_btn_cfg)
	movlb	0	; () banked
	movwf	((button_update@btn))&0ffh

	call	_button_update	;wreg free
	line	46
		movlw	low(_btn_inc)
	movlb	0	; () banked
	movwf	((button_update@btn))&0ffh

	call	_button_update	;wreg free
	line	47
		movlw	low(_btn_dcr)
	movlb	0	; () banked
	movwf	((button_update@btn))&0ffh

	call	_button_update	;wreg free
	line	48
	
l124:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Button_Task
	__end_of_Button_Task:
	signat	_Button_Task,89
	global	_button_update

;; *************** function _button_update *****************
;; Defined at:
;;		line 16 in file "src/button_driver.c"
;; Parameters:    Size  Location     Type
;;  btn             1    0[BANK0 ] PTR struct .
;;		 -> btn_dcr(7), btn_inc(7), btn_cfg(7), 
;; Auto vars:     Size  Location     Type
;;  state           1    3[BANK0 ] enum E64
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       1       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_Gpio_Read
;; This function is called by:
;;		_Button_Task
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=0
	file	"src/button_driver.c"
	line	16
global __ptext26
__ptext26:
psect	text26
	file	"src/button_driver.c"
	line	16
	
_button_update:
;incstack = 0
	callstack 25
	line	19
	
l4160:
	movlb	0	; () banked
	movf	((button_update@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	decf	postinc2,w
	btfss	status,2
	goto	u4761
	goto	u4760

u4761:
	goto	l4164
u4760:
	line	21
	
l4162:; BSR set to: 0

	movf	((button_update@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:Gpio_Read@gpio))^00h,c
	call	_Gpio_Read	;wreg free
	decf	wreg
	btfsc	status,2
	goto	u4771
	goto	u4770
u4771:
	movlw	1
	goto	u4780
u4770:
	movlw	0
u4780:
	movlb	0	; () banked
	movwf	((button_update@state))&0ffh
	line	22
	goto	l4166
	line	25
	
l4164:; BSR set to: 0

	movf	((button_update@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:Gpio_Read@gpio))^00h,c
	call	_Gpio_Read	;wreg free
	decf	wreg
	btfss	status,2
	goto	u4791
	goto	u4790
u4791:
	movlw	1
	goto	u4800
u4790:
	movlw	0
u4800:
	movlb	0	; () banked
	movwf	((button_update@state))&0ffh
	line	28
	
l4166:; BSR set to: 0

	movf	((button_update@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movf	((button_update@state))&0ffh,w
xorwf	postinc2,w
	btfss	status,2
	goto	u4811
	goto	u4810

u4811:
	goto	l4170
u4810:
	line	30
	
l4168:; BSR set to: 0

	movf	((button_update@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	clrf	indf2
	line	31
	goto	l348
	line	33
	
l4170:; BSR set to: 0

	movf	((button_update@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	incf	indf2

	line	34
	
l4172:; BSR set to: 0

	movf	((button_update@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(05h)
	addwf	fsr2l

	movf	((button_update@btn))&0ffh,w
	movwf	fsr1l
	clrf	fsr1h
	movlw	low(04h)
	addwf	fsr1l

		movf	postinc2,w
	subwf	postinc1,w
	btfss	status,0
	goto	u4821
	goto	u4820

u4821:
	goto	l348
u4820:
	line	36
	
l4174:; BSR set to: 0

	movf	((button_update@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movf	((button_update@btn))&0ffh,w
	movwf	fsr1l
	clrf	fsr1h
	movlw	low(03h)
	addwf	fsr1l

	movff	indf2,indf1
	line	37
	
l4176:; BSR set to: 0

	movf	((button_update@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movff	(button_update@state),indf2

	line	39
	
l4178:; BSR set to: 0

	movf	((button_update@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	movf	indf2,w
	btfss	status,2
	goto	u4831
	goto	u4830
u4831:
	goto	l4184
u4830:
	
l4180:; BSR set to: 0

	movf	((button_update@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	decf	postinc2,w
	btfss	status,2
	goto	u4841
	goto	u4840

u4841:
	goto	l4184
u4840:
	line	41
	
l4182:; BSR set to: 0

	movf	((button_update@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movlw	low(01h)
	movwf	indf2
	line	42
	goto	l346
	line	43
	
l4184:; BSR set to: 0

	movf	((button_update@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	decf	postinc2,w
	btfss	status,2
	goto	u4851
	goto	u4850

u4851:
	goto	l346
u4850:
	
l4186:; BSR set to: 0

	movf	((button_update@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movf	indf2,w
	btfss	status,2
	goto	u4861
	goto	u4860
u4861:
	goto	l346
u4860:
	line	45
	
l4188:; BSR set to: 0

	movf	((button_update@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movlw	low(02h)
	movwf	indf2
	line	46
	
l346:; BSR set to: 0

	line	47
	movf	((button_update@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	clrf	indf2
	line	50
	
l348:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_button_update
	__end_of_button_update:
	signat	_button_update,4217
	global	_Gpio_Read

;; *************** function _Gpio_Read *****************
;; Defined at:
;;		line 28 in file "src/gpio.c"
;; Parameters:    Size  Location     Type
;;  gpio            1   11[COMRAM] PTR struct .
;;		 -> button_dcr(7), button_inc(7), button_cfg(7), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E3347
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_button_update
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,group=0
	file	"src/gpio.c"
	line	28
global __ptext27
__ptext27:
psect	text27
	file	"src/gpio.c"
	line	28
	
_Gpio_Read:; BSR set to: 0

;incstack = 0
	callstack 25
	line	30
	
l3758:
	movf	((c:Gpio_Read@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	movff	postinc2,??_Gpio_Read+0
	movff	postdec2,??_Gpio_Read+0+1
	movff	??_Gpio_Read+0,fsr2l
	movff	??_Gpio_Read+0+1,fsr2h
	movf	indf2,w
	movwf	(??_Gpio_Read+2)^00h,c
	movf	((c:Gpio_Read@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_Gpio_Read+3)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_Gpio_Read+4)^00h,c
	incf	((??_Gpio_Read+3))^00h,c
	goto	u4174
u4175:
	bcf	status,0
	rlcf	((??_Gpio_Read+4))^00h,c
u4174:
	decfsz	((??_Gpio_Read+3))^00h,c
	goto	u4175
	movf	((??_Gpio_Read+4))^00h,c,w
	andwf	((??_Gpio_Read+2))^00h,c,w
	iorlw	0
	btfsc	status,2
	goto	u4181
	goto	u4180
u4181:
	goto	l3764
u4180:
	line	32
	
l3760:
	movlw	(01h)&0ffh
	goto	l157
	line	34
	
l3764:
	movlw	(0)&0ffh
	line	35
	
l157:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Gpio_Read
	__end_of_Gpio_Read:
	signat	_Gpio_Read,4217
	global	_App_Task

;; *************** function _App_Task *****************
;; Defined at:
;;		line 51 in file "app/app.c"
;; Parameters:    Size  Location     Type
;;  app             1    0[BANK0 ] PTR struct .
;;		 -> app(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       1       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_ClockStorage_SaveTime
;;		_button_get_event
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=0
	file	"app/app.c"
	line	51
global __ptext28
__ptext28:
psect	text28
	file	"app/app.c"
	line	51
	
_App_Task:
;incstack = 0
	callstack 25
	line	54
	
l4270:
		movlw	low(_btn_cfg)
	movwf	((c:button_get_event@btn))^00h,c

	call	_button_get_event	;wreg free
	xorlw	02h
	btfss	status,2
	goto	u5001
	goto	u5000
u5001:
	goto	l4286
u5000:
	goto	l4284
	line	59
	
l4274:; BSR set to: 0

	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	low(01h)
	movwf	indf2
	line	60
	goto	l4286
	line	62
	
l4276:; BSR set to: 0

	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	low(02h)
	movwf	indf2
	line	63
	goto	l4286
	line	65
	
l4278:; BSR set to: 0

	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	clrf	indf2
	line	66
	
l4280:; BSR set to: 0

	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movf	indf2,w
	movwf	((c:ClockStorage_SaveTime@minutes))^00h,c
	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movf	indf2,w
	movwf	((c:ClockStorage_SaveTime@seconds))^00h,c
	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	
	call	_ClockStorage_SaveTime
	line	67
	goto	l4286
	line	68
	
l4284:
	movlb	0	; () banked
	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_App_Task+0)&0ffh
	clrf	(??_App_Task+0+1)&0ffh

	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_App_Task+0+1&0ffh,w
	xorlw	0^0	; case 0
	skipnz
	goto	l4458
	goto	l4286
	
l4458:; BSR set to: 0

; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	movf ??_App_Task+0&0ffh,w
	xorlw	0^0	; case 0
	skipnz
	goto	l4274
	xorlw	1^0	; case 1
	skipnz
	goto	l4276
	xorlw	2^1	; case 2
	skipnz
	goto	l4278
	goto	l4286

	line	71
	
l4286:
		movlw	low(_btn_inc)
	movwf	((c:button_get_event@btn))^00h,c

	call	_button_get_event	;wreg free
	xorlw	02h
	btfss	status,2
	goto	u5011
	goto	u5010
u5011:
	goto	l4300
u5010:
	line	73
	
l4288:
	movlb	0	; () banked
	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	decf	postinc2,w
	btfss	status,2
	goto	u5021
	goto	u5020

u5021:
	goto	l4294
u5020:
	line	75
	
l4290:; BSR set to: 0

	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	incf	indf2

	line	76
	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	24
	xorwf	postinc2,w
	btfss	status,2
	goto	u5031
	goto	u5030

u5031:
	goto	l4294
u5030:
	line	78
	
l4292:; BSR set to: 0

	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	82
	
l4294:; BSR set to: 0

	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	2
	xorwf	postinc2,w
	btfss	status,2
	goto	u5041
	goto	u5040

u5041:
	goto	l4300
u5040:
	line	84
	
l4296:; BSR set to: 0

	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	incf	indf2

	line	85
	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	60
	xorwf	postinc2,w
	btfss	status,2
	goto	u5051
	goto	u5050

u5051:
	goto	l4300
u5050:
	line	87
	
l4298:; BSR set to: 0

	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	clrf	indf2
	line	92
	
l4300:
		movlw	low(_btn_dcr)
	movwf	((c:button_get_event@btn))^00h,c

	call	_button_get_event	;wreg free
	xorlw	02h
	btfss	status,2
	goto	u5061
	goto	u5060
u5061:
	goto	l143
u5060:
	line	94
	
l4302:
	movlb	0	; () banked
	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	decf	postinc2,w
	btfss	status,2
	goto	u5071
	goto	u5070

u5071:
	goto	l4310
u5070:
	line	96
	
l4304:; BSR set to: 0

	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u5081
	goto	u5080
u5081:
	goto	l4308
u5080:
	line	98
	
l4306:; BSR set to: 0

	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(018h)
	movwf	indf2
	line	100
	
l4308:; BSR set to: 0

	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	decf	indf2

	line	103
	
l4310:; BSR set to: 0

	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	2
	xorwf	postinc2,w
	btfss	status,2
	goto	u5091
	goto	u5090

u5091:
	goto	l143
u5090:
	line	105
	
l4312:; BSR set to: 0

	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movf	indf2,w
	btfss	status,2
	goto	u5101
	goto	u5100
u5101:
	goto	l142
u5100:
	line	107
	
l4314:; BSR set to: 0

	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	low(03Ch)
	movwf	indf2
	line	108
	
l142:; BSR set to: 0

	line	109
	movf	((App_Task@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	decf	indf2

	line	113
	
l143:
	return	;funcret
	callstack 0
GLOBAL	__end_of_App_Task
	__end_of_App_Task:
	signat	_App_Task,4217
	global	_button_get_event

;; *************** function _button_get_event *****************
;; Defined at:
;;		line 52 in file "src/button_driver.c"
;; Parameters:    Size  Location     Type
;;  btn             1   11[COMRAM] PTR struct .
;;		 -> btn_dcr(7), btn_inc(7), btn_cfg(7), 
;; Auto vars:     Size  Location     Type
;;  event           1   12[COMRAM] enum E68
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E68
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_App_Task
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=0
	file	"src/button_driver.c"
	line	52
global __ptext29
__ptext29:
psect	text29
	file	"src/button_driver.c"
	line	52
	
_button_get_event:
;incstack = 0
	callstack 26
	line	54
	
l2758:
	movf	((c:button_get_event@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movf	indf2,w
	movwf	((c:button_get_event@event))^00h,c
	line	55
	movf	((c:button_get_event@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	clrf	indf2
	line	56
	
l2760:
	movf	((c:button_get_event@event))^00h,c,w
	line	57
	
l351:
	return	;funcret
	callstack 0
GLOBAL	__end_of_button_get_event
	__end_of_button_get_event:
	signat	_button_get_event,4217
	global	_ClockStorage_SaveTime

;; *************** function _ClockStorage_SaveTime *****************
;; Defined at:
;;		line 30 in file "app/clock_storage.c"
;; Parameters:    Size  Location     Type
;;  hours           1    wreg     unsigned char 
;;  minutes         1   14[COMRAM] unsigned char 
;;  seconds         1   15[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  hours           1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_EEPROM_WriteByte
;; This function is called by:
;;		_App_Task
;;		_ClockStorage_Init
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=0
	file	"app/clock_storage.c"
	line	30
global __ptext30
__ptext30:
psect	text30
	file	"app/clock_storage.c"
	line	30
	
_ClockStorage_SaveTime:
;incstack = 0
	callstack 25
	movwf	((c:ClockStorage_SaveTime@hours))^00h,c
	line	32
	
l2676:
	movff	(c:ClockStorage_SaveTime@hours),(c:EEPROM_WriteByte@data)
	movlw	(01h)&0ffh
	
	call	_EEPROM_WriteByte
	line	33
	movff	(c:ClockStorage_SaveTime@minutes),(c:EEPROM_WriteByte@data)
	movlw	(02h)&0ffh
	
	call	_EEPROM_WriteByte
	line	34
	movff	(c:ClockStorage_SaveTime@seconds),(c:EEPROM_WriteByte@data)
	movlw	(03h)&0ffh
	
	call	_EEPROM_WriteByte
	line	35
	
l455:
	return	;funcret
	callstack 0
GLOBAL	__end_of_ClockStorage_SaveTime
	__end_of_ClockStorage_SaveTime:
	signat	_ClockStorage_SaveTime,12409
	global	_EEPROM_WriteByte

;; *************** function _EEPROM_WriteByte *****************
;; Defined at:
;;		line 4 in file "src/eeprom.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1   11[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1   12[COMRAM] unsigned char 
;;  gie_state       1   13[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ClockStorage_Init
;;		_ClockStorage_SaveTime
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=0
	file	"src/eeprom.c"
	line	4
global __ptext31
__ptext31:
psect	text31
	file	"src/eeprom.c"
	line	4
	
_EEPROM_WriteByte:
;incstack = 0
	callstack 24
	movwf	((c:EEPROM_WriteByte@address))^00h,c
	line	6
	
l2654:
	movlw	0
	btfsc	((c:4082))^0f00h,c,7	;volatile
	movlw	1
	movwf	((c:EEPROM_WriteByte@gie_state))^00h,c
	line	8
	
l2656:
	movff	(c:EEPROM_WriteByte@address),(c:4009)	;volatile
	line	9
	
l2658:
	movff	(c:EEPROM_WriteByte@data),(c:4008)	;volatile
	line	11
	
l2660:
	bcf	((c:4006))^0f00h,c,7	;volsfr
	line	12
	
l2662:
	bcf	((c:4006))^0f00h,c,6	;volsfr
	line	13
	
l2664:
	bsf	((c:4006))^0f00h,c,2	;volsfr
	line	15
	
l2666:
	bcf	((c:4082))^0f00h,c,7	;volatile
	line	17
	
l2668:
	movlw	low(055h)
	movwf	((c:4007))^0f00h,c	;volsfr
	line	18
	
l2670:
	movlw	low(0AAh)
	movwf	((c:4007))^0f00h,c	;volsfr
	line	20
	
l2672:
	bsf	((c:4006))^0f00h,c,1	;volsfr
	line	22
	
l2674:
	btfsc	(c:EEPROM_WriteByte@gie_state)^00h,c,0
	bra	u2105
	bcf	((c:4082))^0f00h,c,7	;volatile
	bra	u2106
	u2105:
	bsf	((c:4082))^0f00h,c,7	;volatile
	u2106:

	line	24
	
l435:
	btfsc	((c:4006))^0f00h,c,1	;volsfr
	goto	u2111
	goto	u2110
u2111:
	goto	l435
u2110:
	
l437:
	line	26
	bcf	((c:4006))^0f00h,c,2	;volsfr
	line	27
	
l438:
	return	;funcret
	callstack 0
GLOBAL	__end_of_EEPROM_WriteByte
	__end_of_EEPROM_WriteByte:
	signat	_EEPROM_WriteByte,8313
	global	_App_Init

;; *************** function _App_Init *****************
;; Defined at:
;;		line 33 in file "app/app.c"
;; Parameters:    Size  Location     Type
;;  app             1    9[BANK0 ] PTR struct .
;;		 -> app(2), 
;;  clk             1   10[BANK0 ] PTR struct .
;;		 -> sys_clock(3), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       2       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_button_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=0
	file	"app/app.c"
	line	33
global __ptext32
__ptext32:
psect	text32
	file	"app/app.c"
	line	33
	
_App_Init:
;incstack = 0
	callstack 25
	line	35
	
l4228:
	movlb	0	; () banked
	movf	((App_Init@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(App_Init@clk),indf2

	line	36
	
l4230:; BSR set to: 0

	movf	((App_Init@app))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	clrf	indf2
	line	38
	
l4232:; BSR set to: 0

		movlw	low(_btn_cfg)
	movwf	((button_init@btn))&0ffh

		movlw	low(_button_cfg)
	movwf	((button_init@gpio))&0ffh

	movlw	low(0)
	movwf	((button_init@polarity))&0ffh
	movlw	low(019h)
	movwf	((button_init@debounce_ticks))&0ffh
	call	_button_init	;wreg free
	line	39
	
l4234:
		movlw	low(_btn_inc)
	movlb	0	; () banked
	movwf	((button_init@btn))&0ffh

		movlw	low(_button_inc)
	movwf	((button_init@gpio))&0ffh

	movlw	low(0)
	movwf	((button_init@polarity))&0ffh
	movlw	low(019h)
	movwf	((button_init@debounce_ticks))&0ffh
	call	_button_init	;wreg free
	line	40
	
l4236:
		movlw	low(_btn_dcr)
	movlb	0	; () banked
	movwf	((button_init@btn))&0ffh

		movlw	low(_button_dcr)
	movwf	((button_init@gpio))&0ffh

	movlw	low(0)
	movwf	((button_init@polarity))&0ffh
	movlw	low(019h)
	movwf	((button_init@debounce_ticks))&0ffh
	call	_button_init	;wreg free
	line	41
	
l121:
	return	;funcret
	callstack 0
GLOBAL	__end_of_App_Init
	__end_of_App_Init:
	signat	_App_Init,8313
	global	_button_init

;; *************** function _button_init *****************
;; Defined at:
;;		line 3 in file "src/button_driver.c"
;; Parameters:    Size  Location     Type
;;  btn             1    5[BANK0 ] PTR struct .
;;		 -> btn_dcr(7), btn_inc(7), btn_cfg(7), 
;;  gpio            1    6[BANK0 ] PTR struct .
;;		 -> button_dcr(7), button_inc(7), button_cfg(7), 
;;  polarity        1    7[BANK0 ] enum E60
;;  debounce_tic    1    8[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         1       4       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_Gpio_Init
;; This function is called by:
;;		_App_Init
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,group=0
	file	"src/button_driver.c"
	line	3
global __ptext33
__ptext33:
psect	text33
	file	"src/button_driver.c"
	line	3
	
_button_init:
;incstack = 0
	callstack 25
	line	5
	
l4144:
	movlb	0	; () banked
	movf	((button_init@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(button_init@gpio),indf2

	line	6
	
l4146:; BSR set to: 0

	movf	((button_init@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movff	(button_init@polarity),indf2

	line	7
	
l4148:; BSR set to: 0

	movf	((button_init@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	clrf	indf2
	line	8
	
l4150:; BSR set to: 0

	movf	((button_init@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	clrf	indf2
	line	9
	
l4152:; BSR set to: 0

	movf	((button_init@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	clrf	indf2
	line	10
	
l4154:; BSR set to: 0

	movf	((button_init@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(05h)
	addwf	fsr2l

	movff	(button_init@debounce_ticks),indf2

	line	11
	
l4156:; BSR set to: 0

	movf	((button_init@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	clrf	indf2
	line	13
	
l4158:; BSR set to: 0

	movf	((button_init@btn))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_button_init+0)^00h,c
		movff	(??_button_init+0),(c:Gpio_Init@gpio)
	clrf	((c:Gpio_Init@gpio+1))^00h,c

	movlw	low(01h)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	14
	
l337:
	return	;funcret
	callstack 0
GLOBAL	__end_of_button_init
	__end_of_button_init:
	signat	_button_init,16505
	global	_Gpio_Init

;; *************** function _Gpio_Init *****************
;; Defined at:
;;		line 4 in file "src/gpio.c"
;; Parameters:    Size  Location     Type
;;  gpio            2   11[COMRAM] PTR struct .
;;		 -> NULL(0), button_dcr(7), button_inc(7), button_cfg(7), 
;;		 -> tx(7), rx(7), colon_control(7), colon(7), 
;;		 -> control(28), data(49), 
;;  dir             1   13[COMRAM] enum E3343
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0       0       0
;;      Totals:         3       5       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Uart_Start
;;		_button_init
;;		_display_init
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2,group=0
	file	"src/gpio.c"
	line	4
global __ptext34
__ptext34:
psect	text34
	file	"src/gpio.c"
	line	4
	
_Gpio_Init:
;incstack = 0
	callstack 25
	line	6
	
l3746:
	movf	((c:Gpio_Init@dir))^00h,c,w
	btfss	status,2
	goto	u4111
	goto	u4110
u4111:
	goto	l3750
u4110:
	line	8
	
l3748:
	lfsr	2,06h
	movf	((c:Gpio_Init@gpio))^00h,c,w
	addwf	fsr2l
	movf	((c:Gpio_Init@gpio+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_Gpio_Init+0)&0ffh
	movlw	(01h)&0ffh
	movwf	(??_Gpio_Init+1)&0ffh
	incf	((??_Gpio_Init+0))&0ffh
	goto	u4124
u4125:
	bcf	status,0
	rlcf	((??_Gpio_Init+1))&0ffh
u4124:
	decfsz	((??_Gpio_Init+0))&0ffh
	goto	u4125
	movlb	0	; () banked
	movf	((??_Gpio_Init+1))&0ffh,w
	xorlw	0ffh
	movwf	(??_Gpio_Init+2)&0ffh
	movff	(c:Gpio_Init@gpio),fsr2l
	movff	(c:Gpio_Init@gpio+1),fsr2h
	movff	postinc2,??_Gpio_Init+3
	movff	postdec2,??_Gpio_Init+3+1
	movff	??_Gpio_Init+3,fsr2l
	movff	??_Gpio_Init+3+1,fsr2h
	movf	((??_Gpio_Init+2))&0ffh,w
	andwf	indf2
	line	9
	goto	l148
	line	12
	
l3750:
	lfsr	2,06h
	movf	((c:Gpio_Init@gpio))^00h,c,w
	addwf	fsr2l
	movf	((c:Gpio_Init@gpio+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_Gpio_Init+0)&0ffh
	movlw	(01h)&0ffh
	movwf	(??_Gpio_Init+1)&0ffh
	incf	((??_Gpio_Init+0))&0ffh
	goto	u4134
u4135:
	bcf	status,0
	rlcf	((??_Gpio_Init+1))&0ffh
u4134:
	decfsz	((??_Gpio_Init+0))&0ffh
	goto	u4135
	movff	(c:Gpio_Init@gpio),fsr2l
	movff	(c:Gpio_Init@gpio+1),fsr2h
	movff	postinc2,??_Gpio_Init+2
	movff	postdec2,??_Gpio_Init+2+1
	movff	??_Gpio_Init+2,fsr2l
	movff	??_Gpio_Init+2+1,fsr2h
	movlb	0	; () banked
	movf	((??_Gpio_Init+1))&0ffh,w
	iorwf	indf2
	line	14
	
l148:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_Gpio_Init
	__end_of_Gpio_Init:
	signat	_Gpio_Init,8313
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 9 in file "src/isr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_Uart_InterruptHandler
;;		_system_tick_1ms
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
	file	"build/bin/clock.s"
	line	#
global __pintcode
__pintcode:
psect	intcode
	file	"src/isr.c"
	line	9
	
_ISR:; BSR set to: 0

;incstack = 0
	callstack 24
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	movff	fsr1l+0,??_ISR+1
	movff	fsr1h+0,??_ISR+2
	movff	fsr2l+0,??_ISR+3
	movff	fsr2h+0,??_ISR+4
	line	12
	
i2l3226:
	movlw	0
	btfsc	((c:3998))^0f00h,c,5	;volatile
	movlw	1
	btfsc	((c:3998))^0f00h,c,4	;volatile
	movlw	1

	btfsc	wreg,0
	goto	i2u298_41
	goto	i2u298_40
i2u298_41:
	clrf	(??_ISR+0)^00h,c
	incf	(??_ISR+0)^00h,c
	goto	i2u298_48
i2u298_40:
	clrf	(??_ISR+0)^00h,c
i2u298_48:
	movf	(??_ISR+0)^00h,c,w
	btfsc	status,2
	goto	i2u299_41
	goto	i2u299_40
i2u299_41:
	goto	i2l3230
i2u299_40:
	line	14
	
i2l3228:
	call	_Uart_InterruptHandler	;wreg free
	line	18
	
i2l3230:
	btfss	((c:4082))^0f00h,c,2	;volatile
	goto	i2u300_41
	goto	i2u300_40
i2u300_41:
	goto	i2l275
i2u300_40:
	
i2l3232:
	btfss	((c:4082))^0f00h,c,5	;volatile
	goto	i2u301_41
	goto	i2u301_40
i2u301_41:
	goto	i2l275
i2u301_40:
	line	21
	
i2l3234:
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	25
	
i2l3236:
	movlw	low(0FBh)
	movwf	((c:4055))^0f00h,c	;volatile
	line	26
	movlw	low(01Eh)
	movwf	((c:4054))^0f00h,c	;volatile
	line	30
	
i2l3238:
	call	_system_tick_1ms	;wreg free
	line	33
	
i2l275:
	movff	??_ISR+4,fsr2h+0
	movff	??_ISR+3,fsr2l+0
	movff	??_ISR+2,fsr1h+0
	movff	??_ISR+1,fsr1l+0
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	callstack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,89
	global	_system_tick_1ms

;; *************** function _system_tick_1ms *****************
;; Defined at:
;;		line 8 in file "src/system_tick.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=0
	file	"src/system_tick.c"
	line	8
global __ptext36
__ptext36:
psect	text36
	file	"src/system_tick.c"
	line	8
	
_system_tick_1ms:
;incstack = 0
	callstack 25
	line	10
	
i2l2026:
		incf	((c:_pending_ticks))^00h,c,w	;volatile
	btfsc	status,2
	goto	i2u84_41
	goto	i2u84_40

i2u84_41:
	goto	i2l296
i2u84_40:
	line	12
	
i2l2028:
	incf	((c:_pending_ticks))^00h,c	;volatile
	line	14
	
i2l296:
	return	;funcret
	callstack 0
GLOBAL	__end_of_system_tick_1ms
	__end_of_system_tick_1ms:
	signat	_system_tick_1ms,89
	global	_Uart_InterruptHandler

;; *************** function _Uart_InterruptHandler *****************
;; Defined at:
;;		line 66 in file "src/uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  c               1    5[COMRAM] unsigned char 
;;  c               1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_Buffer_Add
;;		_Buffer_Get
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	66
global __ptext37
__ptext37:
psect	text37
	file	"src/uart.c"
	line	66
	
_Uart_InterruptHandler:
;incstack = 0
	callstack 24
	line	69
	
i2l3150:
	btfss	((c:3998))^0f00h,c,5	;volatile
	goto	i2u287_41
	goto	i2u287_40
i2u287_41:
	goto	i2l3160
i2u287_40:
	line	72
	
i2l3152:
	btfss	((c:4011))^0f00h,c,1	;volatile
	goto	i2u288_41
	goto	i2u288_40
i2u288_41:
	goto	i2l219
i2u288_40:
	line	75
	
i2l3154:
	bcf	((c:4011))^0f00h,c,4	;volatile
	line	76
	bsf	((c:4011))^0f00h,c,4	;volatile
	line	77
	goto	i2l220
	line	78
	
i2l219:
	line	80
	btfss	((c:4011))^0f00h,c,2	;volatile
	goto	i2u289_41
	goto	i2u289_40
i2u289_41:
	goto	i2l221
i2u289_40:
	line	83
	
i2l3156:
	movf	((c:4014))^0f00h,c,w	;volatile
	line	84
	goto	i2l220
	line	85
	
i2l221:
	line	87
	movff	(c:4014),(c:Uart_InterruptHandler@c)	;volatile
	line	88
	
i2l3158:
		movlw	low(_rx_buffer)
	movwf	((c:Buffer_Add@buffer))^00h,c

	movff	(c:Uart_InterruptHandler@c),(c:Buffer_Add@element)
	call	_Buffer_Add	;wreg free
	line	93
	
i2l3160:
	btfss	((c:3998))^0f00h,c,4	;volatile
	goto	i2u290_41
	goto	i2u290_40
i2u290_41:
	goto	i2l220
i2u290_40:
	
i2l3162:
	btfss	((c:3997))^0f00h,c,4	;volatile
	goto	i2u291_41
	goto	i2u291_40
i2u291_41:
	goto	i2l220
i2u291_40:
	line	96
	
i2l3164:
		movlw	low(_tx_buffer)
	movwf	((c:Buffer_Get@buffer))^00h,c

		movlw	low(Uart_InterruptHandler@c_700)
	movwf	((c:Buffer_Get@element))^00h,c

	call	_Buffer_Get	;wreg free
	iorlw	0
	btfsc	status,2
	goto	i2u292_41
	goto	i2u292_40
i2u292_41:
	goto	i2l223
i2u292_40:
	line	98
	
i2l3166:
	movff	(c:Uart_InterruptHandler@c_700),(c:4013)	;volatile
	line	99
	goto	i2l220
	line	100
	
i2l223:
	line	102
	bcf	((c:3997))^0f00h,c,4	;volatile
	line	106
	
i2l220:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Uart_InterruptHandler
	__end_of_Uart_InterruptHandler:
	signat	_Uart_InterruptHandler,89
	global	_Buffer_Get

;; *************** function _Buffer_Get *****************
;; Defined at:
;;		line 27 in file "src/buffer.c"
;; Parameters:    Size  Location     Type
;;  buffer          1    0[COMRAM] PTR volatile struct .
;;		 -> rx_buffer(22), tx_buffer(22), 
;;  element         1    1[COMRAM] PTR unsigned char 
;;		 -> Uart_InterruptHandler@c_700(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Uart_InterruptHandler
;;		_Uart_Read
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=0
	file	"src/buffer.c"
	line	27
global __ptext38
__ptext38:
psect	text38
	file	"src/buffer.c"
	line	27
	
_Buffer_Get:
;incstack = 0
	callstack 24
	line	29
	
i2l2780:
	movf	((c:Buffer_Get@buffer))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(015h)
	addwf	fsr2l

	movf	((c:Buffer_Get@buffer))^00h,c,w
	movwf	fsr1l
	clrf	fsr1h
	movlw	low(014h)
	addwf	fsr1l

	movf	postinc2,w
xorwf	postinc1,w
	btfss	status,2
	goto	i2u233_41
	goto	i2u233_40

i2u233_41:
	goto	i2l2786
i2u233_40:
	line	32
	
i2l2782:
	movlw	(0)&0ffh
	goto	i2l172
	line	35
	
i2l2786:
	movf	((c:Buffer_Get@buffer))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(015h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_Buffer_Get+0)^00h,c
	movf	((c:Buffer_Get@buffer))^00h,c,w
	addwf	((??_Buffer_Get+0))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:Buffer_Get@element))^00h,c,w
	movwf	fsr1l
	clrf	fsr1h
	movff	indf2,indf1
	line	36
	
i2l2788:
	movf	((c:Buffer_Get@buffer))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(015h)
	addwf	fsr2l

	incf	indf2

	line	38
	
i2l2790:
	movf	((c:Buffer_Get@buffer))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(015h)
	addwf	fsr2l

	movlw	20
	xorwf	postinc2,w
	btfss	status,2
	goto	i2u234_41
	goto	i2u234_40

i2u234_41:
	goto	i2l2794
i2u234_40:
	line	39
	
i2l2792:
	movf	((c:Buffer_Get@buffer))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(015h)
	addwf	fsr2l

	clrf	indf2
	line	41
	
i2l2794:
	movlw	(01h)&0ffh
	line	42
	
i2l172:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Buffer_Get
	__end_of_Buffer_Get:
	signat	_Buffer_Get,8313
	global	_Buffer_Add

;; *************** function _Buffer_Add *****************
;; Defined at:
;;		line 9 in file "src/buffer.c"
;; Parameters:    Size  Location     Type
;;  buffer          1    0[COMRAM] PTR volatile struct .
;;		 -> rx_buffer(22), tx_buffer(22), 
;;  element         1    1[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  next_head       1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Uart_InterruptHandler
;;		__putchar
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=0
	line	9
global __ptext39
__ptext39:
psect	text39
	file	"src/buffer.c"
	line	9
	
_Buffer_Add:
;incstack = 0
	callstack 24
	line	11
	
i2l2766:
	movf	((c:Buffer_Add@buffer))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(014h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_Buffer_Add+0)^00h,c
	incf	((??_Buffer_Add+0))^00h,c,w
	movwf	((c:Buffer_Add@next_head))^00h,c
	line	13
	
i2l2768:
		movlw	20
	xorwf	((c:Buffer_Add@next_head))^00h,c,w
	btfss	status,2
	goto	i2u231_41
	goto	i2u231_40

i2u231_41:
	goto	i2l2772
i2u231_40:
	line	14
	
i2l2770:
	clrf	((c:Buffer_Add@next_head))^00h,c
	line	16
	
i2l2772:
	movf	((c:Buffer_Add@buffer))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(015h)
	addwf	fsr2l

	movf	((c:Buffer_Add@next_head))^00h,c,w
xorwf	postinc2,w
	btfss	status,2
	goto	i2u232_41
	goto	i2u232_40

i2u232_41:
	goto	i2l2776
i2u232_40:
	goto	i2l168
	line	22
	
i2l2776:
	movf	((c:Buffer_Add@buffer))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(014h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_Buffer_Add+0)^00h,c
	movf	((c:Buffer_Add@buffer))^00h,c,w
	addwf	((??_Buffer_Add+0))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:Buffer_Add@element),indf2

	line	23
	movf	((c:Buffer_Add@buffer))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(014h)
	addwf	fsr2l

	movff	(c:Buffer_Add@next_head),indf2

	line	25
	
i2l168:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Buffer_Add
	__end_of_Buffer_Add:
	signat	_Buffer_Add,8313
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
__smallconst	set	__psmallconst
	global	__mediumconst
__mediumconst	set	__psmallconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	global	btemp
	btemp set 01h

	DABS	1,1,1	;btemp
	global	int$flags
	int$flags	set btemp
	global btemp0
	btemp0 set btemp+0
	global btemp1
	btemp1 set btemp+1
	end

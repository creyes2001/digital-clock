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
	debug_source C
	FNCALL	_main,_App_Init
	FNCALL	_main,_App_Task
	FNCALL	_main,_Button_Task
	FNCALL	_main,_Uart_Init
	FNCALL	_main,_Uart_Read
	FNCALL	_main,_Uart_Start
	FNCALL	_main,_clock_init
	FNCALL	_main,_clock_print
	FNCALL	_main,_clock_update_1s
	FNCALL	_main,_display_init
	FNCALL	_main,_display_push
	FNCALL	_main,_display_task
	FNCALL	_main,_get_time
	FNCALL	_main,_isr_init
	FNCALL	_main,_printf_
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
	FNCALL	_clock_print,_printf_
	FNCALL	_printf_,__vsnprintf
	FNCALL	__vsnprintf,__atoi
	FNCALL	__vsnprintf,__is_digit
	FNCALL	__vsnprintf,__ntoa_long
	FNCALL	__vsnprintf,__out_buffer
	FNCALL	__vsnprintf,__out_char
	FNCALL	__vsnprintf,__out_fct
	FNCALL	__vsnprintf,__out_null
	FNCALL	__vsnprintf,__strnlen_s
	FNCALL	__ntoa_long,___lldiv
	FNCALL	__ntoa_long,___llmod
	FNCALL	__ntoa_long,__ntoa_format
	FNCALL	__ntoa_format,__out_rev
	FNCALL	__out_rev,__out_buffer
	FNCALL	__out_rev,__out_char
	FNCALL	__out_rev,__out_fct
	FNCALL	__out_rev,__out_null
	FNCALL	__out_char,__putchar
	FNCALL	__putchar,_Buffer_Add
	FNCALL	__atoi,__is_digit
	FNCALL	_clock_init,___awmod
	FNCALL	_Uart_Start,_Buffer_Init
	FNCALL	_Uart_Start,_Gpio_Init
	FNCALL	_Uart_Read,_Buffer_Get
	FNCALL	_Button_Task,_button_update
	FNCALL	_button_update,_Gpio_Read
	FNCALL	_App_Task,_button_get_event
	FNCALL	_App_Init,_button_init
	FNCALL	_button_init,_Gpio_Init
	FNROOT	_main
	FNCALL	_ISR,_Uart_InterruptHandler
	FNCALL	_ISR,_system_tick_1ms
	FNCALL	_Uart_InterruptHandler,i2_Buffer_Add
	FNCALL	_Uart_InterruptHandler,i2_Buffer_Get
	FNCALL	intlevel2,_ISR
	global	intlevel2
	FNROOT	intlevel2
	global	_uart_config
	global	_data
	global	_control
	global	_clk_display
	global	_button_dcr
	global	_button_inc
	global	_button_cfg
	global	_tx
	global	_rx
	global	_colon_control
	global	_colon
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"app/main.c"
	line	138

;initializer for _uart_config
		db	low(_rx)
	db	high(_rx)

		db	low(_tx)
	db	high(_tx)

	dw	(02580h) & 0xffff
	dw	highword(02580h)
psect	idataBANK1,class=CODE,space=0,delta=1,noexec
global __pidataBANK1
__pidataBANK1:
	line	15

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
	line	66

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
	line	111

;initializer for _clk_display
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(04h)
		db	low(_data)
	db	high(_data)

		db	low(_control)
	db	high(_control)

		db	low(_colon)
	db	high(_colon)

		db	low(_colon_control)
	db	high(_colon_control)

	file	"app/app.c"
	line	20

;initializer for _button_dcr
		db	low(3987)
	db	high(3987)

		db	low(3978)
	db	high(3978)

		db	low(3969)
	db	high(3969)

	db	low(02h)
	line	13

;initializer for _button_inc
		db	low(3987)
	db	high(3987)

		db	low(3978)
	db	high(3978)

		db	low(3969)
	db	high(3969)

	db	low(01h)
	line	6

;initializer for _button_cfg
		db	low(3987)
	db	high(3987)

		db	low(3978)
	db	high(3978)

		db	low(3969)
	db	high(3969)

	db	low(0)
	file	"app/main.c"
	line	131

;initializer for _tx
		db	low(3988)
	db	high(3988)

		db	low(3979)
	db	high(3979)

		db	low(3970)
	db	high(3970)

	db	low(06h)
	line	124

;initializer for _rx
		db	low(3988)
	db	high(3988)

		db	low(3979)
	db	high(3979)

		db	low(3970)
	db	high(3970)

	db	low(07h)
	line	103

;initializer for _colon_control
		db	low(3990)
	db	high(3990)

		db	low(3981)
	db	high(3981)

		db	low(3972)
	db	high(3972)

	db	low(0)
	line	96

;initializer for _colon
		db	low(3989)
	db	high(3989)

		db	low(3980)
	db	high(3980)

		db	low(3971)
	db	high(3971)

	db	low(07h)
	global	_numbers
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"src/ss_display.c"
	line	18
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
	global	_colon_pin
	global	_colon_control@ss_display$F1111
	global	_control@ss_display$F1110
	global	_data@ss_display$F1109
	global	_digit_flag
	global	_digit_number
	global	_segment_polarity
	global	_colon_status
	global	_flag_1ms
	global	_one_second_flag
	global	_pending_ticks
	global	fctprintf@F291
	global	_buffer
	global	display_task@ms
	global	_tick_1ms
	global	_control_polarity
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
	
STR_5:
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
	
STR_1:
	db	49	;'1'
	db	13
	db	10
	db	0
	
STR_2:
	db	50	;'2'
	db	13
	db	10
	db	0
	
STR_3:
	db	65	;'A'
	db	13
	db	10
	db	0
	
STR_4:
	db	66	;'B'
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
_colon_pin:
       ds      2
_colon_control@ss_display$F1111:
       ds      2
_control@ss_display$F1110:
       ds      2
_data@ss_display$F1109:
       ds      2
_digit_flag:
       ds      1
_digit_number:
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
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
fctprintf@F291:
       ds      4
_buffer:
       ds      4
display_task@ms:
       ds      2
_tick_1ms:
       ds      2
_control_polarity:
       ds      1
	global	_btn_dcr
_btn_dcr:
       ds      8
	global	_btn_inc
_btn_inc:
       ds      8
	global	_btn_cfg
_btn_cfg:
       ds      8
	global	_sys_clock
_sys_clock:
       ds      3
	global	_app
_app:
       ds      2
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"app/main.c"
	line	138
	global	_uart_config
_uart_config:
       ds      8
psect	bssBANK1,class=BANK1,space=1,noexec,lowdata
global __pbssBANK1
__pbssBANK1:
_rx_buffer:
       ds      22
_tx_buffer:
       ds      22
psect	dataBANK1,class=BANK1,space=1,noexec,lowdata
global __pdataBANK1
__pdataBANK1:
	file	"app/main.c"
	line	15
	global	_data
_data:
       ds      49
psect	dataBANK1
	file	"app/main.c"
	line	66
	global	_control
_control:
       ds      28
psect	dataBANK1
	file	"app/main.c"
	line	111
	global	_clk_display
_clk_display:
       ds      12
psect	dataBANK1
	file	"app/app.c"
	line	20
	global	_button_dcr
_button_dcr:
       ds      7
psect	dataBANK1
	file	"app/app.c"
	line	13
	global	_button_inc
_button_inc:
       ds      7
psect	dataBANK1
	file	"app/app.c"
	line	6
	global	_button_cfg
_button_cfg:
       ds      7
psect	dataBANK1
	file	"app/main.c"
	line	131
_tx:
       ds      7
psect	dataBANK1
	file	"app/main.c"
	line	124
_rx:
       ds      7
psect	dataBANK1
	file	"app/main.c"
	line	103
	global	_colon_control
_colon_control:
       ds      7
psect	dataBANK1
	file	"app/main.c"
	line	96
	global	_colon
_colon:
       ds      7
	file	"build/bin/clock.s"
	line	#
psect	cinit
; Initialize objects allocated to BANK1 (138 bytes)
	global __pidataBANK1
	; load TBLPTR registers with __pidataBANK1
	movlw	low (__pidataBANK1)
	movwf	tblptrl
	movlw	high(__pidataBANK1)
	movwf	tblptrh
	movlw	low highword(__pidataBANK1)
	movwf	tblptru
	lfsr	0,__pdataBANK1
	lfsr	1,138
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to BANK0 (8 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,8
	copy_data1:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data1
	line	#
; Clear objects allocated to BANK1 (44 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	44
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK0 (42 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	42
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to COMRAM (15 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	15
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
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
psect	cstackBANK1,class=BANK1,space=1,noexec,lowdata
global __pcstackBANK1
__pcstackBANK1:
	global	__vsnprintf$1407
__vsnprintf$1407:	; 4 bytes @ 0x0
	ds   4
	global	__vsnprintf$1409
__vsnprintf$1409:	; 2 bytes @ 0x4
	ds   2
	global	__vsnprintf$1410
__vsnprintf$1410:	; 2 bytes @ 0x6
	ds   2
	global	__vsnprintf@value_1411
__vsnprintf@value_1411:	; 2 bytes @ 0x8
	ds   2
	global	__vsnprintf$1412
__vsnprintf$1412:	; 2 bytes @ 0xA
	ds   2
	global	__vsnprintf$1417
__vsnprintf$1417:	; 2 bytes @ 0xC
	ds   2
	global	__vsnprintf$1418
__vsnprintf$1418:	; 2 bytes @ 0xE
	ds   2
	global	__vsnprintf@prec
__vsnprintf@prec:	; 2 bytes @ 0x10
	ds   2
	global	__vsnprintf@l
__vsnprintf@l:	; 2 bytes @ 0x12
	ds   2
	global	__vsnprintf@n
__vsnprintf@n:	; 2 bytes @ 0x14
	ds   2
	global	__vsnprintf@w
__vsnprintf@w:	; 2 bytes @ 0x16
	ds   2
	global	__vsnprintf@l_1415
__vsnprintf@l_1415:	; 2 bytes @ 0x18
	ds   2
	global	__vsnprintf@p
__vsnprintf@p:	; 1 bytes @ 0x1A
	ds   1
	global	__vsnprintf@value
__vsnprintf@value:	; 4 bytes @ 0x1B
	ds   4
	global	__vsnprintf@value_1408
__vsnprintf@value_1408:	; 2 bytes @ 0x1F
	ds   2
	global	__vsnprintf@base
__vsnprintf@base:	; 2 bytes @ 0x21
	ds   2
	global	__vsnprintf@width
__vsnprintf@width:	; 2 bytes @ 0x23
	ds   2
	global	__vsnprintf@precision
__vsnprintf@precision:	; 2 bytes @ 0x25
	ds   2
	global	__vsnprintf@idx
__vsnprintf@idx:	; 2 bytes @ 0x27
	ds   2
	global	__vsnprintf@flags
__vsnprintf@flags:	; 2 bytes @ 0x29
	ds   2
psect	cstackBANK0,class=BANK0,space=1,noexec,lowdata
global __pcstackBANK0
__pcstackBANK0:
??__ntoa_format:	; 1 bytes @ 0x0
	ds   2
	global	?__ntoa_long
?__ntoa_long:	; 2 bytes @ 0x2
	global	__ntoa_long@out
__ntoa_long@out:	; 2 bytes @ 0x2
	ds   2
	global	__ntoa_long@buffer
__ntoa_long@buffer:	; 2 bytes @ 0x4
	ds   2
	global	__ntoa_long@idx
__ntoa_long@idx:	; 2 bytes @ 0x6
	ds   2
	global	__ntoa_long@maxlen
__ntoa_long@maxlen:	; 2 bytes @ 0x8
	ds   2
	global	__ntoa_long@value
__ntoa_long@value:	; 4 bytes @ 0xA
	ds   4
	global	__ntoa_long@negative
__ntoa_long@negative:	; 1 bytes @ 0xE
	ds   1
	global	__ntoa_long@base
__ntoa_long@base:	; 4 bytes @ 0xF
	ds   4
	global	__ntoa_long@prec
__ntoa_long@prec:	; 2 bytes @ 0x13
	ds   2
	global	__ntoa_long@width
__ntoa_long@width:	; 2 bytes @ 0x15
	ds   2
	global	__ntoa_long@flags
__ntoa_long@flags:	; 2 bytes @ 0x17
	ds   2
??__ntoa_long:	; 1 bytes @ 0x19
	ds   2
	global	__ntoa_long@buf
__ntoa_long@buf:	; 32 bytes @ 0x1B
	ds   32
	global	__ntoa_long$1379
__ntoa_long$1379:	; 2 bytes @ 0x3B
	ds   2
	global	__ntoa_long$1380
__ntoa_long$1380:	; 2 bytes @ 0x3D
	ds   2
	global	__ntoa_long@digit
__ntoa_long@digit:	; 1 bytes @ 0x3F
	ds   1
	global	__ntoa_long@len
__ntoa_long@len:	; 2 bytes @ 0x40
	ds   2
	global	?__vsnprintf
?__vsnprintf:	; 2 bytes @ 0x42
	global	__vsnprintf@out
__vsnprintf@out:	; 2 bytes @ 0x42
	ds   2
	global	__vsnprintf@buffer
__vsnprintf@buffer:	; 2 bytes @ 0x44
	ds   2
	global	__vsnprintf@maxlen
__vsnprintf@maxlen:	; 2 bytes @ 0x46
	ds   2
	global	__vsnprintf@format
__vsnprintf@format:	; 1 bytes @ 0x48
	ds   1
	global	__vsnprintf@va
__vsnprintf@va:	; 2 bytes @ 0x49
	ds   2
??__vsnprintf:	; 1 bytes @ 0x4B
	ds   2
	global	?_printf_
?_printf_:	; 2 bytes @ 0x4D
	global	printf_@format
printf_@format:	; 1 bytes @ 0x4D
	ds   7
	global	printf_@buffer
printf_@buffer:	; 1 bytes @ 0x54
	ds   1
	global	printf_@va
printf_@va:	; 1 bytes @ 0x55
	ds   1
??_clock_print:	; 1 bytes @ 0x56
	ds   3
	global	main@c
main@c:	; 1 bytes @ 0x59
	ds   1
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
?_Uart_InterruptHandler:	; 1 bytes @ 0x0
?__putchar:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
?__is_digit:	; 1 bytes @ 0x0
?i2_Buffer_Add:	; 1 bytes @ 0x0
?i2_Buffer_Get:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	i2Buffer_Add@buffer
i2Buffer_Add@buffer:	; 2 bytes @ 0x0
	global	i2Buffer_Get@buffer
i2Buffer_Get@buffer:	; 2 bytes @ 0x0
??_system_tick_1ms:	; 1 bytes @ 0x0
	ds   2
	global	i2Buffer_Add@element
i2Buffer_Add@element:	; 1 bytes @ 0x2
	global	i2Buffer_Get@element
i2Buffer_Get@element:	; 1 bytes @ 0x2
	ds   1
??i2_Buffer_Add:	; 1 bytes @ 0x3
??i2_Buffer_Get:	; 1 bytes @ 0x3
	ds   1
	global	i2Buffer_Add@next_head
i2Buffer_Add@next_head:	; 1 bytes @ 0x4
	ds   1
	global	Uart_InterruptHandler@c
Uart_InterruptHandler@c:	; 1 bytes @ 0x5
??_Uart_InterruptHandler:	; 1 bytes @ 0x5
	ds   1
	global	Uart_InterruptHandler@c_705
Uart_InterruptHandler@c_705:	; 1 bytes @ 0x6
	ds   1
??_ISR:	; 1 bytes @ 0x7
	ds   5
?_Uart_Init:	; 1 bytes @ 0xC
?_clock_update_1s:	; 1 bytes @ 0xC
?_button_get_event:	; 1 bytes @ 0xC
?_Gpio_Init:	; 1 bytes @ 0xC
?_Gpio_Write:	; 1 bytes @ 0xC
?_Gpio_Read:	; 1 bytes @ 0xC
?_Buffer_Init:	; 1 bytes @ 0xC
?_Buffer_Add:	; 1 bytes @ 0xC
?_Buffer_Get:	; 1 bytes @ 0xC
	global	?_get_time
?_get_time:	; 2 bytes @ 0xC
	global	?___awmod
?___awmod:	; 2 bytes @ 0xC
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0xC
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0xC
	global	?__strnlen_s
?__strnlen_s:	; 2 bytes @ 0xC
	global	?___llmod
?___llmod:	; 4 bytes @ 0xC
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0xC
	global	Uart_Init@uart
Uart_Init@uart:	; 1 bytes @ 0xC
	global	clock_update_1s@clk
clock_update_1s@clk:	; 1 bytes @ 0xC
	global	get_time@clk
get_time@clk:	; 1 bytes @ 0xC
	global	button_get_event@btn
button_get_event@btn:	; 1 bytes @ 0xC
	global	__strnlen_s@str
__strnlen_s@str:	; 1 bytes @ 0xC
	global	__is_digit$1315
__is_digit$1315:	; 1 bytes @ 0xC
	global	Gpio_Init@gpio
Gpio_Init@gpio:	; 2 bytes @ 0xC
	global	Gpio_Write@gpio
Gpio_Write@gpio:	; 2 bytes @ 0xC
	global	Gpio_Read@gpio
Gpio_Read@gpio:	; 2 bytes @ 0xC
	global	Buffer_Init@buffer
Buffer_Init@buffer:	; 2 bytes @ 0xC
	global	Buffer_Add@buffer
Buffer_Add@buffer:	; 2 bytes @ 0xC
	global	Buffer_Get@buffer
Buffer_Get@buffer:	; 2 bytes @ 0xC
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0xC
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0xC
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xC
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0xC
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0xC
??_timer0_init:	; 1 bytes @ 0xC
??_timer0_start:	; 1 bytes @ 0xC
??_isr_init:	; 1 bytes @ 0xC
??_system_tick_task:	; 1 bytes @ 0xC
??_system_tick_is_1ms:	; 1 bytes @ 0xC
??_system_tick_is_1s:	; 1 bytes @ 0xC
??_timer0_reload:	; 1 bytes @ 0xC
??__is_digit:	; 1 bytes @ 0xC
	ds   1
	global	button_get_event@event
button_get_event@event:	; 1 bytes @ 0xD
	global	__is_digit@ch
__is_digit@ch:	; 1 bytes @ 0xD
	global	__strnlen_s@maxsize
__strnlen_s@maxsize:	; 2 bytes @ 0xD
??_Uart_Init:	; 1 bytes @ 0xD
??_clock_update_1s:	; 1 bytes @ 0xD
??_button_get_event:	; 1 bytes @ 0xD
	ds   1
?_App_Task:	; 1 bytes @ 0xE
	global	?__atoi
?__atoi:	; 2 bytes @ 0xE
	global	App_Task@app
App_Task@app:	; 1 bytes @ 0xE
	global	Gpio_Init@dir
Gpio_Init@dir:	; 1 bytes @ 0xE
	global	Gpio_Write@level
Gpio_Write@level:	; 1 bytes @ 0xE
	global	Buffer_Add@element
Buffer_Add@element:	; 1 bytes @ 0xE
	global	Buffer_Get@element
Buffer_Get@element:	; 1 bytes @ 0xE
	global	__atoi@str
__atoi@str:	; 1 bytes @ 0xE
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0xE
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0xE
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0xE
??_get_time:	; 1 bytes @ 0xE
??_Gpio_Read:	; 1 bytes @ 0xE
??_Buffer_Init:	; 1 bytes @ 0xE
	ds   1
	global	__strnlen_s@s
__strnlen_s@s:	; 1 bytes @ 0xF
??_App_Task:	; 1 bytes @ 0xF
??_Gpio_Init:	; 1 bytes @ 0xF
??_Gpio_Write:	; 1 bytes @ 0xF
??_Buffer_Add:	; 1 bytes @ 0xF
??_Buffer_Get:	; 1 bytes @ 0xF
??__strnlen_s:	; 1 bytes @ 0xF
	ds   1
	global	Buffer_Add@next_head
Buffer_Add@next_head:	; 1 bytes @ 0x10
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x10
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x10
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x10
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x10
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x10
??___awmod:	; 1 bytes @ 0x10
??___lwdiv:	; 1 bytes @ 0x10
??___lwmod:	; 1 bytes @ 0x10
??__atoi:	; 1 bytes @ 0x10
	ds   1
?_Uart_Read:	; 1 bytes @ 0x11
	global	__putchar@c
__putchar@c:	; 1 bytes @ 0x11
	global	Uart_Read@data
Uart_Read@data:	; 1 bytes @ 0x11
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x11
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x11
??__putchar:	; 1 bytes @ 0x11
	ds   1
?_clock_init:	; 1 bytes @ 0x12
?__out_buffer:	; 1 bytes @ 0x12
?__out_null:	; 1 bytes @ 0x12
?__out_char:	; 1 bytes @ 0x12
?__out_fct:	; 1 bytes @ 0x12
	global	clock_init@clk
clock_init@clk:	; 1 bytes @ 0x12
	global	__out_buffer@character
__out_buffer@character:	; 1 bytes @ 0x12
__out_null@character:	; 1 bytes @ 0x12
	global	__out_char@character
__out_char@character:	; 1 bytes @ 0x12
	global	__out_fct@character
__out_fct@character:	; 1 bytes @ 0x12
??_Uart_Read:	; 1 bytes @ 0x12
	ds   1
?_display_push:	; 1 bytes @ 0x13
?_button_update:	; 1 bytes @ 0x13
	global	clock_init@h
clock_init@h:	; 1 bytes @ 0x13
	global	button_update@btn
button_update@btn:	; 1 bytes @ 0x13
	global	display_push@buffer_clk
display_push@buffer_clk:	; 2 bytes @ 0x13
	global	__out_buffer@buffer
__out_buffer@buffer:	; 2 bytes @ 0x13
__out_null@buffer:	; 2 bytes @ 0x13
__out_char@buffer:	; 2 bytes @ 0x13
	global	__out_fct@buffer
__out_fct@buffer:	; 2 bytes @ 0x13
	global	__atoi@i
__atoi@i:	; 2 bytes @ 0x13
??__out_buffer:	; 1 bytes @ 0x13
	ds   1
?_Uart_Start:	; 1 bytes @ 0x14
?_button_init:	; 1 bytes @ 0x14
?_level_write:	; 1 bytes @ 0x14
	global	Uart_Start@uart
Uart_Start@uart:	; 1 bytes @ 0x14
	global	clock_init@m
clock_init@m:	; 1 bytes @ 0x14
	global	button_init@btn
button_init@btn:	; 1 bytes @ 0x14
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x14
	global	level_write@gpio
level_write@gpio:	; 2 bytes @ 0x14
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x14
??_button_update:	; 1 bytes @ 0x14
??___llmod:	; 1 bytes @ 0x14
??___lldiv:	; 1 bytes @ 0x14
	ds   1
	global	clock_init@s
clock_init@s:	; 1 bytes @ 0x15
	global	display_push@dig
display_push@dig:	; 1 bytes @ 0x15
	global	button_init@gpio
button_init@gpio:	; 2 bytes @ 0x15
	global	__out_buffer@idx
__out_buffer@idx:	; 2 bytes @ 0x15
__out_null@idx:	; 2 bytes @ 0x15
__out_char@idx:	; 2 bytes @ 0x15
	global	__out_fct@idx
__out_fct@idx:	; 2 bytes @ 0x15
??_Uart_Start:	; 1 bytes @ 0x15
??_display_push:	; 1 bytes @ 0x15
	ds   1
	global	button_update@state
button_update@state:	; 1 bytes @ 0x16
	global	level_write@level
level_write@level:	; 1 bytes @ 0x16
	global	display_push@i
display_push@i:	; 1 bytes @ 0x16
??_clock_init:	; 1 bytes @ 0x16
	ds   1
	global	button_init@polarity
button_init@polarity:	; 1 bytes @ 0x17
	global	level_write@pin_type
level_write@pin_type:	; 1 bytes @ 0x17
	global	__out_buffer@maxlen
__out_buffer@maxlen:	; 2 bytes @ 0x17
__out_null@maxlen:	; 2 bytes @ 0x17
__out_char@maxlen:	; 2 bytes @ 0x17
	global	__out_fct@maxlen
__out_fct@maxlen:	; 2 bytes @ 0x17
??_Button_Task:	; 1 bytes @ 0x17
	ds   1
	global	button_init@debounce_ticks
button_init@debounce_ticks:	; 1 bytes @ 0x18
	global	level_write@gpio_level
level_write@gpio_level:	; 1 bytes @ 0x18
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x18
??_level_write:	; 1 bytes @ 0x18
	ds   1
?_App_Init:	; 1 bytes @ 0x19
?_display_init:	; 1 bytes @ 0x19
	global	?__out_rev
?__out_rev:	; 2 bytes @ 0x19
	global	App_Init@app
App_Init@app:	; 1 bytes @ 0x19
	global	display_init@display
display_init@display:	; 2 bytes @ 0x19
	global	__out_rev@out
__out_rev@out:	; 2 bytes @ 0x19
??_display_task:	; 1 bytes @ 0x19
??_button_init:	; 1 bytes @ 0x19
??__out_null:	; 1 bytes @ 0x19
??__out_char:	; 1 bytes @ 0x19
??__out_fct:	; 1 bytes @ 0x19
	ds   1
	global	App_Init@clk
App_Init@clk:	; 1 bytes @ 0x1A
	ds   1
	global	__out_rev@buffer
__out_rev@buffer:	; 2 bytes @ 0x1B
??_App_Init:	; 1 bytes @ 0x1B
??_display_init:	; 1 bytes @ 0x1B
	ds   2
	global	display_init@i_1151
display_init@i_1151:	; 1 bytes @ 0x1D
	global	__out_rev@idx
__out_rev@idx:	; 2 bytes @ 0x1D
	ds   1
	global	display_init@i
display_init@i:	; 1 bytes @ 0x1E
	global	display_task@i
display_task@i:	; 1 bytes @ 0x1E
	ds   1
	global	display_task@i_1155
display_task@i_1155:	; 1 bytes @ 0x1F
	global	__out_rev@maxlen
__out_rev@maxlen:	; 2 bytes @ 0x1F
	ds   2
	global	__out_rev@buf
__out_rev@buf:	; 1 bytes @ 0x21
	ds   1
	global	__out_rev@len
__out_rev@len:	; 2 bytes @ 0x22
	ds   2
	global	__out_rev@width
__out_rev@width:	; 2 bytes @ 0x24
	ds   2
	global	__out_rev@flags
__out_rev@flags:	; 2 bytes @ 0x26
	ds   2
??__out_rev:	; 1 bytes @ 0x28
	ds   2
	global	__out_rev@start_idx
__out_rev@start_idx:	; 2 bytes @ 0x2A
	ds   2
	global	__out_rev@i
__out_rev@i:	; 2 bytes @ 0x2C
	ds   2
	global	?__ntoa_format
?__ntoa_format:	; 2 bytes @ 0x2E
	global	__ntoa_format@out
__ntoa_format@out:	; 2 bytes @ 0x2E
	ds   2
	global	__ntoa_format@buffer
__ntoa_format@buffer:	; 2 bytes @ 0x30
	ds   2
	global	__ntoa_format@idx
__ntoa_format@idx:	; 2 bytes @ 0x32
	ds   2
	global	__ntoa_format@maxlen
__ntoa_format@maxlen:	; 2 bytes @ 0x34
	ds   2
	global	__ntoa_format@buf
__ntoa_format@buf:	; 1 bytes @ 0x36
	ds   1
	global	__ntoa_format@len
__ntoa_format@len:	; 2 bytes @ 0x37
	ds   2
	global	__ntoa_format@negative
__ntoa_format@negative:	; 1 bytes @ 0x39
	ds   1
	global	__ntoa_format@base
__ntoa_format@base:	; 2 bytes @ 0x3A
	ds   2
	global	__ntoa_format@prec
__ntoa_format@prec:	; 2 bytes @ 0x3C
	ds   2
	global	__ntoa_format@width
__ntoa_format@width:	; 2 bytes @ 0x3E
	ds   2
	global	__ntoa_format@flags
__ntoa_format@flags:	; 2 bytes @ 0x40
	ds   2
?_clock_print:	; 1 bytes @ 0x42
	global	clock_print@clk
clock_print@clk:	; 1 bytes @ 0x42
??_printf_:	; 1 bytes @ 0x42
	ds   1
??_main:	; 1 bytes @ 0x43
;!
;!Data Sizes:
;!    Strings     33
;!    Constant    10
;!    Data        146
;!    BSS         101
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     67      82
;!    BANK0           160     90     140
;!    BANK1           256     43     225
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
;!		 -> sys_clock(BANK0[3]), 
;!
;!    App_Init@app	PTR struct . size(1) Largest target is 3
;!		 -> app(BANK0[2]), 
;!
;!    App_Init@app$clock	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(BANK0[3]), 
;!
;!    App_Init@clk	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(BANK0[3]), 
;!
;!    App_Task@app	PTR struct . size(1) Largest target is 3
;!		 -> app(BANK0[2]), 
;!
;!    App_Task@app$clock	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(BANK0[3]), 
;!
;!    _atoi@str	PTR PTR const unsigned char  size(1) Largest target is 1
;!		 -> _vsnprintf@format(BANK0[1]), 
;!
;!    btn_cfg$gpio	PTR struct . size(2) Largest target is 7
;!		 -> button_cfg(BANK1[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
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
;!    btn_dcr$gpio	PTR struct . size(2) Largest target is 7
;!		 -> button_cfg(BANK1[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
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
;!    btn_inc$gpio	PTR struct . size(2) Largest target is 7
;!		 -> button_cfg(BANK1[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
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
;!    Buffer_Add@buffer	PTR volatile struct . size(2) Largest target is 22
;!		 -> rx_buffer(BANK1[22]), tx_buffer(BANK1[22]), 
;!
;!    Buffer_Get@buffer	PTR volatile struct . size(2) Largest target is 22
;!		 -> rx_buffer(BANK1[22]), tx_buffer(BANK1[22]), 
;!
;!    Buffer_Get@element	PTR unsigned char  size(1) Largest target is 1
;!		 -> main@c(BANK0[1]), Uart_InterruptHandler@c_705(COMRAM[1]), 
;!
;!    Buffer_Init@buffer	PTR volatile struct . size(2) Largest target is 22
;!		 -> rx_buffer(BANK1[22]), tx_buffer(BANK1[22]), 
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
;!		 -> btn_cfg(BANK0[8]), btn_dcr(BANK0[8]), btn_inc(BANK0[8]), 
;!
;!    button_get_event@btn$gpio	PTR struct . size(2) Largest target is 7
;!		 -> button_cfg(BANK1[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
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
;!		 -> btn_cfg(BANK0[8]), btn_dcr(BANK0[8]), btn_inc(BANK0[8]), 
;!
;!    button_init@btn$gpio	PTR struct . size(2) Largest target is 7
;!		 -> button_cfg(BANK1[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
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
;!    button_init@gpio	PTR struct . size(2) Largest target is 7
;!		 -> button_cfg(BANK1[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
;!
;!    button_update@btn	PTR struct . size(1) Largest target is 8
;!		 -> btn_cfg(BANK0[8]), btn_dcr(BANK0[8]), btn_inc(BANK0[8]), 
;!
;!    button_update@btn$gpio	PTR struct . size(2) Largest target is 7
;!		 -> button_cfg(BANK1[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
;!
;!    clk_display$colon_control_pin	PTR struct . size(2) Largest target is 7
;!		 -> colon_control(BANK1[7]), 
;!
;!    clk_display$colon_pin	PTR struct . size(2) Largest target is 7
;!		 -> colon(BANK1[7]), 
;!
;!    clk_display$control	PTR struct . size(2) Largest target is 28
;!		 -> control(BANK1[28]), 
;!
;!    clk_display$data	PTR struct . size(2) Largest target is 49
;!		 -> data(BANK1[49]), 
;!
;!    clock_init@clk	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(BANK0[3]), 
;!
;!    clock_print@clk	PTR const struct . size(1) Largest target is 3
;!		 -> sys_clock(BANK0[3]), 
;!
;!    clock_update_1s@clk	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(BANK0[3]), 
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
;!    colon_control@ss_display$F1111	PTR struct . size(2) Largest target is 7
;!		 -> colon_control(BANK1[7]), NULL(NULL[0]), 
;!
;!    colon_control@ss_display$F1111$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    colon_control@ss_display$F1111$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    colon_control@ss_display$F1111$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    colon_pin	PTR struct . size(2) Largest target is 7
;!		 -> colon(BANK1[7]), NULL(NULL[0]), 
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
;!    control@ss_display$F1110	PTR struct . size(2) Largest target is 28
;!		 -> control(BANK1[28]), NULL(NULL[0]), 
;!
;!    control@ss_display$F1110$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    control@ss_display$F1110$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    control@ss_display$F1110$tris	PTR volatile unsigned char  size(2) Largest target is 1
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
;!    data@ss_display$F1109	PTR struct . size(2) Largest target is 49
;!		 -> data(BANK1[49]), NULL(NULL[0]), 
;!
;!    data@ss_display$F1109$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    data@ss_display$F1109$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    data@ss_display$F1109$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), TRISE(BIGSFR[1]), 
;!
;!    display_init@display	PTR struct . size(2) Largest target is 12
;!		 -> clk_display(BANK1[12]), 
;!
;!    display_init@display$colon_control_pin	PTR struct . size(2) Largest target is 7
;!		 -> colon_control(BANK1[7]), 
;!
;!    display_init@display$colon_pin	PTR struct . size(2) Largest target is 7
;!		 -> colon(BANK1[7]), 
;!
;!    display_init@display$control	PTR struct . size(2) Largest target is 28
;!		 -> control(BANK1[28]), 
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
;!		 -> sys_clock(BANK0[3]), 
;!
;!    Gpio_Init@gpio	PTR struct . size(2) Largest target is 49
;!		 -> button_cfg(BANK1[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), colon(BANK1[7]), 
;!		 -> colon_control(BANK1[7]), control(BANK1[28]), data(BANK1[49]), rx(BANK1[7]), 
;!		 -> tx(BANK1[7]), NULL(NULL[0]), 
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
;!    Gpio_Read@gpio	PTR struct . size(2) Largest target is 7
;!		 -> button_cfg(BANK1[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
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
;!		 -> colon(BANK1[7]), colon_control(BANK1[7]), control(BANK1[28]), data(BANK1[49]), 
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
;!		 -> colon(BANK1[7]), colon_control(BANK1[7]), control(BANK1[28]), data(BANK1[49]), 
;!		 -> NULL(NULL[0]), 
;!
;!    _ntoa_format@buf	PTR unsigned char  size(1) Largest target is 32
;!		 -> _ntoa_long@buf(BANK0[32]), 
;!
;!    _ntoa_format@buffer	PTR unsigned char  size(2) Largest target is 2047
;!		 -> printf_@buffer(BANK0[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    _ntoa_format@out	PTR FTN(unsigned char ,PTR void ,unsigned int ,unsigned int ,)void  size(2) Largest target is 1
;!		 -> _out_buffer(), _out_char(), _out_fct(), _out_null(), 
;!
;!    _ntoa_long@buffer	PTR unsigned char  size(2) Largest target is 2047
;!		 -> printf_@buffer(BANK0[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    _ntoa_long@out	PTR FTN(unsigned char ,PTR void ,unsigned int ,unsigned int ,)void  size(2) Largest target is 1
;!		 -> _out_buffer(), _out_char(), _out_fct(), _out_null(), 
;!
;!    NULL$1	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    out$1	PTR void  size(2) Largest target is 2047
;!		 -> printf_@buffer(BANK0[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    out$1	PTR void  size(2) Largest target is 2047
;!		 -> printf_@buffer(BANK0[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    out$1	PTR void  size(2) Largest target is 2047
;!		 -> printf_@buffer(BANK0[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    out$1	PTR void  size(2) Largest target is 2047
;!		 -> printf_@buffer(BANK0[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    _out_buffer@buffer	PTR void  size(2) Largest target is 2047
;!		 -> printf_@buffer(BANK0[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    _out_char@buffer	PTR void  size(2) Largest target is 2047
;!		 -> printf_@buffer(BANK0[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    _out_fct@buffer	PTR void  size(2) Largest target is 2047
;!		 -> printf_@buffer(BANK0[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
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
;!    _out_null@buffer	PTR void  size(2) Largest target is 2047
;!		 -> printf_@buffer(BANK0[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    _out_rev@buf	PTR const unsigned char  size(1) Largest target is 32
;!		 -> _ntoa_long@buf(BANK0[32]), 
;!
;!    _out_rev@buffer	PTR unsigned char  size(2) Largest target is 2047
;!		 -> printf_@buffer(BANK0[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    _out_rev@out	PTR FTN(unsigned char ,PTR void ,unsigned int ,unsigned int ,)void  size(2) Largest target is 1
;!		 -> _out_buffer(), _out_char(), _out_fct(), _out_null(), 
;!
;!    printf_@buffer$arg	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    printf_@buffer$fct	PTR FTN(unsigned char ,PTR void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    printf_@format	PTR const unsigned char  size(1) Largest target is 17
;!		 -> STR_1(CODE[4]), STR_2(CODE[4]), STR_3(CODE[4]), STR_4(CODE[4]), 
;!		 -> STR_5(CODE[17]), 
;!
;!    printf_@va	PTR void [1] size(1) Largest target is 2
;!		 -> ?_fctprintf(COMRAM[2]), ?_printf_(BANK0[2]), ?_snprintf_(COMRAM[2]), ?_sprintf_(COMRAM[2]), 
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
;!    S1253$0$1	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    S1253$arg	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    S1253$fct	PTR FTN(unsigned char ,PTR void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
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
;!    S245$gpio	PTR struct . size(2) Largest target is 7
;!		 -> button_cfg(BANK1[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
;!
;!    S44$colon_control_pin	PTR struct . size(2) Largest target is 7
;!		 -> colon_control(BANK1[7]), 
;!
;!    S44$colon_pin	PTR struct . size(2) Largest target is 7
;!		 -> colon(BANK1[7]), 
;!
;!    S44$control	PTR struct . size(2) Largest target is 28
;!		 -> control(BANK1[28]), 
;!
;!    S44$data	PTR struct . size(2) Largest target is 49
;!		 -> data(BANK1[49]), 
;!
;!    S56$rx	PTR struct . size(2) Largest target is 7
;!		 -> rx(BANK1[7]), 
;!
;!    S56$tx	PTR struct . size(2) Largest target is 7
;!		 -> tx(BANK1[7]), 
;!
;!    S68$clock	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(BANK0[3]), 
;!
;!    _strnlen_s@s	PTR const unsigned char  size(1) Largest target is 2
;!		 -> ?_fctprintf(COMRAM[2]), ?_printf_(BANK0[2]), ?_snprintf_(COMRAM[2]), ?_sprintf_(COMRAM[2]), 
;!		 -> sys_clock$hours(BANK0[1]), sys_clock$minutes(BANK0[1]), sys_clock$seconds(BANK0[1]), 
;!
;!    _strnlen_s@str	PTR const unsigned char  size(1) Largest target is 2
;!		 -> ?_fctprintf(COMRAM[2]), ?_printf_(BANK0[2]), ?_snprintf_(COMRAM[2]), ?_sprintf_(COMRAM[2]), 
;!		 -> sys_clock$hours(BANK0[1]), sys_clock$minutes(BANK0[1]), sys_clock$seconds(BANK0[1]), 
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
;!    uart_config$rx	PTR struct . size(2) Largest target is 7
;!		 -> rx(BANK1[7]), 
;!
;!    uart_config$tx	PTR struct . size(2) Largest target is 7
;!		 -> tx(BANK1[7]), 
;!
;!    Uart_Init@uart	PTR const struct . size(1) Largest target is 8
;!		 -> uart_config(BANK0[8]), 
;!
;!    Uart_Init@uart$rx	PTR struct . size(2) Largest target is 7
;!		 -> rx(BANK1[7]), 
;!
;!    Uart_Init@uart$tx	PTR struct . size(2) Largest target is 7
;!		 -> tx(BANK1[7]), 
;!
;!    Uart_Read@data	PTR unsigned char  size(1) Largest target is 1
;!		 -> main@c(BANK0[1]), 
;!
;!    Uart_Start@uart	PTR const struct . size(1) Largest target is 8
;!		 -> uart_config(BANK0[8]), 
;!
;!    Uart_Start@uart$rx	PTR struct . size(2) Largest target is 7
;!		 -> rx(BANK1[7]), 
;!
;!    Uart_Start@uart$tx	PTR struct . size(2) Largest target is 7
;!		 -> tx(BANK1[7]), 
;!
;!    vprintf_@buffer$arg	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    vprintf_@buffer$fct	PTR FTN(unsigned char ,PTR void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    _vsnprintf@buffer	PTR unsigned char  size(2) Largest target is 2047
;!		 -> printf_@buffer(BANK0[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    _vsnprintf@format	PTR const unsigned char  size(1) Largest target is 17
;!		 -> STR_1(CODE[4]), STR_2(CODE[4]), STR_3(CODE[4]), STR_4(CODE[4]), 
;!		 -> STR_5(CODE[17]), 
;!
;!    _vsnprintf@out	PTR FTN(unsigned char ,PTR void ,unsigned int ,unsigned int ,)void  size(2) Largest target is 1
;!		 -> _out_buffer(), _out_char(), _out_fct(), _out_null(), 
;!
;!    _vsnprintf@p	PTR const unsigned char  size(1) Largest target is 2
;!		 -> ?_fctprintf(COMRAM[2]), ?_printf_(BANK0[2]), ?_snprintf_(COMRAM[2]), ?_sprintf_(COMRAM[2]), 
;!		 -> sys_clock$hours(BANK0[1]), sys_clock$minutes(BANK0[1]), sys_clock$seconds(BANK0[1]), 
;!
;!    _vsnprintf@va	PTR PTR void  size(2) Largest target is 1
;!		 -> fctprintf@va(COMRAM[1]), printf_@va(BANK0[1]), snprintf_@va(COMRAM[1]), sprintf_@va(COMRAM[1]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_clock_print
;!    _display_task->_level_write
;!    _display_push->___lwdiv
;!    _display_init->_level_write
;!    _level_write->_Gpio_Write
;!    __ntoa_long->__ntoa_format
;!    __ntoa_format->__out_rev
;!    __out_rev->__out_buffer
;!    __out_rev->__out_char
;!    __out_rev->__out_fct
;!    __out_rev->__out_null
;!    __out_char->__putchar
;!    __putchar->_Buffer_Add
;!    __atoi->__is_digit
;!    _clock_init->___awmod
;!    _Uart_Start->_Gpio_Init
;!    _Uart_Read->_Buffer_Get
;!    _Button_Task->_button_update
;!    _button_update->_Gpio_Read
;!    _App_Task->_button_get_event
;!    _App_Init->_button_init
;!    _button_init->_Gpio_Init
;!
;!Critical Paths under _ISR in COMRAM
;!
;!    _ISR->_Uart_InterruptHandler
;!    _Uart_InterruptHandler->i2_Buffer_Add
;!    _Uart_InterruptHandler->i2_Buffer_Get
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_clock_print
;!    _clock_print->_printf_
;!    _printf_->__vsnprintf
;!    __vsnprintf->__ntoa_long
;!    __ntoa_long->__ntoa_format
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _printf_->__vsnprintf
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
;! (0) _main                                                 1     1      0   39097
;!                                             89 BANK0      1     1      0
;!                           _App_Init
;!                           _App_Task
;!                        _Button_Task
;!                          _Uart_Init
;!                          _Uart_Read
;!                         _Uart_Start
;!                         _clock_init
;!                        _clock_print
;!                    _clock_update_1s
;!                       _display_init
;!                       _display_push
;!                       _display_task
;!                           _get_time
;!                           _isr_init
;!                            _printf_
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
;! (1) _get_time                                             6     4      2      65
;!                                             12 COMRAM     6     4      2
;! ---------------------------------------------------------------------------------
;! (1) _display_task                                         7     7      0     794
;!                                             25 COMRAM     7     7      0
;!                        _level_write
;! ---------------------------------------------------------------------------------
;! (1) _display_push                                         4     2      2     655
;!                                             19 COMRAM     4     2      2
;!                            ___lwdiv
;!                            ___lwmod
;!                           _get_time (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     238
;!                                             12 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     247
;!                                             12 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _display_init                                         6     4      2    1211
;!                                             25 COMRAM     6     4      2
;!                          _Gpio_Init
;!                        _level_write
;! ---------------------------------------------------------------------------------
;! (2) _level_write                                          5     1      4     534
;!                                             20 COMRAM     5     1      4
;!                         _Gpio_Write
;! ---------------------------------------------------------------------------------
;! (3) _Gpio_Write                                           8     5      3     161
;!                                             12 COMRAM     8     5      3
;! ---------------------------------------------------------------------------------
;! (1) _clock_update_1s                                      2     1      1     282
;!                                             12 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _clock_print                                          4     3      1   16332
;!                                             66 COMRAM     1     0      1
;!                                             86 BANK0      3     3      0
;!                            _printf_
;! ---------------------------------------------------------------------------------
;! (2) _printf_                                             11     4      7   16200
;!                                             77 BANK0      9     2      7
;!                         __vsnprintf
;! ---------------------------------------------------------------------------------
;! (3) __vsnprintf                                          54    45      9   15856
;!                                             66 BANK0     11     2      9
;!                                              0 BANK1     43    43      0
;!                              __atoi
;!                          __is_digit
;!                         __ntoa_long
;!                        __out_buffer *
;!                          __out_char *
;!                           __out_fct *
;!                          __out_null *
;!                         __strnlen_s
;! ---------------------------------------------------------------------------------
;! (4) __strnlen_s                                           4     1      3     167
;!                                             12 COMRAM     4     1      3
;! ---------------------------------------------------------------------------------
;! (4) __ntoa_long                                          64    41     23    6389
;!                                              2 BANK0     64    41     23
;!                            ___lldiv
;!                            ___llmod
;!                       __ntoa_format
;! ---------------------------------------------------------------------------------
;! (5) __ntoa_format                                        22     2     20    4248
;!                                             46 COMRAM    20     0     20
;!                                              0 BANK0      2     2      0
;!                           __out_rev
;! ---------------------------------------------------------------------------------
;! (6) __out_rev                                            21     6     15    1590
;!                                             25 COMRAM    21     6     15
;!                        __out_buffer *
;!                          __out_char *
;!                           __out_fct *
;!                          __out_null *
;! ---------------------------------------------------------------------------------
;! (7) __out_null                                            7     0      7       0
;!                                             18 COMRAM     7     0      7
;! ---------------------------------------------------------------------------------
;! (7) __out_fct                                             7     0      7     187
;!                                             18 COMRAM     7     0      7
;! ---------------------------------------------------------------------------------
;! (7) __out_char                                            7     0      7     400
;!                                             18 COMRAM     7     0      7
;!                           __putchar
;! ---------------------------------------------------------------------------------
;! (8) __putchar                                             1     1      0     338
;!                                             17 COMRAM     1     1      0
;!                         _Buffer_Add
;! ---------------------------------------------------------------------------------
;! (9) _Buffer_Add                                           5     2      3     291
;!                                             12 COMRAM     5     2      3
;! ---------------------------------------------------------------------------------
;! (7) __out_buffer                                          7     0      7     155
;!                                             18 COMRAM     7     0      7
;! ---------------------------------------------------------------------------------
;! (5) ___llmod                                              9     1      8     238
;!                                             12 COMRAM     9     1      8
;! ---------------------------------------------------------------------------------
;! (5) ___lldiv                                             13     5      8     247
;!                                             12 COMRAM    13     5      8
;! ---------------------------------------------------------------------------------
;! (4) __atoi                                                7     5      2     267
;!                                             14 COMRAM     7     5      2
;!                          __is_digit
;! ---------------------------------------------------------------------------------
;! (5) __is_digit                                            2     2      0     131
;!                                             12 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _clock_init                                           4     0      4     649
;!                                             18 COMRAM     4     0      4
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              6     2      4     451
;!                                             12 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _Uart_Start                                           2     1      1     333
;!                                             20 COMRAM     1     0      1
;!                        _Buffer_Init
;!                          _Gpio_Init
;! ---------------------------------------------------------------------------------
;! (2) _Buffer_Init                                          2     0      2      68
;!                                             12 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _Uart_Read                                            1     0      1     288
;!                                             17 COMRAM     1     0      1
;!                         _Buffer_Get
;! ---------------------------------------------------------------------------------
;! (2) _Buffer_Get                                           5     2      3     254
;!                                             12 COMRAM     5     2      3
;! ---------------------------------------------------------------------------------
;! (1) _Uart_Init                                            5     4      1      34
;!                                             12 COMRAM     5     4      1
;! ---------------------------------------------------------------------------------
;! (1) _Button_Task                                          0     0      0     703
;!                      _button_update
;! ---------------------------------------------------------------------------------
;! (2) _button_update                                        4     3      1     703
;!                                             19 COMRAM     4     3      1
;!                          _Gpio_Read
;! ---------------------------------------------------------------------------------
;! (3) _Gpio_Read                                            7     5      2      68
;!                                             12 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (1) _App_Task                                             3     2      1     728
;!                                             14 COMRAM     3     2      1
;!                   _button_get_event
;! ---------------------------------------------------------------------------------
;! (2) _button_get_event                                     2     1      1     105
;!                                             12 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _App_Init                                             2     0      2     673
;!                                             25 COMRAM     2     0      2
;!                        _button_init
;! ---------------------------------------------------------------------------------
;! (2) _button_init                                          5     0      5     574
;!                                             20 COMRAM     5     0      5
;!                          _Gpio_Init
;! ---------------------------------------------------------------------------------
;! (3) _Gpio_Init                                            8     5      3     197
;!                                             12 COMRAM     8     5      3
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 9
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (10) _ISR                                                 5     5      0     656
;!                                              7 COMRAM     5     5      0
;!              _Uart_InterruptHandler
;!                    _system_tick_1ms
;! ---------------------------------------------------------------------------------
;! (11) _system_tick_1ms                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (11) _Uart_InterruptHandler                               2     2      0     656
;!                                              5 COMRAM     2     2      0
;!                       i2_Buffer_Add
;!                       i2_Buffer_Get
;! ---------------------------------------------------------------------------------
;! (12) i2_Buffer_Get                                        5     2      3     254
;!                                              0 COMRAM     5     2      3
;! ---------------------------------------------------------------------------------
;! (12) i2_Buffer_Add                                        5     2      3     291
;!                                              0 COMRAM     5     2      3
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 12
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _App_Init
;!     _button_init
;!       _Gpio_Init
;!   _App_Task
;!     _button_get_event
;!   _Button_Task
;!     _button_update
;!       _Gpio_Read
;!   _Uart_Init
;!   _Uart_Read
;!     _Buffer_Get
;!   _Uart_Start
;!     _Buffer_Init
;!     _Gpio_Init
;!   _clock_init
;!     ___awmod
;!   _clock_print
;!     _printf_
;!       __vsnprintf
;!         __atoi
;!           __is_digit
;!         __is_digit
;!         __ntoa_long
;!           ___lldiv
;!           ___llmod
;!           __ntoa_format
;!             __out_rev
;!               __out_buffer *
;!               __out_char *
;!                 __putchar
;!                   _Buffer_Add
;!               __out_fct *
;!               __out_null *
;!         __out_buffer *
;!         __out_char *
;!         __out_fct *
;!         __out_null *
;!         __strnlen_s *
;!   _clock_update_1s
;!   _display_init
;!     _Gpio_Init
;!     _level_write
;!       _Gpio_Write
;!   _display_push
;!     ___lwdiv
;!     ___lwmod
;!     _get_time (ARG)
;!   _display_task
;!     _level_write
;!   _get_time
;!   _isr_init
;!   _printf_
;!   _system_tick_is_1ms
;!   _system_tick_is_1s
;!   _system_tick_task
;!   _timer0_init
;!     _timer0_reload
;!   _timer0_start
;!
;! _ISR (ROOT)
;!   _Uart_InterruptHandler
;!     i2_Buffer_Add
;!     i2_Buffer_Get
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
;!BANK1              256     43     225     87.9%
;!BITBANK0           160      0       0      0.0%
;!BANK0              160     90     140     87.5%
;!BITCOMRAM           94      0       0      0.0%
;!COMRAM              94     67      82     87.2%
;!BITBIGSFRh          82      0       0      0.0%
;!BITBIGSFRllh        36      0       0      0.0%
;!BITBIGSFRlll        33      0       0      0.0%
;!BITBIGSFRlh          5      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0     447      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 148 in file "app/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  c               1   89[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   88[None  ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pcl, pclath, pclatu, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called: 12
;; This function calls:
;;		_App_Init
;;		_App_Task
;;		_Button_Task
;;		_Uart_Init
;;		_Uart_Read
;;		_Uart_Start
;;		_clock_init
;;		_clock_print
;;		_clock_update_1s
;;		_display_init
;;		_display_push
;;		_display_task
;;		_get_time
;;		_isr_init
;;		_printf_
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
	line	148
global __ptext0
__ptext0:
psect	text0
	file	"app/main.c"
	line	148
	
_main:
;incstack = 0
	callstack 19
	line	151
	
l5494:
		movlw	low(_app)
	movwf	((c:App_Init@app))^00h,c

		movlw	low(_sys_clock)
	movwf	((c:App_Init@clk))^00h,c

	call	_App_Init	;wreg free
	line	153
		movlw	low(_uart_config)
	movwf	((c:Uart_Init@uart))^00h,c

	call	_Uart_Init	;wreg free
	line	154
		movlw	low(_uart_config)
	movwf	((c:Uart_Start@uart))^00h,c

	call	_Uart_Start	;wreg free
	line	156
	
l5496:
	call	_timer0_init	;wreg free
	line	157
	
l5498:
	call	_timer0_start	;wreg free
	line	159
	
l5500:
		movlw	low(_clk_display)
	movwf	((c:display_init@display))^00h,c
	movlw	high(_clk_display)
	movwf	((c:display_init@display+1))^00h,c

	call	_display_init	;wreg free
	line	162
	
l5502:
	call	_isr_init	;wreg free
	line	164
	
l5504:
		movlw	low(_sys_clock)
	movwf	((c:clock_init@clk))^00h,c

	movlw	low(015h)
	movwf	((c:clock_init@h))^00h,c
	movlw	low(01Ah)
	movwf	((c:clock_init@m))^00h,c
	movlw	low(037h)
	movwf	((c:clock_init@s))^00h,c
	call	_clock_init	;wreg free
	line	169
	
l5506:
	call	_system_tick_task	;wreg free
	line	170
	
l5508:
		movlw	low(_app)
	movwf	((c:App_Task@app))^00h,c

	call	_App_Task	;wreg free
	line	172
	
l5510:
	call	_system_tick_is_1ms	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u7561
	goto	u7560
u7561:
	goto	l5516
u7560:
	line	174
	
l5512:
	call	_Button_Task	;wreg free
	line	176
	
l5514:
	call	_display_task	;wreg free
	line	180
	
l5516:
	call	_system_tick_is_1s	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u7571
	goto	u7570
u7571:
	goto	l5526
u7570:
	
l5518:
	movlb	0	; () banked
	movf	(0+(_app+01h))&0ffh,w
	btfss	status,2
	goto	u7581
	goto	u7580
u7581:
	goto	l5526
u7580:
	line	182
	
l5520:; BSR set to: 0

		movlw	low(_sys_clock)
	movwf	((c:clock_update_1s@clk))^00h,c

	call	_clock_update_1s	;wreg free
	line	183
	
l5522:
		movlw	low(_sys_clock)
	movwf	((c:get_time@clk))^00h,c

	call	_get_time	;wreg free
	movff	0+?_get_time,(c:display_push@buffer_clk)
	movff	1+?_get_time,(c:display_push@buffer_clk+1)
	call	_display_push	;wreg free
	line	184
	
l5524:
		movlw	low(_sys_clock)
	movwf	((c:clock_print@clk))^00h,c

	call	_clock_print	;wreg free
	line	187
	
l5526:
	movlb	0	; () banked
		decf	(0+(_app+01h))&0ffh,w
	btfss	status,2
	goto	u7591
	goto	u7590

u7591:
	goto	l5530
u7590:
	line	189
	
l5528:; BSR set to: 0

		movlw	low(STR_1)
	movwf	((printf_@format))&0ffh

	call	_printf_	;wreg free
	line	192
	
l5530:
		movlw	2
	movlb	0	; () banked
	xorwf	(0+(_app+01h))&0ffh,w
	btfss	status,2
	goto	u7601
	goto	u7600

u7601:
	goto	l5534
u7600:
	line	194
	
l5532:; BSR set to: 0

		movlw	low(STR_2)
	movwf	((printf_@format))&0ffh

	call	_printf_	;wreg free
	line	196
	
l5534:
		movlw	low(main@c)
	movwf	((c:Uart_Read@data))^00h,c

	call	_Uart_Read	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u7611
	goto	u7610
u7611:
	goto	l5506
u7610:
	line	198
	
l5536:
		movlw	65
	movlb	0	; () banked
	xorwf	((main@c))&0ffh,w
	btfss	status,2
	goto	u7621
	goto	u7620

u7621:
	goto	l5540
u7620:
	line	200
	
l5538:; BSR set to: 0

		movlw	low(STR_3)
	movwf	((printf_@format))&0ffh

	call	_printf_	;wreg free
	line	201
	goto	l5506
	line	202
	
l5540:; BSR set to: 0

		movlw	66
	xorwf	((main@c))&0ffh,w
	btfss	status,2
	goto	u7631
	goto	u7630

u7631:
	goto	l5506
u7630:
	line	204
	
l5542:; BSR set to: 0

		movlw	low(STR_4)
	movwf	((printf_@format))&0ffh

	call	_printf_	;wreg free
	goto	l5506
	global	start
	goto	start
	callstack 0
	line	209
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
	
l4718:
	bsf	((c:4053))^0f00h,c,7	;volatile
	line	23
	
l254:
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
	
l4708:
	clrf	((c:4053))^0f00h,c	;volatile
	line	9
	bcf	((c:4053))^0f00h,c,6	;volatile
	line	10
	bcf	((c:4053))^0f00h,c,5	;volatile
	line	11
	bcf	((c:4053))^0f00h,c,3	;volatile
	line	12
	
l4710:
	movf	((c:4053))^0f00h,c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(01h & ((1<<3)-1))<<0
	movwf	((c:4053))^0f00h,c	;volatile
	line	14
	
l4712:
	call	_timer0_reload	;wreg free
	line	16
	
l4714:
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	17
	
l4716:
	bsf	((c:4082))^0f00h,c,5	;volatile
	line	18
	
l251:
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
	
l4550:
	movlw	low(0FBh)
	movwf	((c:4055))^0f00h,c	;volatile
	line	33
	movlw	low(01Eh)
	movwf	((c:4054))^0f00h,c	;volatile
	line	34
	
l260:
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
	
l4756:
	goto	l305
	line	20
	
l4758:
	decf	((c:_pending_ticks))^00h,c	;volatile
	line	21
	
l4760:
	movlw	low(01h)
	movwf	((c:_flag_1ms))^00h,c
	line	22
	
l4762:
	movlb	0	; () banked
	infsnz	((_tick_1ms))&0ffh
	incf	((_tick_1ms+1))&0ffh
	line	24
	
l4764:; BSR set to: 0

		movlw	232
	subwf	 ((_tick_1ms))&0ffh,w
	movlw	3
	subwfb	((_tick_1ms+1))&0ffh,w
	btfss	status,0
	goto	u6121
	goto	u6120

u6121:
	goto	l305
u6120:
	line	26
	
l4766:; BSR set to: 0

	clrf	((_tick_1ms+1))&0ffh
	movlw	low(0)
	movwf	((_tick_1ms))&0ffh
	line	27
	movlw	low(01h)
	movwf	((c:_one_second_flag))^00h,c	;volatile
	line	29
	
l305:
	line	18
	movf	((c:_pending_ticks))^00h,c,w	;volatile
	btfss	status,2
	goto	u6131
	goto	u6130
u6131:
	goto	l4758
u6130:
	line	30
	
l309:
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
	
l4878:
	movf	((c:_one_second_flag))^00h,c,w	;volatile
	btfsc	status,2
	goto	u6341
	goto	u6340
u6341:
	goto	l4886
u6340:
	line	46
	
l4880:
	clrf	((c:_one_second_flag))^00h,c	;volatile
	line	47
	
l4882:
	movlw	(01h)&0ffh
	goto	l317
	line	50
	
l4886:
	movlw	(0)&0ffh
	line	51
	
l317:
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
	
l4816:
	movf	((c:_flag_1ms))^00h,c,w
	btfsc	status,2
	goto	u6251
	goto	u6250
u6251:
	goto	l4824
u6250:
	line	36
	
l4818:
	clrf	((c:_flag_1ms))^00h,c
	line	37
	
l4820:
	movlw	(01h)&0ffh
	goto	l313
	line	39
	
l4824:
	movlw	(0)&0ffh
	line	40
	
l313:
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
	
l4752:
	bcf	((c:4048))^0f00h,c,7	;volatile
	line	38
	bsf	((c:4082))^0f00h,c,6	;volatile
	line	39
	bsf	((c:4082))^0f00h,c,7	;volatile
	line	40
	
l284:
	return	;funcret
	callstack 0
GLOBAL	__end_of_isr_init
	__end_of_isr_init:
	signat	_isr_init,89
	global	_get_time

;; *************** function _get_time *****************
;; Defined at:
;;		line 33 in file "src/clock.c"
;; Parameters:    Size  Location     Type
;;  clk             1   12[COMRAM] PTR struct .
;;		 -> sys_clock(3), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   12[COMRAM] unsigned short 
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
	line	33
global __ptext8
__ptext8:
psect	text8
	file	"src/clock.c"
	line	33
	
_get_time:
;incstack = 0
	callstack 27
	line	35
	
l4898:
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
	line	36
	
l331:
	return	;funcret
	callstack 0
GLOBAL	__end_of_get_time
	__end_of_get_time:
	signat	_get_time,4218
	global	_display_task

;; *************** function _display_task *****************
;; Defined at:
;;		line 94 in file "src/ss_display.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   31[COMRAM] unsigned char 
;;  i               1   30[COMRAM] unsigned char 
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
;;      Temps:          5       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
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
	line	94
global __ptext9
__ptext9:
psect	text9
	file	"src/ss_display.c"
	line	94
	
_display_task:
;incstack = 0
	callstack 26
	line	97
	
l4830:
	movlb	0	; () banked
	infsnz	((display_task@ms))&0ffh
	incf	((display_task@ms+1))&0ffh
	line	99
	
l4832:; BSR set to: 0

		movlw	232
	subwf	 ((display_task@ms))&0ffh,w
	movlw	3
	subwfb	((display_task@ms+1))&0ffh,w
	btfss	status,0
	goto	u6261
	goto	u6260

u6261:
	goto	l4836
u6260:
	line	101
	
l4834:; BSR set to: 0

	clrf	((display_task@ms+1))&0ffh
	movlw	low(0)
	movwf	((display_task@ms))&0ffh
	line	104
	
l4836:; BSR set to: 0

	clrf	((c:display_task@i))^00h,c
	goto	l4842
	line	106
	
l4838:
	movf	((c:display_task@i))^00h,c,w
	mullw	07h
	movff	prodl,??_display_task+0
	movff	prodh,??_display_task+0+1
	movf	(??_display_task+0)^00h,c,w
	addwf	((c:_control@ss_display$F1110))^00h,c,w
	movwf	((c:level_write@gpio))^00h,c
	movf	(??_display_task+0+1)^00h,c,w
	addwfc	((c:_control@ss_display$F1110+1))^00h,c,w
	movwf	1+((c:level_write@gpio))^00h,c
	movlw	low(0)
	movwf	((c:level_write@level))^00h,c
	movlw	low(0)
	movwf	((c:level_write@pin_type))^00h,c
	call	_level_write	;wreg free
	line	107
	
l4840:
	incf	((c:display_task@i))^00h,c
	
l4842:
		movf	((c:_digit_number))^00h,c,w
	subwf	((c:display_task@i))^00h,c,w
	btfss	status,0
	goto	u6271
	goto	u6270

u6271:
	goto	l4838
u6270:
	line	109
	
l4844:
		decf	((c:_colon_status))^00h,c,w
	btfss	status,2
	goto	u6281
	goto	u6280

u6281:
	goto	l4854
u6280:
	line	111
	
l4846:
		movff	(c:_colon_control@ss_display$F1111),(c:level_write@gpio)
	movff	(c:_colon_control@ss_display$F1111+1),(c:level_write@gpio+1)

	movlw	low(01h)
	movwf	((c:level_write@level))^00h,c
	movlw	low(0)
	movwf	((c:level_write@pin_type))^00h,c
	call	_level_write	;wreg free
	line	112
		movff	(c:_control@ss_display$F1110),(c:level_write@gpio)
	movff	(c:_control@ss_display$F1110+1),(c:level_write@gpio+1)

	movlw	low(0)
	movwf	((c:level_write@level))^00h,c
	movlw	low(0)
	movwf	((c:level_write@pin_type))^00h,c
	call	_level_write	;wreg free
	line	113
	movlw	low(07h)
	addwf	((c:_control@ss_display$F1110))^00h,c,w
	movwf	((c:level_write@gpio))^00h,c
	movlw	high(07h)
	addwfc	((c:_control@ss_display$F1110+1))^00h,c,w
	movwf	1+((c:level_write@gpio))^00h,c
	movlw	low(0)
	movwf	((c:level_write@level))^00h,c
	movlw	low(0)
	movwf	((c:level_write@pin_type))^00h,c
	call	_level_write	;wreg free
	line	114
	movlw	low(0Eh)
	addwf	((c:_control@ss_display$F1110))^00h,c,w
	movwf	((c:level_write@gpio))^00h,c
	movlw	high(0Eh)
	addwfc	((c:_control@ss_display$F1110+1))^00h,c,w
	movwf	1+((c:level_write@gpio))^00h,c
	movlw	low(0)
	movwf	((c:level_write@level))^00h,c
	movlw	low(0)
	movwf	((c:level_write@pin_type))^00h,c
	call	_level_write	;wreg free
	line	115
		movff	(c:_colon_pin),(c:level_write@gpio)
	movff	(c:_colon_pin+1),(c:level_write@gpio+1)

	movlw	low(0)
	movwf	((c:level_write@level))^00h,c
	movlw	low(01h)
	movwf	((c:level_write@pin_type))^00h,c
	call	_level_write	;wreg free
	line	116
	
l4848:
		movlw	244
	movlb	0	; () banked
	subwf	 ((display_task@ms))&0ffh,w
	movlw	1
	subwfb	((display_task@ms+1))&0ffh,w
	btfsc	status,0
	goto	u6291
	goto	u6290

u6291:
	goto	l4852
u6290:
	line	118
	
l4850:; BSR set to: 0

		movff	(c:_colon_pin),(c:level_write@gpio)
	movff	(c:_colon_pin+1),(c:level_write@gpio+1)

	movlw	low(01h)
	movwf	((c:level_write@level))^00h,c
	movlw	low(01h)
	movwf	((c:level_write@pin_type))^00h,c
	call	_level_write	;wreg free
	line	119
	goto	l4854
	line	122
	
l4852:; BSR set to: 0

		movff	(c:_colon_pin),(c:level_write@gpio)
	movff	(c:_colon_pin+1),(c:level_write@gpio+1)

	movlw	low(0)
	movwf	((c:level_write@level))^00h,c
	movlw	low(01h)
	movwf	((c:level_write@pin_type))^00h,c
	call	_level_write	;wreg free
	line	126
	
l4854:
	incf	((c:_digit_flag))^00h,c
	line	127
	
l4856:
		movf	((c:_digit_number))^00h,c,w
	subwf	((c:_digit_flag))^00h,c,w
	btfss	status,0
	goto	u6301
	goto	u6300

u6301:
	goto	l411
u6300:
	line	129
	
l4858:
	clrf	((c:_digit_flag))^00h,c
	line	130
	
l411:
	line	132
	clrf	((c:display_task@i_1155))^00h,c
	line	134
	
l4864:
	movf	((c:display_task@i_1155))^00h,c,w
	mullw	07h
	movff	prodl,??_display_task+0
	movff	prodh,??_display_task+0+1
	movf	(??_display_task+0)^00h,c,w
	addwf	((c:_data@ss_display$F1109))^00h,c,w
	movwf	((c:level_write@gpio))^00h,c
	movf	(??_display_task+0+1)^00h,c,w
	addwfc	((c:_data@ss_display$F1109+1))^00h,c,w
	movwf	1+((c:level_write@gpio))^00h,c
	movlw	low(0)
	movwf	((c:level_write@level))^00h,c
	movlw	low(01h)
	movwf	((c:level_write@pin_type))^00h,c
	call	_level_write	;wreg free
	line	136
	
l4866:
	movf	((c:_digit_flag))^00h,c,w
	addlw	low(_buffer)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_display_task+0)^00h,c
	movf	((??_display_task+0))^00h,c,w
	addlw	low(_numbers)
	movwf	(??_display_task+1)^00h,c
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
	movff	(c:display_task@i_1155),??_display_task+3
	movlw	(01h)&0ffh
	movwf	(??_display_task+4)^00h,c
	incf	(??_display_task+3)^00h,c
	goto	u6314
u6315:
	bcf	status,0
	rlcf	((??_display_task+4))^00h,c
u6314:
	decfsz	(??_display_task+3)^00h,c
	goto	u6315
	movf	((??_display_task+4))^00h,c,w
	andwf	(??_display_task+2)^00h,c,w
	iorlw	0
	btfsc	status,2
	goto	u6321
	goto	u6320
u6321:
	goto	l4870
u6320:
	line	138
	
l4868:
	movf	((c:display_task@i_1155))^00h,c,w
	mullw	07h
	movff	prodl,??_display_task+0
	movff	prodh,??_display_task+0+1
	movf	(??_display_task+0)^00h,c,w
	addwf	((c:_data@ss_display$F1109))^00h,c,w
	movwf	((c:level_write@gpio))^00h,c
	movf	(??_display_task+0+1)^00h,c,w
	addwfc	((c:_data@ss_display$F1109+1))^00h,c,w
	movwf	1+((c:level_write@gpio))^00h,c
	movlw	low(01h)
	movwf	((c:level_write@level))^00h,c
	movlw	low(01h)
	movwf	((c:level_write@pin_type))^00h,c
	call	_level_write	;wreg free
	line	139
	goto	l4872
	line	142
	
l4870:
	movf	((c:display_task@i_1155))^00h,c,w
	mullw	07h
	movff	prodl,??_display_task+0
	movff	prodh,??_display_task+0+1
	movf	(??_display_task+0)^00h,c,w
	addwf	((c:_data@ss_display$F1109))^00h,c,w
	movwf	((c:level_write@gpio))^00h,c
	movf	(??_display_task+0+1)^00h,c,w
	addwfc	((c:_data@ss_display$F1109+1))^00h,c,w
	movwf	1+((c:level_write@gpio))^00h,c
	movlw	low(0)
	movwf	((c:level_write@level))^00h,c
	movlw	low(01h)
	movwf	((c:level_write@pin_type))^00h,c
	call	_level_write	;wreg free
	line	144
	
l4872:
	incf	((c:display_task@i_1155))^00h,c
	
l4874:
		movlw	07h-1
	cpfsgt	((c:display_task@i_1155))^00h,c
	goto	u6331
	goto	u6330

u6331:
	goto	l4864
u6330:
	line	146
	
l4876:
	movf	((c:_digit_flag))^00h,c,w
	mullw	07h
	movff	prodl,??_display_task+0
	movff	prodh,??_display_task+0+1
	movf	(??_display_task+0)^00h,c,w
	addwf	((c:_control@ss_display$F1110))^00h,c,w
	movwf	((c:level_write@gpio))^00h,c
	movf	(??_display_task+0+1)^00h,c,w
	addwfc	((c:_control@ss_display$F1110+1))^00h,c,w
	movwf	1+((c:level_write@gpio))^00h,c
	movlw	low(01h)
	movwf	((c:level_write@level))^00h,c
	movlw	low(0)
	movwf	((c:level_write@pin_type))^00h,c
	call	_level_write	;wreg free
	line	147
	
l416:
	return	;funcret
	callstack 0
GLOBAL	__end_of_display_task
	__end_of_display_task:
	signat	_display_task,89
	global	_display_push

;; *************** function _display_push *****************
;; Defined at:
;;		line 149 in file "src/ss_display.c"
;; Parameters:    Size  Location     Type
;;  buffer_clk      2   19[COMRAM] unsigned short 
;; Auto vars:     Size  Location     Type
;;  i               1   22[COMRAM] unsigned char 
;;  dig             1   21[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
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
psect	text10,class=CODE,space=0,reloc=2,group=0
	line	149
global __ptext10
__ptext10:
psect	text10
	file	"src/ss_display.c"
	line	149
	
_display_push:
;incstack = 0
	callstack 26
	line	152
	
l4902:
	clrf	((c:display_push@i))^00h,c
	goto	l4912
	line	154
	
l4904:
	movff	(c:display_push@buffer_clk),(c:___lwmod@dividend)
	movff	(c:display_push@buffer_clk+1),(c:___lwmod@dividend+1)
	clrf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	movwf	((c:display_push@dig))^00h,c
	line	155
	
l4906:
	movf	((c:display_push@i))^00h,c,w
	sublw	low(_buffer+-1)
	addwf	((c:_digit_number))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:display_push@dig),indf2

	line	156
	
l4908:
	movff	(c:display_push@buffer_clk),(c:___lwdiv@dividend)
	movff	(c:display_push@buffer_clk+1),(c:___lwdiv@dividend+1)
	clrf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:display_push@buffer_clk)
	movff	1+?___lwdiv,(c:display_push@buffer_clk+1)
	line	157
	
l4910:
	incf	((c:display_push@i))^00h,c
	
l4912:
		movf	((c:_digit_number))^00h,c,w
	subwf	((c:display_push@i))^00h,c,w
	btfss	status,0
	goto	u6381
	goto	u6380

u6381:
	goto	l4904
u6380:
	line	158
	
l422:
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
;;  dividend        2   12[COMRAM] unsigned int 
;;  divisor         2   14[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   12[COMRAM] unsigned int 
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
psect	text11,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/lwmod.c"
	line	7
global __ptext11
__ptext11:
psect	text11
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/lwmod.c"
	line	7
	
___lwmod:
;incstack = 0
	callstack 26
	line	12
	
l4626:
	movf	((c:___lwmod@divisor))^00h,c,w
iorwf	((c:___lwmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u6001
	goto	u6000

u6001:
	goto	l1340
u6000:
	line	13
	
l4628:
	movlw	low(01h)
	movwf	((c:___lwmod@counter))^00h,c
	line	14
	goto	l4632
	line	15
	
l4630:
	bcf	status,0
	rlcf	((c:___lwmod@divisor))^00h,c
	rlcf	((c:___lwmod@divisor+1))^00h,c
	line	16
	incf	((c:___lwmod@counter))^00h,c
	line	14
	
l4632:
	
	btfss	((c:___lwmod@divisor+1))^00h,c,(15)&7
	goto	u6011
	goto	u6010
u6011:
	goto	l4630
u6010:
	line	19
	
l4634:
		movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c,w
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u6021
	goto	u6020

u6021:
	goto	l4638
u6020:
	line	20
	
l4636:
	movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c

	line	21
	
l4638:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1))^00h,c
	rrcf	((c:___lwmod@divisor))^00h,c
	line	22
	
l4640:
	decfsz	((c:___lwmod@counter))^00h,c
	
	goto	l4634
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
;;  dividend        2   12[COMRAM] unsigned int 
;;  divisor         2   14[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   17[COMRAM] unsigned int 
;;  counter         1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   12[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_push
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/lwdiv.c"
	line	7
global __ptext12
__ptext12:
psect	text12
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/lwdiv.c"
	line	7
	
___lwdiv:
;incstack = 0
	callstack 26
	line	13
	
l4604:
	clrf	((c:___lwdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient))^00h,c
	line	14
	
l4606:
	movf	((c:___lwdiv@divisor))^00h,c,w
iorwf	((c:___lwdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u5971
	goto	u5970

u5971:
	goto	l1330
u5970:
	line	15
	
l4608:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter))^00h,c
	line	16
	goto	l4612
	line	17
	
l4610:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor))^00h,c
	rlcf	((c:___lwdiv@divisor+1))^00h,c
	line	18
	incf	((c:___lwdiv@counter))^00h,c
	line	16
	
l4612:
	
	btfss	((c:___lwdiv@divisor+1))^00h,c,(15)&7
	goto	u5981
	goto	u5980
u5981:
	goto	l4610
u5980:
	line	21
	
l4614:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient))^00h,c
	rlcf	((c:___lwdiv@quotient+1))^00h,c
	line	22
	
l4616:
		movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c,w
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u5991
	goto	u5990

u5991:
	goto	l4622
u5990:
	line	23
	
l4618:
	movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c

	line	24
	
l4620:
	bsf	(0+(0/8)+(c:___lwdiv@quotient))^00h,c,(0)&7
	line	26
	
l4622:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1))^00h,c
	rrcf	((c:___lwdiv@divisor))^00h,c
	line	27
	
l4624:
	decfsz	((c:___lwdiv@counter))^00h,c
	
	goto	l4614
	line	28
	
l1330:
	line	29
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	30
	
l1337:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_display_init

;; *************** function _display_init *****************
;; Defined at:
;;		line 61 in file "src/ss_display.c"
;; Parameters:    Size  Location     Type
;;  display         2   25[COMRAM] PTR struct .
;;		 -> clk_display(12), 
;; Auto vars:     Size  Location     Type
;;  i               1   29[COMRAM] unsigned char 
;;  i               1   30[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_Gpio_Init
;;		_level_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=0
	file	"src/ss_display.c"
	line	61
global __ptext13
__ptext13:
psect	text13
	file	"src/ss_display.c"
	line	61
	
_display_init:
;incstack = 0
	callstack 25
	line	63
	
l4720:
	lfsr	2,04h
	movf	((c:display_init@display))^00h,c,w
	addwf	fsr2l
	movf	((c:display_init@display+1))^00h,c,w
	addwfc	fsr2h
	movff	postinc2,(c:_data@ss_display$F1109)
	movff	postdec2,(c:_data@ss_display$F1109+1)
	line	64
	lfsr	2,06h
	movf	((c:display_init@display))^00h,c,w
	addwf	fsr2l
	movf	((c:display_init@display+1))^00h,c,w
	addwfc	fsr2h
	movff	postinc2,(c:_control@ss_display$F1110)
	movff	postdec2,(c:_control@ss_display$F1110+1)
	line	65
	lfsr	2,0Ah
	movf	((c:display_init@display))^00h,c,w
	addwf	fsr2l
	movf	((c:display_init@display+1))^00h,c,w
	addwfc	fsr2h
	movff	postinc2,(c:_colon_control@ss_display$F1111)
	movff	postdec2,(c:_colon_control@ss_display$F1111+1)
	line	66
	lfsr	2,08h
	movf	((c:display_init@display))^00h,c,w
	addwf	fsr2l
	movf	((c:display_init@display+1))^00h,c,w
	addwfc	fsr2h
	movff	postinc2,(c:_colon_pin)
	movff	postdec2,(c:_colon_pin+1)
	line	67
	
l4722:
	movff	(c:display_init@display),fsr2l
	movff	(c:display_init@display+1),fsr2h
	movf	indf2,w
	movwf	((c:_colon_status))^00h,c
	line	68
	
l4724:
	lfsr	2,01h
	movf	((c:display_init@display))^00h,c,w
	addwf	fsr2l
	movf	((c:display_init@display+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	((c:_segment_polarity))^00h,c
	line	69
	
l4726:
	lfsr	2,02h
	movf	((c:display_init@display))^00h,c,w
	addwf	fsr2l
	movf	((c:display_init@display+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movwf	((_control_polarity))&0ffh
	line	70
	
l4728:; BSR set to: 0

	lfsr	2,03h
	movf	((c:display_init@display))^00h,c,w
	addwf	fsr2l
	movf	((c:display_init@display+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	((c:_digit_number))^00h,c
	line	72
	
l4730:; BSR set to: 0

	clrf	((c:display_init@i))^00h,c
	line	74
	
l4736:
	movf	((c:display_init@i))^00h,c,w
	mullw	07h
	movff	prodl,??_display_init+0
	movff	prodh,??_display_init+0+1
	movf	(??_display_init+0)^00h,c,w
	addwf	((c:_data@ss_display$F1109))^00h,c,w
	movwf	((c:Gpio_Init@gpio))^00h,c
	movf	(??_display_init+0+1)^00h,c,w
	addwfc	((c:_data@ss_display$F1109+1))^00h,c,w
	movwf	1+((c:Gpio_Init@gpio))^00h,c
	movlw	low(0)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	75
	movf	((c:display_init@i))^00h,c,w
	mullw	07h
	movff	prodl,??_display_init+0
	movff	prodh,??_display_init+0+1
	movf	(??_display_init+0)^00h,c,w
	addwf	((c:_data@ss_display$F1109))^00h,c,w
	movwf	((c:level_write@gpio))^00h,c
	movf	(??_display_init+0+1)^00h,c,w
	addwfc	((c:_data@ss_display$F1109+1))^00h,c,w
	movwf	1+((c:level_write@gpio))^00h,c
	movlw	low(0)
	movwf	((c:level_write@level))^00h,c
	movlw	low(01h)
	movwf	((c:level_write@pin_type))^00h,c
	call	_level_write	;wreg free
	line	76
	
l4738:
	incf	((c:display_init@i))^00h,c
	
l4740:
		movlw	07h-1
	cpfsgt	((c:display_init@i))^00h,c
	goto	u6091
	goto	u6090

u6091:
	goto	l4736
u6090:
	
l394:
	line	78
	clrf	((c:display_init@i_1151))^00h,c
	goto	l4746
	line	80
	
l4742:
	movf	((c:display_init@i_1151))^00h,c,w
	mullw	07h
	movff	prodl,??_display_init+0
	movff	prodh,??_display_init+0+1
	movf	(??_display_init+0)^00h,c,w
	addwf	((c:_control@ss_display$F1110))^00h,c,w
	movwf	((c:Gpio_Init@gpio))^00h,c
	movf	(??_display_init+0+1)^00h,c,w
	addwfc	((c:_control@ss_display$F1110+1))^00h,c,w
	movwf	1+((c:Gpio_Init@gpio))^00h,c
	movlw	low(0)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	81
	movf	((c:display_init@i_1151))^00h,c,w
	mullw	07h
	movff	prodl,??_display_init+0
	movff	prodh,??_display_init+0+1
	movf	(??_display_init+0)^00h,c,w
	addwf	((c:_control@ss_display$F1110))^00h,c,w
	movwf	((c:level_write@gpio))^00h,c
	movf	(??_display_init+0+1)^00h,c,w
	addwfc	((c:_control@ss_display$F1110+1))^00h,c,w
	movwf	1+((c:level_write@gpio))^00h,c
	movlw	low(0)
	movwf	((c:level_write@level))^00h,c
	movlw	low(0)
	movwf	((c:level_write@pin_type))^00h,c
	call	_level_write	;wreg free
	line	82
	
l4744:
	incf	((c:display_init@i_1151))^00h,c
	
l4746:
		movf	((c:_digit_number))^00h,c,w
	subwf	((c:display_init@i_1151))^00h,c,w
	btfss	status,0
	goto	u6101
	goto	u6100

u6101:
	goto	l4742
u6100:
	line	84
	
l4748:
		decf	((c:_colon_status))^00h,c,w
	btfss	status,2
	goto	u6111
	goto	u6110

u6111:
	goto	l399
u6110:
	line	86
	
l4750:
		movff	(c:_colon_pin),(c:Gpio_Init@gpio)
	movff	(c:_colon_pin+1),(c:Gpio_Init@gpio+1)

	movlw	low(0)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	87
		movff	(c:_colon_pin),(c:level_write@gpio)
	movff	(c:_colon_pin+1),(c:level_write@gpio+1)

	movlw	low(0)
	movwf	((c:level_write@level))^00h,c
	movlw	low(01h)
	movwf	((c:level_write@pin_type))^00h,c
	call	_level_write	;wreg free
	line	88
		movff	(c:_colon_control@ss_display$F1111),(c:Gpio_Init@gpio)
	movff	(c:_colon_control@ss_display$F1111+1),(c:Gpio_Init@gpio+1)

	movlw	low(0)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	89
		movff	(c:_colon_control@ss_display$F1111),(c:level_write@gpio)
	movff	(c:_colon_control@ss_display$F1111+1),(c:level_write@gpio+1)

	movlw	low(0)
	movwf	((c:level_write@level))^00h,c
	movlw	low(0)
	movwf	((c:level_write@pin_type))^00h,c
	call	_level_write	;wreg free
	line	91
	
l399:
	return	;funcret
	callstack 0
GLOBAL	__end_of_display_init
	__end_of_display_init:
	signat	_display_init,4217
	global	_level_write

;; *************** function _level_write *****************
;; Defined at:
;;		line 31 in file "src/ss_display.c"
;; Parameters:    Size  Location     Type
;;  gpio            2   20[COMRAM] PTR struct .
;;		 -> NULL(0), colon_control(7), colon(7), control(28), 
;;		 -> data(49), 
;;  level           1   22[COMRAM] enum E64
;;  pin_type        1   23[COMRAM] enum E72
;; Auto vars:     Size  Location     Type
;;  gpio_level      1   24[COMRAM] enum E40
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
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
;;		_Gpio_Write
;; This function is called by:
;;		_display_init
;;		_display_task
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=0
	line	31
global __ptext14
__ptext14:
psect	text14
	file	"src/ss_display.c"
	line	31
	
_level_write:
;incstack = 0
	callstack 26
	line	34
	
l4552:
	movf	((c:level_write@pin_type))^00h,c,w
	btfss	status,2
	goto	u5841
	goto	u5840
u5841:
	goto	l4560
u5840:
	line	36
	
l4554:
	movlb	0	; () banked
		decf	((_control_polarity))&0ffh,w
	btfss	status,2
	goto	u5851
	goto	u5850

u5851:
	goto	l4558
u5850:
	line	38
	
l4556:
		decf	((c:level_write@level))^00h,c,w
	btfsc	status,2
	goto	u5861
	goto	u5860

u5861:
	movlw	1
	goto	u5870
u5860:
	movlw	0
u5870:
	movwf	((c:level_write@gpio_level))^00h,c
	line	39
	goto	l4566
	line	42
	
l4558:
	movf	((c:level_write@level))^00h,c,w
	btfsc	status,2
	goto	u5881
	goto	u5880
u5881:
	movlw	1
	goto	u5890
u5880:
	movlw	0
u5890:
	movwf	((c:level_write@gpio_level))^00h,c
	goto	l4566
	line	48
	
l4560:
		decf	((c:_segment_polarity))^00h,c,w
	btfss	status,2
	goto	u5901
	goto	u5900

u5901:
	goto	l4558
u5900:
	goto	l4556
	line	58
	
l4566:
		movff	(c:level_write@gpio),(c:Gpio_Write@gpio)
	movff	(c:level_write@gpio+1),(c:Gpio_Write@gpio+1)

	movff	(c:level_write@gpio_level),(c:Gpio_Write@level)
	call	_Gpio_Write	;wreg free
	line	59
	
l390:
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
;;  gpio            2   12[COMRAM] PTR struct .
;;		 -> NULL(0), colon_control(7), colon(7), control(28), 
;;		 -> data(49), 
;;  level           1   14[COMRAM] enum E3347
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
;;      Temps:          5       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_level_write
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=0
	file	"src/gpio.c"
	line	16
global __ptext15
__ptext15:
psect	text15
	file	"src/gpio.c"
	line	16
	
_Gpio_Write:
;incstack = 0
	callstack 25
	line	18
	
l4158:
		decf	((c:Gpio_Write@level))^00h,c,w
	btfss	status,2
	goto	u5041
	goto	u5040

u5041:
	goto	l4162
u5040:
	line	20
	
l4160:
	lfsr	2,06h
	movf	((c:Gpio_Write@gpio))^00h,c,w
	addwf	fsr2l
	movf	((c:Gpio_Write@gpio+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	(??_Gpio_Write+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_Gpio_Write+1)^00h,c
	incf	((??_Gpio_Write+0))^00h,c
	goto	u5054
u5055:
	bcf	status,0
	rlcf	((??_Gpio_Write+1))^00h,c
u5054:
	decfsz	((??_Gpio_Write+0))^00h,c
	goto	u5055
	lfsr	2,02h
	movf	((c:Gpio_Write@gpio))^00h,c,w
	addwf	fsr2l
	movf	((c:Gpio_Write@gpio+1))^00h,c,w
	addwfc	fsr2h
	movff	postinc2,??_Gpio_Write+2
	movff	postdec2,??_Gpio_Write+2+1
	movff	??_Gpio_Write+2,fsr2l
	movff	??_Gpio_Write+2+1,fsr2h
	movf	((??_Gpio_Write+1))^00h,c,w
	iorwf	indf2
	line	21
	goto	l159
	line	24
	
l4162:
	lfsr	2,06h
	movf	((c:Gpio_Write@gpio))^00h,c,w
	addwf	fsr2l
	movf	((c:Gpio_Write@gpio+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	(??_Gpio_Write+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_Gpio_Write+1)^00h,c
	incf	((??_Gpio_Write+0))^00h,c
	goto	u5064
u5065:
	bcf	status,0
	rlcf	((??_Gpio_Write+1))^00h,c
u5064:
	decfsz	((??_Gpio_Write+0))^00h,c
	goto	u5065
	movf	((??_Gpio_Write+1))^00h,c,w
	xorlw	0ffh
	movwf	(??_Gpio_Write+2)^00h,c
	lfsr	2,02h
	movf	((c:Gpio_Write@gpio))^00h,c,w
	addwf	fsr2l
	movf	((c:Gpio_Write@gpio+1))^00h,c,w
	addwfc	fsr2h
	movff	postinc2,??_Gpio_Write+3
	movff	postdec2,??_Gpio_Write+3+1
	movff	??_Gpio_Write+3,fsr2l
	movff	??_Gpio_Write+3+1,fsr2h
	movf	((??_Gpio_Write+2))^00h,c,w
	andwf	indf2
	line	26
	
l159:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Gpio_Write
	__end_of_Gpio_Write:
	signat	_Gpio_Write,8313
	global	_clock_update_1s

;; *************** function _clock_update_1s *****************
;; Defined at:
;;		line 11 in file "src/clock.c"
;; Parameters:    Size  Location     Type
;;  clk             1   12[COMRAM] PTR struct .
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
psect	text16,class=CODE,space=0,reloc=2,group=0
	file	"src/clock.c"
	line	11
global __ptext16
__ptext16:
psect	text16
	file	"src/clock.c"
	line	11
	
_clock_update_1s:
;incstack = 0
	callstack 27
	line	13
	
l4890:
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	incf	indf2

	line	15
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

		movlw	03Ch-1
	cpfsgt	indf2
	goto	u6351
	goto	u6350

u6351:
	goto	l328
u6350:
	line	17
	
l4892:
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	clrf	indf2
	line	18
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	incf	indf2

	line	20
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

		movlw	03Ch-1
	cpfsgt	indf2
	goto	u6361
	goto	u6360

u6361:
	goto	l328
u6360:
	line	22
	
l4894:
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	clrf	indf2
	line	23
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	incf	indf2

	line	25
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
		movlw	018h-1
	cpfsgt	indf2
	goto	u6371
	goto	u6370

u6371:
	goto	l328
u6370:
	line	27
	
l4896:
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	31
	
l328:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clock_update_1s
	__end_of_clock_update_1s:
	signat	_clock_update_1s,4217
	global	_clock_print

;; *************** function _clock_print *****************
;; Defined at:
;;		line 37 in file "src/clock.c"
;; Parameters:    Size  Location     Type
;;  clk             1   66[COMRAM] PTR const struct .
;;		 -> sys_clock(3), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pcl, pclath, pclatu, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0
;;      Totals:         1       3       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 11
;; This function calls:
;;		_printf_
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=0
	line	37
global __ptext17
__ptext17:
psect	text17
	file	"src/clock.c"
	line	37
	
_clock_print:
;incstack = 0
	callstack 19
	line	39
	
l5492:
		movlw	low(STR_5)
	movlb	0	; () banked
	movwf	((printf_@format))&0ffh

	movf	((c:clock_print@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_clock_print+0)&0ffh
	movf	((??_clock_print+0))&0ffh,w
	movwf	(0+(?_printf_+01h))&0ffh
	clrf	(1+(?_printf_+01h))&0ffh
	movf	((c:clock_print@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_clock_print+1)&0ffh
	movf	((??_clock_print+1))&0ffh,w
	movwf	(0+(?_printf_+03h))&0ffh
	clrf	(1+(?_printf_+03h))&0ffh
	movf	((c:clock_print@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_clock_print+2)&0ffh
	movf	((??_clock_print+2))&0ffh,w
	movwf	(0+(?_printf_+05h))&0ffh
	clrf	(1+(?_printf_+05h))&0ffh
	call	_printf_	;wreg free
	line	43
	
l334:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clock_print
	__end_of_clock_print:
	signat	_clock_print,4217
	global	_printf_

;; *************** function _printf_ *****************
;; Defined at:
;;		line 862 in file "external/printf/printf.c"
;; Parameters:    Size  Location     Type
;;  format          1   77[BANK0 ] PTR const unsigned char 
;;		 -> STR_5(17), STR_4(4), STR_3(4), STR_2(4), 
;;		 -> STR_1(4), 
;; Auto vars:     Size  Location     Type
;;  ret             2    0        const int 
;;  va              1   85[BANK0 ] PTR void [1]
;;		 -> ?_fctprintf(2), ?_snprintf_(2), ?_sprintf_(2), ?_printf_(2), 
;;  buffer          1   84[BANK0 ] unsigned char [1]
;; Return value:  Size  Location     Type
;;                  2   77[BANK0 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pcl, pclath, pclatu, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       7       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		__vsnprintf
;; This function is called by:
;;		_main
;;		_clock_print
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=0
	file	"external/printf/printf.c"
	line	862
global __ptext18
__ptext18:
psect	text18
	file	"external/printf/printf.c"
	line	862
	
_printf_:
;incstack = 0
	callstack 26
	line	865
	
l5486:
		movlw	low(?_printf_+01h)
	movlb	0	; () banked
	movwf	((printf_@va))&0ffh

	line	867
	
l5488:; BSR set to: 0

		movlw	low(__out_char)
	movwf	((__vsnprintf@out))&0ffh
	movlw	high(__out_char)
	movwf	((__vsnprintf@out+1))&0ffh

		movlw	low(printf_@buffer)
	movwf	((__vsnprintf@buffer))&0ffh
	clrf	((__vsnprintf@buffer+1))&0ffh

	movlw	high(0FFFFh)
	movwf	((__vsnprintf@maxlen+1))&0ffh
	setf	((__vsnprintf@maxlen))&0ffh
		movff	(printf_@format),(__vsnprintf@format)

		movlw	low(printf_@va)
	movwf	((__vsnprintf@va))&0ffh
	clrf	((__vsnprintf@va+1))&0ffh

	call	__vsnprintf	;wreg free
	line	870
	
l709:
	return	;funcret
	callstack 0
GLOBAL	__end_of_printf_
	__end_of_printf_:
	signat	_printf_,602
	global	__vsnprintf

;; *************** function __vsnprintf *****************
;; Defined at:
;;		line 577 in file "external/printf/printf.c"
;; Parameters:    Size  Location     Type
;;  out             2   66[BANK0 ] PTR FTN(unsigned char ,P
;;		 -> _out_fct(1), _out_char(1), _out_null(1), _out_buffer(1), 
;;  buffer          2   68[BANK0 ] PTR unsigned char 
;;		 -> RAM(2047), vprintf_@buffer(1), printf_@buffer(1), 
;;  maxlen          2   70[BANK0 ] const unsigned int 
;;  format          1   72[BANK0 ] PTR const unsigned char 
;;		 -> STR_5(17), STR_4(4), STR_3(4), STR_2(4), 
;;		 -> STR_1(4), 
;;  va              2   73[BANK0 ] PTR PTR void 
;;		 -> fctprintf@va(1), snprintf_@va(1), sprintf_@va(1), printf_@va(1), 
;; Auto vars:     Size  Location     Type
;;  value           2    8[BANK1 ] const unsigned int 
;;  value           2   31[BANK1 ] const int 
;;  value           4   27[BANK1 ] const long 
;;  l               2   24[BANK1 ] unsigned int 
;;  p               1   26[BANK1 ] PTR const unsigned char 
;;		 -> sys_clock$seconds(1), sys_clock$minutes(1), sys_clock$hours(1), ?_fctprintf(2), 
;;		 -> ?_snprintf_(2), ?_sprintf_(2), ?_printf_(2), 
;;  l               2   18[BANK1 ] unsigned int 
;;  base            2   33[BANK1 ] unsigned int 
;;  prec            2   16[BANK1 ] const int 
;;  w               2   22[BANK1 ] const int 
;;  flags           2   41[BANK1 ] unsigned int 
;;  idx             2   39[BANK1 ] unsigned int 
;;  precision       2   37[BANK1 ] unsigned int 
;;  width           2   35[BANK1 ] unsigned int 
;;  n               2   20[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   66[BANK0 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pcl, pclath, pclatu, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       9       0       0       0       0       0       0       0
;;      Locals:         0       0      43       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0
;;      Totals:         0      11      43       0       0       0       0       0       0
;;Total ram usage:       54 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 9
;; This function calls:
;;		__atoi
;;		__is_digit
;;		__ntoa_long
;;		__out_buffer
;;		__out_char
;;		__out_fct
;;		__out_null
;;		__strnlen_s
;; This function is called by:
;;		_printf_
;;		_sprintf_
;;		_snprintf_
;;		_vprintf_
;;		_vsnprintf_
;;		_fctprintf
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=0
	line	577
global __ptext19
__ptext19:
psect	text19
	file	"external/printf/printf.c"
	line	577
	
__vsnprintf:
;incstack = 0
	callstack 19
	line	580
	
l5188:
	movlb	1	; () banked
	clrf	((__vsnprintf@idx+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@idx))&0ffh
	line	582
	
l5190:; BSR set to: 1

	movlb	0	; () banked
	movf	((__vsnprintf@buffer))&0ffh,w
iorwf	((__vsnprintf@buffer+1))&0ffh,w
	btfss	status,2
	goto	u6941
	goto	u6940

u6941:
	goto	l5474
u6940:
	line	584
	
l5192:; BSR set to: 0

		movlw	low(__out_null)
	movwf	((__vsnprintf@out))&0ffh
	movlw	high(__out_null)
	movwf	((__vsnprintf@out+1))&0ffh

	goto	l5474
	line	590
	
l5194:; BSR set to: 0

	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	xorlw	025h
	btfsc	status,2
	goto	u6951
	goto	u6950
u6951:
	goto	l5204
u6950:
	line	592
	
l5196:; BSR set to: 0

	movff	(__vsnprintf@format),tblptrl
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
	
	movff	tablat,(c:__out_fct@character)
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u6968
	goto	u6969
u6968:
	push
	
	movwf	pclath
	movf	((__vsnprintf@out))&0ffh,w
	movwf	tosl
	movf	((__vsnprintf@out+1))&0ffh,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u6969:
	
l5198:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	593
	
l5200:
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	594
	goto	l5474
	line	598
	
l5204:; BSR set to: 0

	incf	((__vsnprintf@format))&0ffh
	line	602
	
l5206:; BSR set to: 0

	movlb	1	; () banked
	clrf	((__vsnprintf@flags+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@flags))&0ffh
	goto	l5232
	line	605
	
l5208:; BSR set to: 1

	bsf	(0+(0/8)+(__vsnprintf@flags))&0ffh,(0)&7
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	
l5210:; BSR set to: 0

	movlb	1	; () banked
	clrf	((__vsnprintf@n+1))&0ffh
	movlw	low(01h)
	movwf	((__vsnprintf@n))&0ffh
	goto	l5234
	line	606
	
l5212:; BSR set to: 1

	bsf	(0+(1/8)+(__vsnprintf@flags))&0ffh,(1)&7
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l5210
	line	607
	
l5216:; BSR set to: 1

	bsf	(0+(2/8)+(__vsnprintf@flags))&0ffh,(2)&7
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l5210
	line	608
	
l5220:; BSR set to: 1

	bsf	(0+(3/8)+(__vsnprintf@flags))&0ffh,(3)&7
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l5210
	line	609
	
l5224:; BSR set to: 1

	bsf	(0+(4/8)+(__vsnprintf@flags))&0ffh,(4)&7
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l5210
	line	610
	
l5228:; BSR set to: 1

	clrf	((__vsnprintf@n+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@n))&0ffh
	goto	l5234
	line	611
	
l5232:; BSR set to: 1

	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	; Switch size 1, requested type "simple"
; Number of cases is 5, Range of values is 32 to 48
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	32^0	; case 32
	skipnz
	goto	l5220
	xorlw	35^32	; case 35
	skipnz
	goto	l5224
	xorlw	43^35	; case 43
	skipnz
	goto	l5216
	xorlw	45^43	; case 45
	skipnz
	goto	l5212
	xorlw	48^45	; case 48
	skipnz
	goto	l5208
	goto	l5228

	line	612
	
l5234:; BSR set to: 1

	movf	((__vsnprintf@n))&0ffh,w
iorwf	((__vsnprintf@n+1))&0ffh,w
	btfss	status,2
	goto	u6971
	goto	u6970

u6971:
	goto	l5232
u6970:
	line	615
	
l5236:; BSR set to: 1

	clrf	((__vsnprintf@width+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@width))&0ffh
	line	616
	
l5238:; BSR set to: 1

	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	
	call	__is_digit
	iorlw	0
	btfsc	status,2
	goto	u6981
	goto	u6980
u6981:
	goto	l5242
u6980:
	line	617
	
l5240:
		movlw	low(__vsnprintf@format)
	movwf	((c:__atoi@str))^00h,c

	call	__atoi	;wreg free
	movff	0+?__atoi,(__vsnprintf@width)
	movff	1+?__atoi,(__vsnprintf@width+1)
	line	618
	goto	l5254
	line	619
	
l5242:
	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	xorlw	02Ah
	btfss	status,2
	goto	u6991
	goto	u6990
u6991:
	goto	l5254
u6990:
	line	620
	
l5244:
	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movlw	02h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(__vsnprintf@w)
	movff	postinc2,(__vsnprintf@w+1)
	line	621
	
l5246:
	movlb	1	; () banked
	btfsc	((__vsnprintf@w+1))&0ffh,7
	goto	u7000
	goto	u7001

u7001:
	goto	l583
u7000:
	line	622
	
l5248:; BSR set to: 1

	bsf	(0+(1/8)+(__vsnprintf@flags))&0ffh,(1)&7
	line	623
	
l5250:; BSR set to: 1

	movff	(__vsnprintf@w),??__vsnprintf+0
	movff	(__vsnprintf@w+1),??__vsnprintf+0+1
	movlb	0	; () banked
	comf	(??__vsnprintf+0)&0ffh
	comf	(??__vsnprintf+0+1)&0ffh
	infsnz	(??__vsnprintf+0)&0ffh
	incf	(??__vsnprintf+0+1)&0ffh
	movff	??__vsnprintf+0,(__vsnprintf@width)
	movff	??__vsnprintf+0+1,(__vsnprintf@width+1)
	line	624
	goto	l5252
	line	625
	
l583:; BSR set to: 1

	line	626
	movff	(__vsnprintf@w),(__vsnprintf@width)
	movff	(__vsnprintf@w+1),(__vsnprintf@width+1)
	line	628
	
l5252:
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	632
	
l5254:
	movlb	1	; () banked
	clrf	((__vsnprintf@precision+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@precision))&0ffh
	line	633
	
l5256:; BSR set to: 1

	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	xorlw	02Eh
	btfss	status,2
	goto	u7011
	goto	u7010
u7011:
	goto	l5296
u7010:
	line	634
	
l5258:; BSR set to: 1

	bsf	(0+(10/8)+(__vsnprintf@flags))&0ffh,(10)&7
	line	635
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	636
	
l5260:; BSR set to: 0

	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	
	call	__is_digit
	iorlw	0
	btfsc	status,2
	goto	u7021
	goto	u7020
u7021:
	goto	l5264
u7020:
	line	637
	
l5262:
		movlw	low(__vsnprintf@format)
	movwf	((c:__atoi@str))^00h,c

	call	__atoi	;wreg free
	movff	0+?__atoi,(__vsnprintf@precision)
	movff	1+?__atoi,(__vsnprintf@precision+1)
	line	638
	goto	l5296
	line	639
	
l5264:
	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	xorlw	02Ah
	btfss	status,2
	goto	u7031
	goto	u7030
u7031:
	goto	l5296
u7030:
	line	640
	
l5266:
	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movlw	02h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(__vsnprintf@prec)
	movff	postinc2,(__vsnprintf@prec+1)
	line	641
	
l5268:
	movlb	1	; () banked
	btfsc	((__vsnprintf@prec+1))&0ffh,7
	goto	u7040
	movf	((__vsnprintf@prec+1))&0ffh,w
	bnz	u7041
	decf	((__vsnprintf@prec))&0ffh,w
	btfsc	status,0
	goto	u7041
	goto	u7040

u7041:
	goto	l590
u7040:
	
l5270:; BSR set to: 1

	clrf	((__vsnprintf@precision+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@precision))&0ffh
	goto	l5272
	
l590:; BSR set to: 1

	movff	(__vsnprintf@prec),(__vsnprintf@precision)
	movff	(__vsnprintf@prec+1),(__vsnprintf@precision+1)
	line	642
	
l5272:; BSR set to: 1

	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l5296
	line	649
	
l5274:
	movlb	1	; () banked
	bsf	(0+(8/8)+(__vsnprintf@flags))&0ffh,(8)&7
	line	650
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	651
	
l5276:; BSR set to: 0

	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	xorlw	06Ch
	btfss	status,2
	goto	u7051
	goto	u7050
u7051:
	goto	l5472
u7050:
	line	652
	
l5278:; BSR set to: 0

	movlb	1	; () banked
	bsf	(0+(9/8)+(__vsnprintf@flags))&0ffh,(9)&7
	line	653
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l5472
	line	657
	
l5280:
	movlb	1	; () banked
	bsf	(0+(7/8)+(__vsnprintf@flags))&0ffh,(7)&7
	line	658
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	659
	
l5282:; BSR set to: 0

	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	xorlw	068h
	btfss	status,2
	goto	u7061
	goto	u7060
u7061:
	goto	l5472
u7060:
	line	660
	
l5284:; BSR set to: 0

	movlb	1	; () banked
	bsf	(0+(6/8)+(__vsnprintf@flags))&0ffh,(6)&7
	line	661
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l5472
	line	671
	
l5286:
	movlb	1	; () banked
	bsf	(0+(9/8)+(__vsnprintf@flags))&0ffh,(9)&7
	
l603:; BSR set to: 1

	line	672
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	673
	goto	l5472
	line	680
	
l5296:
	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	; Switch size 1, requested type "simple"
; Number of cases is 4, Range of values is 104 to 122
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	104^0	; case 104
	skipnz
	goto	l5280
	xorlw	106^104	; case 106
	skipnz
	goto	l5286
	xorlw	108^106	; case 108
	skipnz
	goto	l5274
	xorlw	122^108	; case 122
	skipnz
	goto	l5286
	goto	l5472

	line	693
	
l5298:
	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	xorlw	078h
	btfsc	status,2
	goto	u7071
	goto	u7070
u7071:
	goto	l5302
u7070:
	
l5300:
	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	xorlw	058h
	btfss	status,2
	goto	u7081
	goto	u7080
u7081:
	goto	l5304
u7080:
	line	694
	
l5302:
	movlb	1	; () banked
	clrf	((__vsnprintf@base+1))&0ffh
	movlw	low(010h)
	movwf	((__vsnprintf@base))&0ffh
	line	695
	goto	l5316
	line	696
	
l5304:
	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	xorlw	06Fh
	btfss	status,2
	goto	u7091
	goto	u7090
u7091:
	goto	l5308
u7090:
	line	697
	
l5306:
	movlb	1	; () banked
	clrf	((__vsnprintf@base+1))&0ffh
	movlw	low(08h)
	movwf	((__vsnprintf@base))&0ffh
	line	698
	goto	l5316
	line	699
	
l5308:
	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	xorlw	062h
	btfss	status,2
	goto	u7101
	goto	u7100
u7101:
	goto	l5312
u7100:
	line	700
	
l5310:
	movlb	1	; () banked
	clrf	((__vsnprintf@base+1))&0ffh
	movlw	low(02h)
	movwf	((__vsnprintf@base))&0ffh
	line	701
	goto	l5316
	line	703
	
l5312:
	movlb	1	; () banked
	clrf	((__vsnprintf@base+1))&0ffh
	movlw	low(0Ah)
	movwf	((__vsnprintf@base))&0ffh
	line	704
	
l5314:; BSR set to: 1

	bcf	(0+(4/8)+(__vsnprintf@flags))&0ffh,(4)&7
	line	707
	
l5316:; BSR set to: 1

	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	xorlw	058h
	btfss	status,2
	goto	u7111
	goto	u7110
u7111:
	goto	l5320
u7110:
	line	708
	
l5318:; BSR set to: 1

	bsf	(0+(5/8)+(__vsnprintf@flags))&0ffh,(5)&7
	line	712
	
l5320:; BSR set to: 1

	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	xorlw	069h
	btfsc	status,2
	goto	u7121
	goto	u7120
u7121:
	goto	l5326
u7120:
	
l5322:; BSR set to: 1

	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	xorlw	064h
	btfsc	status,2
	goto	u7131
	goto	u7130
u7131:
	goto	l5326
u7130:
	line	713
	
l5324:; BSR set to: 1

	movlw	low(0FFF3h)
	andwf	((__vsnprintf@flags))&0ffh
	movlw	high(0FFF3h)
	andwf	((__vsnprintf@flags+1))&0ffh
	line	717
	
l5326:; BSR set to: 1

	
	btfss	((__vsnprintf@flags+1))&0ffh,(10)&7
	goto	u7141
	goto	u7140
u7141:
	goto	l5330
u7140:
	line	718
	
l5328:; BSR set to: 1

	bcf	(0+(0/8)+(__vsnprintf@flags))&0ffh,(0)&7
	line	722
	
l5330:; BSR set to: 1

	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	xorlw	069h
	btfsc	status,2
	goto	u7151
	goto	u7150
u7151:
	goto	l631
u7150:
	
l5332:; BSR set to: 1

	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	xorlw	064h
	btfss	status,2
	goto	u7161
	goto	u7160
u7161:
	goto	l629
u7160:
	
l631:; BSR set to: 1

	line	724
	
	btfss	((__vsnprintf@flags+1))&0ffh,(9)&7
	goto	u7171
	goto	u7170
u7171:
	goto	l632
u7170:
	goto	l5200
	line	730
	
l632:; BSR set to: 1

	
	btfss	((__vsnprintf@flags+1))&0ffh,(8)&7
	goto	u7181
	goto	u7180
u7181:
	goto	l634
u7180:
	line	731
	
l5336:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movlw	04h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(__vsnprintf@value)
	movff	postinc2,(__vsnprintf@value+1)
	movff	postinc2,(__vsnprintf@value+2)
	movff	postinc2,(__vsnprintf@value+3)
	line	732
	
l5338:; BSR set to: 1

	btfsc	((__vsnprintf@value+3))&0ffh,7
	goto	u7190
	movf	((__vsnprintf@value+3))&0ffh,w
	iorwf	((__vsnprintf@value+2))&0ffh,w
	iorwf	((__vsnprintf@value+1))&0ffh,w
	bnz	u7191
	decf	((__vsnprintf@value))&0ffh,w
	btfsc	status,0
	goto	u7191
	goto	u7190

u7191:
	goto	l636
u7190:
	
l5340:; BSR set to: 1

	movf	((__vsnprintf@value))&0ffh,w
	sublw	low(0)
	movwf	((__vsnprintf$1407))&0ffh
	movlw	high(0)
	subfwb	((__vsnprintf@value+1))&0ffh,w
	movwf	1+((__vsnprintf$1407))&0ffh
	
	movlw	low highword(0)
	subfwb	((__vsnprintf@value+2))&0ffh,w
	movwf	2+((__vsnprintf$1407))&0ffh
	
	movlw	high highword(0)
	subfwb	((__vsnprintf@value+3))&0ffh,w
	movwf	3+((__vsnprintf$1407))&0ffh
	goto	l5342
	
l636:; BSR set to: 1

	movff	(__vsnprintf@value),(__vsnprintf$1407)
	movff	(__vsnprintf@value+1),(__vsnprintf$1407+1)
	movff	(__vsnprintf@value+2),(__vsnprintf$1407+2)
	movff	(__vsnprintf@value+3),(__vsnprintf$1407+3)
	
l5342:; BSR set to: 1

		movff	(__vsnprintf@out),(__ntoa_long@out)
	movff	(__vsnprintf@out+1),(__ntoa_long@out+1)

		movff	(__vsnprintf@buffer),(__ntoa_long@buffer)
	movff	(__vsnprintf@buffer+1),(__ntoa_long@buffer+1)

	movff	(__vsnprintf@idx),(__ntoa_long@idx)
	movff	(__vsnprintf@idx+1),(__ntoa_long@idx+1)
	movff	(__vsnprintf@maxlen),(__ntoa_long@maxlen)
	movff	(__vsnprintf@maxlen+1),(__ntoa_long@maxlen+1)
	movff	(__vsnprintf$1407),(__ntoa_long@value)
	movff	(__vsnprintf$1407+1),(__ntoa_long@value+1)
	movff	(__vsnprintf$1407+2),(__ntoa_long@value+2)
	movff	(__vsnprintf$1407+3),(__ntoa_long@value+3)
	btfsc	((__vsnprintf@value+3))&0ffh,7
	goto	u7201
	goto	u7200

u7201:
	movlw	1
	goto	u7210
u7200:
	movlw	0
u7210:
	movlb	0	; () banked
	movwf	((__ntoa_long@negative))&0ffh
	movff	(__vsnprintf@base),(__ntoa_long@base)
	movff	(__vsnprintf@base+1),(__ntoa_long@base+1)
	clrf	((__ntoa_long@base+2))&0ffh
	clrf	((__ntoa_long@base+3))&0ffh
	movff	(__vsnprintf@precision),(__ntoa_long@prec)
	movff	(__vsnprintf@precision+1),(__ntoa_long@prec+1)
	movff	(__vsnprintf@width),(__ntoa_long@width)
	movff	(__vsnprintf@width+1),(__ntoa_long@width+1)
	movff	(__vsnprintf@flags),(__ntoa_long@flags)
	movff	(__vsnprintf@flags+1),(__ntoa_long@flags+1)
	call	__ntoa_long	;wreg free
	movff	0+?__ntoa_long,(__vsnprintf@idx)
	movff	1+?__ntoa_long,(__vsnprintf@idx+1)
	line	733
	goto	l5200
	line	734
	
l634:; BSR set to: 1

	line	735
	
	btfsc	((__vsnprintf@flags))&0ffh,(6)&7
	goto	u7221
	goto	u7220
u7221:
	goto	l5352
u7220:
	
l5344:; BSR set to: 1

	
	btfsc	((__vsnprintf@flags))&0ffh,(7)&7
	goto	u7231
	goto	u7230
u7231:
	goto	l5348
u7230:
	
l5346:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movlw	02h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(__vsnprintf$1409)
	movff	postinc2,(__vsnprintf$1409+1)
	goto	l5350
	
l5348:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movlw	02h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(__vsnprintf$1409)
	movff	postinc2,(__vsnprintf$1409+1)
	
l5350:; BSR set to: 1

	movff	(__vsnprintf$1409),(__vsnprintf@value_1408)
	movff	(__vsnprintf$1409+1),(__vsnprintf@value_1408+1)
	goto	l5354
	
l5352:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movf	indf2,w
	incf	indf2
	incf	indf2
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movwf	(??__vsnprintf+0)&0ffh
	movf	((??__vsnprintf+0))&0ffh,w
	movlb	1	; () banked
	movwf	((__vsnprintf@value_1408))&0ffh
	clrf	((__vsnprintf@value_1408+1))&0ffh
	line	736
	
l5354:; BSR set to: 1

	btfsc	((__vsnprintf@value_1408+1))&0ffh,7
	goto	u7240
	movf	((__vsnprintf@value_1408+1))&0ffh,w
	bnz	u7241
	decf	((__vsnprintf@value_1408))&0ffh,w
	btfsc	status,0
	goto	u7241
	goto	u7240

u7241:
	goto	l649
u7240:
	
l5356:; BSR set to: 1

	movf	((__vsnprintf@value_1408))&0ffh,w
	sublw	low(0)
	movwf	((__vsnprintf$1410))&0ffh
	movf	((__vsnprintf@value_1408+1))&0ffh,w
	btfss	status,0
	incf	wreg
	sublw	high(0)
	
	movwf	1+((__vsnprintf$1410))&0ffh
	goto	l5358
	
l649:; BSR set to: 1

	movff	(__vsnprintf@value_1408),(__vsnprintf$1410)
	movff	(__vsnprintf@value_1408+1),(__vsnprintf$1410+1)
	
l5358:; BSR set to: 1

		movff	(__vsnprintf@out),(__ntoa_long@out)
	movff	(__vsnprintf@out+1),(__ntoa_long@out+1)

		movff	(__vsnprintf@buffer),(__ntoa_long@buffer)
	movff	(__vsnprintf@buffer+1),(__ntoa_long@buffer+1)

	movff	(__vsnprintf@idx),(__ntoa_long@idx)
	movff	(__vsnprintf@idx+1),(__ntoa_long@idx+1)
	movff	(__vsnprintf@maxlen),(__ntoa_long@maxlen)
	movff	(__vsnprintf@maxlen+1),(__ntoa_long@maxlen+1)
	movff	(__vsnprintf$1410),(__ntoa_long@value)
	movff	(__vsnprintf$1410+1),(__ntoa_long@value+1)
	movlb	0	; () banked
	clrf	((__ntoa_long@value+2))&0ffh
	clrf	((__ntoa_long@value+3))&0ffh
	movlb	1	; () banked
	btfsc	((__vsnprintf@value_1408+1))&0ffh,7
	goto	u7251
	goto	u7250

u7251:
	movlw	1
	goto	u7260
u7250:
	movlw	0
u7260:
	movlb	0	; () banked
	movwf	((__ntoa_long@negative))&0ffh
	movff	(__vsnprintf@base),(__ntoa_long@base)
	movff	(__vsnprintf@base+1),(__ntoa_long@base+1)
	clrf	((__ntoa_long@base+2))&0ffh
	clrf	((__ntoa_long@base+3))&0ffh
	movff	(__vsnprintf@precision),(__ntoa_long@prec)
	movff	(__vsnprintf@precision+1),(__ntoa_long@prec+1)
	movff	(__vsnprintf@width),(__ntoa_long@width)
	movff	(__vsnprintf@width+1),(__ntoa_long@width+1)
	movff	(__vsnprintf@flags),(__ntoa_long@flags)
	movff	(__vsnprintf@flags+1),(__ntoa_long@flags+1)
	call	__ntoa_long	;wreg free
	movff	0+?__ntoa_long,(__vsnprintf@idx)
	movff	1+?__ntoa_long,(__vsnprintf@idx+1)
	goto	l5200
	line	739
	
l629:; BSR set to: 1

	line	741
	
	btfss	((__vsnprintf@flags+1))&0ffh,(9)&7
	goto	u7271
	goto	u7270
u7271:
	goto	l653
u7270:
	goto	l5200
	line	746
	
l653:; BSR set to: 1

	
	btfss	((__vsnprintf@flags+1))&0ffh,(8)&7
	goto	u7281
	goto	u7280
u7281:
	goto	l655
u7280:
	line	747
	
l5362:; BSR set to: 1

		movff	(__vsnprintf@out),(__ntoa_long@out)
	movff	(__vsnprintf@out+1),(__ntoa_long@out+1)

		movff	(__vsnprintf@buffer),(__ntoa_long@buffer)
	movff	(__vsnprintf@buffer+1),(__ntoa_long@buffer+1)

	movff	(__vsnprintf@idx),(__ntoa_long@idx)
	movff	(__vsnprintf@idx+1),(__ntoa_long@idx+1)
	movff	(__vsnprintf@maxlen),(__ntoa_long@maxlen)
	movff	(__vsnprintf@maxlen+1),(__ntoa_long@maxlen+1)
	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movlw	04h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(__ntoa_long@value)
	movff	postinc2,(__ntoa_long@value+1)
	movff	postinc2,(__ntoa_long@value+2)
	movff	postinc2,(__ntoa_long@value+3)
	movlw	low(0)
	movlb	0	; () banked
	movwf	((__ntoa_long@negative))&0ffh
	movff	(__vsnprintf@base),(__ntoa_long@base)
	movff	(__vsnprintf@base+1),(__ntoa_long@base+1)
	clrf	((__ntoa_long@base+2))&0ffh
	clrf	((__ntoa_long@base+3))&0ffh
	movff	(__vsnprintf@precision),(__ntoa_long@prec)
	movff	(__vsnprintf@precision+1),(__ntoa_long@prec+1)
	movff	(__vsnprintf@width),(__ntoa_long@width)
	movff	(__vsnprintf@width+1),(__ntoa_long@width+1)
	movff	(__vsnprintf@flags),(__ntoa_long@flags)
	movff	(__vsnprintf@flags+1),(__ntoa_long@flags+1)
	call	__ntoa_long	;wreg free
	movff	0+?__ntoa_long,(__vsnprintf@idx)
	movff	1+?__ntoa_long,(__vsnprintf@idx+1)
	line	748
	goto	l5200
	line	749
	
l655:; BSR set to: 1

	line	750
	
	btfsc	((__vsnprintf@flags))&0ffh,(6)&7
	goto	u7291
	goto	u7290
u7291:
	goto	l5372
u7290:
	
l5364:; BSR set to: 1

	
	btfsc	((__vsnprintf@flags))&0ffh,(7)&7
	goto	u7301
	goto	u7300
u7301:
	goto	l5368
u7300:
	
l5366:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movlw	02h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(__vsnprintf$1412)
	movff	postinc2,(__vsnprintf$1412+1)
	goto	l5370
	
l5368:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movlw	02h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(__vsnprintf$1412)
	movff	postinc2,(__vsnprintf$1412+1)
	
l5370:; BSR set to: 1

	movff	(__vsnprintf$1412),(__vsnprintf@value_1411)
	movff	(__vsnprintf$1412+1),(__vsnprintf@value_1411+1)
	goto	l5374
	
l5372:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movf	indf2,w
	incf	indf2
	incf	indf2
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movlb	0	; () banked
	movwf	(??__vsnprintf+0)&0ffh
	movf	((??__vsnprintf+0))&0ffh,w
	movlb	1	; () banked
	movwf	((__vsnprintf@value_1411))&0ffh
	clrf	((__vsnprintf@value_1411+1))&0ffh
	line	751
	
l5374:; BSR set to: 1

		movff	(__vsnprintf@out),(__ntoa_long@out)
	movff	(__vsnprintf@out+1),(__ntoa_long@out+1)

		movff	(__vsnprintf@buffer),(__ntoa_long@buffer)
	movff	(__vsnprintf@buffer+1),(__ntoa_long@buffer+1)

	movff	(__vsnprintf@idx),(__ntoa_long@idx)
	movff	(__vsnprintf@idx+1),(__ntoa_long@idx+1)
	movff	(__vsnprintf@maxlen),(__ntoa_long@maxlen)
	movff	(__vsnprintf@maxlen+1),(__ntoa_long@maxlen+1)
	movff	(__vsnprintf@value_1411),(__ntoa_long@value)
	movff	(__vsnprintf@value_1411+1),(__ntoa_long@value+1)
	movlb	0	; () banked
	clrf	((__ntoa_long@value+2))&0ffh
	clrf	((__ntoa_long@value+3))&0ffh
	movlw	low(0)
	movwf	((__ntoa_long@negative))&0ffh
	movff	(__vsnprintf@base),(__ntoa_long@base)
	movff	(__vsnprintf@base+1),(__ntoa_long@base+1)
	clrf	((__ntoa_long@base+2))&0ffh
	clrf	((__ntoa_long@base+3))&0ffh
	movff	(__vsnprintf@precision),(__ntoa_long@prec)
	movff	(__vsnprintf@precision+1),(__ntoa_long@prec+1)
	movff	(__vsnprintf@width),(__ntoa_long@width)
	movff	(__vsnprintf@width+1),(__ntoa_long@width+1)
	movff	(__vsnprintf@flags),(__ntoa_long@flags)
	movff	(__vsnprintf@flags+1),(__ntoa_long@flags+1)
	call	__ntoa_long	;wreg free
	movff	0+?__ntoa_long,(__vsnprintf@idx)
	movff	1+?__ntoa_long,(__vsnprintf@idx+1)
	goto	l5200
	line	777
	
l5378:
	movlb	1	; () banked
	clrf	((__vsnprintf@l+1))&0ffh
	movlw	low(01h)
	movwf	((__vsnprintf@l))&0ffh
	line	779
	
l5380:; BSR set to: 1

	
	btfsc	((__vsnprintf@flags))&0ffh,(1)&7
	goto	u7311
	goto	u7310
u7311:
	goto	l5390
u7310:
	goto	l5388
	line	781
	
l5384:; BSR set to: 0

	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u7328
	goto	u7329
u7328:
	push
	
	movwf	pclath
	movf	((__vsnprintf@out))&0ffh,w
	movwf	tosl
	movf	((__vsnprintf@out+1))&0ffh,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u7329:
	
l5386:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	780
	
l5388:; BSR set to: 1

	movf	((__vsnprintf@l))&0ffh,w
	movlb	0	; () banked
	movwf	(??__vsnprintf+0)&0ffh
	movlb	1	; () banked
	movf	((__vsnprintf@l+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+(??__vsnprintf+0)&0ffh
	movlb	1	; () banked
	infsnz	((__vsnprintf@l))&0ffh
	incf	((__vsnprintf@l+1))&0ffh
		movf	((__vsnprintf@width))&0ffh,w
	movlb	0	; () banked
	subwf	(??__vsnprintf+0)&0ffh,w
	movlb	1	; () banked
	movf	((__vsnprintf@width+1))&0ffh,w
	movlb	0	; () banked
	subwfb	(??__vsnprintf+0+1)&0ffh,w
	btfss	status,0
	goto	u7331
	goto	u7330

u7331:
	goto	l5384
u7330:
	line	785
	
l5390:
	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movf	indf2,w
	incf	indf2
	incf	indf2
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u7348
	goto	u7349
u7348:
	push
	movlb	0	; () banked
	
	movwf	pclath
	movf	((__vsnprintf@out))&0ffh,w
	movwf	tosl
	movf	((__vsnprintf@out+1))&0ffh,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u7349:
	
l5392:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	787
	
l5394:; BSR set to: 1

	
	btfss	((__vsnprintf@flags))&0ffh,(1)&7
	goto	u7351
	goto	u7350
u7351:
	goto	l5200
u7350:
	goto	l5402
	line	789
	
l5398:; BSR set to: 0

	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u7368
	goto	u7369
u7368:
	push
	
	movwf	pclath
	movf	((__vsnprintf@out))&0ffh,w
	movwf	tosl
	movf	((__vsnprintf@out+1))&0ffh,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u7369:
	
l5400:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	788
	
l5402:; BSR set to: 1

	movf	((__vsnprintf@l))&0ffh,w
	movlb	0	; () banked
	movwf	(??__vsnprintf+0)&0ffh
	movlb	1	; () banked
	movf	((__vsnprintf@l+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+(??__vsnprintf+0)&0ffh
	movlb	1	; () banked
	infsnz	((__vsnprintf@l))&0ffh
	incf	((__vsnprintf@l+1))&0ffh
		movf	((__vsnprintf@width))&0ffh,w
	movlb	0	; () banked
	subwf	(??__vsnprintf+0)&0ffh,w
	movlb	1	; () banked
	movf	((__vsnprintf@width+1))&0ffh,w
	movlb	0	; () banked
	subwfb	(??__vsnprintf+0+1)&0ffh,w
	btfss	status,0
	goto	u7371
	goto	u7370

u7371:
	goto	l5398
u7370:
	goto	l5200
	line	797
	
l5406:
	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movlw	02h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(__vsnprintf@p)
	line	798
	
l5408:
	movlb	1	; () banked
	movf	((__vsnprintf@precision))&0ffh,w
iorwf	((__vsnprintf@precision+1))&0ffh,w
	btfss	status,2
	goto	u7381
	goto	u7380

u7381:
	goto	l677
u7380:
	
l5410:; BSR set to: 1

	setf	((__vsnprintf$1417))&0ffh
	setf	((__vsnprintf$1417+1))&0ffh
	goto	l5412
	
l677:; BSR set to: 1

	movff	(__vsnprintf@precision),(__vsnprintf$1417)
	movff	(__vsnprintf@precision+1),(__vsnprintf$1417+1)
	
l5412:; BSR set to: 1

		movff	(__vsnprintf@p),(c:__strnlen_s@str)

	movff	(__vsnprintf$1417),(c:__strnlen_s@maxsize)
	movff	(__vsnprintf$1417+1),(c:__strnlen_s@maxsize+1)
	call	__strnlen_s	;wreg free
	movff	0+?__strnlen_s,(__vsnprintf@l_1415)
	movff	1+?__strnlen_s,(__vsnprintf@l_1415+1)
	line	800
	
l5414:
	movlb	1	; () banked
	
	btfss	((__vsnprintf@flags+1))&0ffh,(10)&7
	goto	u7391
	goto	u7390
u7391:
	goto	l680
u7390:
	line	801
	
l5416:; BSR set to: 1

		movf	((__vsnprintf@precision))&0ffh,w
	subwf	((__vsnprintf@l_1415))&0ffh,w
	movf	((__vsnprintf@precision+1))&0ffh,w
	subwfb	((__vsnprintf@l_1415+1))&0ffh,w
	btfss	status,0
	goto	u7401
	goto	u7400

u7401:
	goto	l680
u7400:
	
l5418:; BSR set to: 1

	movff	(__vsnprintf@precision),(__vsnprintf@l_1415)
	movff	(__vsnprintf@precision+1),(__vsnprintf@l_1415+1)
	line	802
	
l680:; BSR set to: 1

	line	803
	
	btfsc	((__vsnprintf@flags))&0ffh,(1)&7
	goto	u7411
	goto	u7410
u7411:
	goto	l5434
u7410:
	goto	l5426
	line	805
	
l5422:; BSR set to: 0

	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u7428
	goto	u7429
u7428:
	push
	
	movwf	pclath
	movf	((__vsnprintf@out))&0ffh,w
	movwf	tosl
	movf	((__vsnprintf@out+1))&0ffh,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u7429:
	
l5424:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	804
	
l5426:; BSR set to: 1

	movf	((__vsnprintf@l_1415))&0ffh,w
	movlb	0	; () banked
	movwf	(??__vsnprintf+0)&0ffh
	movlb	1	; () banked
	movf	((__vsnprintf@l_1415+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+(??__vsnprintf+0)&0ffh
	movlb	1	; () banked
	infsnz	((__vsnprintf@l_1415))&0ffh
	incf	((__vsnprintf@l_1415+1))&0ffh
		movf	((__vsnprintf@width))&0ffh,w
	movlb	0	; () banked
	subwf	(??__vsnprintf+0)&0ffh,w
	movlb	1	; () banked
	movf	((__vsnprintf@width+1))&0ffh,w
	movlb	0	; () banked
	subwfb	(??__vsnprintf+0+1)&0ffh,w
	btfss	status,0
	goto	u7431
	goto	u7430

u7431:
	goto	l5422
u7430:
	goto	l5434
	line	810
	
l5428:; BSR set to: 1

	movf	((__vsnprintf@p))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u7448
	goto	u7449
u7448:
	push
	movlb	0	; () banked
	
	movwf	pclath
	movf	((__vsnprintf@out))&0ffh,w
	movwf	tosl
	movf	((__vsnprintf@out+1))&0ffh,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u7449:
	
l5430:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	
l5432:; BSR set to: 1

	incf	((__vsnprintf@p))&0ffh
	line	809
	
l5434:
	movlb	1	; () banked
	movf	((__vsnprintf@p))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	btfsc	status,2
	goto	u7451
	goto	u7450
u7451:
	goto	l693
u7450:
	
l5436:; BSR set to: 1

	
	btfss	((__vsnprintf@flags+1))&0ffh,(10)&7
	goto	u7461
	goto	u7460
u7461:
	goto	l5428
u7460:
	
l5438:; BSR set to: 1

	decf	((__vsnprintf@precision))&0ffh
	btfss	status,0
	decf	((__vsnprintf@precision+1))&0ffh
		incf	((__vsnprintf@precision))&0ffh,w
	bnz	u7471
	incf	((__vsnprintf@precision+1))&0ffh,w
	btfss	status,2
	goto	u7471
	goto	u7470

u7471:
	goto	l5428
u7470:
	
l693:; BSR set to: 1

	line	813
	
	btfss	((__vsnprintf@flags))&0ffh,(1)&7
	goto	u7481
	goto	u7480
u7481:
	goto	l5200
u7480:
	goto	l5446
	line	815
	
l5442:; BSR set to: 0

	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u7498
	goto	u7499
u7498:
	push
	
	movwf	pclath
	movf	((__vsnprintf@out))&0ffh,w
	movwf	tosl
	movf	((__vsnprintf@out+1))&0ffh,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u7499:
	
l5444:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	814
	
l5446:; BSR set to: 1

	movf	((__vsnprintf@l_1415))&0ffh,w
	movlb	0	; () banked
	movwf	(??__vsnprintf+0)&0ffh
	movlb	1	; () banked
	movf	((__vsnprintf@l_1415+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+(??__vsnprintf+0)&0ffh
	movlb	1	; () banked
	infsnz	((__vsnprintf@l_1415))&0ffh
	incf	((__vsnprintf@l_1415+1))&0ffh
		movf	((__vsnprintf@width))&0ffh,w
	movlb	0	; () banked
	subwf	(??__vsnprintf+0)&0ffh,w
	movlb	1	; () banked
	movf	((__vsnprintf@width+1))&0ffh,w
	movlb	0	; () banked
	subwfb	(??__vsnprintf+0+1)&0ffh,w
	btfss	status,0
	goto	u7501
	goto	u7500

u7501:
	goto	l5442
u7500:
	goto	l5200
	line	823
	
l5450:
	movlb	1	; () banked
	clrf	((__vsnprintf@width+1))&0ffh
	movlw	low(04h)
	movwf	((__vsnprintf@width))&0ffh
	line	824
	
l5452:; BSR set to: 1

	movlw	021h
	iorwf	((__vsnprintf@flags))&0ffh
	line	832
	
l5454:; BSR set to: 1

		movff	(__vsnprintf@out),(__ntoa_long@out)
	movff	(__vsnprintf@out+1),(__ntoa_long@out+1)

		movff	(__vsnprintf@buffer),(__ntoa_long@buffer)
	movff	(__vsnprintf@buffer+1),(__ntoa_long@buffer+1)

	movff	(__vsnprintf@idx),(__ntoa_long@idx)
	movff	(__vsnprintf@idx+1),(__ntoa_long@idx+1)
	movff	(__vsnprintf@maxlen),(__ntoa_long@maxlen)
	movff	(__vsnprintf@maxlen+1),(__ntoa_long@maxlen+1)
	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movf	indf2,w
	incf	indf2
	incf	indf2
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,??__vsnprintf+0
	movff	postdec2,??__vsnprintf+0+1
	movff	??__vsnprintf+0,(__ntoa_long@value)
	movff	??__vsnprintf+0+1,(__ntoa_long@value+1)
	movlb	0	; () banked
	clrf	((__ntoa_long@value+2))&0ffh
	clrf	((__ntoa_long@value+3))&0ffh
	movlw	low(0)
	movwf	((__ntoa_long@negative))&0ffh
	movlw	low(010h)
	movwf	((__ntoa_long@base))&0ffh
	movlw	high(010h)
	movwf	((__ntoa_long@base+1))&0ffh
	movlw	low highword(010h)
	movwf	((__ntoa_long@base+2))&0ffh
	movlw	high highword(010h)
	movwf	((__ntoa_long@base+3))&0ffh
	movff	(__vsnprintf@precision),(__ntoa_long@prec)
	movff	(__vsnprintf@precision+1),(__ntoa_long@prec+1)
	movff	(__vsnprintf@width),(__ntoa_long@width)
	movff	(__vsnprintf@width+1),(__ntoa_long@width+1)
	movff	(__vsnprintf@flags),(__ntoa_long@flags)
	movff	(__vsnprintf@flags+1),(__ntoa_long@flags+1)
	call	__ntoa_long	;wreg free
	movff	0+?__ntoa_long,(__vsnprintf@idx)
	movff	1+?__ntoa_long,(__vsnprintf@idx+1)
	goto	l5200
	line	841
	
l5458:
	movlw	low(025h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u7518
	goto	u7519
u7518:
	push
	movlb	0	; () banked
	
	movwf	pclath
	movf	((__vsnprintf@out))&0ffh,w
	movwf	tosl
	movf	((__vsnprintf@out+1))&0ffh,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u7519:
	goto	l5198
	line	846
	
l5464:
	movff	(__vsnprintf@format),tblptrl
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
	
	movff	tablat,(c:__out_fct@character)
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u7528
	goto	u7529
u7528:
	push
	movlb	0	; () banked
	
	movwf	pclath
	movf	((__vsnprintf@out))&0ffh,w
	movwf	tosl
	movf	((__vsnprintf@out+1))&0ffh,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u7529:
	goto	l5198
	line	849
	
l5472:
	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	; Switch size 1, requested type "simple"
; Number of cases is 11, Range of values is 37 to 120
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           34    18 (average)
;	Chosen strategy is simple_byte

	xorlw	37^0	; case 37
	skipnz
	goto	l5458
	xorlw	88^37	; case 88
	skipnz
	goto	l5298
	xorlw	98^88	; case 98
	skipnz
	goto	l5298
	xorlw	99^98	; case 99
	skipnz
	goto	l5378
	xorlw	100^99	; case 100
	skipnz
	goto	l5298
	xorlw	105^100	; case 105
	skipnz
	goto	l5298
	xorlw	111^105	; case 111
	skipnz
	goto	l5298
	xorlw	112^111	; case 112
	skipnz
	goto	l5450
	xorlw	115^112	; case 115
	skipnz
	goto	l5406
	xorlw	117^115	; case 117
	skipnz
	goto	l5298
	xorlw	120^117	; case 120
	skipnz
	goto	l5298
	goto	l5464

	line	587
	
l5474:; BSR set to: 0

	movff	(__vsnprintf@format),tblptrl
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
	
	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u7531
	goto	u7530
u7531:
	goto	l5194
u7530:
	line	853
	
l5476:; BSR set to: 0

		movf	((__vsnprintf@maxlen))&0ffh,w
	movlb	1	; () banked
	subwf	((__vsnprintf@idx))&0ffh,w
	movlb	0	; () banked
	movf	((__vsnprintf@maxlen+1))&0ffh,w
	movlb	1	; () banked
	subwfb	((__vsnprintf@idx+1))&0ffh,w
	btfss	status,0
	goto	u7541
	goto	u7540

u7541:
	goto	l703
u7540:
	
l5478:; BSR set to: 1

	movlw	low(0FFFFh)
	movlb	0	; () banked
	addwf	((__vsnprintf@maxlen))&0ffh,w
	movlb	1	; () banked
	movwf	((__vsnprintf$1418))&0ffh
	movlw	high(0FFFFh)
	movlb	0	; () banked
	addwfc	((__vsnprintf@maxlen+1))&0ffh,w
	movlb	1	; () banked
	movwf	1+((__vsnprintf$1418))&0ffh
	goto	l5480
	
l703:; BSR set to: 1

	movff	(__vsnprintf@idx),(__vsnprintf$1418)
	movff	(__vsnprintf@idx+1),(__vsnprintf$1418+1)
	
l5480:; BSR set to: 1

	movlw	low(0)
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf$1418),(c:__out_fct@idx)
	movff	(__vsnprintf$1418+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u7558
	goto	u7559
u7558:
	push
	movlb	0	; () banked
	
	movwf	pclath
	movf	((__vsnprintf@out))&0ffh,w
	movwf	tosl
	movf	((__vsnprintf@out+1))&0ffh,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u7559:
	line	856
	
l5482:
	movff	(__vsnprintf@idx),(?__vsnprintf)
	movff	(__vsnprintf@idx+1),(?__vsnprintf+1)
	line	857
	
l706:
	return	;funcret
	callstack 0
GLOBAL	__end_of__vsnprintf
	__end_of__vsnprintf:
	signat	__vsnprintf,20602
	global	__strnlen_s

;; *************** function __strnlen_s *****************
;; Defined at:
;;		line 171 in file "external/printf/printf.c"
;; Parameters:    Size  Location     Type
;;  str             1   12[COMRAM] PTR const unsigned char 
;;		 -> sys_clock$seconds(1), sys_clock$minutes(1), sys_clock$hours(1), ?_fctprintf(2), 
;;		 -> ?_snprintf_(2), ?_sprintf_(2), ?_printf_(2), 
;;  maxsize         2   13[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  s               1   15[COMRAM] PTR const unsigned char 
;;		 -> sys_clock$seconds(1), sys_clock$minutes(1), sys_clock$hours(1), ?_fctprintf(2), 
;;		 -> ?_snprintf_(2), ?_sprintf_(2), ?_printf_(2), 
;; Return value:  Size  Location     Type
;;                  2   12[COMRAM] unsigned int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__vsnprintf
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,inline,group=0
	line	171
global __ptext20
__ptext20:
psect	text20
	file	"external/printf/printf.c"
	line	171
	
__strnlen_s:
;incstack = 0
	callstack 24
	line	174
	
l4096:
		movff	(c:__strnlen_s@str),(c:__strnlen_s@s)

	goto	l4100
	
l4098:
	incf	((c:__strnlen_s@s))^00h,c
	
l4100:
	movf	((c:__strnlen_s@s))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	btfsc	status,2
	goto	u4911
	goto	u4910
u4911:
	goto	l4104
u4910:
	
l4102:
	decf	((c:__strnlen_s@maxsize))^00h,c
	btfss	status,0
	decf	((c:__strnlen_s@maxsize+1))^00h,c
		incf	((c:__strnlen_s@maxsize))^00h,c,w
	bnz	u4921
	incf	((c:__strnlen_s@maxsize+1))^00h,c,w
	btfss	status,2
	goto	u4921
	goto	u4920

u4921:
	goto	l4098
u4920:
	line	175
	
l4104:
	movf	((c:__strnlen_s@str))^00h,c,w
	subwf	((c:__strnlen_s@s))^00h,c,w
	movwf	((c:?__strnlen_s))^00h,c
	clrf	((c:?__strnlen_s+1))^00h,c
	btfsc	((c:?__strnlen_s))^00h,c,7
	decf	((c:?__strnlen_s+1))^00h,c
	line	176
	
l484:
	return	;funcret
	callstack 0
GLOBAL	__end_of__strnlen_s
	__end_of__strnlen_s:
	signat	__strnlen_s,8314
	global	__ntoa_long

;; *************** function __ntoa_long *****************
;; Defined at:
;;		line 281 in file "external/printf/printf.c"
;; Parameters:    Size  Location     Type
;;  out             2    2[BANK0 ] PTR FTN(unsigned char ,P
;;		 -> _out_fct(1), _out_char(1), _out_null(1), _out_buffer(1), 
;;  buffer          2    4[BANK0 ] PTR unsigned char 
;;		 -> RAM(2047), vprintf_@buffer(1), printf_@buffer(1), 
;;  idx             2    6[BANK0 ] unsigned int 
;;  maxlen          2    8[BANK0 ] unsigned int 
;;  value           4   10[BANK0 ] unsigned long 
;;  negative        1   14[BANK0 ] _Bool 
;;  base            4   15[BANK0 ] unsigned long 
;;  prec            2   19[BANK0 ] unsigned int 
;;  width           2   21[BANK0 ] unsigned int 
;;  flags           2   23[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  digit           1   63[BANK0 ] const unsigned char 
;;  buf            32   27[BANK0 ] unsigned char [32]
;;  len             2   64[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    2[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pcl, pclath, pclatu, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0      23       0       0       0       0       0       0       0
;;      Locals:         0      39       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0
;;      Totals:         0      64       0       0       0       0       0       0       0
;;Total ram usage:       64 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		___lldiv
;;		___llmod
;;		__ntoa_format
;; This function is called by:
;;		__vsnprintf
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=0
	line	281
global __ptext21
__ptext21:
psect	text21
	file	"external/printf/printf.c"
	line	281
	
__ntoa_long:
;incstack = 0
	callstack 19
	line	284
	
l5150:
	movlb	0	; () banked
	clrf	((__ntoa_long@len+1))&0ffh
	movlw	low(0)
	movwf	((__ntoa_long@len))&0ffh
	line	287
	
l5152:; BSR set to: 0

	movf	((__ntoa_long@value))&0ffh,w
iorwf	((__ntoa_long@value+1))&0ffh,w
iorwf	((__ntoa_long@value+2))&0ffh,w
iorwf	((__ntoa_long@value+3))&0ffh,w
	btfss	status,2
	goto	u6871
	goto	u6870

u6871:
	goto	l5156
u6870:
	line	288
	
l5154:; BSR set to: 0

	bcf	(0+(4/8)+(__ntoa_long@flags))&0ffh,(4)&7
	line	292
	
l5156:; BSR set to: 0

	
	btfss	((__ntoa_long@flags+1))&0ffh,(10)&7
	goto	u6881
	goto	u6880
u6881:
	goto	l5160
u6880:
	
l5158:; BSR set to: 0

	movf	((__ntoa_long@value))&0ffh,w
iorwf	((__ntoa_long@value+1))&0ffh,w
iorwf	((__ntoa_long@value+2))&0ffh,w
iorwf	((__ntoa_long@value+3))&0ffh,w
	btfsc	status,2
	goto	u6891
	goto	u6890

u6891:
	goto	l5184
u6890:
	line	294
	
l5160:; BSR set to: 0

	movff	(__ntoa_long@value),(c:___llmod@dividend)
	movff	(__ntoa_long@value+1),(c:___llmod@dividend+1)
	movff	(__ntoa_long@value+2),(c:___llmod@dividend+2)
	movff	(__ntoa_long@value+3),(c:___llmod@dividend+3)
	movff	(__ntoa_long@base),(c:___llmod@divisor)
	movff	(__ntoa_long@base+1),(c:___llmod@divisor+1)
	movff	(__ntoa_long@base+2),(c:___llmod@divisor+2)
	movff	(__ntoa_long@base+3),(c:___llmod@divisor+3)
	call	___llmod	;wreg free
	movf	(0+?___llmod)^00h,c,w
	movlb	0	; () banked
	movwf	((__ntoa_long@digit))&0ffh
	line	295
	
l5162:; BSR set to: 0

		movlw	0Ah-1
	cpfsgt	((__ntoa_long@digit))&0ffh
	goto	u6901
	goto	u6900

u6901:
	goto	l5172
u6900:
	
l5164:; BSR set to: 0

	
	btfsc	((__ntoa_long@flags))&0ffh,(5)&7
	goto	u6911
	goto	u6910
u6911:
	goto	l5168
u6910:
	
l5166:; BSR set to: 0

	clrf	((__ntoa_long$1380+1))&0ffh
	movlw	low(061h)
	movwf	((__ntoa_long$1380))&0ffh
	goto	l5170
	
l5168:; BSR set to: 0

	clrf	((__ntoa_long$1380+1))&0ffh
	movlw	low(041h)
	movwf	((__ntoa_long$1380))&0ffh
	
l5170:; BSR set to: 0

	movf	((__ntoa_long@digit))&0ffh,w
	addwf	((__ntoa_long$1380))&0ffh,w
	movwf	(??__ntoa_long+0)&0ffh
	movlw	0
	addwfc	((__ntoa_long$1380+1))&0ffh,w
	movwf	(??__ntoa_long+0+1)&0ffh
	movlw	low(0FFF6h)
	addwf	(??__ntoa_long+0)&0ffh,w
	movwf	((__ntoa_long$1379))&0ffh
	movlw	high(0FFF6h)
	addwfc	(??__ntoa_long+0+1)&0ffh,w
	movwf	1+((__ntoa_long$1379))&0ffh
	goto	l5174
	
l5172:; BSR set to: 0

	movlw	low(030h)
	addwf	((__ntoa_long@digit))&0ffh,w
	movwf	((__ntoa_long$1379))&0ffh
	clrf	1+((__ntoa_long$1379))&0ffh
	movlw	high(030h)
	addwfc	1+((__ntoa_long$1379))&0ffh
	
l5174:; BSR set to: 0

	movf	((__ntoa_long@len))&0ffh,w
	addlw	low(__ntoa_long@buf)
	movwf	fsr2l
	clrf	fsr2h
	movff	(__ntoa_long$1379),indf2

	
l5176:; BSR set to: 0

	infsnz	((__ntoa_long@len))&0ffh
	incf	((__ntoa_long@len+1))&0ffh
	line	296
	
l5178:; BSR set to: 0

	movff	(__ntoa_long@value),(c:___lldiv@dividend)
	movff	(__ntoa_long@value+1),(c:___lldiv@dividend+1)
	movff	(__ntoa_long@value+2),(c:___lldiv@dividend+2)
	movff	(__ntoa_long@value+3),(c:___lldiv@dividend+3)
	movff	(__ntoa_long@base),(c:___lldiv@divisor)
	movff	(__ntoa_long@base+1),(c:___lldiv@divisor+1)
	movff	(__ntoa_long@base+2),(c:___lldiv@divisor+2)
	movff	(__ntoa_long@base+3),(c:___lldiv@divisor+3)
	call	___lldiv	;wreg free
	movff	0+?___lldiv,(__ntoa_long@value)
	movff	1+?___lldiv,(__ntoa_long@value+1)
	movff	2+?___lldiv,(__ntoa_long@value+2)
	movff	3+?___lldiv,(__ntoa_long@value+3)
	
	line	297
	
l5180:
	movlb	0	; () banked
	movf	((__ntoa_long@value))&0ffh,w
iorwf	((__ntoa_long@value+1))&0ffh,w
iorwf	((__ntoa_long@value+2))&0ffh,w
iorwf	((__ntoa_long@value+3))&0ffh,w
	btfsc	status,2
	goto	u6921
	goto	u6920

u6921:
	goto	l5184
u6920:
	
l5182:; BSR set to: 0

		movf	((__ntoa_long@len+1))&0ffh,w
	bnz	u6930
	movlw	32
	subwf	 ((__ntoa_long@len))&0ffh,w
	btfss	status,0
	goto	u6931
	goto	u6930

u6931:
	goto	l5160
u6930:
	line	300
	
l5184:; BSR set to: 0

		movff	(__ntoa_long@out),(c:__ntoa_format@out)
	movff	(__ntoa_long@out+1),(c:__ntoa_format@out+1)

		movff	(__ntoa_long@buffer),(c:__ntoa_format@buffer)
	movff	(__ntoa_long@buffer+1),(c:__ntoa_format@buffer+1)

	movff	(__ntoa_long@idx),(c:__ntoa_format@idx)
	movff	(__ntoa_long@idx+1),(c:__ntoa_format@idx+1)
	movff	(__ntoa_long@maxlen),(c:__ntoa_format@maxlen)
	movff	(__ntoa_long@maxlen+1),(c:__ntoa_format@maxlen+1)
		movlw	low(__ntoa_long@buf)
	movwf	((c:__ntoa_format@buf))^00h,c

	movff	(__ntoa_long@len),(c:__ntoa_format@len)
	movff	(__ntoa_long@len+1),(c:__ntoa_format@len+1)
	movff	(__ntoa_long@negative),(c:__ntoa_format@negative)
	movff	(__ntoa_long@base),(c:__ntoa_format@base)
	movff	(__ntoa_long@base+1),(c:__ntoa_format@base+1)
	movff	(__ntoa_long@prec),(c:__ntoa_format@prec)
	movff	(__ntoa_long@prec+1),(c:__ntoa_format@prec+1)
	movff	(__ntoa_long@width),(c:__ntoa_format@width)
	movff	(__ntoa_long@width+1),(c:__ntoa_format@width+1)
	movff	(__ntoa_long@flags),(c:__ntoa_format@flags)
	movff	(__ntoa_long@flags+1),(c:__ntoa_format@flags+1)
	call	__ntoa_format	;wreg free
	movff	0+?__ntoa_format,(?__ntoa_long)
	movff	1+?__ntoa_format,(?__ntoa_long+1)
	line	301
	
l562:
	return	;funcret
	callstack 0
GLOBAL	__end_of__ntoa_long
	__end_of__ntoa_long:
	signat	__ntoa_long,41082
	global	__ntoa_format

;; *************** function __ntoa_format *****************
;; Defined at:
;;		line 227 in file "external/printf/printf.c"
;; Parameters:    Size  Location     Type
;;  out             2   46[COMRAM] PTR FTN(unsigned char ,P
;;		 -> _out_fct(1), _out_char(1), _out_null(1), _out_buffer(1), 
;;  buffer          2   48[COMRAM] PTR unsigned char 
;;		 -> RAM(2047), vprintf_@buffer(1), printf_@buffer(1), 
;;  idx             2   50[COMRAM] unsigned int 
;;  maxlen          2   52[COMRAM] unsigned int 
;;  buf             1   54[COMRAM] PTR unsigned char 
;;		 -> _ntoa_long@buf(32), 
;;  len             2   55[COMRAM] unsigned int 
;;  negative        1   57[COMRAM] _Bool 
;;  base            2   58[COMRAM] unsigned int 
;;  prec            2   60[COMRAM] unsigned int 
;;  width           2   62[COMRAM] unsigned int 
;;  flags           2   64[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   46[COMRAM] unsigned int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pcl, pclath, pclatu, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:        20       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0
;;      Totals:        20       2       0       0       0       0       0       0       0
;;Total ram usage:       22 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		__out_rev
;; This function is called by:
;;		__ntoa_long
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=0
	line	227
global __ptext22
__ptext22:
psect	text22
	file	"external/printf/printf.c"
	line	227
	
__ntoa_format:
;incstack = 0
	callstack 19
	line	230
	
l5050:
	
	btfsc	((c:__ntoa_format@flags))^00h,c,(1)&7
	goto	u6571
	goto	u6570
u6571:
	goto	l512
u6570:
	line	231
	
l5052:
	movf	((c:__ntoa_format@width))^00h,c,w
iorwf	((c:__ntoa_format@width+1))^00h,c,w
	btfsc	status,2
	goto	u6581
	goto	u6580

u6581:
	goto	l5066
u6580:
	
l5054:
	
	btfss	((c:__ntoa_format@flags))^00h,c,(0)&7
	goto	u6591
	goto	u6590
u6591:
	goto	l5066
u6590:
	
l5056:
	movf	((c:__ntoa_format@negative))^00h,c,w
	btfss	status,2
	goto	u6601
	goto	u6600
u6601:
	goto	l5060
u6600:
	
l5058:
	movlw	0Ch
	andwf	((c:__ntoa_format@flags))^00h,c,w
	movlb	0	; () banked
	movwf	(??__ntoa_format+0)&0ffh
	movlw	0
	andwf	((c:__ntoa_format@flags+1))^00h,c,w
	movwf	(??__ntoa_format+0+1)&0ffh
	movf	(??__ntoa_format+0)&0ffh,w
iorwf	(??__ntoa_format+0+1)&0ffh,w
	btfsc	status,2
	goto	u6611
	goto	u6610

u6611:
	goto	l5066
u6610:
	line	232
	
l5060:
	decf	((c:__ntoa_format@width))^00h,c
	btfss	status,0
	decf	((c:__ntoa_format@width+1))^00h,c
	goto	l5066
	line	235
	
l5062:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	
l5064:
	infsnz	((c:__ntoa_format@len))^00h,c
	incf	((c:__ntoa_format@len+1))^00h,c
	line	234
	
l5066:
		movf	((c:__ntoa_format@prec))^00h,c,w
	subwf	((c:__ntoa_format@len))^00h,c,w
	movf	((c:__ntoa_format@prec+1))^00h,c,w
	subwfb	((c:__ntoa_format@len+1))^00h,c,w
	btfsc	status,0
	goto	u6621
	goto	u6620

u6621:
	goto	l5074
u6620:
	
l5068:
		movf	((c:__ntoa_format@len+1))^00h,c,w
	bnz	u6630
	movlw	32
	subwf	 ((c:__ntoa_format@len))^00h,c,w
	btfss	status,0
	goto	u6631
	goto	u6630

u6631:
	goto	l5062
u6630:
	goto	l5074
	line	238
	
l5070:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	
l5072:
	infsnz	((c:__ntoa_format@len))^00h,c
	incf	((c:__ntoa_format@len+1))^00h,c
	line	237
	
l5074:
	
	btfss	((c:__ntoa_format@flags))^00h,c,(0)&7
	goto	u6641
	goto	u6640
u6641:
	goto	l512
u6640:
	
l5076:
		movf	((c:__ntoa_format@width))^00h,c,w
	subwf	((c:__ntoa_format@len))^00h,c,w
	movf	((c:__ntoa_format@width+1))^00h,c,w
	subwfb	((c:__ntoa_format@len+1))^00h,c,w
	btfsc	status,0
	goto	u6651
	goto	u6650

u6651:
	goto	l512
u6650:
	
l5078:
		movf	((c:__ntoa_format@len+1))^00h,c,w
	bnz	u6660
	movlw	32
	subwf	 ((c:__ntoa_format@len))^00h,c,w
	btfss	status,0
	goto	u6661
	goto	u6660

u6661:
	goto	l5070
u6660:
	line	240
	
l512:
	line	243
	
	btfss	((c:__ntoa_format@flags))^00h,c,(4)&7
	goto	u6671
	goto	u6670
u6671:
	goto	l5130
u6670:
	line	244
	
l5080:
	
	btfsc	((c:__ntoa_format@flags+1))^00h,c,(10)&7
	goto	u6681
	goto	u6680
u6681:
	goto	l5096
u6680:
	
l5082:
	movf	((c:__ntoa_format@len))^00h,c,w
iorwf	((c:__ntoa_format@len+1))^00h,c,w
	btfsc	status,2
	goto	u6691
	goto	u6690

u6691:
	goto	l5096
u6690:
	
l5084:
	movf	((c:__ntoa_format@prec))^00h,c,w
xorwf	((c:__ntoa_format@len))^00h,c,w
	bnz	u6700
movf	((c:__ntoa_format@prec+1))^00h,c,w
xorwf	((c:__ntoa_format@len+1))^00h,c,w
	btfsc	status,2
	goto	u6701
	goto	u6700

u6701:
	goto	l5088
u6700:
	
l5086:
	movf	((c:__ntoa_format@width))^00h,c,w
xorwf	((c:__ntoa_format@len))^00h,c,w
	bnz	u6711
movf	((c:__ntoa_format@width+1))^00h,c,w
xorwf	((c:__ntoa_format@len+1))^00h,c,w
	btfss	status,2
	goto	u6711
	goto	u6710

u6711:
	goto	l5096
u6710:
	line	245
	
l5088:
	decf	((c:__ntoa_format@len))^00h,c
	btfss	status,0
	decf	((c:__ntoa_format@len+1))^00h,c
	line	246
	
l5090:
	movf	((c:__ntoa_format@len))^00h,c,w
iorwf	((c:__ntoa_format@len+1))^00h,c,w
	btfsc	status,2
	goto	u6721
	goto	u6720

u6721:
	goto	l5096
u6720:
	
l5092:
		movlw	16
	xorwf	((c:__ntoa_format@base))^00h,c,w
iorwf	((c:__ntoa_format@base+1))^00h,c,w
	btfss	status,2
	goto	u6731
	goto	u6730

u6731:
	goto	l5096
u6730:
	line	247
	
l5094:
	decf	((c:__ntoa_format@len))^00h,c
	btfss	status,0
	decf	((c:__ntoa_format@len+1))^00h,c
	line	250
	
l5096:
		movlw	16
	xorwf	((c:__ntoa_format@base))^00h,c,w
iorwf	((c:__ntoa_format@base+1))^00h,c,w
	btfss	status,2
	goto	u6741
	goto	u6740

u6741:
	goto	l5106
u6740:
	
l5098:
	
	btfsc	((c:__ntoa_format@flags))^00h,c,(5)&7
	goto	u6751
	goto	u6750
u6751:
	goto	l5106
u6750:
	
l5100:
		movf	((c:__ntoa_format@len+1))^00h,c,w
	bnz	u6761
	movlw	32
	subwf	 ((c:__ntoa_format@len))^00h,c,w
	btfsc	status,0
	goto	u6761
	goto	u6760

u6761:
	goto	l5106
u6760:
	line	251
	
l5102:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(078h)
	movwf	indf2
	
l5104:
	infsnz	((c:__ntoa_format@len))^00h,c
	incf	((c:__ntoa_format@len+1))^00h,c
	line	252
	goto	l5124
	line	253
	
l5106:
		movlw	16
	xorwf	((c:__ntoa_format@base))^00h,c,w
iorwf	((c:__ntoa_format@base+1))^00h,c,w
	btfss	status,2
	goto	u6771
	goto	u6770

u6771:
	goto	l5116
u6770:
	
l5108:
	
	btfss	((c:__ntoa_format@flags))^00h,c,(5)&7
	goto	u6781
	goto	u6780
u6781:
	goto	l5116
u6780:
	
l5110:
		movf	((c:__ntoa_format@len+1))^00h,c,w
	bnz	u6791
	movlw	32
	subwf	 ((c:__ntoa_format@len))^00h,c,w
	btfsc	status,0
	goto	u6791
	goto	u6790

u6791:
	goto	l5116
u6790:
	line	254
	
l5112:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(058h)
	movwf	indf2
	goto	l5104
	line	256
	
l5116:
		movlw	2
	xorwf	((c:__ntoa_format@base))^00h,c,w
iorwf	((c:__ntoa_format@base+1))^00h,c,w
	btfss	status,2
	goto	u6801
	goto	u6800

u6801:
	goto	l5124
u6800:
	
l5118:
		movf	((c:__ntoa_format@len+1))^00h,c,w
	bnz	u6811
	movlw	32
	subwf	 ((c:__ntoa_format@len))^00h,c,w
	btfsc	status,0
	goto	u6811
	goto	u6810

u6811:
	goto	l5124
u6810:
	line	257
	
l5120:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(062h)
	movwf	indf2
	goto	l5104
	line	259
	
l5124:
		movf	((c:__ntoa_format@len+1))^00h,c,w
	bnz	u6821
	movlw	32
	subwf	 ((c:__ntoa_format@len))^00h,c,w
	btfsc	status,0
	goto	u6821
	goto	u6820

u6821:
	goto	l5130
u6820:
	line	260
	
l5126:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	
l5128:
	infsnz	((c:__ntoa_format@len))^00h,c
	incf	((c:__ntoa_format@len+1))^00h,c
	line	264
	
l5130:
		movf	((c:__ntoa_format@len+1))^00h,c,w
	bnz	u6831
	movlw	32
	subwf	 ((c:__ntoa_format@len))^00h,c,w
	btfsc	status,0
	goto	u6831
	goto	u6830

u6831:
	goto	l5146
u6830:
	line	265
	
l5132:
	movf	((c:__ntoa_format@negative))^00h,c,w
	btfsc	status,2
	goto	u6841
	goto	u6840
u6841:
	goto	l538
u6840:
	line	266
	
l5134:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02Dh)
	movwf	indf2
	
l5136:
	infsnz	((c:__ntoa_format@len))^00h,c
	incf	((c:__ntoa_format@len+1))^00h,c
	line	267
	goto	l5146
	line	268
	
l538:
	
	btfss	((c:__ntoa_format@flags))^00h,c,(2)&7
	goto	u6851
	goto	u6850
u6851:
	goto	l540
u6850:
	line	269
	
l5138:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02Bh)
	movwf	indf2
	goto	l5136
	line	271
	
l540:
	
	btfss	((c:__ntoa_format@flags))^00h,c,(3)&7
	goto	u6861
	goto	u6860
u6861:
	goto	l5146
u6860:
	line	272
	
l5142:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(020h)
	movwf	indf2
	goto	l5136
	line	276
	
l5146:
		movff	(c:__ntoa_format@out),(c:__out_rev@out)
	movff	(c:__ntoa_format@out+1),(c:__out_rev@out+1)

		movff	(c:__ntoa_format@buffer),(c:__out_rev@buffer)
	movff	(c:__ntoa_format@buffer+1),(c:__out_rev@buffer+1)

	movff	(c:__ntoa_format@idx),(c:__out_rev@idx)
	movff	(c:__ntoa_format@idx+1),(c:__out_rev@idx+1)
	movff	(c:__ntoa_format@maxlen),(c:__out_rev@maxlen)
	movff	(c:__ntoa_format@maxlen+1),(c:__out_rev@maxlen+1)
		movff	(c:__ntoa_format@buf),(c:__out_rev@buf)

	movff	(c:__ntoa_format@len),(c:__out_rev@len)
	movff	(c:__ntoa_format@len+1),(c:__out_rev@len+1)
	movff	(c:__ntoa_format@width),(c:__out_rev@width)
	movff	(c:__ntoa_format@width+1),(c:__out_rev@width+1)
	movff	(c:__ntoa_format@flags),(c:__out_rev@flags)
	movff	(c:__ntoa_format@flags+1),(c:__out_rev@flags+1)
	call	__out_rev	;wreg free
	movff	0+?__out_rev,(c:?__ntoa_format)
	movff	1+?__out_rev,(c:?__ntoa_format+1)
	line	277
	
l543:
	return	;funcret
	callstack 0
GLOBAL	__end_of__ntoa_format
	__end_of__ntoa_format:
	signat	__ntoa_format,45178
	global	__out_rev

;; *************** function __out_rev *****************
;; Defined at:
;;		line 199 in file "external/printf/printf.c"
;; Parameters:    Size  Location     Type
;;  out             2   25[COMRAM] PTR FTN(unsigned char ,P
;;		 -> _out_fct(1), _out_char(1), _out_null(1), _out_buffer(1), 
;;  buffer          2   27[COMRAM] PTR unsigned char 
;;		 -> RAM(2047), vprintf_@buffer(1), printf_@buffer(1), 
;;  idx             2   29[COMRAM] unsigned int 
;;  maxlen          2   31[COMRAM] unsigned int 
;;  buf             1   33[COMRAM] PTR const unsigned char 
;;		 -> _ntoa_long@buf(32), 
;;  len             2   34[COMRAM] unsigned int 
;;  width           2   36[COMRAM] unsigned int 
;;  flags           2   38[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2   44[COMRAM] unsigned int 
;;  start_idx       2   42[COMRAM] const unsigned int 
;; Return value:  Size  Location     Type
;;                  2   25[COMRAM] unsigned int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pcl, pclath, pclatu, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:        15       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:        21       0       0       0       0       0       0       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		__out_buffer
;;		__out_char
;;		__out_fct
;;		__out_null
;; This function is called by:
;;		__ntoa_format
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=0
	line	199
global __ptext23
__ptext23:
psect	text23
	file	"external/printf/printf.c"
	line	199
	
__out_rev:
;incstack = 0
	callstack 19
	line	201
	
l3920:
	movff	(c:__out_rev@idx),(c:__out_rev@start_idx)
	movff	(c:__out_rev@idx+1),(c:__out_rev@start_idx+1)
	line	204
	
	btfsc	((c:__out_rev@flags))^00h,c,(1)&7
	goto	u4441
	goto	u4440
u4441:
	goto	l3938
u4440:
	
l3922:
	
	btfsc	((c:__out_rev@flags))^00h,c,(0)&7
	goto	u4451
	goto	u4450
u4451:
	goto	l3938
u4450:
	line	205
	
l3924:
	movff	(c:__out_rev@len),(c:__out_rev@i)
	movff	(c:__out_rev@len+1),(c:__out_rev@i+1)
	goto	l3932
	line	206
	
l3926:
	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(c:__out_rev@buffer),(c:__out_fct@buffer)
	movff	(c:__out_rev@buffer+1),(c:__out_fct@buffer+1)

	movff	(c:__out_rev@idx),(c:__out_fct@idx)
	movff	(c:__out_rev@idx+1),(c:__out_fct@idx+1)
	movff	(c:__out_rev@maxlen),(c:__out_fct@maxlen)
	movff	(c:__out_rev@maxlen+1),(c:__out_fct@maxlen+1)
	call	u4468
	goto	u4469
u4468:
	push
	
	movwf	pclath
	movf	((c:__out_rev@out))^00h,c,w
	movwf	tosl
	movf	((c:__out_rev@out+1))^00h,c,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u4469:
	
l3928:
	infsnz	((c:__out_rev@idx))^00h,c
	incf	((c:__out_rev@idx+1))^00h,c
	line	207
	
l3930:
	infsnz	((c:__out_rev@i))^00h,c
	incf	((c:__out_rev@i+1))^00h,c
	
l3932:
		movf	((c:__out_rev@width))^00h,c,w
	subwf	((c:__out_rev@i))^00h,c,w
	movf	((c:__out_rev@width+1))^00h,c,w
	subwfb	((c:__out_rev@i+1))^00h,c,w
	btfss	status,0
	goto	u4471
	goto	u4470

u4471:
	goto	l3926
u4470:
	goto	l3938
	line	212
	
l3934:
	decf	((c:__out_rev@len))^00h,c
	btfss	status,0
	decf	((c:__out_rev@len+1))^00h,c
	movf	((c:__out_rev@buf))^00h,c,w
	addwf	((c:__out_rev@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:__out_fct@character))^00h,c
		movff	(c:__out_rev@buffer),(c:__out_fct@buffer)
	movff	(c:__out_rev@buffer+1),(c:__out_fct@buffer+1)

	movff	(c:__out_rev@idx),(c:__out_fct@idx)
	movff	(c:__out_rev@idx+1),(c:__out_fct@idx+1)
	movff	(c:__out_rev@maxlen),(c:__out_fct@maxlen)
	movff	(c:__out_rev@maxlen+1),(c:__out_fct@maxlen+1)
	call	u4488
	goto	u4489
u4488:
	push
	
	movwf	pclath
	movf	((c:__out_rev@out))^00h,c,w
	movwf	tosl
	movf	((c:__out_rev@out+1))^00h,c,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u4489:
	
l3936:
	infsnz	((c:__out_rev@idx))^00h,c
	incf	((c:__out_rev@idx+1))^00h,c
	line	211
	
l3938:
	movf	((c:__out_rev@len))^00h,c,w
iorwf	((c:__out_rev@len+1))^00h,c,w
	btfss	status,2
	goto	u4491
	goto	u4490

u4491:
	goto	l3934
u4490:
	
l504:
	line	216
	
	btfss	((c:__out_rev@flags))^00h,c,(1)&7
	goto	u4501
	goto	u4500
u4501:
	goto	l505
u4500:
	goto	l3946
	line	218
	
l3942:
	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(c:__out_rev@buffer),(c:__out_fct@buffer)
	movff	(c:__out_rev@buffer+1),(c:__out_fct@buffer+1)

	movff	(c:__out_rev@idx),(c:__out_fct@idx)
	movff	(c:__out_rev@idx+1),(c:__out_fct@idx+1)
	movff	(c:__out_rev@maxlen),(c:__out_fct@maxlen)
	movff	(c:__out_rev@maxlen+1),(c:__out_fct@maxlen+1)
	call	u4518
	goto	u4519
u4518:
	push
	
	movwf	pclath
	movf	((c:__out_rev@out))^00h,c,w
	movwf	tosl
	movf	((c:__out_rev@out+1))^00h,c,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u4519:
	
l3944:
	infsnz	((c:__out_rev@idx))^00h,c
	incf	((c:__out_rev@idx+1))^00h,c
	line	217
	
l3946:
	movf	((c:__out_rev@start_idx))^00h,c,w
	subwf	((c:__out_rev@idx))^00h,c,w
	movwf	(??__out_rev+0)^00h,c
	movf	((c:__out_rev@start_idx+1))^00h,c,w
	subwfb	((c:__out_rev@idx+1))^00h,c,w
	movwf	(??__out_rev+0+1)^00h,c
		movf	((c:__out_rev@width))^00h,c,w
	subwf	(??__out_rev+0)^00h,c,w
	movf	((c:__out_rev@width+1))^00h,c,w
	subwfb	(??__out_rev+0+1)^00h,c,w
	btfss	status,0
	goto	u4521
	goto	u4520

u4521:
	goto	l3942
u4520:
	line	220
	
l505:
	line	222
	movff	(c:__out_rev@idx),(c:?__out_rev)
	movff	(c:__out_rev@idx+1),(c:?__out_rev+1)
	line	223
	
l509:
	return	;funcret
	callstack 0
GLOBAL	__end_of__out_rev
	__end_of__out_rev:
	signat	__out_rev,32890
	global	__out_null
	global	__out_buffer
	global	__out_char
	global	__out_fct

;; *************** function __out_fct *****************
;; Defined at:
;;		line 159 in file "external/printf/printf.c"
;; Parameters:    Size  Location     Type
;;  character       1   18[COMRAM] unsigned char 
;;  buffer          2   19[COMRAM] PTR void 
;;		 -> RAM(2047), vprintf_@buffer(1), printf_@buffer(1), 
;;  idx             2   21[COMRAM] unsigned int 
;;  maxlen          2   23[COMRAM] unsigned int 
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
;;      Params:         7       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fctprintf
;;		__out_rev
;;		__vsnprintf
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,inline,keep,group=0
	line	159
global __ptext24
__ptext24:
psect	text24
	file	"external/printf/printf.c"
	line	159
	
__out_fct:
;incstack = 0
	callstack 21
	line	162
	
l3918:
	line	166
	
l476:
	return	;funcret
	callstack 0
GLOBAL	__end_of__out_fct
	__end_of__out_fct:
	signat	__out_fct,16505

;; *************** function __out_char *****************
;; Defined at:
;;		line 149 in file "external/printf/printf.c"
;; Parameters:    Size  Location     Type
;;  character       1   18[COMRAM] unsigned char 
;;  buffer          2   19[COMRAM] PTR void 
;;		 -> RAM(2047), vprintf_@buffer(1), printf_@buffer(1), 
;;  idx             2   21[COMRAM] unsigned int 
;;  maxlen          2   23[COMRAM] unsigned int 
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
;;      Params:         7       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		__putchar
;; This function is called by:
;;		_printf_
;;		_vprintf_
;;		__out_rev
;;		__vsnprintf
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,inline,keep,group=0
	line	149
global __ptext25
__ptext25:
psect	text25
	file	"external/printf/printf.c"
	line	149
	
__out_char:
;incstack = 0
	callstack 21
	line	152
	
l3914:
	movf	((c:__out_char@character))^00h,c,w
	btfsc	status,2
	goto	u4431
	goto	u4430
u4431:
	goto	l472
u4430:
	line	153
	
l3916:
	movf	((c:__out_char@character))^00h,c,w
	
	call	__putchar
	line	155
	
l472:
	return	;funcret
	callstack 0
GLOBAL	__end_of__out_char
	__end_of__out_char:
	signat	__out_char,16505

;; *************** function __out_buffer *****************
;; Defined at:
;;		line 133 in file "external/printf/printf.c"
;; Parameters:    Size  Location     Type
;;  character       1   18[COMRAM] unsigned char 
;;  buffer          2   19[COMRAM] PTR void 
;;		 -> RAM(2047), vprintf_@buffer(1), printf_@buffer(1), 
;;  idx             2   21[COMRAM] unsigned int 
;;  maxlen          2   23[COMRAM] unsigned int 
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
;;      Params:         7       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf_
;;		_snprintf_
;;		_vsnprintf_
;;		__out_rev
;;		__vsnprintf
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,inline,keep,group=0
	line	133
global __ptext26
__ptext26:
psect	text26
	file	"external/printf/printf.c"
	line	133
	
__out_buffer:
;incstack = 0
	callstack 21
	line	135
	
l3910:
		movf	((c:__out_buffer@maxlen))^00h,c,w
	subwf	((c:__out_buffer@idx))^00h,c,w
	movf	((c:__out_buffer@maxlen+1))^00h,c,w
	subwfb	((c:__out_buffer@idx+1))^00h,c,w
	btfsc	status,0
	goto	u4421
	goto	u4420

u4421:
	goto	l465
u4420:
	line	136
	
l3912:
	movf	((c:__out_buffer@idx))^00h,c,w
	addwf	((c:__out_buffer@buffer))^00h,c,w
	movwf	c:fsr2l
	movf	((c:__out_buffer@idx+1))^00h,c,w
	addwfc	((c:__out_buffer@buffer+1))^00h,c,w
	movwf	1+c:fsr2l
	movff	(c:__out_buffer@character),indf2

	line	138
	
l465:
	return	;funcret
	callstack 0
GLOBAL	__end_of__out_buffer
	__end_of__out_buffer:
	signat	__out_buffer,16505

;; *************** function __out_null *****************
;; Defined at:
;;		line 142 in file "external/printf/printf.c"
;; Parameters:    Size  Location     Type
;;  character       1   18[COMRAM] unsigned char 
;;  buffer          2   19[COMRAM] PTR void 
;;		 -> RAM(2047), vprintf_@buffer(1), printf_@buffer(1), 
;;  idx             2   21[COMRAM] unsigned int 
;;  maxlen          2   23[COMRAM] unsigned int 
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
;;      Params:         7       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__vsnprintf
;;		__out_rev
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,inline,keep,group=0
	line	142
global __ptext27
__ptext27:
psect	text27
	file	"external/printf/printf.c"
	line	142
	
__out_null:
;incstack = 0
	callstack 21
	line	145
	
l468:
	return	;funcret
	callstack 0
GLOBAL	__end_of__out_null
	__end_of__out_null:
	signat	__out_null,16505
	global	__putchar

;; *************** function __putchar *****************
;; Defined at:
;;		line 109 in file "src/uart.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_Buffer_Add
;; This function is called by:
;;		__out_char
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	109
global __ptext28
__ptext28:
psect	text28
	file	"src/uart.c"
	line	109
	
__putchar:
;incstack = 0
	callstack 19
	movwf	((c:__putchar@c))^00h,c
	line	111
	
l3906:
		movlw	low(_tx_buffer)
	movwf	((c:Buffer_Add@buffer))^00h,c
	movlw	high(_tx_buffer)
	movwf	((c:Buffer_Add@buffer+1))^00h,c

	movff	(c:__putchar@c),(c:Buffer_Add@element)
	call	_Buffer_Add	;wreg free
	line	112
	
l3908:
	bsf	((c:3997))^0f00h,c,4	;volatile
	line	113
	
l233:
	return	;funcret
	callstack 0
GLOBAL	__end_of__putchar
	__end_of__putchar:
	signat	__putchar,4217
	global	_Buffer_Add

;; *************** function _Buffer_Add *****************
;; Defined at:
;;		line 9 in file "src/buffer.c"
;; Parameters:    Size  Location     Type
;;  buffer          2   12[COMRAM] PTR volatile struct .
;;		 -> rx_buffer(22), tx_buffer(22), 
;;  element         1   14[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  next_head       1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__putchar
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=0
	file	"src/buffer.c"
	line	9
global __ptext29
__ptext29:
psect	text29
	file	"src/buffer.c"
	line	9
	
_Buffer_Add:
;incstack = 0
	callstack 19
	line	11
	
l3892:
	lfsr	2,014h
	movf	((c:Buffer_Add@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Add@buffer+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	(??_Buffer_Add+0)^00h,c
	incf	((??_Buffer_Add+0))^00h,c,w
	movwf	((c:Buffer_Add@next_head))^00h,c
	line	13
	
l3894:
		movlw	20
	xorwf	((c:Buffer_Add@next_head))^00h,c,w
	btfss	status,2
	goto	u4401
	goto	u4400

u4401:
	goto	l3898
u4400:
	line	14
	
l3896:
	clrf	((c:Buffer_Add@next_head))^00h,c
	line	16
	
l3898:
	lfsr	2,015h
	movf	((c:Buffer_Add@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Add@buffer+1))^00h,c,w
	addwfc	fsr2h
	movf	((c:Buffer_Add@next_head))^00h,c,w
xorwf	postinc2,w
	btfss	status,2
	goto	u4411
	goto	u4410

u4411:
	goto	l3902
u4410:
	goto	l174
	line	22
	
l3902:
	lfsr	2,014h
	movf	((c:Buffer_Add@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Add@buffer+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	(??_Buffer_Add+0)^00h,c
	movf	((??_Buffer_Add+0))^00h,c,w
	addwf	((c:Buffer_Add@buffer))^00h,c,w
	movwf	c:fsr2l
	movlw	0
	addwfc	((c:Buffer_Add@buffer+1))^00h,c,w
	movwf	1+c:fsr2l
	movff	(c:Buffer_Add@element),indf2

	line	23
	lfsr	2,014h
	movf	((c:Buffer_Add@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Add@buffer+1))^00h,c,w
	addwfc	fsr2h
	movff	(c:Buffer_Add@next_head),indf2

	line	25
	
l174:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Buffer_Add
	__end_of_Buffer_Add:
	signat	_Buffer_Add,8313
	global	___llmod

;; *************** function ___llmod *****************
;; Defined at:
;;		line 7 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/llmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   12[COMRAM] unsigned long 
;;  divisor         4   16[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   12[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__ntoa_long
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/llmod.c"
	line	7
global __ptext30
__ptext30:
psect	text30
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/llmod.c"
	line	7
	
___llmod:
;incstack = 0
	callstack 23
	line	12
	
l4080:
	movf	((c:___llmod@divisor))^00h,c,w
iorwf	((c:___llmod@divisor+1))^00h,c,w
iorwf	((c:___llmod@divisor+2))^00h,c,w
iorwf	((c:___llmod@divisor+3))^00h,c,w
	btfsc	status,2
	goto	u4881
	goto	u4880

u4881:
	goto	l1259
u4880:
	line	13
	
l4082:
	movlw	low(01h)
	movwf	((c:___llmod@counter))^00h,c
	line	14
	goto	l4086
	line	15
	
l4084:
	bcf	status,0
	rlcf	((c:___llmod@divisor))^00h,c
	rlcf	((c:___llmod@divisor+1))^00h,c
	rlcf	((c:___llmod@divisor+2))^00h,c
	rlcf	((c:___llmod@divisor+3))^00h,c
	line	16
	incf	((c:___llmod@counter))^00h,c
	line	14
	
l4086:
	
	btfss	((c:___llmod@divisor+3))^00h,c,(31)&7
	goto	u4891
	goto	u4890
u4891:
	goto	l4084
u4890:
	line	19
	
l4088:
		movf	((c:___llmod@divisor))^00h,c,w
	subwf	((c:___llmod@dividend))^00h,c,w
	movf	((c:___llmod@divisor+1))^00h,c,w
	subwfb	((c:___llmod@dividend+1))^00h,c,w
	movf	((c:___llmod@divisor+2))^00h,c,w
	subwfb	((c:___llmod@dividend+2))^00h,c,w
	movf	((c:___llmod@divisor+3))^00h,c,w
	subwfb	((c:___llmod@dividend+3))^00h,c,w
	btfss	status,0
	goto	u4901
	goto	u4900

u4901:
	goto	l4092
u4900:
	line	20
	
l4090:
	movf	((c:___llmod@divisor))^00h,c,w
	subwf	((c:___llmod@dividend))^00h,c
	movf	((c:___llmod@divisor+1))^00h,c,w
	subwfb	((c:___llmod@dividend+1))^00h,c
	movf	((c:___llmod@divisor+2))^00h,c,w
	subwfb	((c:___llmod@dividend+2))^00h,c
	movf	((c:___llmod@divisor+3))^00h,c,w
	subwfb	((c:___llmod@dividend+3))^00h,c
	line	21
	
l4092:
	bcf	status,0
	rrcf	((c:___llmod@divisor+3))^00h,c
	rrcf	((c:___llmod@divisor+2))^00h,c
	rrcf	((c:___llmod@divisor+1))^00h,c
	rrcf	((c:___llmod@divisor))^00h,c
	line	22
	
l4094:
	decfsz	((c:___llmod@counter))^00h,c
	
	goto	l4088
	line	23
	
l1259:
	line	24
	movff	(c:___llmod@dividend),(c:?___llmod)
	movff	(c:___llmod@dividend+1),(c:?___llmod+1)
	movff	(c:___llmod@dividend+2),(c:?___llmod+2)
	movff	(c:___llmod@dividend+3),(c:?___llmod+3)
	line	25
	
l1266:
	return	;funcret
	callstack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
	signat	___llmod,8316
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 7 in file "/opt/microchip/xc8/v3.10/pic/sources/c99/common/__lldiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   12[COMRAM] unsigned long 
;;  divisor         4   16[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   20[COMRAM] unsigned long 
;;  counter         1   24[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   12[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__ntoa_long
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/__lldiv.c"
	line	7
global __ptext31
__ptext31:
psect	text31
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/__lldiv.c"
	line	7
	
___lldiv:
;incstack = 0
	callstack 23
	line	13
	
l4058:
	movlw	low(0)
	movwf	((c:___lldiv@quotient))^00h,c
	movlw	high(0)
	movwf	((c:___lldiv@quotient+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___lldiv@quotient+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___lldiv@quotient+3))^00h,c
	line	14
	
l4060:
	movf	((c:___lldiv@divisor))^00h,c,w
iorwf	((c:___lldiv@divisor+1))^00h,c,w
iorwf	((c:___lldiv@divisor+2))^00h,c,w
iorwf	((c:___lldiv@divisor+3))^00h,c,w
	btfsc	status,2
	goto	u4851
	goto	u4850

u4851:
	goto	l756
u4850:
	line	15
	
l4062:
	movlw	low(01h)
	movwf	((c:___lldiv@counter))^00h,c
	line	16
	goto	l4066
	line	17
	
l4064:
	bcf	status,0
	rlcf	((c:___lldiv@divisor))^00h,c
	rlcf	((c:___lldiv@divisor+1))^00h,c
	rlcf	((c:___lldiv@divisor+2))^00h,c
	rlcf	((c:___lldiv@divisor+3))^00h,c
	line	18
	incf	((c:___lldiv@counter))^00h,c
	line	16
	
l4066:
	
	btfss	((c:___lldiv@divisor+3))^00h,c,(31)&7
	goto	u4861
	goto	u4860
u4861:
	goto	l4064
u4860:
	line	21
	
l4068:
	bcf	status,0
	rlcf	((c:___lldiv@quotient))^00h,c
	rlcf	((c:___lldiv@quotient+1))^00h,c
	rlcf	((c:___lldiv@quotient+2))^00h,c
	rlcf	((c:___lldiv@quotient+3))^00h,c
	line	22
	
l4070:
		movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c,w
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c,w
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c,w
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c,w
	btfss	status,0
	goto	u4871
	goto	u4870

u4871:
	goto	l4076
u4870:
	line	23
	
l4072:
	movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c
	line	24
	
l4074:
	bsf	(0+(0/8)+(c:___lldiv@quotient))^00h,c,(0)&7
	line	26
	
l4076:
	bcf	status,0
	rrcf	((c:___lldiv@divisor+3))^00h,c
	rrcf	((c:___lldiv@divisor+2))^00h,c
	rrcf	((c:___lldiv@divisor+1))^00h,c
	rrcf	((c:___lldiv@divisor))^00h,c
	line	27
	
l4078:
	decfsz	((c:___lldiv@counter))^00h,c
	
	goto	l4068
	line	28
	
l756:
	line	29
	movff	(c:___lldiv@quotient),(c:?___lldiv)
	movff	(c:___lldiv@quotient+1),(c:?___lldiv+1)
	movff	(c:___lldiv@quotient+2),(c:?___lldiv+2)
	movff	(c:___lldiv@quotient+3),(c:?___lldiv+3)
	line	30
	
l763:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	__atoi

;; *************** function __atoi *****************
;; Defined at:
;;		line 188 in file "external/printf/printf.c"
;; Parameters:    Size  Location     Type
;;  str             1   14[COMRAM] PTR PTR const unsigned c
;;		 -> _vsnprintf@format(1), 
;; Auto vars:     Size  Location     Type
;;  i               2   19[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] unsigned int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		__is_digit
;; This function is called by:
;;		__vsnprintf
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=0
	file	"external/printf/printf.c"
	line	188
global __ptext32
__ptext32:
psect	text32
	file	"external/printf/printf.c"
	line	188
	
__atoi:
;incstack = 0
	callstack 23
	line	190
	
l4108:
	clrf	((c:__atoi@i+1))^00h,c
	movlw	low(0)
	movwf	((c:__atoi@i))^00h,c
	line	191
	goto	l4112
	line	192
	
l4110:
	movlw	low(0Ah)
	mulwf	((c:__atoi@i))^00h,c
	movff	prodl,??__atoi+0
	movff	prodh,??__atoi+0+1
	mulwf	((c:__atoi@i+1))^00h,c
	movf	(prodl),c,w
	addwf	(??__atoi+0+1)^00h,c,f
	movf	((c:__atoi@str))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	indf2,??__atoi+2
	movlw	01h
	addwf	indf2
	movff	??__atoi+2,tblptrl
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
	
	movf	tablat,w

	addwf	(??__atoi+0)^00h,c
	movlw	0
	addwfc	(??__atoi+0+1)^00h,c
	movlw	low(0FFD0h)
	addwf	(??__atoi+0)^00h,c,w
	movwf	((c:__atoi@i))^00h,c
	movlw	high(0FFD0h)
	addwfc	(??__atoi+0+1)^00h,c,w
	movwf	1+((c:__atoi@i))^00h,c
	line	191
	
l4112:
	movf	((c:__atoi@str))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	indf2,tblptrl
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
	
	movf	tablat,w
	
	call	__is_digit
	iorlw	0
	btfss	status,2
	goto	u4931
	goto	u4930
u4931:
	goto	l4110
u4930:
	
l494:
	line	194
	movff	(c:__atoi@i),(c:?__atoi)
	movff	(c:__atoi@i+1),(c:?__atoi+1)
	line	195
	
l495:
	return	;funcret
	callstack 0
GLOBAL	__end_of__atoi
	__end_of__atoi:
	signat	__atoi,4218
	global	__is_digit

;; *************** function __is_digit *****************
;; Defined at:
;;		line 181 in file "external/printf/printf.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1   13[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, status,2, status,0
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
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		__atoi
;;		__vsnprintf
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,inline,group=0
	line	181
global __ptext33
__ptext33:
psect	text33
	file	"external/printf/printf.c"
	line	181
	
__is_digit:
;incstack = 0
	callstack 23
	movwf	((c:__is_digit@ch))^00h,c
	line	183
	
l3948:
	clrf	((c:__is_digit$1315))^00h,c
	
l3950:
		movlw	030h-1
	cpfsgt	((c:__is_digit@ch))^00h,c
	goto	u4531
	goto	u4530

u4531:
	goto	l488
u4530:
	
l3952:
		movlw	03Ah-0
	cpfslt	((c:__is_digit@ch))^00h,c
	goto	u4541
	goto	u4540

u4541:
	goto	l488
u4540:
	
l3954:
	movlw	low(01h)
	movwf	((c:__is_digit$1315))^00h,c
	
l488:
	movf	((c:__is_digit$1315))^00h,c,w
	line	184
	
l489:
	return	;funcret
	callstack 0
GLOBAL	__end_of__is_digit
	__end_of__is_digit:
	signat	__is_digit,4217
	global	_clock_init

;; *************** function _clock_init *****************
;; Defined at:
;;		line 4 in file "src/clock.c"
;; Parameters:    Size  Location     Type
;;  clk             1   18[COMRAM] PTR struct .
;;		 -> sys_clock(3), 
;;  h               1   19[COMRAM] unsigned char 
;;  m               1   20[COMRAM] unsigned char 
;;  s               1   21[COMRAM] unsigned char 
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
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2,group=0
	file	"src/clock.c"
	line	4
global __ptext34
__ptext34:
psect	text34
	file	"src/clock.c"
	line	4
	
_clock_init:
;incstack = 0
	callstack 26
	line	6
	
l4754:
	movf	((c:clock_init@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:clock_init@h),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(018h)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	indf2,c

	line	7
	movf	((c:clock_init@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movff	(c:clock_init@m),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(03Ch)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	indf2,c

	line	8
	movf	((c:clock_init@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movff	(c:clock_init@s),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1))^00h,c
	clrf	((c:___awmod@divisor+1))^00h,c
	movlw	low(03Ch)
	movwf	((c:___awmod@divisor))^00h,c
	call	___awmod	;wreg free
	movf	(0+?___awmod)^00h,c,w
	movwf	indf2,c

	line	9
	
l322:
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
;;  dividend        2   12[COMRAM] int 
;;  divisor         2   14[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   17[COMRAM] unsigned char 
;;  counter         1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   12[COMRAM] int 
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
psect	text35,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/awmod.c"
	line	7
global __ptext35
__ptext35:
psect	text35
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/awmod.c"
	line	7
	
___awmod:
;incstack = 0
	callstack 26
	line	12
	
l4568:
	clrf	((c:___awmod@sign))^00h,c
	line	13
	
l4570:
	btfsc	((c:___awmod@dividend+1))^00h,c,7
	goto	u5910
	goto	u5911

u5911:
	goto	l4576
u5910:
	line	14
	
l4572:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	15
	
l4574:
	movlw	low(01h)
	movwf	((c:___awmod@sign))^00h,c
	line	17
	
l4576:
	btfsc	((c:___awmod@divisor+1))^00h,c,7
	goto	u5920
	goto	u5921

u5921:
	goto	l4580
u5920:
	line	18
	
l4578:
	negf	((c:___awmod@divisor))^00h,c
	comf	((c:___awmod@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@divisor+1))^00h,c
	line	19
	
l4580:
	movf	((c:___awmod@divisor))^00h,c,w
iorwf	((c:___awmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u5931
	goto	u5930

u5931:
	goto	l4596
u5930:
	line	20
	
l4582:
	movlw	low(01h)
	movwf	((c:___awmod@counter))^00h,c
	line	21
	goto	l4586
	line	22
	
l4584:
	bcf	status,0
	rlcf	((c:___awmod@divisor))^00h,c
	rlcf	((c:___awmod@divisor+1))^00h,c
	line	23
	incf	((c:___awmod@counter))^00h,c
	line	21
	
l4586:
	
	btfss	((c:___awmod@divisor+1))^00h,c,(15)&7
	goto	u5941
	goto	u5940
u5941:
	goto	l4584
u5940:
	line	26
	
l4588:
		movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c,w
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u5951
	goto	u5950

u5951:
	goto	l4592
u5950:
	line	27
	
l4590:
	movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c

	line	28
	
l4592:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1))^00h,c
	rrcf	((c:___awmod@divisor))^00h,c
	line	29
	
l4594:
	decfsz	((c:___awmod@counter))^00h,c
	
	goto	l4588
	line	31
	
l4596:
	movf	((c:___awmod@sign))^00h,c,w
	btfsc	status,2
	goto	u5961
	goto	u5960
u5961:
	goto	l4600
u5960:
	line	32
	
l4598:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	33
	
l4600:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	line	34
	
l1083:
	return	;funcret
	callstack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	_Uart_Start

;; *************** function _Uart_Start *****************
;; Defined at:
;;		line 33 in file "src/uart.c"
;; Parameters:    Size  Location     Type
;;  uart            1   20[COMRAM] PTR const struct .
;;		 -> uart_config(8), 
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
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_Buffer_Init
;;		_Gpio_Init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	33
global __ptext36
__ptext36:
psect	text36
	file	"src/uart.c"
	line	33
	
_Uart_Start:
;incstack = 0
	callstack 26
	line	35
	
l4692:
	movf	((c:Uart_Start@uart))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:Gpio_Init@gpio)
	movff	postdec2,(c:Gpio_Init@gpio+1)
	movlw	low(01h)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	36
	movf	((c:Uart_Start@uart))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movff	postinc2,(c:Gpio_Init@gpio)
	movff	postdec2,(c:Gpio_Init@gpio+1)
	movlw	low(01h)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	38
		movlw	low(_tx_buffer)
	movwf	((c:Buffer_Init@buffer))^00h,c
	movlw	high(_tx_buffer)
	movwf	((c:Buffer_Init@buffer+1))^00h,c

	call	_Buffer_Init	;wreg free
	line	39
		movlw	low(_rx_buffer)
	movwf	((c:Buffer_Init@buffer))^00h,c
	movlw	high(_rx_buffer)
	movwf	((c:Buffer_Init@buffer+1))^00h,c

	call	_Buffer_Init	;wreg free
	line	41
	
l4694:
	bsf	((c:4011))^0f00h,c,7	;volatile
	line	42
	
l4696:
	bsf	((c:4012))^0f00h,c,5	;volatile
	line	43
	
l4698:
	bsf	((c:4011))^0f00h,c,4	;volatile
	line	45
	
l4700:
	bcf	((c:3998))^0f00h,c,4	;volatile
	line	46
	
l4702:
	bcf	((c:3997))^0f00h,c,4	;volatile
	line	49
	
l4704:
	btfss	((c:3998))^0f00h,c,5	;volatile
	goto	u6081
	goto	u6080
u6081:
	goto	l217
u6080:
	line	51
	
l4706:
	movf	((c:4014))^0f00h,c,w	;volatile
	line	53
	
l217:
	line	54
	bsf	((c:3997))^0f00h,c,5	;volatile
	line	56
	
l218:
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
;;  buffer          2   12[COMRAM] PTR volatile struct .
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
;;		_Uart_Start
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=0
	file	"src/buffer.c"
	line	3
global __ptext37
__ptext37:
psect	text37
	file	"src/buffer.c"
	line	3
	
_Buffer_Init:
;incstack = 0
	callstack 26
	line	5
	
l4530:
	lfsr	2,014h
	movf	((c:Buffer_Init@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Init@buffer+1))^00h,c,w
	addwfc	fsr2h
	clrf	indf2
	line	6
	lfsr	2,015h
	movf	((c:Buffer_Init@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Init@buffer+1))^00h,c,w
	addwfc	fsr2h
	clrf	indf2
	line	7
	
l169:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Buffer_Init
	__end_of_Buffer_Init:
	signat	_Buffer_Init,4217
	global	_Uart_Read

;; *************** function _Uart_Read *****************
;; Defined at:
;;		line 115 in file "src/uart.c"
;; Parameters:    Size  Location     Type
;;  data            1   17[COMRAM] PTR unsigned char 
;;		 -> main@c(1), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_Buffer_Get
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	115
global __ptext38
__ptext38:
psect	text38
	file	"src/uart.c"
	line	115
	
_Uart_Read:
;incstack = 0
	callstack 26
	line	117
	
l4916:
		movlw	low(_rx_buffer)
	movwf	((c:Buffer_Get@buffer))^00h,c
	movlw	high(_rx_buffer)
	movwf	((c:Buffer_Get@buffer+1))^00h,c

		movff	(c:Uart_Read@data),(c:Buffer_Get@element)

	call	_Buffer_Get	;wreg free
	line	118
	
l236:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Uart_Read
	__end_of_Uart_Read:
	signat	_Uart_Read,4217
	global	_Buffer_Get

;; *************** function _Buffer_Get *****************
;; Defined at:
;;		line 27 in file "src/buffer.c"
;; Parameters:    Size  Location     Type
;;  buffer          2   12[COMRAM] PTR volatile struct .
;;		 -> rx_buffer(22), tx_buffer(22), 
;;  element         1   14[COMRAM] PTR unsigned char 
;;		 -> Uart_InterruptHandler@c_705(1), main@c(1), 
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
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Uart_Read
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=0
	file	"src/buffer.c"
	line	27
global __ptext39
__ptext39:
psect	text39
	file	"src/buffer.c"
	line	27
	
_Buffer_Get:
;incstack = 0
	callstack 26
	line	29
	
l4532:
	lfsr	2,015h
	movf	((c:Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	lfsr	1,014h
	movf	((c:Buffer_Get@buffer))^00h,c,w
	addwf	fsr1l
	movf	((c:Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr1h
	movf	postinc2,w
xorwf	postinc1,w
	btfss	status,2
	goto	u5821
	goto	u5820

u5821:
	goto	l4538
u5820:
	line	32
	
l4534:
	movlw	(0)&0ffh
	goto	l178
	line	35
	
l4538:
	lfsr	2,015h
	movf	((c:Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	(??_Buffer_Get+0)^00h,c
	movf	((??_Buffer_Get+0))^00h,c,w
	addwf	((c:Buffer_Get@buffer))^00h,c,w
	movwf	c:fsr2l
	movlw	0
	addwfc	((c:Buffer_Get@buffer+1))^00h,c,w
	movwf	1+c:fsr2l
	movf	((c:Buffer_Get@element))^00h,c,w
	movwf	fsr1l
	clrf	fsr1h
	movff	indf2,indf1
	line	36
	
l4540:
	lfsr	2,015h
	movf	((c:Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	incf	indf2

	line	38
	
l4542:
	lfsr	2,015h
	movf	((c:Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	movlw	20
	xorwf	postinc2,w
	btfss	status,2
	goto	u5831
	goto	u5830

u5831:
	goto	l4546
u5830:
	line	39
	
l4544:
	lfsr	2,015h
	movf	((c:Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	clrf	indf2
	line	41
	
l4546:
	movlw	(01h)&0ffh
	line	42
	
l178:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Buffer_Get
	__end_of_Buffer_Get:
	signat	_Buffer_Get,8313
	global	_Uart_Init

;; *************** function _Uart_Init *****************
;; Defined at:
;;		line 10 in file "src/uart.c"
;; Parameters:    Size  Location     Type
;;  uart            1   12[COMRAM] PTR const struct .
;;		 -> uart_config(8), 
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
psect	text40,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	10
global __ptext40
__ptext40:
psect	text40
	file	"src/uart.c"
	line	10
	
_Uart_Init:
;incstack = 0
	callstack 27
	line	12
	
l4684:
	bcf	((c:4012))^0f00h,c,6	;volatile
	line	13
	bcf	((c:4011))^0f00h,c,6	;volatile
	line	14
	bcf	((c:4012))^0f00h,c,4	;volatile
	line	16
	
l4686:
	movf	((c:Uart_Init@uart))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	movlw	128
	xorwf	postinc2,w
	bnz	u6071
movlw	37
	xorwf	postinc2,w
iorwf	postinc2,w
iorwf	postinc2,w
	btfss	status,2
	goto	u6071
	goto	u6070

u6071:
	goto	l214
u6070:
	line	18
	
l4688:
	bsf	((c:4012))^0f00h,c,2	;volatile
	line	19
	bcf	((c:4024))^0f00h,c,3	;volatile
	line	21
	clrf	((c:4016))^0f00h,c	;volatile
	line	22
	
l4690:
	movlw	low(081h)
	movwf	((c:4015))^0f00h,c	;volatile
	line	30
	
l214:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Uart_Init
	__end_of_Uart_Init:
	signat	_Uart_Init,4217
	global	_Button_Task

;; *************** function _Button_Task *****************
;; Defined at:
;;		line 41 in file "app/app.c"
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
psect	text41,class=CODE,space=0,reloc=2,group=0
	file	"app/app.c"
	line	41
global __ptext41
__ptext41:
psect	text41
	file	"app/app.c"
	line	41
	
_Button_Task:
;incstack = 0
	callstack 25
	line	43
	
l4828:
		movlw	low(_btn_cfg)
	movwf	((c:button_update@btn))^00h,c

	call	_button_update	;wreg free
	line	44
		movlw	low(_btn_inc)
	movwf	((c:button_update@btn))^00h,c

	call	_button_update	;wreg free
	line	45
		movlw	low(_btn_dcr)
	movwf	((c:button_update@btn))^00h,c

	call	_button_update	;wreg free
	line	46
	
l130:
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
;;  btn             1   19[COMRAM] PTR struct .
;;		 -> btn_dcr(8), btn_inc(8), btn_cfg(8), 
;; Auto vars:     Size  Location     Type
;;  state           1   22[COMRAM] enum E64
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_Gpio_Read
;; This function is called by:
;;		_Button_Task
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2,group=0
	file	"src/button_driver.c"
	line	16
global __ptext42
__ptext42:
psect	text42
	file	"src/button_driver.c"
	line	16
	
_button_update:
;incstack = 0
	callstack 25
	line	19
	
l4494:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	decf	postinc2,w
	btfss	status,2
	goto	u5711
	goto	u5710

u5711:
	goto	l4498
u5710:
	line	21
	
l4496:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:Gpio_Read@gpio)
	movff	postdec2,(c:Gpio_Read@gpio+1)
	call	_Gpio_Read	;wreg free
	decf	wreg
	btfsc	status,2
	goto	u5721
	goto	u5720
u5721:
	movlw	1
	goto	u5730
u5720:
	movlw	0
u5730:
	movwf	((c:button_update@state))^00h,c
	line	22
	goto	l4500
	line	25
	
l4498:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:Gpio_Read@gpio)
	movff	postdec2,(c:Gpio_Read@gpio+1)
	call	_Gpio_Read	;wreg free
	decf	wreg
	btfss	status,2
	goto	u5741
	goto	u5740
u5741:
	movlw	1
	goto	u5750
u5740:
	movlw	0
u5750:
	movwf	((c:button_update@state))^00h,c
	line	28
	
l4500:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	movf	((c:button_update@state))^00h,c,w
xorwf	postinc2,w
	btfss	status,2
	goto	u5761
	goto	u5760

u5761:
	goto	l4504
u5760:
	line	30
	
l4502:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(05h)
	addwf	fsr2l

	clrf	indf2
	line	31
	goto	l352
	line	33
	
l4504:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(05h)
	addwf	fsr2l

	incf	indf2

	line	34
	
l4506:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr1l
	clrf	fsr1h
	movlw	low(05h)
	addwf	fsr1l

		movf	postinc2,w
	subwf	postinc1,w
	btfss	status,0
	goto	u5771
	goto	u5770

u5771:
	goto	l352
u5770:
	line	36
	
l4508:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr1l
	clrf	fsr1h
	movlw	low(04h)
	addwf	fsr1l

	movff	indf2,indf1
	line	37
	
l4510:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	movff	(c:button_update@state),indf2

	line	39
	
l4512:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	movf	indf2,w
	btfss	status,2
	goto	u5781
	goto	u5780
u5781:
	goto	l4518
u5780:
	
l4514:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	decf	postinc2,w
	btfss	status,2
	goto	u5791
	goto	u5790

u5791:
	goto	l4518
u5790:
	line	41
	
l4516:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

	movlw	low(01h)
	movwf	indf2
	line	42
	goto	l350
	line	43
	
l4518:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	decf	postinc2,w
	btfss	status,2
	goto	u5801
	goto	u5800

u5801:
	goto	l350
u5800:
	
l4520:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	movf	indf2,w
	btfss	status,2
	goto	u5811
	goto	u5810
u5811:
	goto	l350
u5810:
	line	45
	
l4522:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

	movlw	low(02h)
	movwf	indf2
	line	46
	
l350:
	line	47
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(05h)
	addwf	fsr2l

	clrf	indf2
	line	50
	
l352:
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
;;  gpio            2   12[COMRAM] PTR struct .
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
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_button_update
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2,group=0
	file	"src/gpio.c"
	line	28
global __ptext43
__ptext43:
psect	text43
	file	"src/gpio.c"
	line	28
	
_Gpio_Read:
;incstack = 0
	callstack 25
	line	30
	
l4164:
	lfsr	2,04h
	movf	((c:Gpio_Read@gpio))^00h,c,w
	addwf	fsr2l
	movf	((c:Gpio_Read@gpio+1))^00h,c,w
	addwfc	fsr2h
	movff	postinc2,??_Gpio_Read+0
	movff	postdec2,??_Gpio_Read+0+1
	movff	??_Gpio_Read+0,fsr2l
	movff	??_Gpio_Read+0+1,fsr2h
	movf	indf2,w
	movwf	(??_Gpio_Read+2)^00h,c
	lfsr	2,06h
	movf	((c:Gpio_Read@gpio))^00h,c,w
	addwf	fsr2l
	movf	((c:Gpio_Read@gpio+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	(??_Gpio_Read+3)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_Gpio_Read+4)^00h,c
	incf	((??_Gpio_Read+3))^00h,c
	goto	u5074
u5075:
	bcf	status,0
	rlcf	((??_Gpio_Read+4))^00h,c
u5074:
	decfsz	((??_Gpio_Read+3))^00h,c
	goto	u5075
	movf	((??_Gpio_Read+4))^00h,c,w
	andwf	((??_Gpio_Read+2))^00h,c,w
	iorlw	0
	btfsc	status,2
	goto	u5081
	goto	u5080
u5081:
	goto	l4170
u5080:
	line	32
	
l4166:
	movlw	(01h)&0ffh
	goto	l163
	line	34
	
l4170:
	movlw	(0)&0ffh
	line	35
	
l163:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Gpio_Read
	__end_of_Gpio_Read:
	signat	_Gpio_Read,4217
	global	_App_Task

;; *************** function _App_Task *****************
;; Defined at:
;;		line 49 in file "app/app.c"
;; Parameters:    Size  Location     Type
;;  app             1   14[COMRAM] PTR struct .
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
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_button_get_event
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2,group=0
	file	"app/app.c"
	line	49
global __ptext44
__ptext44:
psect	text44
	file	"app/app.c"
	line	49
	
_App_Task:
;incstack = 0
	callstack 26
	line	52
	
l4768:
		movlw	low(_btn_cfg)
	movwf	((c:button_get_event@btn))^00h,c

	call	_button_get_event	;wreg free
	xorlw	02h
	btfss	status,2
	goto	u6141
	goto	u6140
u6141:
	goto	l4782
u6140:
	goto	l4780
	line	57
	
l4772:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	low(01h)
	movwf	indf2
	line	58
	goto	l4782
	line	60
	
l4774:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	low(02h)
	movwf	indf2
	line	61
	goto	l4782
	line	63
	
l4776:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	clrf	indf2
	line	64
	goto	l4782
	line	65
	
l4780:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_App_Task+0)^00h,c
	clrf	(??_App_Task+0+1)^00h,c

	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_App_Task+0+1^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l5592
	goto	l4782
	
l5592:
; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	movf ??_App_Task+0^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l4772
	xorlw	1^0	; case 1
	skipnz
	goto	l4774
	xorlw	2^1	; case 2
	skipnz
	goto	l4776
	goto	l4782

	line	68
	
l4782:
		movlw	low(_btn_inc)
	movwf	((c:button_get_event@btn))^00h,c

	call	_button_get_event	;wreg free
	xorlw	02h
	btfss	status,2
	goto	u6151
	goto	u6150
u6151:
	goto	l4796
u6150:
	line	70
	
l4784:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	decf	postinc2,w
	btfss	status,2
	goto	u6161
	goto	u6160

u6161:
	goto	l4790
u6160:
	line	72
	
l4786:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	incf	indf2

	line	73
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	24
	xorwf	postinc2,w
	btfss	status,2
	goto	u6171
	goto	u6170

u6171:
	goto	l4790
u6170:
	line	75
	
l4788:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	79
	
l4790:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	2
	xorwf	postinc2,w
	btfss	status,2
	goto	u6181
	goto	u6180

u6181:
	goto	l4796
u6180:
	line	81
	
l4792:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	incf	indf2

	line	82
	movf	((c:App_Task@app))^00h,c,w
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
	goto	u6191
	goto	u6190

u6191:
	goto	l4796
u6190:
	line	84
	
l4794:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	clrf	indf2
	line	89
	
l4796:
		movlw	low(_btn_dcr)
	movwf	((c:button_get_event@btn))^00h,c

	call	_button_get_event	;wreg free
	xorlw	02h
	btfss	status,2
	goto	u6201
	goto	u6200
u6201:
	goto	l149
u6200:
	line	91
	
l4798:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	decf	postinc2,w
	btfss	status,2
	goto	u6211
	goto	u6210

u6211:
	goto	l4806
u6210:
	line	93
	
l4800:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u6221
	goto	u6220
u6221:
	goto	l4804
u6220:
	line	95
	
l4802:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(018h)
	movwf	indf2
	line	97
	
l4804:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	decf	indf2

	line	100
	
l4806:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	2
	xorwf	postinc2,w
	btfss	status,2
	goto	u6231
	goto	u6230

u6231:
	goto	l149
u6230:
	line	102
	
l4808:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movf	indf2,w
	btfss	status,2
	goto	u6241
	goto	u6240
u6241:
	goto	l148
u6240:
	line	104
	
l4810:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	low(03Ch)
	movwf	indf2
	line	105
	
l148:
	line	106
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	decf	indf2

	line	110
	
l149:
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
;;  btn             1   12[COMRAM] PTR struct .
;;		 -> btn_dcr(8), btn_inc(8), btn_cfg(8), 
;; Auto vars:     Size  Location     Type
;;  event           1   13[COMRAM] enum E68
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
psect	text45,class=CODE,space=0,reloc=2,group=0
	file	"src/button_driver.c"
	line	52
global __ptext45
__ptext45:
psect	text45
	file	"src/button_driver.c"
	line	52
	
_button_get_event:
;incstack = 0
	callstack 26
	line	54
	
l4524:
	movf	((c:button_get_event@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

	movf	indf2,w
	movwf	((c:button_get_event@event))^00h,c
	line	55
	movf	((c:button_get_event@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

	clrf	indf2
	line	56
	
l4526:
	movf	((c:button_get_event@event))^00h,c,w
	line	57
	
l355:
	return	;funcret
	callstack 0
GLOBAL	__end_of_button_get_event
	__end_of_button_get_event:
	signat	_button_get_event,4217
	global	_App_Init

;; *************** function _App_Init *****************
;; Defined at:
;;		line 31 in file "app/app.c"
;; Parameters:    Size  Location     Type
;;  app             1   25[COMRAM] PTR struct .
;;		 -> app(2), 
;;  clk             1   26[COMRAM] PTR struct .
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
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_button_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2,group=0
	file	"app/app.c"
	line	31
global __ptext46
__ptext46:
psect	text46
	file	"app/app.c"
	line	31
	
_App_Init:
;incstack = 0
	callstack 25
	line	33
	
l4674:
	movf	((c:App_Init@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:App_Init@clk),indf2

	line	34
	
l4676:
	movf	((c:App_Init@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	clrf	indf2
	line	36
	
l4678:
		movlw	low(_btn_cfg)
	movwf	((c:button_init@btn))^00h,c

		movlw	low(_button_cfg)
	movwf	((c:button_init@gpio))^00h,c
	movlw	high(_button_cfg)
	movwf	((c:button_init@gpio+1))^00h,c

	movlw	low(0)
	movwf	((c:button_init@polarity))^00h,c
	movlw	low(019h)
	movwf	((c:button_init@debounce_ticks))^00h,c
	call	_button_init	;wreg free
	line	37
	
l4680:
		movlw	low(_btn_inc)
	movwf	((c:button_init@btn))^00h,c

		movlw	low(_button_inc)
	movwf	((c:button_init@gpio))^00h,c
	movlw	high(_button_inc)
	movwf	((c:button_init@gpio+1))^00h,c

	movlw	low(0)
	movwf	((c:button_init@polarity))^00h,c
	movlw	low(019h)
	movwf	((c:button_init@debounce_ticks))^00h,c
	call	_button_init	;wreg free
	line	38
	
l4682:
		movlw	low(_btn_dcr)
	movwf	((c:button_init@btn))^00h,c

		movlw	low(_button_dcr)
	movwf	((c:button_init@gpio))^00h,c
	movlw	high(_button_dcr)
	movwf	((c:button_init@gpio+1))^00h,c

	movlw	low(0)
	movwf	((c:button_init@polarity))^00h,c
	movlw	low(019h)
	movwf	((c:button_init@debounce_ticks))^00h,c
	call	_button_init	;wreg free
	line	39
	
l127:
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
;;  btn             1   20[COMRAM] PTR struct .
;;		 -> btn_dcr(8), btn_inc(8), btn_cfg(8), 
;;  gpio            2   21[COMRAM] PTR struct .
;;		 -> button_dcr(7), button_inc(7), button_cfg(7), 
;;  polarity        1   23[COMRAM] enum E60
;;  debounce_tic    1   24[COMRAM] unsigned char 
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
;;      Params:         5       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_Gpio_Init
;; This function is called by:
;;		_App_Init
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2,group=0
	file	"src/button_driver.c"
	line	3
global __ptext47
__ptext47:
psect	text47
	file	"src/button_driver.c"
	line	3
	
_button_init:
;incstack = 0
	callstack 25
	line	5
	
l4478:
	movf	((c:button_init@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:button_init@gpio),postinc2
	movff	(c:button_init@gpio+1),postdec2
	line	6
	
l4480:
	movf	((c:button_init@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movff	(c:button_init@polarity),indf2

	line	7
	
l4482:
	movf	((c:button_init@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	clrf	indf2
	line	8
	
l4484:
	movf	((c:button_init@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	clrf	indf2
	line	9
	
l4486:
	movf	((c:button_init@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(05h)
	addwf	fsr2l

	clrf	indf2
	line	10
	
l4488:
	movf	((c:button_init@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movff	(c:button_init@debounce_ticks),indf2

	line	11
	
l4490:
	movf	((c:button_init@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

	clrf	indf2
	line	13
	
l4492:
	movf	((c:button_init@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:Gpio_Init@gpio)
	movff	postdec2,(c:Gpio_Init@gpio+1)
	movlw	low(01h)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	14
	
l341:
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
;;  gpio            2   12[COMRAM] PTR struct .
;;		 -> NULL(0), button_dcr(7), button_inc(7), button_cfg(7), 
;;		 -> tx(7), rx(7), colon_control(7), colon(7), 
;;		 -> control(28), data(49), 
;;  dir             1   14[COMRAM] enum E3343
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
;;      Temps:          5       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
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
psect	text48,class=CODE,space=0,reloc=2,group=0
	file	"src/gpio.c"
	line	4
global __ptext48
__ptext48:
psect	text48
	file	"src/gpio.c"
	line	4
	
_Gpio_Init:
;incstack = 0
	callstack 25
	line	6
	
l4152:
	movf	((c:Gpio_Init@dir))^00h,c,w
	btfss	status,2
	goto	u5011
	goto	u5010
u5011:
	goto	l4156
u5010:
	line	8
	
l4154:
	lfsr	2,06h
	movf	((c:Gpio_Init@gpio))^00h,c,w
	addwf	fsr2l
	movf	((c:Gpio_Init@gpio+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	(??_Gpio_Init+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_Gpio_Init+1)^00h,c
	incf	((??_Gpio_Init+0))^00h,c
	goto	u5024
u5025:
	bcf	status,0
	rlcf	((??_Gpio_Init+1))^00h,c
u5024:
	decfsz	((??_Gpio_Init+0))^00h,c
	goto	u5025
	movf	((??_Gpio_Init+1))^00h,c,w
	xorlw	0ffh
	movwf	(??_Gpio_Init+2)^00h,c
	movff	(c:Gpio_Init@gpio),fsr2l
	movff	(c:Gpio_Init@gpio+1),fsr2h
	movff	postinc2,??_Gpio_Init+3
	movff	postdec2,??_Gpio_Init+3+1
	movff	??_Gpio_Init+3,fsr2l
	movff	??_Gpio_Init+3+1,fsr2h
	movf	((??_Gpio_Init+2))^00h,c,w
	andwf	indf2
	line	9
	goto	l154
	line	12
	
l4156:
	lfsr	2,06h
	movf	((c:Gpio_Init@gpio))^00h,c,w
	addwf	fsr2l
	movf	((c:Gpio_Init@gpio+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	(??_Gpio_Init+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_Gpio_Init+1)^00h,c
	incf	((??_Gpio_Init+0))^00h,c
	goto	u5034
u5035:
	bcf	status,0
	rlcf	((??_Gpio_Init+1))^00h,c
u5034:
	decfsz	((??_Gpio_Init+0))^00h,c
	goto	u5035
	movff	(c:Gpio_Init@gpio),fsr2l
	movff	(c:Gpio_Init@gpio+1),fsr2h
	movff	postinc2,??_Gpio_Init+2
	movff	postdec2,??_Gpio_Init+2+1
	movff	??_Gpio_Init+2,fsr2l
	movff	??_Gpio_Init+2+1,fsr2h
	movf	((??_Gpio_Init+1))^00h,c,w
	iorwf	indf2
	line	14
	
l154:
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
	
_ISR:
;incstack = 0
	callstack 19
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
	
i2l4988:
	movlw	0
	btfsc	((c:3998))^0f00h,c,5	;volatile
	movlw	1
	btfsc	((c:3998))^0f00h,c,4	;volatile
	movlw	1

	btfsc	wreg,0
	goto	i2u653_41
	goto	i2u653_40
i2u653_41:
	clrf	(??_ISR+0)^00h,c
	incf	(??_ISR+0)^00h,c
	goto	i2u653_48
i2u653_40:
	clrf	(??_ISR+0)^00h,c
i2u653_48:
	movf	(??_ISR+0)^00h,c,w
	btfsc	status,2
	goto	i2u654_41
	goto	i2u654_40
i2u654_41:
	goto	i2l4992
i2u654_40:
	line	14
	
i2l4990:
	call	_Uart_InterruptHandler	;wreg free
	line	18
	
i2l4992:
	btfss	((c:4082))^0f00h,c,2	;volatile
	goto	i2u655_41
	goto	i2u655_40
i2u655_41:
	goto	i2l281
i2u655_40:
	
i2l4994:
	btfss	((c:4082))^0f00h,c,5	;volatile
	goto	i2u656_41
	goto	i2u656_40
i2u656_41:
	goto	i2l281
i2u656_40:
	line	21
	
i2l4996:
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	25
	
i2l4998:
	movlw	low(0FBh)
	movwf	((c:4055))^0f00h,c	;volatile
	line	26
	movlw	low(01Eh)
	movwf	((c:4054))^0f00h,c	;volatile
	line	30
	
i2l5000:
	call	_system_tick_1ms	;wreg free
	line	33
	
i2l281:
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
psect	text50,class=CODE,space=0,reloc=2,group=0
	file	"src/system_tick.c"
	line	8
global __ptext50
__ptext50:
psect	text50
	file	"src/system_tick.c"
	line	8
	
_system_tick_1ms:
;incstack = 0
	callstack 20
	line	10
	
i2l2558:
		incf	((c:_pending_ticks))^00h,c,w	;volatile
	btfsc	status,2
	goto	i2u206_41
	goto	i2u206_40

i2u206_41:
	goto	i2l302
i2u206_40:
	line	12
	
i2l2560:
	incf	((c:_pending_ticks))^00h,c	;volatile
	line	14
	
i2l302:
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
;;  c               1    6[COMRAM] unsigned char 
;;  c               1    5[COMRAM] unsigned char 
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
;;		i2_Buffer_Add
;;		i2_Buffer_Get
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text51,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	66
global __ptext51
__ptext51:
psect	text51
	file	"src/uart.c"
	line	66
	
_Uart_InterruptHandler:
;incstack = 0
	callstack 19
	line	69
	
i2l4920:
	btfss	((c:3998))^0f00h,c,5	;volatile
	goto	i2u639_41
	goto	i2u639_40
i2u639_41:
	goto	i2l4930
i2u639_40:
	line	72
	
i2l4922:
	btfss	((c:4011))^0f00h,c,1	;volatile
	goto	i2u640_41
	goto	i2u640_40
i2u640_41:
	goto	i2l225
i2u640_40:
	line	75
	
i2l4924:
	bcf	((c:4011))^0f00h,c,4	;volatile
	line	76
	bsf	((c:4011))^0f00h,c,4	;volatile
	line	77
	goto	i2l226
	line	78
	
i2l225:
	line	80
	btfss	((c:4011))^0f00h,c,2	;volatile
	goto	i2u641_41
	goto	i2u641_40
i2u641_41:
	goto	i2l227
i2u641_40:
	line	83
	
i2l4926:
	movf	((c:4014))^0f00h,c,w	;volatile
	line	84
	goto	i2l226
	line	85
	
i2l227:
	line	87
	movff	(c:4014),(c:Uart_InterruptHandler@c)	;volatile
	line	88
	
i2l4928:
		movlw	low(_rx_buffer)
	movwf	((c:i2Buffer_Add@buffer))^00h,c
	movlw	high(_rx_buffer)
	movwf	((c:i2Buffer_Add@buffer+1))^00h,c

	movff	(c:Uart_InterruptHandler@c),(c:i2Buffer_Add@element)
	call	i2_Buffer_Add	;wreg free
	line	93
	
i2l4930:
	btfss	((c:3998))^0f00h,c,4	;volatile
	goto	i2u642_41
	goto	i2u642_40
i2u642_41:
	goto	i2l226
i2u642_40:
	
i2l4932:
	btfss	((c:3997))^0f00h,c,4	;volatile
	goto	i2u643_41
	goto	i2u643_40
i2u643_41:
	goto	i2l226
i2u643_40:
	line	96
	
i2l4934:
		movlw	low(_tx_buffer)
	movwf	((c:i2Buffer_Get@buffer))^00h,c
	movlw	high(_tx_buffer)
	movwf	((c:i2Buffer_Get@buffer+1))^00h,c

		movlw	low(Uart_InterruptHandler@c_705)
	movwf	((c:i2Buffer_Get@element))^00h,c

	call	i2_Buffer_Get	;wreg free
	iorlw	0
	btfsc	status,2
	goto	i2u644_41
	goto	i2u644_40
i2u644_41:
	goto	i2l229
i2u644_40:
	line	98
	
i2l4936:
	movff	(c:Uart_InterruptHandler@c_705),(c:4013)	;volatile
	line	99
	goto	i2l226
	line	100
	
i2l229:
	line	102
	bcf	((c:3997))^0f00h,c,4	;volatile
	line	106
	
i2l226:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Uart_InterruptHandler
	__end_of_Uart_InterruptHandler:
	signat	_Uart_InterruptHandler,89
	global	i2_Buffer_Get

;; *************** function i2_Buffer_Get *****************
;; Defined at:
;;		line 27 in file "src/buffer.c"
;; Parameters:    Size  Location     Type
;;  buffer          2    0[COMRAM] PTR volatile struct .
;;		 -> rx_buffer(22), tx_buffer(22), 
;;  element         1    2[COMRAM] PTR unsigned char 
;;		 -> Uart_InterruptHandler@c_705(1), main@c(1), 
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
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Uart_InterruptHandler
;; This function uses a non-reentrant model
;;
psect	text52,class=CODE,space=0,reloc=2,group=0
	file	"src/buffer.c"
	line	27
global __ptext52
__ptext52:
psect	text52
	file	"src/buffer.c"
	line	27
	
i2_Buffer_Get:
;incstack = 0
	callstack 19
	line	29
	
i2l4656:
	lfsr	2,015h
	movf	((c:i2Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:i2Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	lfsr	1,014h
	movf	((c:i2Buffer_Get@buffer))^00h,c,w
	addwf	fsr1l
	movf	((c:i2Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr1h
	movf	postinc2,w
xorwf	postinc1,w
	btfss	status,2
	goto	i2u605_41
	goto	i2u605_40

i2u605_41:
	goto	i2l4662
i2u605_40:
	line	32
	
i2l4658:
	movlw	(0)&0ffh
	goto	i2l178
	line	35
	
i2l4662:
	lfsr	2,015h
	movf	((c:i2Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:i2Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	(??i2_Buffer_Get+0)^00h,c
	movf	((??i2_Buffer_Get+0))^00h,c,w
	addwf	((c:i2Buffer_Get@buffer))^00h,c,w
	movwf	c:fsr2l
	movlw	0
	addwfc	((c:i2Buffer_Get@buffer+1))^00h,c,w
	movwf	1+c:fsr2l
	movf	((c:i2Buffer_Get@element))^00h,c,w
	movwf	fsr1l
	clrf	fsr1h
	movff	indf2,indf1
	line	36
	
i2l4664:
	lfsr	2,015h
	movf	((c:i2Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:i2Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	incf	indf2

	line	38
	
i2l4666:
	lfsr	2,015h
	movf	((c:i2Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:i2Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	movlw	20
	xorwf	postinc2,w
	btfss	status,2
	goto	i2u606_41
	goto	i2u606_40

i2u606_41:
	goto	i2l4670
i2u606_40:
	line	39
	
i2l4668:
	lfsr	2,015h
	movf	((c:i2Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:i2Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	clrf	indf2
	line	41
	
i2l4670:
	movlw	(01h)&0ffh
	line	42
	
i2l178:
	return	;funcret
	callstack 0
GLOBAL	__end_ofi2_Buffer_Get
	__end_ofi2_Buffer_Get:
	signat	i2_Buffer_Get,8281
	global	i2_Buffer_Add

;; *************** function i2_Buffer_Add *****************
;; Defined at:
;;		line 9 in file "src/buffer.c"
;; Parameters:    Size  Location     Type
;;  buffer          2    0[COMRAM] PTR volatile struct .
;;		 -> rx_buffer(22), tx_buffer(22), 
;;  element         1    2[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  next_head       1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Uart_InterruptHandler
;; This function uses a non-reentrant model
;;
psect	text53,class=CODE,space=0,reloc=2,group=0
	line	9
global __ptext53
__ptext53:
psect	text53
	file	"src/buffer.c"
	line	9
	
i2_Buffer_Add:
;incstack = 0
	callstack 19
	line	11
	
i2l4642:
	lfsr	2,014h
	movf	((c:i2Buffer_Add@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:i2Buffer_Add@buffer+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	(??i2_Buffer_Add+0)^00h,c
	incf	((??i2_Buffer_Add+0))^00h,c,w
	movwf	((c:i2Buffer_Add@next_head))^00h,c
	line	13
	
i2l4644:
		movlw	20
	xorwf	((c:i2Buffer_Add@next_head))^00h,c,w
	btfss	status,2
	goto	i2u603_41
	goto	i2u603_40

i2u603_41:
	goto	i2l4648
i2u603_40:
	line	14
	
i2l4646:
	clrf	((c:i2Buffer_Add@next_head))^00h,c
	line	16
	
i2l4648:
	lfsr	2,015h
	movf	((c:i2Buffer_Add@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:i2Buffer_Add@buffer+1))^00h,c,w
	addwfc	fsr2h
	movf	((c:i2Buffer_Add@next_head))^00h,c,w
xorwf	postinc2,w
	btfss	status,2
	goto	i2u604_41
	goto	i2u604_40

i2u604_41:
	goto	i2l4652
i2u604_40:
	goto	i2l174
	line	22
	
i2l4652:
	lfsr	2,014h
	movf	((c:i2Buffer_Add@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:i2Buffer_Add@buffer+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	(??i2_Buffer_Add+0)^00h,c
	movf	((??i2_Buffer_Add+0))^00h,c,w
	addwf	((c:i2Buffer_Add@buffer))^00h,c,w
	movwf	c:fsr2l
	movlw	0
	addwfc	((c:i2Buffer_Add@buffer+1))^00h,c,w
	movwf	1+c:fsr2l
	movff	(c:i2Buffer_Add@element),indf2

	line	23
	lfsr	2,014h
	movf	((c:i2Buffer_Add@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:i2Buffer_Add@buffer+1))^00h,c,w
	addwfc	fsr2h
	movff	(c:i2Buffer_Add@next_head),indf2

	line	25
	
i2l174:
	return	;funcret
	callstack 0
GLOBAL	__end_ofi2_Buffer_Add
	__end_ofi2_Buffer_Add:
	signat	i2_Buffer_Add,8281
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

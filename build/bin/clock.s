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
	FNCALL	_main,_isr_init
	FNCALL	_main,_printf_
	FNCALL	_main,_system_tick_is_1ms
	FNCALL	_main,_system_tick_is_1s
	FNCALL	_main,_system_tick_task
	FNCALL	_main,_timer0_init
	FNCALL	_main,_timer0_start
	FNCALL	_timer0_init,_timer0_reload
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
	global	_button_cfg
	global	_data
	global	_control
	global	_clk_display
	global	_button_dcr
	global	_button_inc
	global	_tx
	global	_rx
	global	_colon_control
	global	_colon
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"app/main.c"
	line	137

;initializer for _uart_config
		db	low(_rx)
	db	high(_rx)

		db	low(_tx)
	db	high(_tx)

	dw	(02580h) & 0xffff
	dw	highword(02580h)
	file	"app/app.c"
	line	6

;initializer for _button_cfg
		db	low(3987)
	db	high(3987)

		db	low(3978)
	db	high(3978)

		db	low(3969)
	db	high(3969)

	db	low(0)
psect	idataBANK1,class=CODE,space=0,delta=1,noexec
global __pidataBANK1
__pidataBANK1:
	file	"app/main.c"
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
	line	8
_numbers:
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(0)
	db	low(0)
	db	low(01h)
	db	low(01h)
	global __end_of_numbers
__end_of_numbers:
	global	_numbers
	global	_tick_1ms
	global	_display_type_flag
	global	_last_digit
	global	_current_digit
	global	_flag_1ms
	global	_one_second_flag
	global	_pending_ticks
	global	_btn_dcr
	global	_app
	global	fctprintf@F291
	global	_btn_inc
	global	_btn_cfg
	global	_sys_clock
	global	_rx_buffer
	global	_tx_buffer
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
_tick_1ms:
       ds      2
_display_type_flag:
       ds      1
_last_digit:
       ds      1
_current_digit:
       ds      1
_flag_1ms:
       ds      1
_one_second_flag:
       ds      1
_pending_ticks:
       ds      1
	global	_btn_dcr
_btn_dcr:
       ds      8
	global	_app
_app:
       ds      2
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
fctprintf@F291:
       ds      4
	global	_btn_inc
_btn_inc:
       ds      8
	global	_btn_cfg
_btn_cfg:
       ds      8
	global	_sys_clock
_sys_clock:
       ds      3
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"app/main.c"
	line	137
	global	_uart_config
_uart_config:
       ds      8
psect	dataBANK0
	file	"app/app.c"
	line	6
	global	_button_cfg
_button_cfg:
       ds      7
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
       ds      11
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
	file	"app/main.c"
	line	130
_tx:
       ds      7
psect	dataBANK1
	file	"app/main.c"
	line	123
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
; Initialize objects allocated to BANK1 (130 bytes)
	global __pidataBANK1
	; load TBLPTR registers with __pidataBANK1
	movlw	low (__pidataBANK1)
	movwf	tblptrl
	movlw	high(__pidataBANK1)
	movwf	tblptrh
	movlw	low highword(__pidataBANK1)
	movwf	tblptru
	lfsr	0,__pdataBANK1
	lfsr	1,130
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to BANK0 (15 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,15
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
; Clear objects allocated to BANK0 (23 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	23
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to COMRAM (18 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	18
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
	global	__vsnprintf$1281
__vsnprintf$1281:	; 4 bytes @ 0x0
	ds   4
	global	__vsnprintf$1283
__vsnprintf$1283:	; 2 bytes @ 0x4
	ds   2
	global	__vsnprintf$1284
__vsnprintf$1284:	; 2 bytes @ 0x6
	ds   2
	global	__vsnprintf@value_1285
__vsnprintf@value_1285:	; 2 bytes @ 0x8
	ds   2
	global	__vsnprintf$1286
__vsnprintf$1286:	; 2 bytes @ 0xA
	ds   2
	global	__vsnprintf$1291
__vsnprintf$1291:	; 2 bytes @ 0xC
	ds   2
	global	__vsnprintf$1292
__vsnprintf$1292:	; 2 bytes @ 0xE
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
	global	__vsnprintf@p
__vsnprintf@p:	; 2 bytes @ 0x18
	ds   2
	global	__vsnprintf@l_1289
__vsnprintf@l_1289:	; 2 bytes @ 0x1A
	ds   2
	global	__vsnprintf@value
__vsnprintf@value:	; 4 bytes @ 0x1C
	ds   4
	global	__vsnprintf@value_1282
__vsnprintf@value_1282:	; 2 bytes @ 0x20
	ds   2
	global	__vsnprintf@base
__vsnprintf@base:	; 2 bytes @ 0x22
	ds   2
	global	__vsnprintf@width
__vsnprintf@width:	; 2 bytes @ 0x24
	ds   2
	global	__vsnprintf@precision
__vsnprintf@precision:	; 2 bytes @ 0x26
	ds   2
	global	__vsnprintf@idx
__vsnprintf@idx:	; 2 bytes @ 0x28
	ds   2
	global	__vsnprintf@flags
__vsnprintf@flags:	; 2 bytes @ 0x2A
	ds   2
	global	?_printf_
?_printf_:	; 2 bytes @ 0x2C
	global	printf_@format
printf_@format:	; 1 bytes @ 0x2C
	ds   7
psect	cstackBANK0,class=BANK0,space=1,noexec,lowdata
global __pcstackBANK0
__pcstackBANK0:
	global	?__ntoa_format
?__ntoa_format:	; 2 bytes @ 0x0
	global	__ntoa_format@out
__ntoa_format@out:	; 2 bytes @ 0x0
	ds   2
	global	__ntoa_format@buffer
__ntoa_format@buffer:	; 2 bytes @ 0x2
	ds   2
	global	__ntoa_format@idx
__ntoa_format@idx:	; 2 bytes @ 0x4
	ds   2
	global	__ntoa_format@maxlen
__ntoa_format@maxlen:	; 2 bytes @ 0x6
	ds   2
	global	__ntoa_format@buf
__ntoa_format@buf:	; 1 bytes @ 0x8
	ds   1
	global	__ntoa_format@len
__ntoa_format@len:	; 2 bytes @ 0x9
	ds   2
	global	__ntoa_format@negative
__ntoa_format@negative:	; 1 bytes @ 0xB
	ds   1
	global	__ntoa_format@base
__ntoa_format@base:	; 2 bytes @ 0xC
	ds   2
	global	__ntoa_format@prec
__ntoa_format@prec:	; 2 bytes @ 0xE
	ds   2
	global	__ntoa_format@width
__ntoa_format@width:	; 2 bytes @ 0x10
	ds   2
	global	__ntoa_format@flags
__ntoa_format@flags:	; 2 bytes @ 0x12
	ds   2
	global	?__ntoa_long
?__ntoa_long:	; 2 bytes @ 0x14
	global	__ntoa_long@out
__ntoa_long@out:	; 2 bytes @ 0x14
	ds   2
	global	__ntoa_long@buffer
__ntoa_long@buffer:	; 2 bytes @ 0x16
	ds   2
	global	__ntoa_long@idx
__ntoa_long@idx:	; 2 bytes @ 0x18
	ds   2
	global	__ntoa_long@maxlen
__ntoa_long@maxlen:	; 2 bytes @ 0x1A
	ds   2
	global	__ntoa_long@value
__ntoa_long@value:	; 4 bytes @ 0x1C
	ds   4
	global	__ntoa_long@negative
__ntoa_long@negative:	; 1 bytes @ 0x20
	ds   1
	global	__ntoa_long@base
__ntoa_long@base:	; 4 bytes @ 0x21
	ds   4
	global	__ntoa_long@prec
__ntoa_long@prec:	; 2 bytes @ 0x25
	ds   2
	global	__ntoa_long@width
__ntoa_long@width:	; 2 bytes @ 0x27
	ds   2
	global	__ntoa_long@flags
__ntoa_long@flags:	; 2 bytes @ 0x29
	ds   2
	global	__ntoa_long@buf
__ntoa_long@buf:	; 32 bytes @ 0x2B
	ds   32
	global	__ntoa_long$1253
__ntoa_long$1253:	; 2 bytes @ 0x4B
	ds   2
	global	__ntoa_long$1254
__ntoa_long$1254:	; 2 bytes @ 0x4D
	ds   2
	global	__ntoa_long@digit
__ntoa_long@digit:	; 1 bytes @ 0x4F
	ds   1
	global	__ntoa_long@len
__ntoa_long@len:	; 2 bytes @ 0x50
	ds   2
	global	?__vsnprintf
?__vsnprintf:	; 2 bytes @ 0x52
	global	__vsnprintf@out
__vsnprintf@out:	; 2 bytes @ 0x52
	ds   2
	global	__vsnprintf@buffer
__vsnprintf@buffer:	; 2 bytes @ 0x54
	ds   2
	global	__vsnprintf@maxlen
__vsnprintf@maxlen:	; 2 bytes @ 0x56
	ds   2
	global	__vsnprintf@format
__vsnprintf@format:	; 1 bytes @ 0x58
	ds   1
	global	__vsnprintf@va
__vsnprintf@va:	; 2 bytes @ 0x59
	ds   2
?_clock_print:	; 1 bytes @ 0x5B
	global	clock_print@clk
clock_print@clk:	; 1 bytes @ 0x5B
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
	global	Uart_InterruptHandler@c_691
Uart_InterruptHandler@c_691:	; 1 bytes @ 0x6
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
	global	?___awmod
?___awmod:	; 2 bytes @ 0xC
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
	global	button_get_event@btn
button_get_event@btn:	; 1 bytes @ 0xC
	global	__is_digit$1189
__is_digit$1189:	; 1 bytes @ 0xC
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
	global	__strnlen_s@str
__strnlen_s@str:	; 2 bytes @ 0xC
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0xC
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
	global	__strnlen_s@maxsize
__strnlen_s@maxsize:	; 2 bytes @ 0xE
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0xE
??_Gpio_Read:	; 1 bytes @ 0xE
??_Buffer_Init:	; 1 bytes @ 0xE
	ds   1
??_App_Task:	; 1 bytes @ 0xF
??_Gpio_Init:	; 1 bytes @ 0xF
??_Gpio_Write:	; 1 bytes @ 0xF
??_Buffer_Add:	; 1 bytes @ 0xF
??_Buffer_Get:	; 1 bytes @ 0xF
	ds   1
	global	Buffer_Add@next_head
Buffer_Add@next_head:	; 1 bytes @ 0x10
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x10
	global	__strnlen_s@s
__strnlen_s@s:	; 2 bytes @ 0x10
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x10
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x10
??___awmod:	; 1 bytes @ 0x10
??__strnlen_s:	; 1 bytes @ 0x10
??__atoi:	; 1 bytes @ 0x10
	ds   1
?_Uart_Read:	; 1 bytes @ 0x11
	global	__putchar@c
__putchar@c:	; 1 bytes @ 0x11
	global	Uart_Read@data
Uart_Read@data:	; 1 bytes @ 0x11
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x11
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
?_button_update:	; 1 bytes @ 0x13
	global	clock_init@h
clock_init@h:	; 1 bytes @ 0x13
	global	button_update@btn
button_update@btn:	; 1 bytes @ 0x13
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
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x14
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x14
	global	level_write@gpio
level_write@gpio:	; 2 bytes @ 0x14
??_button_update:	; 1 bytes @ 0x14
??___llmod:	; 1 bytes @ 0x14
??___lldiv:	; 1 bytes @ 0x14
	ds   1
	global	clock_init@s
clock_init@s:	; 1 bytes @ 0x15
	global	button_init@gpio
button_init@gpio:	; 2 bytes @ 0x15
	global	__out_buffer@idx
__out_buffer@idx:	; 2 bytes @ 0x15
__out_null@idx:	; 2 bytes @ 0x15
__out_char@idx:	; 2 bytes @ 0x15
	global	__out_fct@idx
__out_fct@idx:	; 2 bytes @ 0x15
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x15
??_Uart_Start:	; 1 bytes @ 0x15
	ds   1
	global	button_update@state
button_update@state:	; 1 bytes @ 0x16
	global	level_write@level
level_write@level:	; 1 bytes @ 0x16
??_clock_init:	; 1 bytes @ 0x16
	ds   1
	global	button_init@polarity
button_init@polarity:	; 1 bytes @ 0x17
	global	level_write@gpio_level
level_write@gpio_level:	; 1 bytes @ 0x17
	global	__out_buffer@maxlen
__out_buffer@maxlen:	; 2 bytes @ 0x17
__out_null@maxlen:	; 2 bytes @ 0x17
__out_char@maxlen:	; 2 bytes @ 0x17
	global	__out_fct@maxlen
__out_fct@maxlen:	; 2 bytes @ 0x17
??_Button_Task:	; 1 bytes @ 0x17
??_level_write:	; 1 bytes @ 0x17
	ds   1
?_display_init:	; 1 bytes @ 0x18
	global	button_init@debounce_ticks
button_init@debounce_ticks:	; 1 bytes @ 0x18
	global	display_init@display
display_init@display:	; 2 bytes @ 0x18
	ds   1
?_App_Init:	; 1 bytes @ 0x19
	global	?__out_rev
?__out_rev:	; 2 bytes @ 0x19
	global	App_Init@app
App_Init@app:	; 1 bytes @ 0x19
	global	__out_rev@out
__out_rev@out:	; 2 bytes @ 0x19
??_button_init:	; 1 bytes @ 0x19
??__out_null:	; 1 bytes @ 0x19
??__out_char:	; 1 bytes @ 0x19
??__out_fct:	; 1 bytes @ 0x19
	ds   1
	global	App_Init@clk
App_Init@clk:	; 1 bytes @ 0x1A
??_display_init:	; 1 bytes @ 0x1A
	ds   1
	global	__out_rev@buffer
__out_rev@buffer:	; 2 bytes @ 0x1B
??_App_Init:	; 1 bytes @ 0x1B
	ds   2
	global	__out_rev@idx
__out_rev@idx:	; 2 bytes @ 0x1D
	ds   1
	global	display_init@i_1104
display_init@i_1104:	; 1 bytes @ 0x1E
	ds   1
	global	display_init@i
display_init@i:	; 1 bytes @ 0x1F
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
??__ntoa_format:	; 1 bytes @ 0x2E
	ds   2
??__ntoa_long:	; 1 bytes @ 0x30
	ds   2
??__vsnprintf:	; 1 bytes @ 0x32
	ds   4
	global	printf_@buffer
printf_@buffer:	; 1 bytes @ 0x36
??_printf_:	; 1 bytes @ 0x36
	ds   1
	global	printf_@va
printf_@va:	; 2 bytes @ 0x37
	ds   2
??_clock_print:	; 1 bytes @ 0x39
	ds   3
	global	main@c
main@c:	; 1 bytes @ 0x3C
??_main:	; 1 bytes @ 0x3C
	ds   1
;!
;!Data Sizes:
;!    Strings     33
;!    Constant    70
;!    Data        145
;!    BSS         85
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     61      79
;!    BANK0           160     92     130
;!    BANK1           256     51     225
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
;!		 -> app(COMRAM[2]), 
;!
;!    App_Init@app$clock	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(BANK0[3]), 
;!
;!    App_Init@clk	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(BANK0[3]), 
;!
;!    App_Task@app	PTR struct . size(1) Largest target is 3
;!		 -> app(COMRAM[2]), 
;!
;!    App_Task@app$clock	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(BANK0[3]), 
;!
;!    _atoi@str	PTR PTR const unsigned char  size(1) Largest target is 1
;!		 -> _vsnprintf@format(BANK0[1]), 
;!
;!    btn_cfg$gpio	PTR struct . size(2) Largest target is 7
;!		 -> button_cfg(BANK0[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
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
;!		 -> button_cfg(BANK0[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
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
;!		 -> button_cfg(BANK0[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
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
;!		 -> main@c(COMRAM[1]), Uart_InterruptHandler@c_691(COMRAM[1]), 
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
;!		 -> btn_cfg(BANK0[8]), btn_dcr(COMRAM[8]), btn_inc(BANK0[8]), 
;!
;!    button_get_event@btn$gpio	PTR struct . size(2) Largest target is 7
;!		 -> button_cfg(BANK0[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
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
;!		 -> btn_cfg(BANK0[8]), btn_dcr(COMRAM[8]), btn_inc(BANK0[8]), 
;!
;!    button_init@btn$gpio	PTR struct . size(2) Largest target is 7
;!		 -> button_cfg(BANK0[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
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
;!		 -> button_cfg(BANK0[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
;!
;!    button_update@btn	PTR struct . size(1) Largest target is 8
;!		 -> btn_cfg(BANK0[8]), btn_dcr(COMRAM[8]), btn_inc(BANK0[8]), 
;!
;!    button_update@btn$gpio	PTR struct . size(2) Largest target is 7
;!		 -> button_cfg(BANK0[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
;!
;!    clk_display$colon_control_pin	PTR struct . size(2) Largest target is 7
;!		 -> colon_control(BANK1[7]), 
;!
;!    clk_display$colon_pin	PTR struct . size(2) Largest target is 7
;!		 -> colon(BANK1[7]), 
;!
;!    clk_display$control	PTR struct .[4] size(2) Largest target is 28
;!		 -> control(BANK1[28]), 
;!
;!    clk_display$data	PTR struct .[7] size(2) Largest target is 49
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
;!    control$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), LATE(BIGSFR[1]), 
;!
;!    control$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), PORTE(BIGSFR[1]), 
;!
;!    control$tris	PTR volatile unsigned char  size(2) Largest target is 1
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
;!    display_init@display	PTR struct . size(2) Largest target is 11
;!		 -> clk_display(BANK1[11]), 
;!
;!    display_init@display$colon_control_pin	PTR struct . size(2) Largest target is 7
;!		 -> colon_control(BANK1[7]), 
;!
;!    display_init@display$colon_pin	PTR struct . size(2) Largest target is 7
;!		 -> colon(BANK1[7]), 
;!
;!    display_init@display$control	PTR struct .[4] size(2) Largest target is 28
;!		 -> control(BANK1[28]), 
;!
;!    display_init@display$data	PTR struct .[7] size(2) Largest target is 49
;!		 -> data(BANK1[49]), 
;!
;!    display_task@display$colon_control_pin	PTR struct . size(2) Largest target is 7
;!		 -> colon_control(BANK1[7]), 
;!
;!    display_task@display$colon_pin	PTR struct . size(2) Largest target is 7
;!		 -> colon(BANK1[7]), 
;!
;!    display_task@display$control	PTR struct .[4] size(2) Largest target is 28
;!		 -> control(BANK1[28]), 
;!
;!    display_task@display$data	PTR struct .[7] size(2) Largest target is 49
;!		 -> data(BANK1[49]), 
;!
;!    display_update@display$colon_control_pin	PTR struct . size(2) Largest target is 7
;!		 -> colon_control(BANK1[7]), 
;!
;!    display_update@display$colon_pin	PTR struct . size(2) Largest target is 7
;!		 -> colon(BANK1[7]), 
;!
;!    display_update@display$control	PTR struct .[4] size(2) Largest target is 28
;!		 -> control(BANK1[28]), 
;!
;!    display_update@display$data	PTR struct .[7] size(2) Largest target is 49
;!		 -> data(BANK1[49]), 
;!
;!    F291$arg	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    F291$fct	PTR FTN(unsigned char ,PTR void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    Gpio_Init@gpio	PTR struct . size(2) Largest target is 49
;!		 -> button_cfg(BANK0[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), colon(BANK1[7]), 
;!		 -> colon_control(BANK1[7]), control(BANK1[28]), data(BANK1[49]), rx(BANK1[7]), 
;!		 -> tx(BANK1[7]), 
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
;!		 -> button_cfg(BANK0[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
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
;!		 -> data(BANK1[49]), 
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
;!		 -> data(BANK1[49]), 
;!
;!    _ntoa_format@buf	PTR unsigned char  size(1) Largest target is 32
;!		 -> _ntoa_long@buf(BANK0[32]), 
;!
;!    _ntoa_format@buffer	PTR unsigned char  size(2) Largest target is 2047
;!		 -> printf_@buffer(COMRAM[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    _ntoa_format@out	PTR FTN(unsigned char ,PTR void ,unsigned int ,unsigned int ,)void  size(2) Largest target is 1
;!		 -> _out_buffer(), _out_char(), _out_fct(), _out_null(), 
;!
;!    _ntoa_long@buffer	PTR unsigned char  size(2) Largest target is 2047
;!		 -> printf_@buffer(COMRAM[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    _ntoa_long@out	PTR FTN(unsigned char ,PTR void ,unsigned int ,unsigned int ,)void  size(2) Largest target is 1
;!		 -> _out_buffer(), _out_char(), _out_fct(), _out_null(), 
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
;!    _out_buffer@buffer	PTR void  size(2) Largest target is 2047
;!		 -> printf_@buffer(COMRAM[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    _out_char@buffer	PTR void  size(2) Largest target is 2047
;!		 -> printf_@buffer(COMRAM[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    _out_fct@buffer	PTR void  size(2) Largest target is 2047
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
;!    _out_null@buffer	PTR void  size(2) Largest target is 2047
;!		 -> printf_@buffer(COMRAM[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    _out_rev@buf	PTR const unsigned char  size(1) Largest target is 32
;!		 -> _ntoa_long@buf(BANK0[32]), 
;!
;!    _out_rev@buffer	PTR unsigned char  size(2) Largest target is 2047
;!		 -> printf_@buffer(COMRAM[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
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
;!    printf_@va	PTR void [1] size(2) Largest target is 2
;!		 -> ?_fctprintf(COMRAM[2]), ?_printf_(BANK1[2]), ?_snprintf_(COMRAM[2]), ?_sprintf_(COMRAM[2]), 
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
;!    S1127$0$1	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    S1127$arg	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    S1127$fct	PTR FTN(unsigned char ,PTR void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    S231$gpio	PTR struct . size(2) Largest target is 7
;!		 -> button_cfg(BANK0[7]), button_dcr(BANK1[7]), button_inc(BANK1[7]), 
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
;!    S46$colon_control_pin	PTR struct . size(2) Largest target is 7
;!		 -> colon_control(BANK1[7]), 
;!
;!    S46$colon_pin	PTR struct . size(2) Largest target is 7
;!		 -> colon(BANK1[7]), 
;!
;!    S46$control	PTR struct .[4] size(2) Largest target is 28
;!		 -> control(BANK1[28]), 
;!
;!    S46$data	PTR struct .[7] size(2) Largest target is 49
;!		 -> data(BANK1[49]), 
;!
;!    S57$rx	PTR struct . size(2) Largest target is 7
;!		 -> rx(BANK1[7]), 
;!
;!    S57$tx	PTR struct . size(2) Largest target is 7
;!		 -> tx(BANK1[7]), 
;!
;!    S69$clock	PTR struct . size(1) Largest target is 3
;!		 -> sys_clock(BANK0[3]), 
;!
;!    _strnlen_s@s	PTR const unsigned char  size(2) Largest target is 2
;!		 -> ?_fctprintf(COMRAM[2]), ?_printf_(BANK1[2]), ?_snprintf_(COMRAM[2]), ?_sprintf_(COMRAM[2]), 
;!		 -> sys_clock$hours(BANK0[1]), sys_clock$minutes(BANK0[1]), sys_clock$seconds(BANK0[1]), 
;!
;!    _strnlen_s@str	PTR const unsigned char  size(2) Largest target is 2
;!		 -> ?_fctprintf(COMRAM[2]), ?_printf_(BANK1[2]), ?_snprintf_(COMRAM[2]), ?_sprintf_(COMRAM[2]), 
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
;!		 -> main@c(COMRAM[1]), 
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
;!		 -> printf_@buffer(COMRAM[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    _vsnprintf@format	PTR const unsigned char  size(1) Largest target is 17
;!		 -> STR_1(CODE[4]), STR_2(CODE[4]), STR_3(CODE[4]), STR_4(CODE[4]), 
;!		 -> STR_5(CODE[17]), 
;!
;!    _vsnprintf@out	PTR FTN(unsigned char ,PTR void ,unsigned int ,unsigned int ,)void  size(2) Largest target is 1
;!		 -> _out_buffer(), _out_char(), _out_fct(), _out_null(), 
;!
;!    _vsnprintf@p	PTR const unsigned char  size(2) Largest target is 2
;!		 -> ?_fctprintf(COMRAM[2]), ?_printf_(BANK1[2]), ?_snprintf_(COMRAM[2]), ?_sprintf_(COMRAM[2]), 
;!		 -> sys_clock$hours(BANK0[1]), sys_clock$minutes(BANK0[1]), sys_clock$seconds(BANK0[1]), 
;!
;!    _vsnprintf@va	PTR PTR void  size(2) Largest target is 2
;!		 -> fctprintf@va(COMRAM[2]), printf_@va(COMRAM[2]), snprintf_@va(COMRAM[2]), sprintf_@va(COMRAM[2]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_clock_print
;!    _display_init->_level_write
;!    _level_write->_Gpio_Write
;!    _clock_print->_printf_
;!    _printf_->__vsnprintf
;!    __vsnprintf->__ntoa_long
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
;!    _main->_printf_
;!    _clock_print->_printf_
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
;! (0) _main                                                 1     1      0   42304
;!                                             60 COMRAM     1     1      0
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
;! (1) _display_init                                         8     6      2    1398
;!                                             24 COMRAM     8     6      2
;!                          _Gpio_Init
;!                        _level_write
;! ---------------------------------------------------------------------------------
;! (2) _level_write                                          4     1      3     486
;!                                             20 COMRAM     4     1      3
;!                         _Gpio_Write
;! ---------------------------------------------------------------------------------
;! (3) _Gpio_Write                                           8     5      3     282
;!                                             12 COMRAM     8     5      3
;! ---------------------------------------------------------------------------------
;! (1) _clock_update_1s                                      2     1      1     384
;!                                             12 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _clock_print                                          4     3      1   17864
;!                                             57 COMRAM     3     3      0
;!                                             91 BANK0      1     0      1
;!                            _printf_
;! ---------------------------------------------------------------------------------
;! (2) _printf_                                             12     5      7   17732
;!                                             54 COMRAM     3     3      0
;!                                             44 BANK1      7     0      7
;!                         __vsnprintf
;! ---------------------------------------------------------------------------------
;! (3) __vsnprintf                                          57    48      9   17388
;!                                             50 COMRAM     4     4      0
;!                                             82 BANK0      9     0      9
;!                                              0 BANK1     44    44      0
;!                              __atoi
;!                          __is_digit
;!                         __ntoa_long
;!                        __out_buffer *
;!                          __out_char *
;!                           __out_fct *
;!                          __out_null *
;!                         __strnlen_s
;! ---------------------------------------------------------------------------------
;! (4) __strnlen_s                                           6     2      4     234
;!                                             12 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (4) __ntoa_long                                          64    41     23    7299
;!                                             48 COMRAM     2     2      0
;!                                             20 BANK0     62    39     23
;!                            ___lldiv
;!                            ___llmod
;!                       __ntoa_format
;! ---------------------------------------------------------------------------------
;! (5) __ntoa_format                                        22     2     20    4953
;!                                             46 COMRAM     2     2      0
;!                                              0 BANK0     20     0     20
;!                           __out_rev
;! ---------------------------------------------------------------------------------
;! (6) __out_rev                                            21     6     15    2295
;!                                             25 COMRAM    21     6     15
;!                        __out_buffer *
;!                          __out_char *
;!                           __out_fct *
;!                          __out_null *
;! ---------------------------------------------------------------------------------
;! (7) __out_null                                            7     0      7       0
;!                                             18 COMRAM     7     0      7
;! ---------------------------------------------------------------------------------
;! (7) __out_fct                                             7     0      7     354
;!                                             18 COMRAM     7     0      7
;! ---------------------------------------------------------------------------------
;! (7) __out_char                                            7     0      7     555
;!                                             18 COMRAM     7     0      7
;!                           __putchar
;! ---------------------------------------------------------------------------------
;! (8) __putchar                                             1     1      0     471
;!                                             17 COMRAM     1     1      0
;!                         _Buffer_Add
;! ---------------------------------------------------------------------------------
;! (9) _Buffer_Add                                           5     2      3     402
;!                                             12 COMRAM     5     2      3
;! ---------------------------------------------------------------------------------
;! (7) __out_buffer                                          7     0      7     210
;!                                             18 COMRAM     7     0      7
;! ---------------------------------------------------------------------------------
;! (5) ___llmod                                              9     1      8     336
;!                                             12 COMRAM     9     1      8
;! ---------------------------------------------------------------------------------
;! (5) ___lldiv                                             13     5      8     354
;!                                             12 COMRAM    13     5      8
;! ---------------------------------------------------------------------------------
;! (4) __atoi                                                7     5      2     384
;!                                             14 COMRAM     7     5      2
;!                          __is_digit
;! ---------------------------------------------------------------------------------
;! (5) __is_digit                                            2     2      0     192
;!                                             12 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _clock_init                                           4     0      4     918
;!                                             18 COMRAM     4     0      4
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (2) ___awmod                                              6     2      4     642
;!                                             12 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _Uart_Start                                           2     1      1     486
;!                                             20 COMRAM     1     0      1
;!                        _Buffer_Init
;!                          _Gpio_Init
;! ---------------------------------------------------------------------------------
;! (2) _Buffer_Init                                          2     0      2      96
;!                                             12 COMRAM     2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _Uart_Read                                            1     0      1     396
;!                                             17 COMRAM     1     0      1
;!                         _Buffer_Get
;! ---------------------------------------------------------------------------------
;! (2) _Buffer_Get                                           5     2      3     348
;!                                             12 COMRAM     5     2      3
;! ---------------------------------------------------------------------------------
;! (1) _Uart_Init                                            5     4      1      48
;!                                             12 COMRAM     5     4      1
;! ---------------------------------------------------------------------------------
;! (1) _Button_Task                                          0     0      0     966
;!                      _button_update
;! ---------------------------------------------------------------------------------
;! (2) _button_update                                        4     3      1     966
;!                                             19 COMRAM     4     3      1
;!                          _Gpio_Read
;! ---------------------------------------------------------------------------------
;! (3) _Gpio_Read                                            7     5      2      96
;!                                             12 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (1) _App_Task                                             3     2      1     996
;!                                             14 COMRAM     3     2      1
;!                   _button_get_event
;! ---------------------------------------------------------------------------------
;! (2) _button_get_event                                     2     1      1     150
;!                                             12 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _App_Init                                             2     0      2     966
;!                                             25 COMRAM     2     0      2
;!                        _button_init
;! ---------------------------------------------------------------------------------
;! (2) _button_init                                          5     0      5     828
;!                                             20 COMRAM     5     0      5
;!                          _Gpio_Init
;! ---------------------------------------------------------------------------------
;! (3) _Gpio_Init                                            8     5      3     294
;!                                             12 COMRAM     8     5      3
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 9
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (10) _ISR                                                 5     5      0     801
;!                                              7 COMRAM     5     5      0
;!              _Uart_InterruptHandler
;!                    _system_tick_1ms
;! ---------------------------------------------------------------------------------
;! (11) _system_tick_1ms                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (11) _Uart_InterruptHandler                               2     2      0     801
;!                                              5 COMRAM     2     2      0
;!                       i2_Buffer_Add
;!                       i2_Buffer_Get
;! ---------------------------------------------------------------------------------
;! (12) i2_Buffer_Get                                        5     2      3     348
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
;!BANK1              256     51     225     87.9%
;!BITBANK0           160      0       0      0.0%
;!BANK0              160     92     130     81.2%
;!BITCOMRAM           94      0       0      0.0%
;!COMRAM              94     61      79     84.0%
;!BITBIGSFRh          82      0       0      0.0%
;!BITBIGSFRllh        41      0       0      0.0%
;!BITBIGSFRlll        33      0       0      0.0%
;!BITBIGSFRlh          1      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0     430      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 147 in file "app/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  c               1   60[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   82[None  ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pcl, pclath, pclatu, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
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
	line	147
global __ptext0
__ptext0:
psect	text0
	file	"app/main.c"
	line	147
	
_main:
;incstack = 0
	callstack 19
	line	150
	
l5559:
		movlw	low(_app)
	movwf	((c:App_Init@app))^00h,c

		movlw	low(_sys_clock)
	movwf	((c:App_Init@clk))^00h,c

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
	
l5561:
	call	_timer0_init	;wreg free
	line	156
	
l5563:
	call	_timer0_start	;wreg free
	line	158
	
l5565:
		movlw	low(_clk_display)
	movwf	((c:display_init@display))^00h,c
	movlw	high(_clk_display)
	movwf	((c:display_init@display+1))^00h,c

	call	_display_init	;wreg free
	line	161
	
l5567:
	call	_isr_init	;wreg free
	line	163
	
l5569:
		movlw	low(_sys_clock)
	movwf	((c:clock_init@clk))^00h,c

	movlw	low(017h)
	movwf	((c:clock_init@h))^00h,c
	movlw	low(03Bh)
	movwf	((c:clock_init@m))^00h,c
	movlw	low(037h)
	movwf	((c:clock_init@s))^00h,c
	call	_clock_init	;wreg free
	line	168
	
l5571:
	call	_system_tick_task	;wreg free
	line	169
	
l5573:
		movlw	low(_app)
	movwf	((c:App_Task@app))^00h,c

	call	_App_Task	;wreg free
	line	171
	
l5575:
	call	_system_tick_is_1ms	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u8021
	goto	u8020
u8021:
	goto	l5579
u8020:
	line	173
	
l5577:
	call	_Button_Task	;wreg free
	line	176
	
l5579:
	call	_system_tick_is_1s	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u8031
	goto	u8030
u8031:
	goto	l5587
u8030:
	
l5581:
	movf	(0+((c:_app)+01h))^00h,c,w
	btfss	status,2
	goto	u8041
	goto	u8040
u8041:
	goto	l5587
u8040:
	line	178
	
l5583:
		movlw	low(_sys_clock)
	movwf	((c:clock_update_1s@clk))^00h,c

	call	_clock_update_1s	;wreg free
	line	179
	
l5585:
		movlw	low(_sys_clock)
	movlb	0	; () banked
	movwf	((clock_print@clk))&0ffh

	call	_clock_print	;wreg free
	line	182
	
l5587:
		decf	(0+((c:_app)+01h))^00h,c,w
	btfss	status,2
	goto	u8051
	goto	u8050

u8051:
	goto	l5591
u8050:
	line	184
	
l5589:
		movlw	low(STR_1)
	movlb	1	; () banked
	movwf	((printf_@format))&0ffh

	call	_printf_	;wreg free
	line	187
	
l5591:
		movlw	2
	xorwf	(0+((c:_app)+01h))^00h,c,w
	btfss	status,2
	goto	u8061
	goto	u8060

u8061:
	goto	l5595
u8060:
	line	189
	
l5593:
		movlw	low(STR_2)
	movlb	1	; () banked
	movwf	((printf_@format))&0ffh

	call	_printf_	;wreg free
	line	191
	
l5595:
		movlw	low(main@c)
	movwf	((c:Uart_Read@data))^00h,c

	call	_Uart_Read	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u8071
	goto	u8070
u8071:
	goto	l5571
u8070:
	line	193
	
l5597:
		movlw	65
	xorwf	((c:main@c))^00h,c,w
	btfss	status,2
	goto	u8081
	goto	u8080

u8081:
	goto	l5601
u8080:
	line	195
	
l5599:
		movlw	low(STR_3)
	movlb	1	; () banked
	movwf	((printf_@format))&0ffh

	call	_printf_	;wreg free
	line	196
	goto	l5571
	line	197
	
l5601:
		movlw	66
	xorwf	((c:main@c))^00h,c,w
	btfss	status,2
	goto	u8091
	goto	u8090

u8091:
	goto	l5571
u8090:
	line	199
	
l5603:
		movlw	low(STR_4)
	movlb	1	; () banked
	movwf	((printf_@format))&0ffh

	call	_printf_	;wreg free
	goto	l5571
	global	start
	goto	start
	callstack 0
	line	204
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
	
l5411:
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
	
l5401:
	clrf	((c:4053))^0f00h,c	;volatile
	line	9
	bcf	((c:4053))^0f00h,c,6	;volatile
	line	10
	bcf	((c:4053))^0f00h,c,5	;volatile
	line	11
	bcf	((c:4053))^0f00h,c,3	;volatile
	line	12
	
l5403:
	movf	((c:4053))^0f00h,c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(01h & ((1<<3)-1))<<0
	movwf	((c:4053))^0f00h,c	;volatile
	line	14
	
l5405:
	call	_timer0_reload	;wreg free
	line	16
	
l5407:
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	17
	
l5409:
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
	
l5301:
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
	
l5441:
	goto	l293
	line	20
	
l5443:
	decf	((c:_pending_ticks))^00h,c	;volatile
	line	21
	
l5445:
	movlw	low(01h)
	movwf	((c:_flag_1ms))^00h,c
	line	22
	
l5447:
	infsnz	((c:_tick_1ms))^00h,c
	incf	((c:_tick_1ms+1))^00h,c
	line	24
	
l5449:
		movlw	232
	subwf	 ((c:_tick_1ms))^00h,c,w
	movlw	3
	subwfb	((c:_tick_1ms+1))^00h,c,w
	btfss	status,0
	goto	u7781
	goto	u7780

u7781:
	goto	l293
u7780:
	line	26
	
l5451:
	clrf	((c:_tick_1ms+1))^00h,c
	movlw	low(0)
	movwf	((c:_tick_1ms))^00h,c
	line	27
	movlw	low(01h)
	movwf	((c:_one_second_flag))^00h,c	;volatile
	line	29
	
l293:
	line	18
	movf	((c:_pending_ticks))^00h,c,w	;volatile
	btfss	status,2
	goto	u7791
	goto	u7790
u7791:
	goto	l5443
u7790:
	line	30
	
l297:
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
	
l5515:
	movf	((c:_one_second_flag))^00h,c,w	;volatile
	btfsc	status,2
	goto	u7921
	goto	u7920
u7921:
	goto	l5523
u7920:
	line	46
	
l5517:
	clrf	((c:_one_second_flag))^00h,c	;volatile
	line	47
	
l5519:
	movlw	(01h)&0ffh
	goto	l305
	line	50
	
l5523:
	movlw	(0)&0ffh
	line	51
	
l305:
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
	
l5501:
	movf	((c:_flag_1ms))^00h,c,w
	btfsc	status,2
	goto	u7911
	goto	u7910
u7911:
	goto	l5509
u7910:
	line	36
	
l5503:
	clrf	((c:_flag_1ms))^00h,c
	line	37
	
l5505:
	movlw	(01h)&0ffh
	goto	l301
	line	39
	
l5509:
	movlw	(0)&0ffh
	line	40
	
l301:
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
	
l5437:
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
	global	_display_init

;; *************** function _display_init *****************
;; Defined at:
;;		line 37 in file "src/ss_display.c"
;; Parameters:    Size  Location     Type
;;  display         2   24[COMRAM] PTR struct .
;;		 -> clk_display(11), 
;; Auto vars:     Size  Location     Type
;;  i               1   30[COMRAM] unsigned char 
;;  i               1   31[COMRAM] unsigned char 
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
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_Gpio_Init
;;		_level_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=0
	file	"src/ss_display.c"
	line	37
global __ptext8
__ptext8:
psect	text8
	file	"src/ss_display.c"
	line	37
	
_display_init:
;incstack = 0
	callstack 25
	line	39
	
l5413:
	lfsr	2,01h
	movf	((c:display_init@display))^00h,c,w
	addwf	fsr2l
	movf	((c:display_init@display+1))^00h,c,w
	addwfc	fsr2h
	movf	indf2,w
	movwf	((c:_display_type_flag))^00h,c
	line	41
	
l5415:
	clrf	((c:display_init@i))^00h,c
	line	43
	
l5421:
	movf	((c:display_init@i))^00h,c,w
	mullw	031h
	movff	prodl,??_display_init+0
	movff	prodh,??_display_init+0+1
	lfsr	2,03h
	movf	((c:display_init@display))^00h,c,w
	addwf	fsr2l
	movf	((c:display_init@display+1))^00h,c,w
	addwfc	fsr2h
	movff	postinc2,??_display_init+2
	movff	postdec2,??_display_init+2+1
	movf	(??_display_init+0)^00h,c,w
	addwf	(??_display_init+2)^00h,c,w
	movwf	((c:Gpio_Init@gpio))^00h,c
	movf	(??_display_init+0+1)^00h,c,w
	addwfc	(??_display_init+2+1)^00h,c,w
	movwf	1+((c:Gpio_Init@gpio))^00h,c
	movlw	low(0)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	44
	movf	((c:display_init@i))^00h,c,w
	mullw	031h
	movff	prodl,??_display_init+0
	movff	prodh,??_display_init+0+1
	lfsr	2,03h
	movf	((c:display_init@display))^00h,c,w
	addwf	fsr2l
	movf	((c:display_init@display+1))^00h,c,w
	addwfc	fsr2h
	movff	postinc2,??_display_init+2
	movff	postdec2,??_display_init+2+1
	movf	(??_display_init+0)^00h,c,w
	addwf	(??_display_init+2)^00h,c,w
	movwf	((c:level_write@gpio))^00h,c
	movf	(??_display_init+0+1)^00h,c,w
	addwfc	(??_display_init+2+1)^00h,c,w
	movwf	1+((c:level_write@gpio))^00h,c
	movlw	low(0)
	movwf	((c:level_write@level))^00h,c
	call	_level_write	;wreg free
	line	45
	
l5423:
	incf	((c:display_init@i))^00h,c
	
l5425:
		movlw	07h-1
	cpfsgt	((c:display_init@i))^00h,c
	goto	u7751
	goto	u7750

u7751:
	goto	l5421
u7750:
	
l361:
	line	47
	clrf	((c:display_init@i_1104))^00h,c
	goto	l5431
	line	49
	
l5427:
	movf	((c:display_init@i_1104))^00h,c,w
	mullw	01Ch
	movff	prodl,??_display_init+0
	movff	prodh,??_display_init+0+1
	lfsr	2,05h
	movf	((c:display_init@display))^00h,c,w
	addwf	fsr2l
	movf	((c:display_init@display+1))^00h,c,w
	addwfc	fsr2h
	movff	postinc2,??_display_init+2
	movff	postdec2,??_display_init+2+1
	movf	(??_display_init+0)^00h,c,w
	addwf	(??_display_init+2)^00h,c,w
	movwf	((c:Gpio_Init@gpio))^00h,c
	movf	(??_display_init+0+1)^00h,c,w
	addwfc	(??_display_init+2+1)^00h,c,w
	movwf	1+((c:Gpio_Init@gpio))^00h,c
	movlw	low(0)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	50
	
l5429:
	incf	((c:display_init@i_1104))^00h,c
	
l5431:
	lfsr	2,02h
	movf	((c:display_init@display))^00h,c,w
	addwf	fsr2l
	movf	((c:display_init@display+1))^00h,c,w
	addwfc	fsr2h
		movf	postinc2,w
	subwf	((c:display_init@i_1104))^00h,c,w
	btfss	status,0
	goto	u7761
	goto	u7760

u7761:
	goto	l5427
u7760:
	line	52
	
l5433:
	movff	(c:display_init@display),fsr2l
	movff	(c:display_init@display+1),fsr2h
	decf	postinc2,w
	btfss	status,2
	goto	u7771
	goto	u7770

u7771:
	goto	l366
u7770:
	line	54
	
l5435:
	lfsr	2,07h
	movf	((c:display_init@display))^00h,c,w
	addwf	fsr2l
	movf	((c:display_init@display+1))^00h,c,w
	addwfc	fsr2h
	movff	postinc2,(c:Gpio_Init@gpio)
	movff	postdec2,(c:Gpio_Init@gpio+1)
	movlw	low(0)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	55
	lfsr	2,09h
	movf	((c:display_init@display))^00h,c,w
	addwf	fsr2l
	movf	((c:display_init@display+1))^00h,c,w
	addwfc	fsr2h
	movff	postinc2,(c:Gpio_Init@gpio)
	movff	postdec2,(c:Gpio_Init@gpio+1)
	movlw	low(0)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	57
	
l366:
	return	;funcret
	callstack 0
GLOBAL	__end_of_display_init
	__end_of_display_init:
	signat	_display_init,4217
	global	_level_write

;; *************** function _level_write *****************
;; Defined at:
;;		line 21 in file "src/ss_display.c"
;; Parameters:    Size  Location     Type
;;  gpio            2   20[COMRAM] PTR struct .
;;		 -> data(49), 
;;  level           1   22[COMRAM] enum E64
;; Auto vars:     Size  Location     Type
;;  gpio_level      1   23[COMRAM] enum E40
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
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
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_Gpio_Write
;; This function is called by:
;;		_display_init
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0
	line	21
global __ptext9
__ptext9:
psect	text9
	file	"src/ss_display.c"
	line	21
	
_level_write:
;incstack = 0
	callstack 25
	line	25
	
l5303:
		decf	((c:_display_type_flag))^00h,c,w
	btfss	status,2
	goto	u7601
	goto	u7600

u7601:
	goto	l5309
u7600:
	line	27
	
l5305:
	movlw	low(01h)
	movwf	((c:level_write@level))^00h,c
	movf	((c:level_write@level))^00h,c,w
	btfsc	status,2
	goto	u7611
	goto	u7610
u7611:
	movlw	1
	goto	u7620
u7610:
	movlw	0
u7620:
	movwf	((c:level_write@gpio_level))^00h,c
	line	28
	
l5307:
		movff	(c:level_write@gpio),(c:Gpio_Write@gpio)
	movff	(c:level_write@gpio+1),(c:Gpio_Write@gpio+1)

	movff	(c:level_write@gpio_level),(c:Gpio_Write@level)
	call	_Gpio_Write	;wreg free
	line	29
	goto	l357
	line	32
	
l5309:
	movlw	low(0)
	movwf	((c:level_write@level))^00h,c
	movf	((c:level_write@level))^00h,c,w
	btfsc	status,2
	goto	u7631
	goto	u7630
u7631:
	movlw	1
	goto	u7640
u7630:
	movlw	0
u7640:
	movwf	((c:level_write@gpio_level))^00h,c
	goto	l5307
	line	35
	
l357:
	return	;funcret
	callstack 0
GLOBAL	__end_of_level_write
	__end_of_level_write:
	signat	_level_write,8313
	global	_Gpio_Write

;; *************** function _Gpio_Write *****************
;; Defined at:
;;		line 16 in file "src/gpio.c"
;; Parameters:    Size  Location     Type
;;  gpio            2   12[COMRAM] PTR struct .
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
;;		_display_task
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	file	"src/gpio.c"
	line	16
global __ptext10
__ptext10:
psect	text10
	file	"src/gpio.c"
	line	16
	
_Gpio_Write:
;incstack = 0
	callstack 25
	line	18
	
l4909:
		decf	((c:Gpio_Write@level))^00h,c,w
	btfss	status,2
	goto	u6801
	goto	u6800

u6801:
	goto	l4913
u6800:
	line	20
	
l4911:
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
	goto	u6814
u6815:
	bcf	status,0
	rlcf	((??_Gpio_Write+1))^00h,c
u6814:
	decfsz	((??_Gpio_Write+0))^00h,c
	goto	u6815
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
	goto	l153
	line	24
	
l4913:
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
	goto	u6824
u6825:
	bcf	status,0
	rlcf	((??_Gpio_Write+1))^00h,c
u6824:
	decfsz	((??_Gpio_Write+0))^00h,c
	goto	u6825
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
	
l153:
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
psect	text11,class=CODE,space=0,reloc=2,group=0
	file	"src/clock.c"
	line	11
global __ptext11
__ptext11:
psect	text11
	file	"src/clock.c"
	line	11
	
_clock_update_1s:
;incstack = 0
	callstack 27
	line	13
	
l5527:
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
	goto	u7931
	goto	u7930

u7931:
	goto	l316
u7930:
	line	17
	
l5529:
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
	goto	u7941
	goto	u7940

u7941:
	goto	l316
u7940:
	line	22
	
l5531:
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
	goto	u7951
	goto	u7950

u7951:
	goto	l316
u7950:
	line	27
	
l5533:
	movf	((c:clock_update_1s@clk))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	31
	
l316:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clock_update_1s
	__end_of_clock_update_1s:
	signat	_clock_update_1s,4217
	global	_clock_print

;; *************** function _clock_print *****************
;; Defined at:
;;		line 33 in file "src/clock.c"
;; Parameters:    Size  Location     Type
;;  clk             1   91[BANK0 ] PTR const struct .
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
;;      Params:         0       1       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:         3       1       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 11
;; This function calls:
;;		_printf_
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0
	line	33
global __ptext12
__ptext12:
psect	text12
	file	"src/clock.c"
	line	33
	
_clock_print:
;incstack = 0
	callstack 19
	line	35
	
l5535:
		movlw	low(STR_5)
	movlb	1	; () banked
	movwf	((printf_@format))&0ffh

	movlb	0	; () banked
	movf	((clock_print@clk))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_clock_print+0)^00h,c
	movf	((??_clock_print+0))^00h,c,w
	movlb	1	; () banked
	movwf	(0+(?_printf_+01h))&0ffh
	clrf	(1+(?_printf_+01h))&0ffh
	movlb	0	; () banked
	movf	((clock_print@clk))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_clock_print+1)^00h,c
	movf	((??_clock_print+1))^00h,c,w
	movlb	1	; () banked
	movwf	(0+(?_printf_+03h))&0ffh
	clrf	(1+(?_printf_+03h))&0ffh
	movlb	0	; () banked
	movf	((clock_print@clk))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_clock_print+2)^00h,c
	movf	((??_clock_print+2))^00h,c,w
	movlb	1	; () banked
	movwf	(0+(?_printf_+05h))&0ffh
	clrf	(1+(?_printf_+05h))&0ffh
	call	_printf_	;wreg free
	line	39
	
l319:
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
;;  format          1   44[BANK1 ] PTR const unsigned char 
;;		 -> STR_5(17), STR_4(4), STR_3(4), STR_2(4), 
;;		 -> STR_1(4), 
;; Auto vars:     Size  Location     Type
;;  va              2   55[COMRAM] PTR void [1]
;;		 -> ?_fctprintf(2), ?_snprintf_(2), ?_sprintf_(2), ?_printf_(2), 
;;  ret             2    0        const int 
;;  buffer          1   54[COMRAM] unsigned char [1]
;; Return value:  Size  Location     Type
;;                  2   44[BANK1 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pcl, pclath, pclatu, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       7       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       7       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		__vsnprintf
;; This function is called by:
;;		_main
;;		_clock_print
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=0
	file	"external/printf/printf.c"
	line	862
global __ptext13
__ptext13:
psect	text13
	file	"external/printf/printf.c"
	line	862
	
_printf_:
;incstack = 0
	callstack 26
	line	865
	
l5223:
		movlw	low(?_printf_+01h)
	movwf	((c:printf_@va))^00h,c
	movlw	high(?_printf_+01h)
	movwf	((c:printf_@va+1))^00h,c

	line	867
	
l5225:
		movlw	low(__out_char)
	movlb	0	; () banked
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
	
l636:
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
;;  out             2   82[BANK0 ] PTR FTN(unsigned char ,P
;;		 -> _out_fct(1), _out_char(1), _out_null(1), _out_buffer(1), 
;;  buffer          2   84[BANK0 ] PTR unsigned char 
;;		 -> RAM(2047), vprintf_@buffer(1), printf_@buffer(1), 
;;  maxlen          2   86[BANK0 ] const unsigned int 
;;  format          1   88[BANK0 ] PTR const unsigned char 
;;		 -> STR_5(17), STR_4(4), STR_3(4), STR_2(4), 
;;		 -> STR_1(4), 
;;  va              2   89[BANK0 ] PTR PTR void 
;;		 -> fctprintf@va(2), snprintf_@va(2), sprintf_@va(2), printf_@va(2), 
;; Auto vars:     Size  Location     Type
;;  value           2    8[BANK1 ] const unsigned int 
;;  value           2   32[BANK1 ] const int 
;;  value           4   28[BANK1 ] const long 
;;  l               2   26[BANK1 ] unsigned int 
;;  p               2   24[BANK1 ] PTR const unsigned char 
;;		 -> sys_clock$seconds(1), sys_clock$minutes(1), sys_clock$hours(1), ?_fctprintf(2), 
;;		 -> ?_snprintf_(2), ?_sprintf_(2), ?_printf_(2), 
;;  l               2   18[BANK1 ] unsigned int 
;;  base            2   34[BANK1 ] unsigned int 
;;  prec            2   16[BANK1 ] const int 
;;  w               2   22[BANK1 ] const int 
;;  flags           2   42[BANK1 ] unsigned int 
;;  idx             2   40[BANK1 ] unsigned int 
;;  precision       2   38[BANK1 ] unsigned int 
;;  width           2   36[BANK1 ] unsigned int 
;;  n               2   20[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   82[BANK0 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pcl, pclath, pclatu, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       9       0       0       0       0       0       0       0
;;      Locals:         0       0      44       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:         4       9      44       0       0       0       0       0       0
;;Total ram usage:       57 bytes
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
psect	text14,class=CODE,space=0,reloc=2,group=0
	line	577
global __ptext14
__ptext14:
psect	text14
	file	"external/printf/printf.c"
	line	577
	
__vsnprintf:
;incstack = 0
	callstack 19
	line	580
	
l4925:
	movlb	1	; () banked
	clrf	((__vsnprintf@idx+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@idx))&0ffh
	line	582
	
l4927:; BSR set to: 1

	movlb	0	; () banked
	movf	((__vsnprintf@buffer))&0ffh,w
iorwf	((__vsnprintf@buffer+1))&0ffh,w
	btfss	status,2
	goto	u6851
	goto	u6850

u6851:
	goto	l5211
u6850:
	line	584
	
l4929:; BSR set to: 0

		movlw	low(__out_null)
	movwf	((__vsnprintf@out))&0ffh
	movlw	high(__out_null)
	movwf	((__vsnprintf@out+1))&0ffh

	goto	l5211
	line	590
	
l4931:; BSR set to: 0

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
	goto	u6861
	goto	u6860
u6861:
	goto	l4941
u6860:
	line	592
	
l4933:; BSR set to: 0

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
	call	u6878
	goto	u6879
u6878:
	push
	
	movwf	pclath
	movf	((__vsnprintf@out))&0ffh,w
	movwf	tosl
	movf	((__vsnprintf@out+1))&0ffh,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u6879:
	
l4935:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	593
	
l4937:
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	594
	goto	l5211
	line	598
	
l4941:; BSR set to: 0

	incf	((__vsnprintf@format))&0ffh
	line	602
	
l4943:; BSR set to: 0

	movlb	1	; () banked
	clrf	((__vsnprintf@flags+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@flags))&0ffh
	goto	l4969
	line	605
	
l4945:; BSR set to: 1

	bsf	(0+(0/8)+(__vsnprintf@flags))&0ffh,(0)&7
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	
l4947:; BSR set to: 0

	movlb	1	; () banked
	clrf	((__vsnprintf@n+1))&0ffh
	movlw	low(01h)
	movwf	((__vsnprintf@n))&0ffh
	goto	l4971
	line	606
	
l4949:; BSR set to: 1

	bsf	(0+(1/8)+(__vsnprintf@flags))&0ffh,(1)&7
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l4947
	line	607
	
l4953:; BSR set to: 1

	bsf	(0+(2/8)+(__vsnprintf@flags))&0ffh,(2)&7
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l4947
	line	608
	
l4957:; BSR set to: 1

	bsf	(0+(3/8)+(__vsnprintf@flags))&0ffh,(3)&7
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l4947
	line	609
	
l4961:; BSR set to: 1

	bsf	(0+(4/8)+(__vsnprintf@flags))&0ffh,(4)&7
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l4947
	line	610
	
l4965:; BSR set to: 1

	clrf	((__vsnprintf@n+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@n))&0ffh
	goto	l4971
	line	611
	
l4969:; BSR set to: 1

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
	goto	l4957
	xorlw	35^32	; case 35
	skipnz
	goto	l4961
	xorlw	43^35	; case 43
	skipnz
	goto	l4953
	xorlw	45^43	; case 45
	skipnz
	goto	l4949
	xorlw	48^45	; case 48
	skipnz
	goto	l4945
	goto	l4965

	line	612
	
l4971:; BSR set to: 1

	movf	((__vsnprintf@n))&0ffh,w
iorwf	((__vsnprintf@n+1))&0ffh,w
	btfss	status,2
	goto	u6881
	goto	u6880

u6881:
	goto	l4969
u6880:
	line	615
	
l4973:; BSR set to: 1

	clrf	((__vsnprintf@width+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@width))&0ffh
	line	616
	
l4975:; BSR set to: 1

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
	goto	u6891
	goto	u6890
u6891:
	goto	l4979
u6890:
	line	617
	
l4977:
		movlw	low(__vsnprintf@format)
	movwf	((c:__atoi@str))^00h,c

	call	__atoi	;wreg free
	movff	0+?__atoi,(__vsnprintf@width)
	movff	1+?__atoi,(__vsnprintf@width+1)
	line	618
	goto	l4991
	line	619
	
l4979:
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
	goto	u6901
	goto	u6900
u6901:
	goto	l4991
u6900:
	line	620
	
l4981:
	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movff	indf2,??__vsnprintf+0
	movlw	low(02h)
	addwf	postinc2
	movff	indf2,??__vsnprintf+0+1
	movlw	high(02h)
	addwfc	postdec2
	movff	??__vsnprintf+0,fsr2l
	movff	??__vsnprintf+0+1,fsr2h
	movff	postinc2,(__vsnprintf@w)
	movff	postdec2,(__vsnprintf@w+1)
	line	621
	
l4983:
	movlb	1	; () banked
	btfsc	((__vsnprintf@w+1))&0ffh,7
	goto	u6910
	goto	u6911

u6911:
	goto	l510
u6910:
	line	622
	
l4985:; BSR set to: 1

	bsf	(0+(1/8)+(__vsnprintf@flags))&0ffh,(1)&7
	line	623
	
l4987:; BSR set to: 1

	movff	(__vsnprintf@w),??__vsnprintf+0
	movff	(__vsnprintf@w+1),??__vsnprintf+0+1
	comf	(??__vsnprintf+0)^00h,c
	comf	(??__vsnprintf+0+1)^00h,c
	infsnz	(??__vsnprintf+0)^00h,c
	incf	(??__vsnprintf+0+1)^00h,c
	movff	??__vsnprintf+0,(__vsnprintf@width)
	movff	??__vsnprintf+0+1,(__vsnprintf@width+1)
	line	624
	goto	l4989
	line	625
	
l510:; BSR set to: 1

	line	626
	movff	(__vsnprintf@w),(__vsnprintf@width)
	movff	(__vsnprintf@w+1),(__vsnprintf@width+1)
	line	628
	
l4989:; BSR set to: 1

	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	632
	
l4991:
	movlb	1	; () banked
	clrf	((__vsnprintf@precision+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@precision))&0ffh
	line	633
	
l4993:; BSR set to: 1

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
	goto	u6921
	goto	u6920
u6921:
	goto	l5033
u6920:
	line	634
	
l4995:; BSR set to: 1

	bsf	(0+(10/8)+(__vsnprintf@flags))&0ffh,(10)&7
	line	635
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	636
	
l4997:; BSR set to: 0

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
	goto	u6931
	goto	u6930
u6931:
	goto	l5001
u6930:
	line	637
	
l4999:
		movlw	low(__vsnprintf@format)
	movwf	((c:__atoi@str))^00h,c

	call	__atoi	;wreg free
	movff	0+?__atoi,(__vsnprintf@precision)
	movff	1+?__atoi,(__vsnprintf@precision+1)
	line	638
	goto	l5033
	line	639
	
l5001:
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
	goto	u6941
	goto	u6940
u6941:
	goto	l5033
u6940:
	line	640
	
l5003:
	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movff	indf2,??__vsnprintf+0
	movlw	low(02h)
	addwf	postinc2
	movff	indf2,??__vsnprintf+0+1
	movlw	high(02h)
	addwfc	postdec2
	movff	??__vsnprintf+0,fsr2l
	movff	??__vsnprintf+0+1,fsr2h
	movff	postinc2,(__vsnprintf@prec)
	movff	postdec2,(__vsnprintf@prec+1)
	line	641
	
l5005:
	movlb	1	; () banked
	btfsc	((__vsnprintf@prec+1))&0ffh,7
	goto	u6950
	movf	((__vsnprintf@prec+1))&0ffh,w
	bnz	u6951
	decf	((__vsnprintf@prec))&0ffh,w
	btfsc	status,0
	goto	u6951
	goto	u6950

u6951:
	goto	l517
u6950:
	
l5007:; BSR set to: 1

	clrf	((__vsnprintf@precision+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@precision))&0ffh
	goto	l5009
	
l517:; BSR set to: 1

	movff	(__vsnprintf@prec),(__vsnprintf@precision)
	movff	(__vsnprintf@prec+1),(__vsnprintf@precision+1)
	line	642
	
l5009:; BSR set to: 1

	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l5033
	line	649
	
l5011:
	movlb	1	; () banked
	bsf	(0+(8/8)+(__vsnprintf@flags))&0ffh,(8)&7
	line	650
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	651
	
l5013:; BSR set to: 0

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
	goto	u6961
	goto	u6960
u6961:
	goto	l5209
u6960:
	line	652
	
l5015:; BSR set to: 0

	movlb	1	; () banked
	bsf	(0+(9/8)+(__vsnprintf@flags))&0ffh,(9)&7
	line	653
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l5209
	line	657
	
l5017:
	movlb	1	; () banked
	bsf	(0+(7/8)+(__vsnprintf@flags))&0ffh,(7)&7
	line	658
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	659
	
l5019:; BSR set to: 0

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
	goto	u6971
	goto	u6970
u6971:
	goto	l5209
u6970:
	line	660
	
l5021:; BSR set to: 0

	movlb	1	; () banked
	bsf	(0+(6/8)+(__vsnprintf@flags))&0ffh,(6)&7
	line	661
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l5209
	line	671
	
l5023:
	movlb	1	; () banked
	bsf	(0+(9/8)+(__vsnprintf@flags))&0ffh,(9)&7
	
l530:; BSR set to: 1

	line	672
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	673
	goto	l5209
	line	680
	
l5033:
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
	goto	l5017
	xorlw	106^104	; case 106
	skipnz
	goto	l5023
	xorlw	108^106	; case 108
	skipnz
	goto	l5011
	xorlw	122^108	; case 122
	skipnz
	goto	l5023
	goto	l5209

	line	693
	
l5035:
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
	goto	u6981
	goto	u6980
u6981:
	goto	l5039
u6980:
	
l5037:
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
	goto	u6991
	goto	u6990
u6991:
	goto	l5041
u6990:
	line	694
	
l5039:
	movlb	1	; () banked
	clrf	((__vsnprintf@base+1))&0ffh
	movlw	low(010h)
	movwf	((__vsnprintf@base))&0ffh
	line	695
	goto	l5053
	line	696
	
l5041:
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
	goto	u7001
	goto	u7000
u7001:
	goto	l5045
u7000:
	line	697
	
l5043:
	movlb	1	; () banked
	clrf	((__vsnprintf@base+1))&0ffh
	movlw	low(08h)
	movwf	((__vsnprintf@base))&0ffh
	line	698
	goto	l5053
	line	699
	
l5045:
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
	goto	u7011
	goto	u7010
u7011:
	goto	l5049
u7010:
	line	700
	
l5047:
	movlb	1	; () banked
	clrf	((__vsnprintf@base+1))&0ffh
	movlw	low(02h)
	movwf	((__vsnprintf@base))&0ffh
	line	701
	goto	l5053
	line	703
	
l5049:
	movlb	1	; () banked
	clrf	((__vsnprintf@base+1))&0ffh
	movlw	low(0Ah)
	movwf	((__vsnprintf@base))&0ffh
	line	704
	
l5051:; BSR set to: 1

	bcf	(0+(4/8)+(__vsnprintf@flags))&0ffh,(4)&7
	line	707
	
l5053:; BSR set to: 1

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
	goto	u7021
	goto	u7020
u7021:
	goto	l5057
u7020:
	line	708
	
l5055:; BSR set to: 1

	bsf	(0+(5/8)+(__vsnprintf@flags))&0ffh,(5)&7
	line	712
	
l5057:; BSR set to: 1

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
	goto	u7031
	goto	u7030
u7031:
	goto	l5063
u7030:
	
l5059:; BSR set to: 1

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
	goto	u7041
	goto	u7040
u7041:
	goto	l5063
u7040:
	line	713
	
l5061:; BSR set to: 1

	movlw	low(0FFF3h)
	andwf	((__vsnprintf@flags))&0ffh
	movlw	high(0FFF3h)
	andwf	((__vsnprintf@flags+1))&0ffh
	line	717
	
l5063:; BSR set to: 1

	
	btfss	((__vsnprintf@flags+1))&0ffh,(10)&7
	goto	u7051
	goto	u7050
u7051:
	goto	l5067
u7050:
	line	718
	
l5065:; BSR set to: 1

	bcf	(0+(0/8)+(__vsnprintf@flags))&0ffh,(0)&7
	line	722
	
l5067:; BSR set to: 1

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
	goto	u7061
	goto	u7060
u7061:
	goto	l558
u7060:
	
l5069:; BSR set to: 1

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
	goto	u7071
	goto	u7070
u7071:
	goto	l556
u7070:
	
l558:; BSR set to: 1

	line	724
	
	btfss	((__vsnprintf@flags+1))&0ffh,(9)&7
	goto	u7081
	goto	u7080
u7081:
	goto	l559
u7080:
	goto	l4937
	line	730
	
l559:; BSR set to: 1

	
	btfss	((__vsnprintf@flags+1))&0ffh,(8)&7
	goto	u7091
	goto	u7090
u7091:
	goto	l561
u7090:
	line	731
	
l5073:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movff	indf2,??__vsnprintf+0
	movlw	low(04h)
	addwf	postinc2
	movff	indf2,??__vsnprintf+0+1
	movlw	high(04h)
	addwfc	postdec2
	movff	??__vsnprintf+0,fsr2l
	movff	??__vsnprintf+0+1,fsr2h
	movff	postinc2,(__vsnprintf@value)
	movff	postinc2,(__vsnprintf@value+1)
	movff	postinc2,(__vsnprintf@value+2)
	movff	postinc2,(__vsnprintf@value+3)
	line	732
	
l5075:; BSR set to: 1

	btfsc	((__vsnprintf@value+3))&0ffh,7
	goto	u7100
	movf	((__vsnprintf@value+3))&0ffh,w
	iorwf	((__vsnprintf@value+2))&0ffh,w
	iorwf	((__vsnprintf@value+1))&0ffh,w
	bnz	u7101
	decf	((__vsnprintf@value))&0ffh,w
	btfsc	status,0
	goto	u7101
	goto	u7100

u7101:
	goto	l563
u7100:
	
l5077:; BSR set to: 1

	movf	((__vsnprintf@value))&0ffh,w
	sublw	low(0)
	movwf	((__vsnprintf$1281))&0ffh
	movlw	high(0)
	subfwb	((__vsnprintf@value+1))&0ffh,w
	movwf	1+((__vsnprintf$1281))&0ffh
	
	movlw	low highword(0)
	subfwb	((__vsnprintf@value+2))&0ffh,w
	movwf	2+((__vsnprintf$1281))&0ffh
	
	movlw	high highword(0)
	subfwb	((__vsnprintf@value+3))&0ffh,w
	movwf	3+((__vsnprintf$1281))&0ffh
	goto	l5079
	
l563:; BSR set to: 1

	movff	(__vsnprintf@value),(__vsnprintf$1281)
	movff	(__vsnprintf@value+1),(__vsnprintf$1281+1)
	movff	(__vsnprintf@value+2),(__vsnprintf$1281+2)
	movff	(__vsnprintf@value+3),(__vsnprintf$1281+3)
	
l5079:; BSR set to: 1

		movff	(__vsnprintf@out),(__ntoa_long@out)
	movff	(__vsnprintf@out+1),(__ntoa_long@out+1)

		movff	(__vsnprintf@buffer),(__ntoa_long@buffer)
	movff	(__vsnprintf@buffer+1),(__ntoa_long@buffer+1)

	movff	(__vsnprintf@idx),(__ntoa_long@idx)
	movff	(__vsnprintf@idx+1),(__ntoa_long@idx+1)
	movff	(__vsnprintf@maxlen),(__ntoa_long@maxlen)
	movff	(__vsnprintf@maxlen+1),(__ntoa_long@maxlen+1)
	movff	(__vsnprintf$1281),(__ntoa_long@value)
	movff	(__vsnprintf$1281+1),(__ntoa_long@value+1)
	movff	(__vsnprintf$1281+2),(__ntoa_long@value+2)
	movff	(__vsnprintf$1281+3),(__ntoa_long@value+3)
	btfsc	((__vsnprintf@value+3))&0ffh,7
	goto	u7111
	goto	u7110

u7111:
	movlw	1
	goto	u7120
u7110:
	movlw	0
u7120:
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
	goto	l4937
	line	734
	
l561:; BSR set to: 1

	line	735
	
	btfsc	((__vsnprintf@flags))&0ffh,(6)&7
	goto	u7131
	goto	u7130
u7131:
	goto	l5089
u7130:
	
l5081:; BSR set to: 1

	
	btfsc	((__vsnprintf@flags))&0ffh,(7)&7
	goto	u7141
	goto	u7140
u7141:
	goto	l5085
u7140:
	
l5083:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movff	indf2,??__vsnprintf+0
	movlw	low(02h)
	addwf	postinc2
	movff	indf2,??__vsnprintf+0+1
	movlw	high(02h)
	addwfc	postdec2
	movff	??__vsnprintf+0,fsr2l
	movff	??__vsnprintf+0+1,fsr2h
	movff	postinc2,(__vsnprintf$1283)
	movff	postdec2,(__vsnprintf$1283+1)
	goto	l5087
	
l5085:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movff	indf2,??__vsnprintf+0
	movlw	low(02h)
	addwf	postinc2
	movff	indf2,??__vsnprintf+0+1
	movlw	high(02h)
	addwfc	postdec2
	movff	??__vsnprintf+0,fsr2l
	movff	??__vsnprintf+0+1,fsr2h
	movff	postinc2,(__vsnprintf$1283)
	movff	postdec2,(__vsnprintf$1283+1)
	
l5087:; BSR set to: 1

	movff	(__vsnprintf$1283),(__vsnprintf@value_1282)
	movff	(__vsnprintf$1283+1),(__vsnprintf@value_1282+1)
	goto	l5091
	
l5089:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movff	indf2,??__vsnprintf+0
	movlw	low(02h)
	addwf	postinc2
	movff	indf2,??__vsnprintf+0+1
	movlw	high(02h)
	addwfc	postdec2
	movff	??__vsnprintf+0,fsr2l
	movff	??__vsnprintf+0+1,fsr2h
	movf	indf2,w
	movwf	(??__vsnprintf+2)^00h,c
	movf	((??__vsnprintf+2))^00h,c,w
	movwf	((__vsnprintf@value_1282))&0ffh
	clrf	((__vsnprintf@value_1282+1))&0ffh
	line	736
	
l5091:; BSR set to: 1

	btfsc	((__vsnprintf@value_1282+1))&0ffh,7
	goto	u7150
	movf	((__vsnprintf@value_1282+1))&0ffh,w
	bnz	u7151
	decf	((__vsnprintf@value_1282))&0ffh,w
	btfsc	status,0
	goto	u7151
	goto	u7150

u7151:
	goto	l576
u7150:
	
l5093:; BSR set to: 1

	movf	((__vsnprintf@value_1282))&0ffh,w
	sublw	low(0)
	movwf	((__vsnprintf$1284))&0ffh
	movf	((__vsnprintf@value_1282+1))&0ffh,w
	btfss	status,0
	incf	wreg
	sublw	high(0)
	
	movwf	1+((__vsnprintf$1284))&0ffh
	goto	l5095
	
l576:; BSR set to: 1

	movff	(__vsnprintf@value_1282),(__vsnprintf$1284)
	movff	(__vsnprintf@value_1282+1),(__vsnprintf$1284+1)
	
l5095:; BSR set to: 1

		movff	(__vsnprintf@out),(__ntoa_long@out)
	movff	(__vsnprintf@out+1),(__ntoa_long@out+1)

		movff	(__vsnprintf@buffer),(__ntoa_long@buffer)
	movff	(__vsnprintf@buffer+1),(__ntoa_long@buffer+1)

	movff	(__vsnprintf@idx),(__ntoa_long@idx)
	movff	(__vsnprintf@idx+1),(__ntoa_long@idx+1)
	movff	(__vsnprintf@maxlen),(__ntoa_long@maxlen)
	movff	(__vsnprintf@maxlen+1),(__ntoa_long@maxlen+1)
	movff	(__vsnprintf$1284),(__ntoa_long@value)
	movff	(__vsnprintf$1284+1),(__ntoa_long@value+1)
	movlb	0	; () banked
	clrf	((__ntoa_long@value+2))&0ffh
	clrf	((__ntoa_long@value+3))&0ffh
	movlb	1	; () banked
	btfsc	((__vsnprintf@value_1282+1))&0ffh,7
	goto	u7161
	goto	u7160

u7161:
	movlw	1
	goto	u7170
u7160:
	movlw	0
u7170:
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
	goto	l4937
	line	739
	
l556:; BSR set to: 1

	line	741
	
	btfss	((__vsnprintf@flags+1))&0ffh,(9)&7
	goto	u7181
	goto	u7180
u7181:
	goto	l580
u7180:
	goto	l4937
	line	746
	
l580:; BSR set to: 1

	
	btfss	((__vsnprintf@flags+1))&0ffh,(8)&7
	goto	u7191
	goto	u7190
u7191:
	goto	l582
u7190:
	line	747
	
l5099:; BSR set to: 1

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
	movff	indf2,??__vsnprintf+0
	movlw	low(04h)
	addwf	postinc2
	movff	indf2,??__vsnprintf+0+1
	movlw	high(04h)
	addwfc	postdec2
	movff	??__vsnprintf+0,fsr2l
	movff	??__vsnprintf+0+1,fsr2h
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
	goto	l4937
	line	749
	
l582:; BSR set to: 1

	line	750
	
	btfsc	((__vsnprintf@flags))&0ffh,(6)&7
	goto	u7201
	goto	u7200
u7201:
	goto	l5109
u7200:
	
l5101:; BSR set to: 1

	
	btfsc	((__vsnprintf@flags))&0ffh,(7)&7
	goto	u7211
	goto	u7210
u7211:
	goto	l5105
u7210:
	
l5103:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movff	indf2,??__vsnprintf+0
	movlw	low(02h)
	addwf	postinc2
	movff	indf2,??__vsnprintf+0+1
	movlw	high(02h)
	addwfc	postdec2
	movff	??__vsnprintf+0,fsr2l
	movff	??__vsnprintf+0+1,fsr2h
	movff	postinc2,(__vsnprintf$1286)
	movff	postdec2,(__vsnprintf$1286+1)
	goto	l5107
	
l5105:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movff	indf2,??__vsnprintf+0
	movlw	low(02h)
	addwf	postinc2
	movff	indf2,??__vsnprintf+0+1
	movlw	high(02h)
	addwfc	postdec2
	movff	??__vsnprintf+0,fsr2l
	movff	??__vsnprintf+0+1,fsr2h
	movff	postinc2,(__vsnprintf$1286)
	movff	postdec2,(__vsnprintf$1286+1)
	
l5107:; BSR set to: 1

	movff	(__vsnprintf$1286),(__vsnprintf@value_1285)
	movff	(__vsnprintf$1286+1),(__vsnprintf@value_1285+1)
	goto	l5111
	
l5109:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movff	indf2,??__vsnprintf+0
	movlw	low(02h)
	addwf	postinc2
	movff	indf2,??__vsnprintf+0+1
	movlw	high(02h)
	addwfc	postdec2
	movff	??__vsnprintf+0,fsr2l
	movff	??__vsnprintf+0+1,fsr2h
	movf	indf2,w
	movwf	(??__vsnprintf+2)^00h,c
	movf	((??__vsnprintf+2))^00h,c,w
	movwf	((__vsnprintf@value_1285))&0ffh
	clrf	((__vsnprintf@value_1285+1))&0ffh
	line	751
	
l5111:; BSR set to: 1

		movff	(__vsnprintf@out),(__ntoa_long@out)
	movff	(__vsnprintf@out+1),(__ntoa_long@out+1)

		movff	(__vsnprintf@buffer),(__ntoa_long@buffer)
	movff	(__vsnprintf@buffer+1),(__ntoa_long@buffer+1)

	movff	(__vsnprintf@idx),(__ntoa_long@idx)
	movff	(__vsnprintf@idx+1),(__ntoa_long@idx+1)
	movff	(__vsnprintf@maxlen),(__ntoa_long@maxlen)
	movff	(__vsnprintf@maxlen+1),(__ntoa_long@maxlen+1)
	movff	(__vsnprintf@value_1285),(__ntoa_long@value)
	movff	(__vsnprintf@value_1285+1),(__ntoa_long@value+1)
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
	goto	l4937
	line	777
	
l5115:
	movlb	1	; () banked
	clrf	((__vsnprintf@l+1))&0ffh
	movlw	low(01h)
	movwf	((__vsnprintf@l))&0ffh
	line	779
	
l5117:; BSR set to: 1

	
	btfsc	((__vsnprintf@flags))&0ffh,(1)&7
	goto	u7221
	goto	u7220
u7221:
	goto	l5127
u7220:
	goto	l5125
	line	781
	
l5121:; BSR set to: 1

	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u7238
	goto	u7239
u7238:
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
	u7239:
	
l5123:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	780
	
l5125:; BSR set to: 1

	movf	((__vsnprintf@l))&0ffh,w
	movwf	(??__vsnprintf+0)^00h,c
	movf	((__vsnprintf@l+1))&0ffh,w
	movwf	1+(??__vsnprintf+0)^00h,c
	infsnz	((__vsnprintf@l))&0ffh
	incf	((__vsnprintf@l+1))&0ffh
		movf	((__vsnprintf@width))&0ffh,w
	subwf	(??__vsnprintf+0)^00h,c,w
	movf	((__vsnprintf@width+1))&0ffh,w
	subwfb	(??__vsnprintf+0+1)^00h,c,w
	btfss	status,0
	goto	u7241
	goto	u7240

u7241:
	goto	l5121
u7240:
	line	785
	
l5127:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movff	indf2,??__vsnprintf+0
	movlw	low(02h)
	addwf	postinc2
	movff	indf2,??__vsnprintf+0+1
	movlw	high(02h)
	addwfc	postdec2
	movff	??__vsnprintf+0,fsr2l
	movff	??__vsnprintf+0+1,fsr2h
	movf	indf2,w
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u7258
	goto	u7259
u7258:
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
	u7259:
	
l5129:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	787
	
l5131:; BSR set to: 1

	
	btfss	((__vsnprintf@flags))&0ffh,(1)&7
	goto	u7261
	goto	u7260
u7261:
	goto	l4937
u7260:
	goto	l5139
	line	789
	
l5135:; BSR set to: 1

	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u7278
	goto	u7279
u7278:
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
	u7279:
	
l5137:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	788
	
l5139:; BSR set to: 1

	movf	((__vsnprintf@l))&0ffh,w
	movwf	(??__vsnprintf+0)^00h,c
	movf	((__vsnprintf@l+1))&0ffh,w
	movwf	1+(??__vsnprintf+0)^00h,c
	infsnz	((__vsnprintf@l))&0ffh
	incf	((__vsnprintf@l+1))&0ffh
		movf	((__vsnprintf@width))&0ffh,w
	subwf	(??__vsnprintf+0)^00h,c,w
	movf	((__vsnprintf@width+1))&0ffh,w
	subwfb	(??__vsnprintf+0+1)^00h,c,w
	btfss	status,0
	goto	u7281
	goto	u7280

u7281:
	goto	l5135
u7280:
	goto	l4937
	line	797
	
l5143:
	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movff	indf2,??__vsnprintf+0
	movlw	low(02h)
	addwf	postinc2
	movff	indf2,??__vsnprintf+0+1
	movlw	high(02h)
	addwfc	postdec2
	movff	??__vsnprintf+0,fsr2l
	movff	??__vsnprintf+0+1,fsr2h
	movff	postinc2,(__vsnprintf@p)
	movff	postdec2,(__vsnprintf@p+1)
	line	798
	
l5145:
	movlb	1	; () banked
	movf	((__vsnprintf@precision))&0ffh,w
iorwf	((__vsnprintf@precision+1))&0ffh,w
	btfss	status,2
	goto	u7291
	goto	u7290

u7291:
	goto	l604
u7290:
	
l5147:; BSR set to: 1

	setf	((__vsnprintf$1291))&0ffh
	setf	((__vsnprintf$1291+1))&0ffh
	goto	l5149
	
l604:; BSR set to: 1

	movff	(__vsnprintf@precision),(__vsnprintf$1291)
	movff	(__vsnprintf@precision+1),(__vsnprintf$1291+1)
	
l5149:; BSR set to: 1

		movff	(__vsnprintf@p),(c:__strnlen_s@str)
	movff	(__vsnprintf@p+1),(c:__strnlen_s@str+1)

	movff	(__vsnprintf$1291),(c:__strnlen_s@maxsize)
	movff	(__vsnprintf$1291+1),(c:__strnlen_s@maxsize+1)
	call	__strnlen_s	;wreg free
	movff	0+?__strnlen_s,(__vsnprintf@l_1289)
	movff	1+?__strnlen_s,(__vsnprintf@l_1289+1)
	line	800
	
l5151:
	movlb	1	; () banked
	
	btfss	((__vsnprintf@flags+1))&0ffh,(10)&7
	goto	u7301
	goto	u7300
u7301:
	goto	l607
u7300:
	line	801
	
l5153:; BSR set to: 1

		movf	((__vsnprintf@precision))&0ffh,w
	subwf	((__vsnprintf@l_1289))&0ffh,w
	movf	((__vsnprintf@precision+1))&0ffh,w
	subwfb	((__vsnprintf@l_1289+1))&0ffh,w
	btfss	status,0
	goto	u7311
	goto	u7310

u7311:
	goto	l607
u7310:
	
l5155:; BSR set to: 1

	movff	(__vsnprintf@precision),(__vsnprintf@l_1289)
	movff	(__vsnprintf@precision+1),(__vsnprintf@l_1289+1)
	line	802
	
l607:; BSR set to: 1

	line	803
	
	btfsc	((__vsnprintf@flags))&0ffh,(1)&7
	goto	u7321
	goto	u7320
u7321:
	goto	l5171
u7320:
	goto	l5163
	line	805
	
l5159:; BSR set to: 1

	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u7338
	goto	u7339
u7338:
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
	u7339:
	
l5161:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	804
	
l5163:; BSR set to: 1

	movf	((__vsnprintf@l_1289))&0ffh,w
	movwf	(??__vsnprintf+0)^00h,c
	movf	((__vsnprintf@l_1289+1))&0ffh,w
	movwf	1+(??__vsnprintf+0)^00h,c
	infsnz	((__vsnprintf@l_1289))&0ffh
	incf	((__vsnprintf@l_1289+1))&0ffh
		movf	((__vsnprintf@width))&0ffh,w
	subwf	(??__vsnprintf+0)^00h,c,w
	movf	((__vsnprintf@width+1))&0ffh,w
	subwfb	(??__vsnprintf+0+1)^00h,c,w
	btfss	status,0
	goto	u7341
	goto	u7340

u7341:
	goto	l5159
u7340:
	goto	l5171
	line	810
	
l5165:; BSR set to: 1

	movff	(__vsnprintf@p),fsr2l
	movff	(__vsnprintf@p+1),fsr2h
	movf	indf2,w
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u7358
	goto	u7359
u7358:
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
	u7359:
	
l5167:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	
l5169:; BSR set to: 1

	infsnz	((__vsnprintf@p))&0ffh
	incf	((__vsnprintf@p+1))&0ffh
	line	809
	
l5171:; BSR set to: 1

	movff	(__vsnprintf@p),fsr2l
	movff	(__vsnprintf@p+1),fsr2h
	movf	indf2,w
	btfsc	status,2
	goto	u7361
	goto	u7360
u7361:
	goto	l620
u7360:
	
l5173:; BSR set to: 1

	
	btfss	((__vsnprintf@flags+1))&0ffh,(10)&7
	goto	u7371
	goto	u7370
u7371:
	goto	l5165
u7370:
	
l5175:; BSR set to: 1

	decf	((__vsnprintf@precision))&0ffh
	btfss	status,0
	decf	((__vsnprintf@precision+1))&0ffh
		incf	((__vsnprintf@precision))&0ffh,w
	bnz	u7381
	incf	((__vsnprintf@precision+1))&0ffh,w
	btfss	status,2
	goto	u7381
	goto	u7380

u7381:
	goto	l5165
u7380:
	
l620:; BSR set to: 1

	line	813
	
	btfss	((__vsnprintf@flags))&0ffh,(1)&7
	goto	u7391
	goto	u7390
u7391:
	goto	l4937
u7390:
	goto	l5183
	line	815
	
l5179:; BSR set to: 1

	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u7408
	goto	u7409
u7408:
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
	u7409:
	
l5181:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	814
	
l5183:; BSR set to: 1

	movf	((__vsnprintf@l_1289))&0ffh,w
	movwf	(??__vsnprintf+0)^00h,c
	movf	((__vsnprintf@l_1289+1))&0ffh,w
	movwf	1+(??__vsnprintf+0)^00h,c
	infsnz	((__vsnprintf@l_1289))&0ffh
	incf	((__vsnprintf@l_1289+1))&0ffh
		movf	((__vsnprintf@width))&0ffh,w
	subwf	(??__vsnprintf+0)^00h,c,w
	movf	((__vsnprintf@width+1))&0ffh,w
	subwfb	(??__vsnprintf+0+1)^00h,c,w
	btfss	status,0
	goto	u7411
	goto	u7410

u7411:
	goto	l5179
u7410:
	goto	l4937
	line	823
	
l5187:
	movlb	1	; () banked
	clrf	((__vsnprintf@width+1))&0ffh
	movlw	low(04h)
	movwf	((__vsnprintf@width))&0ffh
	line	824
	
l5189:; BSR set to: 1

	movlw	021h
	iorwf	((__vsnprintf@flags))&0ffh
	line	832
	
l5191:; BSR set to: 1

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
	movff	indf2,??__vsnprintf+0
	movlw	low(02h)
	addwf	postinc2
	movff	indf2,??__vsnprintf+0+1
	movlw	high(02h)
	addwfc	postdec2
	movff	??__vsnprintf+0,fsr2l
	movff	??__vsnprintf+0+1,fsr2h
	movff	postinc2,??__vsnprintf+2
	movff	postdec2,??__vsnprintf+2+1
	movff	??__vsnprintf+2,(__ntoa_long@value)
	movff	??__vsnprintf+2+1,(__ntoa_long@value+1)
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
	goto	l4937
	line	841
	
l5195:
	movlw	low(025h)
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
	movlb	0	; () banked
	
	movwf	pclath
	movf	((__vsnprintf@out))&0ffh,w
	movwf	tosl
	movf	((__vsnprintf@out+1))&0ffh,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u7429:
	goto	l4935
	line	846
	
l5201:
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
	call	u7438
	goto	u7439
u7438:
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
	u7439:
	goto	l4935
	line	849
	
l5209:
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
	goto	l5195
	xorlw	88^37	; case 88
	skipnz
	goto	l5035
	xorlw	98^88	; case 98
	skipnz
	goto	l5035
	xorlw	99^98	; case 99
	skipnz
	goto	l5115
	xorlw	100^99	; case 100
	skipnz
	goto	l5035
	xorlw	105^100	; case 105
	skipnz
	goto	l5035
	xorlw	111^105	; case 111
	skipnz
	goto	l5035
	xorlw	112^111	; case 112
	skipnz
	goto	l5187
	xorlw	115^112	; case 115
	skipnz
	goto	l5143
	xorlw	117^115	; case 117
	skipnz
	goto	l5035
	xorlw	120^117	; case 120
	skipnz
	goto	l5035
	goto	l5201

	line	587
	
l5211:; BSR set to: 0

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
	goto	u7441
	goto	u7440
u7441:
	goto	l4931
u7440:
	line	853
	
l5213:; BSR set to: 0

		movf	((__vsnprintf@maxlen))&0ffh,w
	movlb	1	; () banked
	subwf	((__vsnprintf@idx))&0ffh,w
	movlb	0	; () banked
	movf	((__vsnprintf@maxlen+1))&0ffh,w
	movlb	1	; () banked
	subwfb	((__vsnprintf@idx+1))&0ffh,w
	btfss	status,0
	goto	u7451
	goto	u7450

u7451:
	goto	l630
u7450:
	
l5215:; BSR set to: 1

	movlw	low(0FFFFh)
	movlb	0	; () banked
	addwf	((__vsnprintf@maxlen))&0ffh,w
	movlb	1	; () banked
	movwf	((__vsnprintf$1292))&0ffh
	movlw	high(0FFFFh)
	movlb	0	; () banked
	addwfc	((__vsnprintf@maxlen+1))&0ffh,w
	movlb	1	; () banked
	movwf	1+((__vsnprintf$1292))&0ffh
	goto	l5217
	
l630:; BSR set to: 1

	movff	(__vsnprintf@idx),(__vsnprintf$1292)
	movff	(__vsnprintf@idx+1),(__vsnprintf$1292+1)
	
l5217:; BSR set to: 1

	movlw	low(0)
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf$1292),(c:__out_fct@idx)
	movff	(__vsnprintf$1292+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u7468
	goto	u7469
u7468:
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
	u7469:
	line	856
	
l5219:
	movff	(__vsnprintf@idx),(?__vsnprintf)
	movff	(__vsnprintf@idx+1),(?__vsnprintf+1)
	line	857
	
l633:
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
;;  str             2   12[COMRAM] PTR const unsigned char 
;;		 -> sys_clock$seconds(1), sys_clock$minutes(1), sys_clock$hours(1), ?_fctprintf(2), 
;;		 -> ?_snprintf_(2), ?_sprintf_(2), ?_printf_(2), 
;;  maxsize         2   14[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  s               2   16[COMRAM] PTR const unsigned char 
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
;;		__vsnprintf
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,inline,group=0
	line	171
global __ptext15
__ptext15:
psect	text15
	file	"external/printf/printf.c"
	line	171
	
__strnlen_s:
;incstack = 0
	callstack 24
	line	174
	
l4847:
		movff	(c:__strnlen_s@str),(c:__strnlen_s@s)
	movff	(c:__strnlen_s@str+1),(c:__strnlen_s@s+1)

	goto	l4851
	
l4849:
	infsnz	((c:__strnlen_s@s))^00h,c
	incf	((c:__strnlen_s@s+1))^00h,c
	
l4851:
	movff	(c:__strnlen_s@s),fsr2l
	movff	(c:__strnlen_s@s+1),fsr2h
	movf	indf2,w
	btfsc	status,2
	goto	u6671
	goto	u6670
u6671:
	goto	l4855
u6670:
	
l4853:
	decf	((c:__strnlen_s@maxsize))^00h,c
	btfss	status,0
	decf	((c:__strnlen_s@maxsize+1))^00h,c
		incf	((c:__strnlen_s@maxsize))^00h,c,w
	bnz	u6681
	incf	((c:__strnlen_s@maxsize+1))^00h,c,w
	btfss	status,2
	goto	u6681
	goto	u6680

u6681:
	goto	l4849
u6680:
	line	175
	
l4855:
	movf	((c:__strnlen_s@str))^00h,c,w
	subwf	((c:__strnlen_s@s))^00h,c,w
	movwf	((c:?__strnlen_s))^00h,c
	movf	((c:__strnlen_s@str+1))^00h,c,w
	subwfb	((c:__strnlen_s@s+1))^00h,c,w
	movwf	1+((c:?__strnlen_s))^00h,c
	line	176
	
l411:
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
;;  out             2   20[BANK0 ] PTR FTN(unsigned char ,P
;;		 -> _out_fct(1), _out_char(1), _out_null(1), _out_buffer(1), 
;;  buffer          2   22[BANK0 ] PTR unsigned char 
;;		 -> RAM(2047), vprintf_@buffer(1), printf_@buffer(1), 
;;  idx             2   24[BANK0 ] unsigned int 
;;  maxlen          2   26[BANK0 ] unsigned int 
;;  value           4   28[BANK0 ] unsigned long 
;;  negative        1   32[BANK0 ] _Bool 
;;  base            4   33[BANK0 ] unsigned long 
;;  prec            2   37[BANK0 ] unsigned int 
;;  width           2   39[BANK0 ] unsigned int 
;;  flags           2   41[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  digit           1   79[BANK0 ] const unsigned char 
;;  buf            32   43[BANK0 ] unsigned char [32]
;;  len             2   80[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   20[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pcl, pclath, pclatu, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0      23       0       0       0       0       0       0       0
;;      Locals:         0      39       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2      62       0       0       0       0       0       0       0
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
psect	text16,class=CODE,space=0,reloc=2,group=0
	line	281
global __ptext16
__ptext16:
psect	text16
	file	"external/printf/printf.c"
	line	281
	
__ntoa_long:
;incstack = 0
	callstack 19
	line	284
	
l4865:
	movlb	0	; () banked
	clrf	((__ntoa_long@len+1))&0ffh
	movlw	low(0)
	movwf	((__ntoa_long@len))&0ffh
	line	287
	
l4867:; BSR set to: 0

	movf	((__ntoa_long@value))&0ffh,w
iorwf	((__ntoa_long@value+1))&0ffh,w
iorwf	((__ntoa_long@value+2))&0ffh,w
iorwf	((__ntoa_long@value+3))&0ffh,w
	btfss	status,2
	goto	u6701
	goto	u6700

u6701:
	goto	l4871
u6700:
	line	288
	
l4869:; BSR set to: 0

	bcf	(0+(4/8)+(__ntoa_long@flags))&0ffh,(4)&7
	line	292
	
l4871:; BSR set to: 0

	
	btfss	((__ntoa_long@flags+1))&0ffh,(10)&7
	goto	u6711
	goto	u6710
u6711:
	goto	l4875
u6710:
	
l4873:; BSR set to: 0

	movf	((__ntoa_long@value))&0ffh,w
iorwf	((__ntoa_long@value+1))&0ffh,w
iorwf	((__ntoa_long@value+2))&0ffh,w
iorwf	((__ntoa_long@value+3))&0ffh,w
	btfsc	status,2
	goto	u6721
	goto	u6720

u6721:
	goto	l4899
u6720:
	line	294
	
l4875:; BSR set to: 0

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
	
l4877:; BSR set to: 0

		movlw	0Ah-1
	cpfsgt	((__ntoa_long@digit))&0ffh
	goto	u6731
	goto	u6730

u6731:
	goto	l4887
u6730:
	
l4879:; BSR set to: 0

	
	btfsc	((__ntoa_long@flags))&0ffh,(5)&7
	goto	u6741
	goto	u6740
u6741:
	goto	l4883
u6740:
	
l4881:; BSR set to: 0

	clrf	((__ntoa_long$1254+1))&0ffh
	movlw	low(061h)
	movwf	((__ntoa_long$1254))&0ffh
	goto	l4885
	
l4883:; BSR set to: 0

	clrf	((__ntoa_long$1254+1))&0ffh
	movlw	low(041h)
	movwf	((__ntoa_long$1254))&0ffh
	
l4885:; BSR set to: 0

	movf	((__ntoa_long@digit))&0ffh,w
	addwf	((__ntoa_long$1254))&0ffh,w
	movwf	(??__ntoa_long+0)^00h,c
	movlw	0
	addwfc	((__ntoa_long$1254+1))&0ffh,w
	movwf	(??__ntoa_long+0+1)^00h,c
	movlw	low(0FFF6h)
	addwf	(??__ntoa_long+0)^00h,c,w
	movwf	((__ntoa_long$1253))&0ffh
	movlw	high(0FFF6h)
	addwfc	(??__ntoa_long+0+1)^00h,c,w
	movwf	1+((__ntoa_long$1253))&0ffh
	goto	l4889
	
l4887:; BSR set to: 0

	movlw	low(030h)
	addwf	((__ntoa_long@digit))&0ffh,w
	movwf	((__ntoa_long$1253))&0ffh
	clrf	1+((__ntoa_long$1253))&0ffh
	movlw	high(030h)
	addwfc	1+((__ntoa_long$1253))&0ffh
	
l4889:; BSR set to: 0

	movf	((__ntoa_long@len))&0ffh,w
	addlw	low(__ntoa_long@buf)
	movwf	fsr2l
	clrf	fsr2h
	movff	(__ntoa_long$1253),indf2

	
l4891:; BSR set to: 0

	infsnz	((__ntoa_long@len))&0ffh
	incf	((__ntoa_long@len+1))&0ffh
	line	296
	
l4893:; BSR set to: 0

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
	
l4895:
	movlb	0	; () banked
	movf	((__ntoa_long@value))&0ffh,w
iorwf	((__ntoa_long@value+1))&0ffh,w
iorwf	((__ntoa_long@value+2))&0ffh,w
iorwf	((__ntoa_long@value+3))&0ffh,w
	btfsc	status,2
	goto	u6751
	goto	u6750

u6751:
	goto	l4899
u6750:
	
l4897:; BSR set to: 0

		movf	((__ntoa_long@len+1))&0ffh,w
	bnz	u6760
	movlw	32
	subwf	 ((__ntoa_long@len))&0ffh,w
	btfss	status,0
	goto	u6761
	goto	u6760

u6761:
	goto	l4875
u6760:
	line	300
	
l4899:; BSR set to: 0

		movff	(__ntoa_long@out),(__ntoa_format@out)
	movff	(__ntoa_long@out+1),(__ntoa_format@out+1)

		movff	(__ntoa_long@buffer),(__ntoa_format@buffer)
	movff	(__ntoa_long@buffer+1),(__ntoa_format@buffer+1)

	movff	(__ntoa_long@idx),(__ntoa_format@idx)
	movff	(__ntoa_long@idx+1),(__ntoa_format@idx+1)
	movff	(__ntoa_long@maxlen),(__ntoa_format@maxlen)
	movff	(__ntoa_long@maxlen+1),(__ntoa_format@maxlen+1)
		movlw	low(__ntoa_long@buf)
	movwf	((__ntoa_format@buf))&0ffh

	movff	(__ntoa_long@len),(__ntoa_format@len)
	movff	(__ntoa_long@len+1),(__ntoa_format@len+1)
	movff	(__ntoa_long@negative),(__ntoa_format@negative)
	movff	(__ntoa_long@base),(__ntoa_format@base)
	movff	(__ntoa_long@base+1),(__ntoa_format@base+1)
	movff	(__ntoa_long@prec),(__ntoa_format@prec)
	movff	(__ntoa_long@prec+1),(__ntoa_format@prec+1)
	movff	(__ntoa_long@width),(__ntoa_format@width)
	movff	(__ntoa_long@width+1),(__ntoa_format@width+1)
	movff	(__ntoa_long@flags),(__ntoa_format@flags)
	movff	(__ntoa_long@flags+1),(__ntoa_format@flags+1)
	call	__ntoa_format	;wreg free
	movff	0+?__ntoa_format,(?__ntoa_long)
	movff	1+?__ntoa_format,(?__ntoa_long+1)
	line	301
	
l489:
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
;;  out             2    0[BANK0 ] PTR FTN(unsigned char ,P
;;		 -> _out_fct(1), _out_char(1), _out_null(1), _out_buffer(1), 
;;  buffer          2    2[BANK0 ] PTR unsigned char 
;;		 -> RAM(2047), vprintf_@buffer(1), printf_@buffer(1), 
;;  idx             2    4[BANK0 ] unsigned int 
;;  maxlen          2    6[BANK0 ] unsigned int 
;;  buf             1    8[BANK0 ] PTR unsigned char 
;;		 -> _ntoa_long@buf(32), 
;;  len             2    9[BANK0 ] unsigned int 
;;  negative        1   11[BANK0 ] _Bool 
;;  base            2   12[BANK0 ] unsigned int 
;;  prec            2   14[BANK0 ] unsigned int 
;;  width           2   16[BANK0 ] unsigned int 
;;  flags           2   18[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pcl, pclath, pclatu, tosl, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0      20       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2      20       0       0       0       0       0       0       0
;;Total ram usage:       22 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		__out_rev
;; This function is called by:
;;		__ntoa_long
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=0
	line	227
global __ptext17
__ptext17:
psect	text17
	file	"external/printf/printf.c"
	line	227
	
__ntoa_format:
;incstack = 0
	callstack 19
	line	230
	
l4709:
	movlb	0	; () banked
	
	btfsc	((__ntoa_format@flags))&0ffh,(1)&7
	goto	u6311
	goto	u6310
u6311:
	goto	l439
u6310:
	line	231
	
l4711:; BSR set to: 0

	movf	((__ntoa_format@width))&0ffh,w
iorwf	((__ntoa_format@width+1))&0ffh,w
	btfsc	status,2
	goto	u6321
	goto	u6320

u6321:
	goto	l4725
u6320:
	
l4713:; BSR set to: 0

	
	btfss	((__ntoa_format@flags))&0ffh,(0)&7
	goto	u6331
	goto	u6330
u6331:
	goto	l4725
u6330:
	
l4715:; BSR set to: 0

	movf	((__ntoa_format@negative))&0ffh,w
	btfss	status,2
	goto	u6341
	goto	u6340
u6341:
	goto	l4719
u6340:
	
l4717:; BSR set to: 0

	movlw	0Ch
	andwf	((__ntoa_format@flags))&0ffh,w
	movwf	(??__ntoa_format+0)^00h,c
	movlw	0
	andwf	((__ntoa_format@flags+1))&0ffh,w
	movwf	(??__ntoa_format+0+1)^00h,c
	movf	(??__ntoa_format+0)^00h,c,w
iorwf	(??__ntoa_format+0+1)^00h,c,w
	btfsc	status,2
	goto	u6351
	goto	u6350

u6351:
	goto	l4725
u6350:
	line	232
	
l4719:; BSR set to: 0

	decf	((__ntoa_format@width))&0ffh
	btfss	status,0
	decf	((__ntoa_format@width+1))&0ffh
	goto	l4725
	line	235
	
l4721:; BSR set to: 0

	movf	((__ntoa_format@buf))&0ffh,w
	addwf	((__ntoa_format@len))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	
l4723:; BSR set to: 0

	infsnz	((__ntoa_format@len))&0ffh
	incf	((__ntoa_format@len+1))&0ffh
	line	234
	
l4725:; BSR set to: 0

		movf	((__ntoa_format@prec))&0ffh,w
	subwf	((__ntoa_format@len))&0ffh,w
	movf	((__ntoa_format@prec+1))&0ffh,w
	subwfb	((__ntoa_format@len+1))&0ffh,w
	btfsc	status,0
	goto	u6361
	goto	u6360

u6361:
	goto	l4733
u6360:
	
l4727:; BSR set to: 0

		movf	((__ntoa_format@len+1))&0ffh,w
	bnz	u6370
	movlw	32
	subwf	 ((__ntoa_format@len))&0ffh,w
	btfss	status,0
	goto	u6371
	goto	u6370

u6371:
	goto	l4721
u6370:
	goto	l4733
	line	238
	
l4729:; BSR set to: 0

	movf	((__ntoa_format@buf))&0ffh,w
	addwf	((__ntoa_format@len))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	
l4731:; BSR set to: 0

	infsnz	((__ntoa_format@len))&0ffh
	incf	((__ntoa_format@len+1))&0ffh
	line	237
	
l4733:; BSR set to: 0

	
	btfss	((__ntoa_format@flags))&0ffh,(0)&7
	goto	u6381
	goto	u6380
u6381:
	goto	l439
u6380:
	
l4735:; BSR set to: 0

		movf	((__ntoa_format@width))&0ffh,w
	subwf	((__ntoa_format@len))&0ffh,w
	movf	((__ntoa_format@width+1))&0ffh,w
	subwfb	((__ntoa_format@len+1))&0ffh,w
	btfsc	status,0
	goto	u6391
	goto	u6390

u6391:
	goto	l439
u6390:
	
l4737:; BSR set to: 0

		movf	((__ntoa_format@len+1))&0ffh,w
	bnz	u6400
	movlw	32
	subwf	 ((__ntoa_format@len))&0ffh,w
	btfss	status,0
	goto	u6401
	goto	u6400

u6401:
	goto	l4729
u6400:
	line	240
	
l439:; BSR set to: 0

	line	243
	
	btfss	((__ntoa_format@flags))&0ffh,(4)&7
	goto	u6411
	goto	u6410
u6411:
	goto	l4789
u6410:
	line	244
	
l4739:; BSR set to: 0

	
	btfsc	((__ntoa_format@flags+1))&0ffh,(10)&7
	goto	u6421
	goto	u6420
u6421:
	goto	l4755
u6420:
	
l4741:; BSR set to: 0

	movf	((__ntoa_format@len))&0ffh,w
iorwf	((__ntoa_format@len+1))&0ffh,w
	btfsc	status,2
	goto	u6431
	goto	u6430

u6431:
	goto	l4755
u6430:
	
l4743:; BSR set to: 0

	movf	((__ntoa_format@prec))&0ffh,w
xorwf	((__ntoa_format@len))&0ffh,w
	bnz	u6440
movf	((__ntoa_format@prec+1))&0ffh,w
xorwf	((__ntoa_format@len+1))&0ffh,w
	btfsc	status,2
	goto	u6441
	goto	u6440

u6441:
	goto	l4747
u6440:
	
l4745:; BSR set to: 0

	movf	((__ntoa_format@width))&0ffh,w
xorwf	((__ntoa_format@len))&0ffh,w
	bnz	u6451
movf	((__ntoa_format@width+1))&0ffh,w
xorwf	((__ntoa_format@len+1))&0ffh,w
	btfss	status,2
	goto	u6451
	goto	u6450

u6451:
	goto	l4755
u6450:
	line	245
	
l4747:; BSR set to: 0

	decf	((__ntoa_format@len))&0ffh
	btfss	status,0
	decf	((__ntoa_format@len+1))&0ffh
	line	246
	
l4749:; BSR set to: 0

	movf	((__ntoa_format@len))&0ffh,w
iorwf	((__ntoa_format@len+1))&0ffh,w
	btfsc	status,2
	goto	u6461
	goto	u6460

u6461:
	goto	l4755
u6460:
	
l4751:; BSR set to: 0

		movlw	16
	xorwf	((__ntoa_format@base))&0ffh,w
iorwf	((__ntoa_format@base+1))&0ffh,w
	btfss	status,2
	goto	u6471
	goto	u6470

u6471:
	goto	l4755
u6470:
	line	247
	
l4753:; BSR set to: 0

	decf	((__ntoa_format@len))&0ffh
	btfss	status,0
	decf	((__ntoa_format@len+1))&0ffh
	line	250
	
l4755:; BSR set to: 0

		movlw	16
	xorwf	((__ntoa_format@base))&0ffh,w
iorwf	((__ntoa_format@base+1))&0ffh,w
	btfss	status,2
	goto	u6481
	goto	u6480

u6481:
	goto	l4765
u6480:
	
l4757:; BSR set to: 0

	
	btfsc	((__ntoa_format@flags))&0ffh,(5)&7
	goto	u6491
	goto	u6490
u6491:
	goto	l4765
u6490:
	
l4759:; BSR set to: 0

		movf	((__ntoa_format@len+1))&0ffh,w
	bnz	u6501
	movlw	32
	subwf	 ((__ntoa_format@len))&0ffh,w
	btfsc	status,0
	goto	u6501
	goto	u6500

u6501:
	goto	l4765
u6500:
	line	251
	
l4761:; BSR set to: 0

	movf	((__ntoa_format@buf))&0ffh,w
	addwf	((__ntoa_format@len))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(078h)
	movwf	indf2
	
l4763:; BSR set to: 0

	infsnz	((__ntoa_format@len))&0ffh
	incf	((__ntoa_format@len+1))&0ffh
	line	252
	goto	l4783
	line	253
	
l4765:; BSR set to: 0

		movlw	16
	xorwf	((__ntoa_format@base))&0ffh,w
iorwf	((__ntoa_format@base+1))&0ffh,w
	btfss	status,2
	goto	u6511
	goto	u6510

u6511:
	goto	l4775
u6510:
	
l4767:; BSR set to: 0

	
	btfss	((__ntoa_format@flags))&0ffh,(5)&7
	goto	u6521
	goto	u6520
u6521:
	goto	l4775
u6520:
	
l4769:; BSR set to: 0

		movf	((__ntoa_format@len+1))&0ffh,w
	bnz	u6531
	movlw	32
	subwf	 ((__ntoa_format@len))&0ffh,w
	btfsc	status,0
	goto	u6531
	goto	u6530

u6531:
	goto	l4775
u6530:
	line	254
	
l4771:; BSR set to: 0

	movf	((__ntoa_format@buf))&0ffh,w
	addwf	((__ntoa_format@len))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(058h)
	movwf	indf2
	goto	l4763
	line	256
	
l4775:; BSR set to: 0

		movlw	2
	xorwf	((__ntoa_format@base))&0ffh,w
iorwf	((__ntoa_format@base+1))&0ffh,w
	btfss	status,2
	goto	u6541
	goto	u6540

u6541:
	goto	l4783
u6540:
	
l4777:; BSR set to: 0

		movf	((__ntoa_format@len+1))&0ffh,w
	bnz	u6551
	movlw	32
	subwf	 ((__ntoa_format@len))&0ffh,w
	btfsc	status,0
	goto	u6551
	goto	u6550

u6551:
	goto	l4783
u6550:
	line	257
	
l4779:; BSR set to: 0

	movf	((__ntoa_format@buf))&0ffh,w
	addwf	((__ntoa_format@len))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(062h)
	movwf	indf2
	goto	l4763
	line	259
	
l4783:; BSR set to: 0

		movf	((__ntoa_format@len+1))&0ffh,w
	bnz	u6561
	movlw	32
	subwf	 ((__ntoa_format@len))&0ffh,w
	btfsc	status,0
	goto	u6561
	goto	u6560

u6561:
	goto	l4789
u6560:
	line	260
	
l4785:; BSR set to: 0

	movf	((__ntoa_format@buf))&0ffh,w
	addwf	((__ntoa_format@len))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	
l4787:; BSR set to: 0

	infsnz	((__ntoa_format@len))&0ffh
	incf	((__ntoa_format@len+1))&0ffh
	line	264
	
l4789:; BSR set to: 0

		movf	((__ntoa_format@len+1))&0ffh,w
	bnz	u6571
	movlw	32
	subwf	 ((__ntoa_format@len))&0ffh,w
	btfsc	status,0
	goto	u6571
	goto	u6570

u6571:
	goto	l4805
u6570:
	line	265
	
l4791:; BSR set to: 0

	movf	((__ntoa_format@negative))&0ffh,w
	btfsc	status,2
	goto	u6581
	goto	u6580
u6581:
	goto	l465
u6580:
	line	266
	
l4793:; BSR set to: 0

	movf	((__ntoa_format@buf))&0ffh,w
	addwf	((__ntoa_format@len))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02Dh)
	movwf	indf2
	
l4795:; BSR set to: 0

	infsnz	((__ntoa_format@len))&0ffh
	incf	((__ntoa_format@len+1))&0ffh
	line	267
	goto	l4805
	line	268
	
l465:; BSR set to: 0

	
	btfss	((__ntoa_format@flags))&0ffh,(2)&7
	goto	u6591
	goto	u6590
u6591:
	goto	l467
u6590:
	line	269
	
l4797:; BSR set to: 0

	movf	((__ntoa_format@buf))&0ffh,w
	addwf	((__ntoa_format@len))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02Bh)
	movwf	indf2
	goto	l4795
	line	271
	
l467:; BSR set to: 0

	
	btfss	((__ntoa_format@flags))&0ffh,(3)&7
	goto	u6601
	goto	u6600
u6601:
	goto	l4805
u6600:
	line	272
	
l4801:; BSR set to: 0

	movf	((__ntoa_format@buf))&0ffh,w
	addwf	((__ntoa_format@len))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(020h)
	movwf	indf2
	goto	l4795
	line	276
	
l4805:; BSR set to: 0

		movff	(__ntoa_format@out),(c:__out_rev@out)
	movff	(__ntoa_format@out+1),(c:__out_rev@out+1)

		movff	(__ntoa_format@buffer),(c:__out_rev@buffer)
	movff	(__ntoa_format@buffer+1),(c:__out_rev@buffer+1)

	movff	(__ntoa_format@idx),(c:__out_rev@idx)
	movff	(__ntoa_format@idx+1),(c:__out_rev@idx+1)
	movff	(__ntoa_format@maxlen),(c:__out_rev@maxlen)
	movff	(__ntoa_format@maxlen+1),(c:__out_rev@maxlen+1)
		movff	(__ntoa_format@buf),(c:__out_rev@buf)

	movff	(__ntoa_format@len),(c:__out_rev@len)
	movff	(__ntoa_format@len+1),(c:__out_rev@len+1)
	movff	(__ntoa_format@width),(c:__out_rev@width)
	movff	(__ntoa_format@width+1),(c:__out_rev@width+1)
	movff	(__ntoa_format@flags),(c:__out_rev@flags)
	movff	(__ntoa_format@flags+1),(c:__out_rev@flags+1)
	call	__out_rev	;wreg free
	movff	0+?__out_rev,(?__ntoa_format)
	movff	1+?__out_rev,(?__ntoa_format+1)
	line	277
	
l470:
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
psect	text18,class=CODE,space=0,reloc=2,group=0
	line	199
global __ptext18
__ptext18:
psect	text18
	file	"external/printf/printf.c"
	line	199
	
__out_rev:
;incstack = 0
	callstack 19
	line	201
	
l4671:
	movff	(c:__out_rev@idx),(c:__out_rev@start_idx)
	movff	(c:__out_rev@idx+1),(c:__out_rev@start_idx+1)
	line	204
	
	btfsc	((c:__out_rev@flags))^00h,c,(1)&7
	goto	u6201
	goto	u6200
u6201:
	goto	l4689
u6200:
	
l4673:
	
	btfsc	((c:__out_rev@flags))^00h,c,(0)&7
	goto	u6211
	goto	u6210
u6211:
	goto	l4689
u6210:
	line	205
	
l4675:
	movff	(c:__out_rev@len),(c:__out_rev@i)
	movff	(c:__out_rev@len+1),(c:__out_rev@i+1)
	goto	l4683
	line	206
	
l4677:
	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(c:__out_rev@buffer),(c:__out_fct@buffer)
	movff	(c:__out_rev@buffer+1),(c:__out_fct@buffer+1)

	movff	(c:__out_rev@idx),(c:__out_fct@idx)
	movff	(c:__out_rev@idx+1),(c:__out_fct@idx+1)
	movff	(c:__out_rev@maxlen),(c:__out_fct@maxlen)
	movff	(c:__out_rev@maxlen+1),(c:__out_fct@maxlen+1)
	call	u6228
	goto	u6229
u6228:
	push
	
	movwf	pclath
	movf	((c:__out_rev@out))^00h,c,w
	movwf	tosl
	movf	((c:__out_rev@out+1))^00h,c,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u6229:
	
l4679:
	infsnz	((c:__out_rev@idx))^00h,c
	incf	((c:__out_rev@idx+1))^00h,c
	line	207
	
l4681:
	infsnz	((c:__out_rev@i))^00h,c
	incf	((c:__out_rev@i+1))^00h,c
	
l4683:
		movf	((c:__out_rev@width))^00h,c,w
	subwf	((c:__out_rev@i))^00h,c,w
	movf	((c:__out_rev@width+1))^00h,c,w
	subwfb	((c:__out_rev@i+1))^00h,c,w
	btfss	status,0
	goto	u6231
	goto	u6230

u6231:
	goto	l4677
u6230:
	goto	l4689
	line	212
	
l4685:
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
	call	u6248
	goto	u6249
u6248:
	push
	
	movwf	pclath
	movf	((c:__out_rev@out))^00h,c,w
	movwf	tosl
	movf	((c:__out_rev@out+1))^00h,c,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u6249:
	
l4687:
	infsnz	((c:__out_rev@idx))^00h,c
	incf	((c:__out_rev@idx+1))^00h,c
	line	211
	
l4689:
	movf	((c:__out_rev@len))^00h,c,w
iorwf	((c:__out_rev@len+1))^00h,c,w
	btfss	status,2
	goto	u6251
	goto	u6250

u6251:
	goto	l4685
u6250:
	
l431:
	line	216
	
	btfss	((c:__out_rev@flags))^00h,c,(1)&7
	goto	u6261
	goto	u6260
u6261:
	goto	l432
u6260:
	goto	l4697
	line	218
	
l4693:
	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(c:__out_rev@buffer),(c:__out_fct@buffer)
	movff	(c:__out_rev@buffer+1),(c:__out_fct@buffer+1)

	movff	(c:__out_rev@idx),(c:__out_fct@idx)
	movff	(c:__out_rev@idx+1),(c:__out_fct@idx+1)
	movff	(c:__out_rev@maxlen),(c:__out_fct@maxlen)
	movff	(c:__out_rev@maxlen+1),(c:__out_fct@maxlen+1)
	call	u6278
	goto	u6279
u6278:
	push
	
	movwf	pclath
	movf	((c:__out_rev@out))^00h,c,w
	movwf	tosl
	movf	((c:__out_rev@out+1))^00h,c,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u6279:
	
l4695:
	infsnz	((c:__out_rev@idx))^00h,c
	incf	((c:__out_rev@idx+1))^00h,c
	line	217
	
l4697:
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
	goto	u6281
	goto	u6280

u6281:
	goto	l4693
u6280:
	line	220
	
l432:
	line	222
	movff	(c:__out_rev@idx),(c:?__out_rev)
	movff	(c:__out_rev@idx+1),(c:?__out_rev+1)
	line	223
	
l436:
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
psect	text19,class=CODE,space=0,reloc=2,inline,keep,group=0
	line	159
global __ptext19
__ptext19:
psect	text19
	file	"external/printf/printf.c"
	line	159
	
__out_fct:
;incstack = 0
	callstack 21
	line	162
	
l4669:
	line	166
	
l403:
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
psect	text20,class=CODE,space=0,reloc=2,inline,keep,group=0
	line	149
global __ptext20
__ptext20:
psect	text20
	file	"external/printf/printf.c"
	line	149
	
__out_char:
;incstack = 0
	callstack 21
	line	152
	
l4665:
	movf	((c:__out_char@character))^00h,c,w
	btfsc	status,2
	goto	u6191
	goto	u6190
u6191:
	goto	l399
u6190:
	line	153
	
l4667:
	movf	((c:__out_char@character))^00h,c,w
	
	call	__putchar
	line	155
	
l399:
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
psect	text21,class=CODE,space=0,reloc=2,inline,keep,group=0
	line	133
global __ptext21
__ptext21:
psect	text21
	file	"external/printf/printf.c"
	line	133
	
__out_buffer:
;incstack = 0
	callstack 21
	line	135
	
l4661:
		movf	((c:__out_buffer@maxlen))^00h,c,w
	subwf	((c:__out_buffer@idx))^00h,c,w
	movf	((c:__out_buffer@maxlen+1))^00h,c,w
	subwfb	((c:__out_buffer@idx+1))^00h,c,w
	btfsc	status,0
	goto	u6181
	goto	u6180

u6181:
	goto	l392
u6180:
	line	136
	
l4663:
	movf	((c:__out_buffer@idx))^00h,c,w
	addwf	((c:__out_buffer@buffer))^00h,c,w
	movwf	c:fsr2l
	movf	((c:__out_buffer@idx+1))^00h,c,w
	addwfc	((c:__out_buffer@buffer+1))^00h,c,w
	movwf	1+c:fsr2l
	movff	(c:__out_buffer@character),indf2

	line	138
	
l392:
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
psect	text22,class=CODE,space=0,reloc=2,inline,keep,group=0
	line	142
global __ptext22
__ptext22:
psect	text22
	file	"external/printf/printf.c"
	line	142
	
__out_null:
;incstack = 0
	callstack 21
	line	145
	
l395:
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
psect	text23,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	109
global __ptext23
__ptext23:
psect	text23
	file	"src/uart.c"
	line	109
	
__putchar:
;incstack = 0
	callstack 19
	movwf	((c:__putchar@c))^00h,c
	line	111
	
l4657:
		movlw	low(_tx_buffer)
	movwf	((c:Buffer_Add@buffer))^00h,c
	movlw	high(_tx_buffer)
	movwf	((c:Buffer_Add@buffer+1))^00h,c

	movff	(c:__putchar@c),(c:Buffer_Add@element)
	call	_Buffer_Add	;wreg free
	line	112
	
l4659:
	bsf	((c:3997))^0f00h,c,4	;volatile
	line	113
	
l227:
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
psect	text24,class=CODE,space=0,reloc=2,group=0
	file	"src/buffer.c"
	line	9
global __ptext24
__ptext24:
psect	text24
	file	"src/buffer.c"
	line	9
	
_Buffer_Add:
;incstack = 0
	callstack 19
	line	11
	
l4643:
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
	
l4645:
		movlw	20
	xorwf	((c:Buffer_Add@next_head))^00h,c,w
	btfss	status,2
	goto	u6161
	goto	u6160

u6161:
	goto	l4649
u6160:
	line	14
	
l4647:
	clrf	((c:Buffer_Add@next_head))^00h,c
	line	16
	
l4649:
	lfsr	2,015h
	movf	((c:Buffer_Add@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Add@buffer+1))^00h,c,w
	addwfc	fsr2h
	movf	((c:Buffer_Add@next_head))^00h,c,w
xorwf	postinc2,w
	btfss	status,2
	goto	u6171
	goto	u6170

u6171:
	goto	l4653
u6170:
	goto	l168
	line	22
	
l4653:
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
	
l168:
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
psect	text25,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/llmod.c"
	line	7
global __ptext25
__ptext25:
psect	text25
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/llmod.c"
	line	7
	
___llmod:
;incstack = 0
	callstack 23
	line	12
	
l4831:
	movf	((c:___llmod@divisor))^00h,c,w
iorwf	((c:___llmod@divisor+1))^00h,c,w
iorwf	((c:___llmod@divisor+2))^00h,c,w
iorwf	((c:___llmod@divisor+3))^00h,c,w
	btfsc	status,2
	goto	u6641
	goto	u6640

u6641:
	goto	l1186
u6640:
	line	13
	
l4833:
	movlw	low(01h)
	movwf	((c:___llmod@counter))^00h,c
	line	14
	goto	l4837
	line	15
	
l4835:
	bcf	status,0
	rlcf	((c:___llmod@divisor))^00h,c
	rlcf	((c:___llmod@divisor+1))^00h,c
	rlcf	((c:___llmod@divisor+2))^00h,c
	rlcf	((c:___llmod@divisor+3))^00h,c
	line	16
	incf	((c:___llmod@counter))^00h,c
	line	14
	
l4837:
	
	btfss	((c:___llmod@divisor+3))^00h,c,(31)&7
	goto	u6651
	goto	u6650
u6651:
	goto	l4835
u6650:
	line	19
	
l4839:
		movf	((c:___llmod@divisor))^00h,c,w
	subwf	((c:___llmod@dividend))^00h,c,w
	movf	((c:___llmod@divisor+1))^00h,c,w
	subwfb	((c:___llmod@dividend+1))^00h,c,w
	movf	((c:___llmod@divisor+2))^00h,c,w
	subwfb	((c:___llmod@dividend+2))^00h,c,w
	movf	((c:___llmod@divisor+3))^00h,c,w
	subwfb	((c:___llmod@dividend+3))^00h,c,w
	btfss	status,0
	goto	u6661
	goto	u6660

u6661:
	goto	l4843
u6660:
	line	20
	
l4841:
	movf	((c:___llmod@divisor))^00h,c,w
	subwf	((c:___llmod@dividend))^00h,c
	movf	((c:___llmod@divisor+1))^00h,c,w
	subwfb	((c:___llmod@dividend+1))^00h,c
	movf	((c:___llmod@divisor+2))^00h,c,w
	subwfb	((c:___llmod@dividend+2))^00h,c
	movf	((c:___llmod@divisor+3))^00h,c,w
	subwfb	((c:___llmod@dividend+3))^00h,c
	line	21
	
l4843:
	bcf	status,0
	rrcf	((c:___llmod@divisor+3))^00h,c
	rrcf	((c:___llmod@divisor+2))^00h,c
	rrcf	((c:___llmod@divisor+1))^00h,c
	rrcf	((c:___llmod@divisor))^00h,c
	line	22
	
l4845:
	decfsz	((c:___llmod@counter))^00h,c
	
	goto	l4839
	line	23
	
l1186:
	line	24
	movff	(c:___llmod@dividend),(c:?___llmod)
	movff	(c:___llmod@dividend+1),(c:?___llmod+1)
	movff	(c:___llmod@dividend+2),(c:?___llmod+2)
	movff	(c:___llmod@dividend+3),(c:?___llmod+3)
	line	25
	
l1193:
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
;;  quotient        4   21[COMRAM] unsigned long 
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
psect	text26,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/__lldiv.c"
	line	7
global __ptext26
__ptext26:
psect	text26
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/__lldiv.c"
	line	7
	
___lldiv:
;incstack = 0
	callstack 23
	line	13
	
l4809:
	movlw	low(0)
	movwf	((c:___lldiv@quotient))^00h,c
	movlw	high(0)
	movwf	((c:___lldiv@quotient+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___lldiv@quotient+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___lldiv@quotient+3))^00h,c
	line	14
	
l4811:
	movf	((c:___lldiv@divisor))^00h,c,w
iorwf	((c:___lldiv@divisor+1))^00h,c,w
iorwf	((c:___lldiv@divisor+2))^00h,c,w
iorwf	((c:___lldiv@divisor+3))^00h,c,w
	btfsc	status,2
	goto	u6611
	goto	u6610

u6611:
	goto	l683
u6610:
	line	15
	
l4813:
	movlw	low(01h)
	movwf	((c:___lldiv@counter))^00h,c
	line	16
	goto	l4817
	line	17
	
l4815:
	bcf	status,0
	rlcf	((c:___lldiv@divisor))^00h,c
	rlcf	((c:___lldiv@divisor+1))^00h,c
	rlcf	((c:___lldiv@divisor+2))^00h,c
	rlcf	((c:___lldiv@divisor+3))^00h,c
	line	18
	incf	((c:___lldiv@counter))^00h,c
	line	16
	
l4817:
	
	btfss	((c:___lldiv@divisor+3))^00h,c,(31)&7
	goto	u6621
	goto	u6620
u6621:
	goto	l4815
u6620:
	line	21
	
l4819:
	bcf	status,0
	rlcf	((c:___lldiv@quotient))^00h,c
	rlcf	((c:___lldiv@quotient+1))^00h,c
	rlcf	((c:___lldiv@quotient+2))^00h,c
	rlcf	((c:___lldiv@quotient+3))^00h,c
	line	22
	
l4821:
		movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c,w
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c,w
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c,w
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c,w
	btfss	status,0
	goto	u6631
	goto	u6630

u6631:
	goto	l4827
u6630:
	line	23
	
l4823:
	movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c
	line	24
	
l4825:
	bsf	(0+(0/8)+(c:___lldiv@quotient))^00h,c,(0)&7
	line	26
	
l4827:
	bcf	status,0
	rrcf	((c:___lldiv@divisor+3))^00h,c
	rrcf	((c:___lldiv@divisor+2))^00h,c
	rrcf	((c:___lldiv@divisor+1))^00h,c
	rrcf	((c:___lldiv@divisor))^00h,c
	line	27
	
l4829:
	decfsz	((c:___lldiv@counter))^00h,c
	
	goto	l4819
	line	28
	
l683:
	line	29
	movff	(c:___lldiv@quotient),(c:?___lldiv)
	movff	(c:___lldiv@quotient+1),(c:?___lldiv+1)
	movff	(c:___lldiv@quotient+2),(c:?___lldiv+2)
	movff	(c:___lldiv@quotient+3),(c:?___lldiv+3)
	line	30
	
l690:
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
psect	text27,class=CODE,space=0,reloc=2,group=0
	file	"external/printf/printf.c"
	line	188
global __ptext27
__ptext27:
psect	text27
	file	"external/printf/printf.c"
	line	188
	
__atoi:
;incstack = 0
	callstack 23
	line	190
	
l4859:
	clrf	((c:__atoi@i+1))^00h,c
	movlw	low(0)
	movwf	((c:__atoi@i))^00h,c
	line	191
	goto	l4863
	line	192
	
l4861:
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
	
l4863:
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
	goto	u6691
	goto	u6690
u6691:
	goto	l4861
u6690:
	
l421:
	line	194
	movff	(c:__atoi@i),(c:?__atoi)
	movff	(c:__atoi@i+1),(c:?__atoi+1)
	line	195
	
l422:
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
psect	text28,class=CODE,space=0,reloc=2,inline,group=0
	line	181
global __ptext28
__ptext28:
psect	text28
	file	"external/printf/printf.c"
	line	181
	
__is_digit:
;incstack = 0
	callstack 23
	movwf	((c:__is_digit@ch))^00h,c
	line	183
	
l4699:
	clrf	((c:__is_digit$1189))^00h,c
	
l4701:
		movlw	030h-1
	cpfsgt	((c:__is_digit@ch))^00h,c
	goto	u6291
	goto	u6290

u6291:
	goto	l415
u6290:
	
l4703:
		movlw	03Ah-0
	cpfslt	((c:__is_digit@ch))^00h,c
	goto	u6301
	goto	u6300

u6301:
	goto	l415
u6300:
	
l4705:
	movlw	low(01h)
	movwf	((c:__is_digit$1189))^00h,c
	
l415:
	movf	((c:__is_digit$1189))^00h,c,w
	line	184
	
l416:
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
psect	text29,class=CODE,space=0,reloc=2,group=0
	file	"src/clock.c"
	line	4
global __ptext29
__ptext29:
psect	text29
	file	"src/clock.c"
	line	4
	
_clock_init:
;incstack = 0
	callstack 26
	line	6
	
l5439:
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
	
l310:
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
psect	text30,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/awmod.c"
	line	7
global __ptext30
__ptext30:
psect	text30
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/awmod.c"
	line	7
	
___awmod:
;incstack = 0
	callstack 26
	line	12
	
l5313:
	clrf	((c:___awmod@sign))^00h,c
	line	13
	
l5315:
	btfsc	((c:___awmod@dividend+1))^00h,c,7
	goto	u7650
	goto	u7651

u7651:
	goto	l5321
u7650:
	line	14
	
l5317:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	15
	
l5319:
	movlw	low(01h)
	movwf	((c:___awmod@sign))^00h,c
	line	17
	
l5321:
	btfsc	((c:___awmod@divisor+1))^00h,c,7
	goto	u7660
	goto	u7661

u7661:
	goto	l5325
u7660:
	line	18
	
l5323:
	negf	((c:___awmod@divisor))^00h,c
	comf	((c:___awmod@divisor+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@divisor+1))^00h,c
	line	19
	
l5325:
	movf	((c:___awmod@divisor))^00h,c,w
iorwf	((c:___awmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u7671
	goto	u7670

u7671:
	goto	l5341
u7670:
	line	20
	
l5327:
	movlw	low(01h)
	movwf	((c:___awmod@counter))^00h,c
	line	21
	goto	l5331
	line	22
	
l5329:
	bcf	status,0
	rlcf	((c:___awmod@divisor))^00h,c
	rlcf	((c:___awmod@divisor+1))^00h,c
	line	23
	incf	((c:___awmod@counter))^00h,c
	line	21
	
l5331:
	
	btfss	((c:___awmod@divisor+1))^00h,c,(15)&7
	goto	u7681
	goto	u7680
u7681:
	goto	l5329
u7680:
	line	26
	
l5333:
		movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c,w
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u7691
	goto	u7690

u7691:
	goto	l5337
u7690:
	line	27
	
l5335:
	movf	((c:___awmod@divisor))^00h,c,w
	subwf	((c:___awmod@dividend))^00h,c
	movf	((c:___awmod@divisor+1))^00h,c,w
	subwfb	((c:___awmod@dividend+1))^00h,c

	line	28
	
l5337:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1))^00h,c
	rrcf	((c:___awmod@divisor))^00h,c
	line	29
	
l5339:
	decfsz	((c:___awmod@counter))^00h,c
	
	goto	l5333
	line	31
	
l5341:
	movf	((c:___awmod@sign))^00h,c,w
	btfsc	status,2
	goto	u7701
	goto	u7700
u7701:
	goto	l5345
u7700:
	line	32
	
l5343:
	negf	((c:___awmod@dividend))^00h,c
	comf	((c:___awmod@dividend+1))^00h,c
	btfsc	status,0
	incf	((c:___awmod@dividend+1))^00h,c
	line	33
	
l5345:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	line	34
	
l1010:
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
psect	text31,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	33
global __ptext31
__ptext31:
psect	text31
	file	"src/uart.c"
	line	33
	
_Uart_Start:
;incstack = 0
	callstack 26
	line	35
	
l5385:
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
	
l5387:
	bsf	((c:4011))^0f00h,c,7	;volatile
	line	42
	
l5389:
	bsf	((c:4012))^0f00h,c,5	;volatile
	line	43
	
l5391:
	bsf	((c:4011))^0f00h,c,4	;volatile
	line	45
	
l5393:
	bcf	((c:3998))^0f00h,c,4	;volatile
	line	46
	
l5395:
	bcf	((c:3997))^0f00h,c,4	;volatile
	line	49
	
l5397:
	btfss	((c:3998))^0f00h,c,5	;volatile
	goto	u7741
	goto	u7740
u7741:
	goto	l211
u7740:
	line	51
	
l5399:
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
psect	text32,class=CODE,space=0,reloc=2,group=0
	file	"src/buffer.c"
	line	3
global __ptext32
__ptext32:
psect	text32
	file	"src/buffer.c"
	line	3
	
_Buffer_Init:
;incstack = 0
	callstack 26
	line	5
	
l5281:
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
	
l163:
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
psect	text33,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	115
global __ptext33
__ptext33:
psect	text33
	file	"src/uart.c"
	line	115
	
_Uart_Read:
;incstack = 0
	callstack 26
	line	117
	
l5537:
		movlw	low(_rx_buffer)
	movwf	((c:Buffer_Get@buffer))^00h,c
	movlw	high(_rx_buffer)
	movwf	((c:Buffer_Get@buffer+1))^00h,c

		movff	(c:Uart_Read@data),(c:Buffer_Get@element)

	call	_Buffer_Get	;wreg free
	line	118
	
l230:
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
;;		 -> Uart_InterruptHandler@c_691(1), main@c(1), 
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
psect	text34,class=CODE,space=0,reloc=2,group=0
	file	"src/buffer.c"
	line	27
global __ptext34
__ptext34:
psect	text34
	file	"src/buffer.c"
	line	27
	
_Buffer_Get:
;incstack = 0
	callstack 26
	line	29
	
l5283:
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
	goto	u7581
	goto	u7580

u7581:
	goto	l5289
u7580:
	line	32
	
l5285:
	movlw	(0)&0ffh
	goto	l172
	line	35
	
l5289:
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
	
l5291:
	lfsr	2,015h
	movf	((c:Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	incf	indf2

	line	38
	
l5293:
	lfsr	2,015h
	movf	((c:Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	movlw	20
	xorwf	postinc2,w
	btfss	status,2
	goto	u7591
	goto	u7590

u7591:
	goto	l5297
u7590:
	line	39
	
l5295:
	lfsr	2,015h
	movf	((c:Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	clrf	indf2
	line	41
	
l5297:
	movlw	(01h)&0ffh
	line	42
	
l172:
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
psect	text35,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	10
global __ptext35
__ptext35:
psect	text35
	file	"src/uart.c"
	line	10
	
_Uart_Init:
;incstack = 0
	callstack 27
	line	12
	
l5377:
	bcf	((c:4012))^0f00h,c,6	;volatile
	line	13
	bcf	((c:4011))^0f00h,c,6	;volatile
	line	14
	bcf	((c:4012))^0f00h,c,4	;volatile
	line	16
	
l5379:
	movf	((c:Uart_Init@uart))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	movlw	128
	xorwf	postinc2,w
	bnz	u7731
movlw	37
	xorwf	postinc2,w
iorwf	postinc2,w
iorwf	postinc2,w
	btfss	status,2
	goto	u7731
	goto	u7730

u7731:
	goto	l208
u7730:
	line	18
	
l5381:
	bsf	((c:4012))^0f00h,c,2	;volatile
	line	19
	bcf	((c:4024))^0f00h,c,3	;volatile
	line	21
	clrf	((c:4016))^0f00h,c	;volatile
	line	22
	
l5383:
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
psect	text36,class=CODE,space=0,reloc=2,group=0
	file	"app/app.c"
	line	41
global __ptext36
__ptext36:
psect	text36
	file	"app/app.c"
	line	41
	
_Button_Task:
;incstack = 0
	callstack 25
	line	43
	
l5513:
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
psect	text37,class=CODE,space=0,reloc=2,group=0
	file	"src/button_driver.c"
	line	16
global __ptext37
__ptext37:
psect	text37
	file	"src/button_driver.c"
	line	16
	
_button_update:
;incstack = 0
	callstack 25
	line	19
	
l5245:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	decf	postinc2,w
	btfss	status,2
	goto	u7471
	goto	u7470

u7471:
	goto	l5249
u7470:
	line	21
	
l5247:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:Gpio_Read@gpio)
	movff	postdec2,(c:Gpio_Read@gpio+1)
	call	_Gpio_Read	;wreg free
	decf	wreg
	btfsc	status,2
	goto	u7481
	goto	u7480
u7481:
	movlw	1
	goto	u7490
u7480:
	movlw	0
u7490:
	movwf	((c:button_update@state))^00h,c
	line	22
	goto	l5251
	line	25
	
l5249:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:Gpio_Read@gpio)
	movff	postdec2,(c:Gpio_Read@gpio+1)
	call	_Gpio_Read	;wreg free
	decf	wreg
	btfss	status,2
	goto	u7501
	goto	u7500
u7501:
	movlw	1
	goto	u7510
u7500:
	movlw	0
u7510:
	movwf	((c:button_update@state))^00h,c
	line	28
	
l5251:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	movf	((c:button_update@state))^00h,c,w
xorwf	postinc2,w
	btfss	status,2
	goto	u7521
	goto	u7520

u7521:
	goto	l5255
u7520:
	line	30
	
l5253:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(05h)
	addwf	fsr2l

	clrf	indf2
	line	31
	goto	l337
	line	33
	
l5255:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(05h)
	addwf	fsr2l

	incf	indf2

	line	34
	
l5257:
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
	goto	u7531
	goto	u7530

u7531:
	goto	l337
u7530:
	line	36
	
l5259:
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
	
l5261:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	movff	(c:button_update@state),indf2

	line	39
	
l5263:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	movf	indf2,w
	btfss	status,2
	goto	u7541
	goto	u7540
u7541:
	goto	l5269
u7540:
	
l5265:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	decf	postinc2,w
	btfss	status,2
	goto	u7551
	goto	u7550

u7551:
	goto	l5269
u7550:
	line	41
	
l5267:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

	movlw	low(01h)
	movwf	indf2
	line	42
	goto	l335
	line	43
	
l5269:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	decf	postinc2,w
	btfss	status,2
	goto	u7561
	goto	u7560

u7561:
	goto	l335
u7560:
	
l5271:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	movf	indf2,w
	btfss	status,2
	goto	u7571
	goto	u7570
u7571:
	goto	l335
u7570:
	line	45
	
l5273:
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

	movlw	low(02h)
	movwf	indf2
	line	46
	
l335:
	line	47
	movf	((c:button_update@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(05h)
	addwf	fsr2l

	clrf	indf2
	line	50
	
l337:
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
psect	text38,class=CODE,space=0,reloc=2,group=0
	file	"src/gpio.c"
	line	28
global __ptext38
__ptext38:
psect	text38
	file	"src/gpio.c"
	line	28
	
_Gpio_Read:
;incstack = 0
	callstack 25
	line	30
	
l4915:
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
	goto	u6834
u6835:
	bcf	status,0
	rlcf	((??_Gpio_Read+4))^00h,c
u6834:
	decfsz	((??_Gpio_Read+3))^00h,c
	goto	u6835
	movf	((??_Gpio_Read+4))^00h,c,w
	andwf	((??_Gpio_Read+2))^00h,c,w
	iorlw	0
	btfsc	status,2
	goto	u6841
	goto	u6840
u6841:
	goto	l4921
u6840:
	line	32
	
l4917:
	movlw	(01h)&0ffh
	goto	l157
	line	34
	
l4921:
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
psect	text39,class=CODE,space=0,reloc=2,group=0
	file	"app/app.c"
	line	49
global __ptext39
__ptext39:
psect	text39
	file	"app/app.c"
	line	49
	
_App_Task:
;incstack = 0
	callstack 26
	line	52
	
l5453:
		movlw	low(_btn_cfg)
	movwf	((c:button_get_event@btn))^00h,c

	call	_button_get_event	;wreg free
	xorlw	02h
	btfss	status,2
	goto	u7801
	goto	u7800
u7801:
	goto	l5467
u7800:
	goto	l5465
	line	57
	
l5457:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	low(01h)
	movwf	indf2
	line	58
	goto	l5467
	line	60
	
l5459:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	low(02h)
	movwf	indf2
	line	61
	goto	l5467
	line	63
	
l5461:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	clrf	indf2
	line	64
	goto	l5467
	line	65
	
l5465:
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
	goto	l5691
	goto	l5467
	
l5691:
; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	movf ??_App_Task+0^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l5457
	xorlw	1^0	; case 1
	skipnz
	goto	l5459
	xorlw	2^1	; case 2
	skipnz
	goto	l5461
	goto	l5467

	line	68
	
l5467:
		movlw	low(_btn_inc)
	movwf	((c:button_get_event@btn))^00h,c

	call	_button_get_event	;wreg free
	xorlw	02h
	btfss	status,2
	goto	u7811
	goto	u7810
u7811:
	goto	l5481
u7810:
	line	70
	
l5469:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	decf	postinc2,w
	btfss	status,2
	goto	u7821
	goto	u7820

u7821:
	goto	l5475
u7820:
	line	72
	
l5471:
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
	goto	u7831
	goto	u7830

u7831:
	goto	l5475
u7830:
	line	75
	
l5473:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	clrf	indf2
	line	79
	
l5475:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	2
	xorwf	postinc2,w
	btfss	status,2
	goto	u7841
	goto	u7840

u7841:
	goto	l5481
u7840:
	line	81
	
l5477:
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
	goto	u7851
	goto	u7850

u7851:
	goto	l5481
u7850:
	line	84
	
l5479:
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
	
l5481:
		movlw	low(_btn_dcr)
	movwf	((c:button_get_event@btn))^00h,c

	call	_button_get_event	;wreg free
	xorlw	02h
	btfss	status,2
	goto	u7861
	goto	u7860
u7861:
	goto	l143
u7860:
	line	91
	
l5483:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	decf	postinc2,w
	btfss	status,2
	goto	u7871
	goto	u7870

u7871:
	goto	l5491
u7870:
	line	93
	
l5485:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u7881
	goto	u7880
u7881:
	goto	l5489
u7880:
	line	95
	
l5487:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(018h)
	movwf	indf2
	line	97
	
l5489:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	decf	indf2

	line	100
	
l5491:
	movf	((c:App_Task@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	2
	xorwf	postinc2,w
	btfss	status,2
	goto	u7891
	goto	u7890

u7891:
	goto	l143
u7890:
	line	102
	
l5493:
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
	goto	u7901
	goto	u7900
u7901:
	goto	l142
u7900:
	line	104
	
l5495:
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
	
l142:
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
psect	text40,class=CODE,space=0,reloc=2,group=0
	file	"src/button_driver.c"
	line	52
global __ptext40
__ptext40:
psect	text40
	file	"src/button_driver.c"
	line	52
	
_button_get_event:
;incstack = 0
	callstack 26
	line	54
	
l5275:
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
	
l5277:
	movf	((c:button_get_event@event))^00h,c,w
	line	57
	
l340:
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
psect	text41,class=CODE,space=0,reloc=2,group=0
	file	"app/app.c"
	line	31
global __ptext41
__ptext41:
psect	text41
	file	"app/app.c"
	line	31
	
_App_Init:
;incstack = 0
	callstack 25
	line	33
	
l5367:
	movf	((c:App_Init@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:App_Init@clk),indf2

	line	34
	
l5369:
	movf	((c:App_Init@app))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	clrf	indf2
	line	36
	
l5371:
		movlw	low(_btn_cfg)
	movwf	((c:button_init@btn))^00h,c

		movlw	low(_button_cfg)
	movwf	((c:button_init@gpio))^00h,c
	clrf	((c:button_init@gpio+1))^00h,c

	movlw	low(0)
	movwf	((c:button_init@polarity))^00h,c
	movlw	low(019h)
	movwf	((c:button_init@debounce_ticks))^00h,c
	call	_button_init	;wreg free
	line	37
	
l5373:
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
	
l5375:
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
psect	text42,class=CODE,space=0,reloc=2,group=0
	file	"src/button_driver.c"
	line	3
global __ptext42
__ptext42:
psect	text42
	file	"src/button_driver.c"
	line	3
	
_button_init:
;incstack = 0
	callstack 25
	line	5
	
l5229:
	movf	((c:button_init@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	(c:button_init@gpio),postinc2
	movff	(c:button_init@gpio+1),postdec2
	line	6
	
l5231:
	movf	((c:button_init@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movff	(c:button_init@polarity),indf2

	line	7
	
l5233:
	movf	((c:button_init@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	clrf	indf2
	line	8
	
l5235:
	movf	((c:button_init@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	clrf	indf2
	line	9
	
l5237:
	movf	((c:button_init@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(05h)
	addwf	fsr2l

	clrf	indf2
	line	10
	
l5239:
	movf	((c:button_init@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movff	(c:button_init@debounce_ticks),indf2

	line	11
	
l5241:
	movf	((c:button_init@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

	clrf	indf2
	line	13
	
l5243:
	movf	((c:button_init@btn))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:Gpio_Init@gpio)
	movff	postdec2,(c:Gpio_Init@gpio+1)
	movlw	low(01h)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	14
	
l326:
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
;;		 -> button_dcr(7), button_inc(7), button_cfg(7), tx(7), 
;;		 -> rx(7), colon_control(7), colon(7), control(28), 
;;		 -> data(49), 
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
psect	text43,class=CODE,space=0,reloc=2,group=0
	file	"src/gpio.c"
	line	4
global __ptext43
__ptext43:
psect	text43
	file	"src/gpio.c"
	line	4
	
_Gpio_Init:
;incstack = 0
	callstack 25
	line	6
	
l4903:
	movf	((c:Gpio_Init@dir))^00h,c,w
	btfss	status,2
	goto	u6771
	goto	u6770
u6771:
	goto	l4907
u6770:
	line	8
	
l4905:
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
	goto	u6784
u6785:
	bcf	status,0
	rlcf	((??_Gpio_Init+1))^00h,c
u6784:
	decfsz	((??_Gpio_Init+0))^00h,c
	goto	u6785
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
	goto	l148
	line	12
	
l4907:
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
	goto	u6794
u6795:
	bcf	status,0
	rlcf	((??_Gpio_Init+1))^00h,c
u6794:
	decfsz	((??_Gpio_Init+0))^00h,c
	goto	u6795
	movff	(c:Gpio_Init@gpio),fsr2l
	movff	(c:Gpio_Init@gpio+1),fsr2h
	movff	postinc2,??_Gpio_Init+2
	movff	postdec2,??_Gpio_Init+2+1
	movff	??_Gpio_Init+2,fsr2l
	movff	??_Gpio_Init+2+1,fsr2h
	movf	((??_Gpio_Init+1))^00h,c,w
	iorwf	indf2
	line	14
	
l148:
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
	
i2l5605:
	movlw	0
	btfsc	((c:3998))^0f00h,c,5	;volatile
	movlw	1
	btfsc	((c:3998))^0f00h,c,4	;volatile
	movlw	1

	btfsc	wreg,0
	goto	i2u810_41
	goto	i2u810_40
i2u810_41:
	clrf	(??_ISR+0)^00h,c
	incf	(??_ISR+0)^00h,c
	goto	i2u810_48
i2u810_40:
	clrf	(??_ISR+0)^00h,c
i2u810_48:
	movf	(??_ISR+0)^00h,c,w
	btfsc	status,2
	goto	i2u811_41
	goto	i2u811_40
i2u811_41:
	goto	i2l5609
i2u811_40:
	line	14
	
i2l5607:
	call	_Uart_InterruptHandler	;wreg free
	line	18
	
i2l5609:
	btfss	((c:4082))^0f00h,c,2	;volatile
	goto	i2u812_41
	goto	i2u812_40
i2u812_41:
	goto	i2l275
i2u812_40:
	
i2l5611:
	btfss	((c:4082))^0f00h,c,5	;volatile
	goto	i2u813_41
	goto	i2u813_40
i2u813_41:
	goto	i2l275
i2u813_40:
	line	21
	
i2l5613:
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	25
	
i2l5615:
	movlw	low(0FBh)
	movwf	((c:4055))^0f00h,c	;volatile
	line	26
	movlw	low(01Eh)
	movwf	((c:4054))^0f00h,c	;volatile
	line	30
	
i2l5617:
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
psect	text45,class=CODE,space=0,reloc=2,group=0
	file	"src/system_tick.c"
	line	8
global __ptext45
__ptext45:
psect	text45
	file	"src/system_tick.c"
	line	8
	
_system_tick_1ms:
;incstack = 0
	callstack 20
	line	10
	
i2l2369:
		incf	((c:_pending_ticks))^00h,c,w	;volatile
	btfsc	status,2
	goto	i2u189_41
	goto	i2u189_40

i2u189_41:
	goto	i2l290
i2u189_40:
	line	12
	
i2l2371:
	incf	((c:_pending_ticks))^00h,c	;volatile
	line	14
	
i2l290:
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
psect	text46,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	66
global __ptext46
__ptext46:
psect	text46
	file	"src/uart.c"
	line	66
	
_Uart_InterruptHandler:
;incstack = 0
	callstack 19
	line	69
	
i2l5541:
	btfss	((c:3998))^0f00h,c,5	;volatile
	goto	i2u796_41
	goto	i2u796_40
i2u796_41:
	goto	i2l5551
i2u796_40:
	line	72
	
i2l5543:
	btfss	((c:4011))^0f00h,c,1	;volatile
	goto	i2u797_41
	goto	i2u797_40
i2u797_41:
	goto	i2l219
i2u797_40:
	line	75
	
i2l5545:
	bcf	((c:4011))^0f00h,c,4	;volatile
	line	76
	bsf	((c:4011))^0f00h,c,4	;volatile
	line	77
	goto	i2l220
	line	78
	
i2l219:
	line	80
	btfss	((c:4011))^0f00h,c,2	;volatile
	goto	i2u798_41
	goto	i2u798_40
i2u798_41:
	goto	i2l221
i2u798_40:
	line	83
	
i2l5547:
	movf	((c:4014))^0f00h,c,w	;volatile
	line	84
	goto	i2l220
	line	85
	
i2l221:
	line	87
	movff	(c:4014),(c:Uart_InterruptHandler@c)	;volatile
	line	88
	
i2l5549:
		movlw	low(_rx_buffer)
	movwf	((c:i2Buffer_Add@buffer))^00h,c
	movlw	high(_rx_buffer)
	movwf	((c:i2Buffer_Add@buffer+1))^00h,c

	movff	(c:Uart_InterruptHandler@c),(c:i2Buffer_Add@element)
	call	i2_Buffer_Add	;wreg free
	line	93
	
i2l5551:
	btfss	((c:3998))^0f00h,c,4	;volatile
	goto	i2u799_41
	goto	i2u799_40
i2u799_41:
	goto	i2l220
i2u799_40:
	
i2l5553:
	btfss	((c:3997))^0f00h,c,4	;volatile
	goto	i2u800_41
	goto	i2u800_40
i2u800_41:
	goto	i2l220
i2u800_40:
	line	96
	
i2l5555:
		movlw	low(_tx_buffer)
	movwf	((c:i2Buffer_Get@buffer))^00h,c
	movlw	high(_tx_buffer)
	movwf	((c:i2Buffer_Get@buffer+1))^00h,c

		movlw	low(Uart_InterruptHandler@c_691)
	movwf	((c:i2Buffer_Get@element))^00h,c

	call	i2_Buffer_Get	;wreg free
	iorlw	0
	btfsc	status,2
	goto	i2u801_41
	goto	i2u801_40
i2u801_41:
	goto	i2l223
i2u801_40:
	line	98
	
i2l5557:
	movff	(c:Uart_InterruptHandler@c_691),(c:4013)	;volatile
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
	global	i2_Buffer_Get

;; *************** function i2_Buffer_Get *****************
;; Defined at:
;;		line 27 in file "src/buffer.c"
;; Parameters:    Size  Location     Type
;;  buffer          2    0[COMRAM] PTR volatile struct .
;;		 -> rx_buffer(22), tx_buffer(22), 
;;  element         1    2[COMRAM] PTR unsigned char 
;;		 -> Uart_InterruptHandler@c_691(1), main@c(1), 
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
psect	text47,class=CODE,space=0,reloc=2,group=0
	file	"src/buffer.c"
	line	27
global __ptext47
__ptext47:
psect	text47
	file	"src/buffer.c"
	line	27
	
i2_Buffer_Get:
;incstack = 0
	callstack 19
	line	29
	
i2l5349:
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
	goto	i2u771_41
	goto	i2u771_40

i2u771_41:
	goto	i2l5355
i2u771_40:
	line	32
	
i2l5351:
	movlw	(0)&0ffh
	goto	i2l172
	line	35
	
i2l5355:
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
	
i2l5357:
	lfsr	2,015h
	movf	((c:i2Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:i2Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	incf	indf2

	line	38
	
i2l5359:
	lfsr	2,015h
	movf	((c:i2Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:i2Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	movlw	20
	xorwf	postinc2,w
	btfss	status,2
	goto	i2u772_41
	goto	i2u772_40

i2u772_41:
	goto	i2l5363
i2u772_40:
	line	39
	
i2l5361:
	lfsr	2,015h
	movf	((c:i2Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:i2Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	clrf	indf2
	line	41
	
i2l5363:
	movlw	(01h)&0ffh
	line	42
	
i2l172:
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
psect	text48,class=CODE,space=0,reloc=2,group=0
	line	9
global __ptext48
__ptext48:
psect	text48
	file	"src/buffer.c"
	line	9
	
i2_Buffer_Add:
;incstack = 0
	callstack 19
	line	11
	
i2l4287:
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
	
i2l4289:
		movlw	20
	xorwf	((c:i2Buffer_Add@next_head))^00h,c,w
	btfss	status,2
	goto	i2u567_41
	goto	i2u567_40

i2u567_41:
	goto	i2l4293
i2u567_40:
	line	14
	
i2l4291:
	clrf	((c:i2Buffer_Add@next_head))^00h,c
	line	16
	
i2l4293:
	lfsr	2,015h
	movf	((c:i2Buffer_Add@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:i2Buffer_Add@buffer+1))^00h,c,w
	addwfc	fsr2h
	movf	((c:i2Buffer_Add@next_head))^00h,c,w
xorwf	postinc2,w
	btfss	status,2
	goto	i2u568_41
	goto	i2u568_40

i2u568_41:
	goto	i2l4297
i2u568_40:
	goto	i2l168
	line	22
	
i2l4297:
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
	
i2l168:
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

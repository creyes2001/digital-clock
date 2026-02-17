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
	debug_source C
	FNCALL	_main,_Gpio_Init
	FNCALL	_main,_Gpio_Read
	FNCALL	_main,_Gpio_Write
	FNCALL	_main,_Uart_Init
	FNCALL	_main,_Uart_Read
	FNCALL	_main,_Uart_Start
	FNCALL	_main,_isr_init
	FNCALL	_main,_printf_
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
	FNCALL	_Uart_Start,_Buffer_Init
	FNCALL	_Uart_Start,_Gpio_Init
	FNCALL	_Uart_Read,_Buffer_Get
	FNROOT	_main
	FNCALL	_ISR,_Uart_InterruptHandler
	FNCALL	_Uart_InterruptHandler,i2_Buffer_Add
	FNCALL	_Uart_InterruptHandler,i2_Buffer_Get
	FNCALL	intlevel2,_ISR
	global	intlevel2
	FNROOT	intlevel2
	global	_rx
	global	_tx
	global	_button
	global	_led
	global	_uart_config
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"main.c"
	line	23

;initializer for _rx
		db	low(3988)
	db	high(3988)

		db	low(3979)
	db	high(3979)

		db	low(3970)
	db	high(3970)

	db	low(07h)
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	line	30

;initializer for _tx
		db	low(3988)
	db	high(3988)

		db	low(3979)
	db	high(3979)

		db	low(3970)
	db	high(3970)

	db	low(06h)
	line	16

;initializer for _button
		db	low(3987)
	db	high(3987)

		db	low(3978)
	db	high(3978)

		db	low(3969)
	db	high(3969)

	db	low(0)
	line	9

;initializer for _led
		db	low(3989)
	db	high(3989)

		db	low(3980)
	db	high(3980)

		db	low(3971)
	db	high(3971)

	db	low(0)
	line	37

;initializer for _uart_config
		db	low(_rx)

		db	low(_tx)

	dw	(02580h) & 0xffff
	dw	highword(02580h)
	global	fctprintf@F291
	global	_tx_buffer
	global	_rx_buffer
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
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	
STR_1:
	db	67	;'C'
	db	82	;'R'
	db	73	;'I'
	db	83	;'S'
	db	32
	db	37
	db	100	;'d'
	db	10
	db	13
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
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"main.c"
	line	23
_rx:
       ds      7
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
_tx_buffer:
       ds      22
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"main.c"
	line	30
_tx:
       ds      7
psect	dataBANK0
	file	"main.c"
	line	16
	global	_button
_button:
       ds      7
psect	dataBANK0
	file	"main.c"
	line	9
	global	_led
_led:
       ds      7
psect	dataBANK0
	file	"main.c"
	line	37
	global	_uart_config
_uart_config:
       ds      6
psect	bssBANK1,class=BANK1,space=1,noexec,lowdata
global __pbssBANK1
__pbssBANK1:
_rx_buffer:
       ds      22
	file	"build/bin/clock.s"
	line	#
psect	cinit
; Initialize objects allocated to BANK0 (27 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,27
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to COMRAM (7 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,7
	copy_data1:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data1
	line	#
; Clear objects allocated to BANK1 (22 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	22
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK0 (22 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	22
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to COMRAM (4 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+3)&0xffh,c
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
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
	global	__vsnprintf$904
__vsnprintf$904:	; 4 bytes @ 0x0
	ds   4
	global	__vsnprintf$906
__vsnprintf$906:	; 2 bytes @ 0x4
	ds   2
	global	__vsnprintf$907
__vsnprintf$907:	; 2 bytes @ 0x6
	ds   2
	global	__vsnprintf@value_908
__vsnprintf@value_908:	; 2 bytes @ 0x8
	ds   2
	global	__vsnprintf$909
__vsnprintf$909:	; 2 bytes @ 0xA
	ds   2
	global	__vsnprintf$914
__vsnprintf$914:	; 2 bytes @ 0xC
	ds   2
	global	__vsnprintf$915
__vsnprintf$915:	; 2 bytes @ 0xE
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
	global	__vsnprintf@l_912
__vsnprintf@l_912:	; 2 bytes @ 0x18
	ds   2
	global	__vsnprintf@p
__vsnprintf@p:	; 1 bytes @ 0x1A
	ds   1
	global	__vsnprintf@value
__vsnprintf@value:	; 4 bytes @ 0x1B
	ds   4
	global	__vsnprintf@value_905
__vsnprintf@value_905:	; 2 bytes @ 0x1F
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
	global	?__ntoa_long
?__ntoa_long:	; 2 bytes @ 0x0
	global	__ntoa_long@out
__ntoa_long@out:	; 2 bytes @ 0x0
	ds   2
	global	__ntoa_long@buffer
__ntoa_long@buffer:	; 2 bytes @ 0x2
	ds   2
	global	__ntoa_long@idx
__ntoa_long@idx:	; 2 bytes @ 0x4
	ds   2
	global	__ntoa_long@maxlen
__ntoa_long@maxlen:	; 2 bytes @ 0x6
	ds   2
	global	__ntoa_long@value
__ntoa_long@value:	; 4 bytes @ 0x8
	ds   4
	global	__ntoa_long@negative
__ntoa_long@negative:	; 1 bytes @ 0xC
	ds   1
	global	__ntoa_long@base
__ntoa_long@base:	; 4 bytes @ 0xD
	ds   4
	global	__ntoa_long@prec
__ntoa_long@prec:	; 2 bytes @ 0x11
	ds   2
	global	__ntoa_long@width
__ntoa_long@width:	; 2 bytes @ 0x13
	ds   2
	global	__ntoa_long@flags
__ntoa_long@flags:	; 2 bytes @ 0x15
	ds   2
	global	__ntoa_long@buf
__ntoa_long@buf:	; 32 bytes @ 0x17
	ds   32
	global	__ntoa_long$876
__ntoa_long$876:	; 2 bytes @ 0x37
	ds   2
	global	__ntoa_long$877
__ntoa_long$877:	; 2 bytes @ 0x39
	ds   2
	global	__ntoa_long@digit
__ntoa_long@digit:	; 1 bytes @ 0x3B
	ds   1
	global	__ntoa_long@len
__ntoa_long@len:	; 2 bytes @ 0x3C
	ds   2
	global	?__vsnprintf
?__vsnprintf:	; 2 bytes @ 0x3E
	global	__vsnprintf@out
__vsnprintf@out:	; 2 bytes @ 0x3E
	ds   2
	global	__vsnprintf@buffer
__vsnprintf@buffer:	; 2 bytes @ 0x40
	ds   2
	global	__vsnprintf@maxlen
__vsnprintf@maxlen:	; 2 bytes @ 0x42
	ds   2
	global	__vsnprintf@format
__vsnprintf@format:	; 1 bytes @ 0x44
	ds   1
	global	__vsnprintf@va
__vsnprintf@va:	; 2 bytes @ 0x45
	ds   2
??__vsnprintf:	; 1 bytes @ 0x47
	ds   2
	global	?_printf_
?_printf_:	; 2 bytes @ 0x49
	global	printf_@format
printf_@format:	; 1 bytes @ 0x49
	ds   3
	global	printf_@buffer
printf_@buffer:	; 1 bytes @ 0x4C
	ds   1
	global	printf_@va
printf_@va:	; 1 bytes @ 0x4D
	ds   1
??_main:	; 1 bytes @ 0x4E
	ds   2
	global	main@level
main@level:	; 1 bytes @ 0x50
	ds   1
	global	main@c
main@c:	; 1 bytes @ 0x51
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_isr_init:	; 1 bytes @ 0x0
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
	global	Uart_InterruptHandler@c_494
Uart_InterruptHandler@c_494:	; 1 bytes @ 0x6
	ds   1
??_ISR:	; 1 bytes @ 0x7
	ds   5
?_Gpio_Init:	; 1 bytes @ 0xC
?_Uart_Init:	; 1 bytes @ 0xC
?_Gpio_Write:	; 1 bytes @ 0xC
?_Gpio_Read:	; 1 bytes @ 0xC
?_Buffer_Init:	; 1 bytes @ 0xC
?_Buffer_Add:	; 1 bytes @ 0xC
?_Buffer_Get:	; 1 bytes @ 0xC
	global	?__strnlen_s
?__strnlen_s:	; 2 bytes @ 0xC
	global	?___llmod
?___llmod:	; 4 bytes @ 0xC
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0xC
	global	Gpio_Init@gpio
Gpio_Init@gpio:	; 1 bytes @ 0xC
	global	Gpio_Write@gpio
Gpio_Write@gpio:	; 1 bytes @ 0xC
	global	Gpio_Read@gpio
Gpio_Read@gpio:	; 1 bytes @ 0xC
	global	Uart_Init@uart
Uart_Init@uart:	; 1 bytes @ 0xC
	global	__strnlen_s@str
__strnlen_s@str:	; 1 bytes @ 0xC
	global	__is_digit$812
__is_digit$812:	; 1 bytes @ 0xC
	global	Buffer_Init@buffer
Buffer_Init@buffer:	; 2 bytes @ 0xC
	global	Buffer_Add@buffer
Buffer_Add@buffer:	; 2 bytes @ 0xC
	global	Buffer_Get@buffer
Buffer_Get@buffer:	; 2 bytes @ 0xC
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0xC
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0xC
??_isr_init:	; 1 bytes @ 0xC
??__is_digit:	; 1 bytes @ 0xC
	ds   1
	global	Gpio_Init@dir
Gpio_Init@dir:	; 1 bytes @ 0xD
	global	Gpio_Write@level
Gpio_Write@level:	; 1 bytes @ 0xD
	global	__is_digit@ch
__is_digit@ch:	; 1 bytes @ 0xD
	global	__strnlen_s@maxsize
__strnlen_s@maxsize:	; 2 bytes @ 0xD
??_Uart_Init:	; 1 bytes @ 0xD
??_Gpio_Read:	; 1 bytes @ 0xD
	ds   1
	global	?__atoi
?__atoi:	; 2 bytes @ 0xE
	global	Buffer_Add@element
Buffer_Add@element:	; 1 bytes @ 0xE
	global	Buffer_Get@element
Buffer_Get@element:	; 1 bytes @ 0xE
	global	__atoi@str
__atoi@str:	; 1 bytes @ 0xE
??_Gpio_Init:	; 1 bytes @ 0xE
??_Gpio_Write:	; 1 bytes @ 0xE
??_Buffer_Init:	; 1 bytes @ 0xE
	ds   1
	global	__strnlen_s@s
__strnlen_s@s:	; 1 bytes @ 0xF
??_Buffer_Add:	; 1 bytes @ 0xF
??_Buffer_Get:	; 1 bytes @ 0xF
??__strnlen_s:	; 1 bytes @ 0xF
	ds   1
	global	Buffer_Add@next_head
Buffer_Add@next_head:	; 1 bytes @ 0x10
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x10
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x10
??__atoi:	; 1 bytes @ 0x10
	ds   1
?_Uart_Read:	; 1 bytes @ 0x11
	global	__putchar@c
__putchar@c:	; 1 bytes @ 0x11
	global	Uart_Read@data
Uart_Read@data:	; 1 bytes @ 0x11
??__putchar:	; 1 bytes @ 0x11
	ds   1
?__out_buffer:	; 1 bytes @ 0x12
?__out_null:	; 1 bytes @ 0x12
?__out_char:	; 1 bytes @ 0x12
?__out_fct:	; 1 bytes @ 0x12
	global	__out_buffer@character
__out_buffer@character:	; 1 bytes @ 0x12
__out_null@character:	; 1 bytes @ 0x12
	global	__out_char@character
__out_char@character:	; 1 bytes @ 0x12
	global	__out_fct@character
__out_fct@character:	; 1 bytes @ 0x12
??_Uart_Read:	; 1 bytes @ 0x12
	ds   1
?_Uart_Start:	; 1 bytes @ 0x13
	global	Uart_Start@uart
Uart_Start@uart:	; 1 bytes @ 0x13
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
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x14
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x14
??_Uart_Start:	; 1 bytes @ 0x14
??___llmod:	; 1 bytes @ 0x14
??___lldiv:	; 1 bytes @ 0x14
	ds   1
	global	__out_buffer@idx
__out_buffer@idx:	; 2 bytes @ 0x15
__out_null@idx:	; 2 bytes @ 0x15
__out_char@idx:	; 2 bytes @ 0x15
	global	__out_fct@idx
__out_fct@idx:	; 2 bytes @ 0x15
	ds   2
	global	__out_buffer@maxlen
__out_buffer@maxlen:	; 2 bytes @ 0x17
__out_null@maxlen:	; 2 bytes @ 0x17
__out_char@maxlen:	; 2 bytes @ 0x17
	global	__out_fct@maxlen
__out_fct@maxlen:	; 2 bytes @ 0x17
	ds   1
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x18
	ds   1
	global	?__out_rev
?__out_rev:	; 2 bytes @ 0x19
	global	__out_rev@out
__out_rev@out:	; 2 bytes @ 0x19
??__out_null:	; 1 bytes @ 0x19
??__out_char:	; 1 bytes @ 0x19
??__out_fct:	; 1 bytes @ 0x19
	ds   2
	global	__out_rev@buffer
__out_rev@buffer:	; 2 bytes @ 0x1B
	ds   2
	global	__out_rev@idx
__out_rev@idx:	; 2 bytes @ 0x1D
	ds   2
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
??__ntoa_format:	; 1 bytes @ 0x42
	ds   2
??__ntoa_long:	; 1 bytes @ 0x44
	ds   2
??_printf_:	; 1 bytes @ 0x46
;!
;!Data Sizes:
;!    Strings     10
;!    Constant    0
;!    Data        34
;!    BSS         48
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     70      81
;!    BANK0           160     82     131
;!    BANK1           256     43      65
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    _atoi@str	PTR PTR const unsigned char  size(1) Largest target is 1
;!		 -> _vsnprintf@format(BANK0[1]), 
;!
;!    Buffer_Add@buffer	PTR volatile struct . size(2) Largest target is 22
;!		 -> rx_buffer(BANK1[22]), tx_buffer(BANK0[22]), 
;!
;!    Buffer_Get@buffer	PTR volatile struct . size(2) Largest target is 22
;!		 -> rx_buffer(BANK1[22]), tx_buffer(BANK0[22]), 
;!
;!    Buffer_Get@element	PTR unsigned char  size(1) Largest target is 1
;!		 -> main@c(BANK0[1]), Uart_InterruptHandler@c_494(COMRAM[1]), 
;!
;!    Buffer_Init@buffer	PTR volatile struct . size(2) Largest target is 22
;!		 -> rx_buffer(BANK1[22]), tx_buffer(BANK0[22]), 
;!
;!    button$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    button$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    button$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), 
;!
;!    F291$arg	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    F291$fct	PTR FTN(unsigned char ,PTR void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    Gpio_Init@gpio	PTR struct . size(1) Largest target is 7
;!		 -> button(BANK0[7]), led(BANK0[7]), rx(COMRAM[7]), tx(BANK0[7]), 
;!
;!    Gpio_Init@gpio$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    Gpio_Init@gpio$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    Gpio_Init@gpio$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), 
;!
;!    Gpio_Read@gpio	PTR struct . size(1) Largest target is 7
;!		 -> button(BANK0[7]), 
;!
;!    Gpio_Read@gpio$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    Gpio_Read@gpio$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    Gpio_Read@gpio$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), 
;!
;!    Gpio_Toggle@gpio$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    Gpio_Toggle@gpio$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    Gpio_Toggle@gpio$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), 
;!
;!    Gpio_Write@gpio	PTR struct . size(1) Largest target is 7
;!		 -> led(BANK0[7]), 
;!
;!    Gpio_Write@gpio$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    Gpio_Write@gpio$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    Gpio_Write@gpio$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), 
;!
;!    led$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    led$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    led$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), 
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
;!    printf_@format	PTR const unsigned char  size(1) Largest target is 10
;!		 -> STR_1(CODE[10]), 
;!
;!    printf_@va	PTR void [1] size(1) Largest target is 2
;!		 -> ?_fctprintf(COMRAM[2]), ?_printf_(BANK0[2]), ?_snprintf_(COMRAM[2]), ?_sprintf_(COMRAM[2]), 
;!
;!    rx$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    rx$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    rx$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), 
;!
;!    S24$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    S24$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    S24$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), 
;!
;!    S38$rx	PTR struct . size(1) Largest target is 7
;!		 -> rx(COMRAM[7]), 
;!
;!    S38$tx	PTR struct . size(1) Largest target is 7
;!		 -> tx(BANK0[7]), 
;!
;!    S750$0$1	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    S750$arg	PTR void  size(2) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!
;!    S750$fct	PTR FTN(unsigned char ,PTR void ,)void  size(2) Largest target is 1
;!		 -> NULL(), 
;!
;!    _strnlen_s@s	PTR const unsigned char  size(1) Largest target is 2
;!		 -> ?_fctprintf(COMRAM[2]), ?_printf_(BANK0[2]), ?_snprintf_(COMRAM[2]), ?_sprintf_(COMRAM[2]), 
;!
;!    _strnlen_s@str	PTR const unsigned char  size(1) Largest target is 2
;!		 -> ?_fctprintf(COMRAM[2]), ?_printf_(BANK0[2]), ?_snprintf_(COMRAM[2]), ?_sprintf_(COMRAM[2]), 
;!
;!    tx$lat	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> LATB(BIGSFR[1]), LATC(BIGSFR[1]), LATD(BIGSFR[1]), 
;!
;!    tx$port	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> PORTB(BIGSFR[1]), PORTC(BIGSFR[1]), PORTD(BIGSFR[1]), 
;!
;!    tx$tris	PTR volatile unsigned char  size(2) Largest target is 1
;!		 -> TRISB(BIGSFR[1]), TRISC(BIGSFR[1]), TRISD(BIGSFR[1]), 
;!
;!    uart_config$rx	PTR struct . size(1) Largest target is 7
;!		 -> rx(COMRAM[7]), 
;!
;!    uart_config$tx	PTR struct . size(1) Largest target is 7
;!		 -> tx(BANK0[7]), 
;!
;!    Uart_Init@uart	PTR const struct . size(1) Largest target is 8
;!		 -> uart_config(BANK0[6]), 
;!
;!    Uart_Init@uart$rx	PTR struct . size(1) Largest target is 7
;!		 -> rx(COMRAM[7]), 
;!
;!    Uart_Init@uart$tx	PTR struct . size(1) Largest target is 7
;!		 -> tx(BANK0[7]), 
;!
;!    Uart_Read@data	PTR unsigned char  size(1) Largest target is 1
;!		 -> main@c(BANK0[1]), 
;!
;!    Uart_Start@uart	PTR const struct . size(1) Largest target is 8
;!		 -> uart_config(BANK0[6]), 
;!
;!    Uart_Start@uart$rx	PTR struct . size(1) Largest target is 7
;!		 -> rx(COMRAM[7]), 
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
;!    _vsnprintf@buffer	PTR unsigned char  size(2) Largest target is 2047
;!		 -> printf_@buffer(BANK0[1]), RAM(DATA[2047]), vprintf_@buffer(COMRAM[1]), 
;!
;!    _vsnprintf@format	PTR const unsigned char  size(1) Largest target is 10
;!		 -> STR_1(CODE[10]), 
;!
;!    _vsnprintf@out	PTR FTN(unsigned char ,PTR void ,unsigned int ,unsigned int ,)void  size(2) Largest target is 1
;!		 -> _out_buffer(), _out_char(), _out_fct(), _out_null(), 
;!
;!    _vsnprintf@p	PTR const unsigned char  size(1) Largest target is 2
;!		 -> ?_fctprintf(COMRAM[2]), ?_printf_(BANK0[2]), ?_snprintf_(COMRAM[2]), ?_sprintf_(COMRAM[2]), 
;!
;!    _vsnprintf@va	PTR PTR void  size(2) Largest target is 1
;!		 -> fctprintf@va(COMRAM[1]), printf_@va(BANK0[1]), snprintf_@va(COMRAM[1]), sprintf_@va(COMRAM[1]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
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
;!    _Uart_Start->_Gpio_Init
;!    _Uart_Read->_Buffer_Get
;!
;!Critical Paths under _ISR in COMRAM
;!
;!    _ISR->_Uart_InterruptHandler
;!    _Uart_InterruptHandler->i2_Buffer_Add
;!    _Uart_InterruptHandler->i2_Buffer_Get
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_printf_
;!    _printf_->__vsnprintf
;!    __vsnprintf->__ntoa_long
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0   13425
;!                                             78 BANK0      4     4      0
;!                          _Gpio_Init
;!                          _Gpio_Read
;!                         _Gpio_Write
;!                          _Uart_Init
;!                          _Uart_Read
;!                         _Uart_Start
;!                           _isr_init
;!                            _printf_
;! ---------------------------------------------------------------------------------
;! (1) _printf_                                              7     4      3   12442
;!                                             73 BANK0      5     2      3
;!                         __vsnprintf
;! ---------------------------------------------------------------------------------
;! (2) __vsnprintf                                          54    45      9   12249
;!                                             62 BANK0     11     2      9
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
;! (3) __strnlen_s                                           4     1      3     167
;!                                             12 COMRAM     4     1      3
;! ---------------------------------------------------------------------------------
;! (3) __ntoa_long                                          64    41     23    5112
;!                                             68 COMRAM     2     2      0
;!                                              0 BANK0     62    39     23
;!                            ___lldiv
;!                            ___llmod
;!                       __ntoa_format
;! ---------------------------------------------------------------------------------
;! (4) __ntoa_format                                        22     2     20    3519
;!                                             46 COMRAM    22     2     20
;!                           __out_rev
;! ---------------------------------------------------------------------------------
;! (5) __out_rev                                            21     6     15    1590
;!                                             25 COMRAM    21     6     15
;!                        __out_buffer *
;!                          __out_char *
;!                           __out_fct *
;!                          __out_null *
;! ---------------------------------------------------------------------------------
;! (6) __out_null                                            7     0      7       0
;!                                             18 COMRAM     7     0      7
;! ---------------------------------------------------------------------------------
;! (6) __out_fct                                             7     0      7     187
;!                                             18 COMRAM     7     0      7
;! ---------------------------------------------------------------------------------
;! (6) __out_char                                            7     0      7     400
;!                                             18 COMRAM     7     0      7
;!                           __putchar
;! ---------------------------------------------------------------------------------
;! (7) __putchar                                             1     1      0     338
;!                                             17 COMRAM     1     1      0
;!                         _Buffer_Add
;! ---------------------------------------------------------------------------------
;! (8) _Buffer_Add                                           5     2      3     291
;!                                             12 COMRAM     5     2      3
;! ---------------------------------------------------------------------------------
;! (6) __out_buffer                                          7     0      7     155
;!                                             18 COMRAM     7     0      7
;! ---------------------------------------------------------------------------------
;! (4) ___llmod                                              9     1      8     238
;!                                             12 COMRAM     9     1      8
;! ---------------------------------------------------------------------------------
;! (4) ___lldiv                                             13     5      8     247
;!                                             12 COMRAM    13     5      8
;! ---------------------------------------------------------------------------------
;! (3) __atoi                                                7     5      2     267
;!                                             14 COMRAM     7     5      2
;!                          __is_digit
;! ---------------------------------------------------------------------------------
;! (4) __is_digit                                            2     2      0     131
;!                                             12 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _isr_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Uart_Start                                           2     1      1     254
;!                                             19 COMRAM     1     0      1
;!                        _Buffer_Init
;!                          _Gpio_Init
;! ---------------------------------------------------------------------------------
;! (2) _Gpio_Init                                            7     5      2     118
;!                                             12 COMRAM     7     5      2
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
;! (1) _Uart_Init                                            5     4      1      23
;!                                             12 COMRAM     5     4      1
;! ---------------------------------------------------------------------------------
;! (1) _Gpio_Write                                           7     5      2     116
;!                                             12 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (1) _Gpio_Read                                            6     5      1      45
;!                                             12 COMRAM     6     5      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (9) _ISR                                                  5     5      0     656
;!                                              7 COMRAM     5     5      0
;!              _Uart_InterruptHandler
;! ---------------------------------------------------------------------------------
;! (10) _Uart_InterruptHandler                               2     2      0     656
;!                                              5 COMRAM     2     2      0
;!                       i2_Buffer_Add
;!                       i2_Buffer_Get
;! ---------------------------------------------------------------------------------
;! (11) i2_Buffer_Get                                        5     2      3     254
;!                                              0 COMRAM     5     2      3
;! ---------------------------------------------------------------------------------
;! (11) i2_Buffer_Add                                        5     2      3     291
;!                                              0 COMRAM     5     2      3
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 11
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Gpio_Init
;!   _Gpio_Read
;!   _Gpio_Write
;!   _Uart_Init
;!   _Uart_Read
;!     _Buffer_Get
;!   _Uart_Start
;!     _Buffer_Init
;!     _Gpio_Init
;!   _isr_init
;!   _printf_
;!     __vsnprintf
;!       __atoi
;!         __is_digit
;!       __is_digit
;!       __ntoa_long
;!         ___lldiv
;!         ___llmod
;!         __ntoa_format
;!           __out_rev
;!             __out_buffer *
;!             __out_char *
;!               __putchar
;!                 _Buffer_Add
;!             __out_fct *
;!             __out_null *
;!       __out_buffer *
;!       __out_char *
;!       __out_fct *
;!       __out_null *
;!       __strnlen_s *
;!
;! _ISR (ROOT)
;!   _Uart_InterruptHandler
;!     i2_Buffer_Add
;!     i2_Buffer_Get
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
;!BANK1              256     43      65     25.4%
;!BITBANK0           160      0       0      0.0%
;!BANK0              160     82     131     81.9%
;!BITCOMRAM           94      0       0      0.0%
;!COMRAM              94     70      81     86.2%
;!BITBIGSFRh          82      0       0      0.0%
;!BITBIGSFRllh        41      0       0      0.0%
;!BITBIGSFRlll        33      0       0      0.0%
;!BITBIGSFRlh          1      0       0      0.0%
;!STACK                0      0       0      0.0%
;!DATA                 0      0     275      0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 43 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  c               1   81[BANK0 ] unsigned char 
;;  level           1   80[BANK0 ] enum E41
;; Return value:  Size  Location     Type
;;                  2   50[None  ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, pcl, pclath, pclatu, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called: 11
;; This function calls:
;;		_Gpio_Init
;;		_Gpio_Read
;;		_Gpio_Write
;;		_Uart_Init
;;		_Uart_Read
;;		_Uart_Start
;;		_isr_init
;;		_printf_
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	43
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	43
	
_main:
;incstack = 0
	callstack 20
	line	45
	
l3402:
		movlw	low(_led)
	movwf	((c:Gpio_Init@gpio))^00h,c

	movlw	low(0)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	46
		movlw	low(_button)
	movwf	((c:Gpio_Init@gpio))^00h,c

	movlw	low(01h)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	47
		movlw	low(_uart_config)
	movwf	((c:Uart_Init@uart))^00h,c

	call	_Uart_Init	;wreg free
	line	48
		movlw	low(_uart_config)
	movwf	((c:Uart_Start@uart))^00h,c

	call	_Uart_Start	;wreg free
	line	52
	
l3404:
	call	_isr_init	;wreg free
	line	55
	
l3406:
		movlw	low(_led)
	movwf	((c:Gpio_Write@gpio))^00h,c

	movlw	low(0)
	movwf	((c:Gpio_Write@level))^00h,c
	call	_Gpio_Write	;wreg free
	line	58
	
l3408:
		movlw	low(_button)
	movwf	((c:Gpio_Read@gpio))^00h,c

	call	_Gpio_Read	;wreg free
	movlb	0	; () banked
	movwf	((main@level))&0ffh
	line	60
	
l3410:; BSR set to: 0

	movf	((main@level))&0ffh,w
	btfss	status,2
	goto	u4401
	goto	u4400
u4401:
	goto	l3416
u4400:
	line	63
	
l3412:; BSR set to: 0

		movlw	low(STR_1)
	movwf	((printf_@format))&0ffh

	movlw	high(07EAh)
	movwf	(1+(?_printf_+01h))&0ffh
	movlw	low(07EAh)
	movwf	(0+(?_printf_+01h))&0ffh
	call	_printf_	;wreg free
	line	64
	
l3414:
	asmopt push
asmopt off
movlw  13
	movlb	0	; () banked
movwf	(??_main+0+1)&0ffh
movlw	175
movwf	(??_main+0)&0ffh
	movlw	182
u4467:
decfsz	wreg,f
	bra	u4467
	decfsz	(??_main+0)&0ffh,f
	bra	u4467
	decfsz	(??_main+0+1)&0ffh,f
	bra	u4467
	nop
asmopt pop

	line	67
	
l3416:
		movlw	low(main@c)
	movwf	((c:Uart_Read@data))^00h,c

	call	_Uart_Read	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u4411
	goto	u4410
u4411:
	goto	l3408
u4410:
	line	69
	
l3418:
		movlw	65
	movlb	0	; () banked
	xorwf	((main@c))&0ffh,w
	btfss	status,2
	goto	u4421
	goto	u4420

u4421:
	goto	l3422
u4420:
	line	71
	
l3420:; BSR set to: 0

		movlw	low(_led)
	movwf	((c:Gpio_Write@gpio))^00h,c

	movlw	low(01h)
	movwf	((c:Gpio_Write@level))^00h,c
	call	_Gpio_Write	;wreg free
	line	72
	goto	l3408
	line	73
	
l3422:; BSR set to: 0

		movlw	66
	xorwf	((main@c))&0ffh,w
	btfss	status,2
	goto	u4431
	goto	u4430

u4431:
	goto	l3408
u4430:
	goto	l3406
	global	start
	goto	start
	callstack 0
	line	81
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_printf_

;; *************** function _printf_ *****************
;; Defined at:
;;		line 862 in file "external/printf/printf.c"
;; Parameters:    Size  Location     Type
;;  format          1   73[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  ret             2    0        const int 
;;  va              1   77[BANK0 ] PTR void [1]
;;		 -> ?_fctprintf(2), ?_snprintf_(2), ?_sprintf_(2), ?_printf_(2), 
;;  buffer          1   76[BANK0 ] unsigned char [1]
;; Return value:  Size  Location     Type
;;                  2   73[BANK0 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, pcl, pclath, pclatu, tosl, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       3       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 10
;; This function calls:
;;		__vsnprintf
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	file	"external/printf/printf.c"
	line	862
global __ptext1
__ptext1:
psect	text1
	file	"external/printf/printf.c"
	line	862
	
_printf_:; BSR set to: 0

;incstack = 0
	callstack 20
	line	865
	
l3374:
		movlw	low(?_printf_+01h)
	movlb	0	; () banked
	movwf	((printf_@va))&0ffh

	line	867
	
l3376:; BSR set to: 0

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
	
l441:
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
;;  out             2   62[BANK0 ] PTR FTN(unsigned char ,P
;;		 -> _out_fct(1), _out_char(1), _out_null(1), _out_buffer(1), 
;;  buffer          2   64[BANK0 ] PTR unsigned char 
;;		 -> RAM(2047), vprintf_@buffer(1), printf_@buffer(1), 
;;  maxlen          2   66[BANK0 ] const unsigned int 
;;  format          1   68[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(10), 
;;  va              2   69[BANK0 ] PTR PTR void 
;;		 -> fctprintf@va(1), snprintf_@va(1), sprintf_@va(1), printf_@va(1), 
;; Auto vars:     Size  Location     Type
;;  value           2    8[BANK1 ] const unsigned int 
;;  value           2   31[BANK1 ] const int 
;;  value           4   27[BANK1 ] const long 
;;  l               2   24[BANK1 ] unsigned int 
;;  p               1   26[BANK1 ] PTR const unsigned char 
;;		 -> ?_fctprintf(2), ?_snprintf_(2), ?_sprintf_(2), ?_printf_(2), 
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
;;                  2   62[BANK0 ] int 
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
psect	text2,class=CODE,space=0,reloc=2,group=0
	line	577
global __ptext2
__ptext2:
psect	text2
	file	"external/printf/printf.c"
	line	577
	
__vsnprintf:
;incstack = 0
	callstack 20
	line	580
	
l3028:
	movlb	1	; () banked
	clrf	((__vsnprintf@idx+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@idx))&0ffh
	line	582
	
l3030:; BSR set to: 1

	movlb	0	; () banked
	movf	((__vsnprintf@buffer))&0ffh,w
iorwf	((__vsnprintf@buffer+1))&0ffh,w
	btfss	status,2
	goto	u3671
	goto	u3670

u3671:
	goto	l3314
u3670:
	line	584
	
l3032:; BSR set to: 0

		movlw	low(__out_null)
	movwf	((__vsnprintf@out))&0ffh
	movlw	high(__out_null)
	movwf	((__vsnprintf@out+1))&0ffh

	goto	l3314
	line	590
	
l3034:; BSR set to: 0

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
	goto	u3681
	goto	u3680
u3681:
	goto	l3044
u3680:
	line	592
	
l3036:; BSR set to: 0

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
	call	u3698
	goto	u3699
u3698:
	push
	
	movwf	pclath
	movf	((__vsnprintf@out))&0ffh,w
	movwf	tosl
	movf	((__vsnprintf@out+1))&0ffh,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u3699:
	
l3038:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	593
	
l3040:
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	594
	goto	l3314
	line	598
	
l3044:; BSR set to: 0

	incf	((__vsnprintf@format))&0ffh
	line	602
	
l3046:; BSR set to: 0

	movlb	1	; () banked
	clrf	((__vsnprintf@flags+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@flags))&0ffh
	goto	l3072
	line	605
	
l3048:; BSR set to: 1

	bsf	(0+(0/8)+(__vsnprintf@flags))&0ffh,(0)&7
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	
l3050:; BSR set to: 0

	movlb	1	; () banked
	clrf	((__vsnprintf@n+1))&0ffh
	movlw	low(01h)
	movwf	((__vsnprintf@n))&0ffh
	goto	l3074
	line	606
	
l3052:; BSR set to: 1

	bsf	(0+(1/8)+(__vsnprintf@flags))&0ffh,(1)&7
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l3050
	line	607
	
l3056:; BSR set to: 1

	bsf	(0+(2/8)+(__vsnprintf@flags))&0ffh,(2)&7
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l3050
	line	608
	
l3060:; BSR set to: 1

	bsf	(0+(3/8)+(__vsnprintf@flags))&0ffh,(3)&7
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l3050
	line	609
	
l3064:; BSR set to: 1

	bsf	(0+(4/8)+(__vsnprintf@flags))&0ffh,(4)&7
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l3050
	line	610
	
l3068:; BSR set to: 1

	clrf	((__vsnprintf@n+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@n))&0ffh
	goto	l3074
	line	611
	
l3072:; BSR set to: 1

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
	goto	l3060
	xorlw	35^32	; case 35
	skipnz
	goto	l3064
	xorlw	43^35	; case 43
	skipnz
	goto	l3056
	xorlw	45^43	; case 45
	skipnz
	goto	l3052
	xorlw	48^45	; case 48
	skipnz
	goto	l3048
	goto	l3068

	line	612
	
l3074:; BSR set to: 1

	movf	((__vsnprintf@n))&0ffh,w
iorwf	((__vsnprintf@n+1))&0ffh,w
	btfss	status,2
	goto	u3701
	goto	u3700

u3701:
	goto	l3072
u3700:
	line	615
	
l3076:; BSR set to: 1

	clrf	((__vsnprintf@width+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@width))&0ffh
	line	616
	
l3078:; BSR set to: 1

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
	goto	u3711
	goto	u3710
u3711:
	goto	l3082
u3710:
	line	617
	
l3080:
		movlw	low(__vsnprintf@format)
	movwf	((c:__atoi@str))^00h,c

	call	__atoi	;wreg free
	movff	0+?__atoi,(__vsnprintf@width)
	movff	1+?__atoi,(__vsnprintf@width+1)
	line	618
	goto	l3094
	line	619
	
l3082:
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
	goto	u3721
	goto	u3720
u3721:
	goto	l3094
u3720:
	line	620
	
l3084:
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
	
l3086:
	movlb	1	; () banked
	btfsc	((__vsnprintf@w+1))&0ffh,7
	goto	u3730
	goto	u3731

u3731:
	goto	l315
u3730:
	line	622
	
l3088:; BSR set to: 1

	bsf	(0+(1/8)+(__vsnprintf@flags))&0ffh,(1)&7
	line	623
	
l3090:; BSR set to: 1

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
	goto	l3092
	line	625
	
l315:; BSR set to: 1

	line	626
	movff	(__vsnprintf@w),(__vsnprintf@width)
	movff	(__vsnprintf@w+1),(__vsnprintf@width+1)
	line	628
	
l3092:
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	632
	
l3094:
	movlb	1	; () banked
	clrf	((__vsnprintf@precision+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@precision))&0ffh
	line	633
	
l3096:; BSR set to: 1

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
	goto	u3741
	goto	u3740
u3741:
	goto	l3136
u3740:
	line	634
	
l3098:; BSR set to: 1

	bsf	(0+(10/8)+(__vsnprintf@flags))&0ffh,(10)&7
	line	635
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	636
	
l3100:; BSR set to: 0

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
	goto	u3751
	goto	u3750
u3751:
	goto	l3104
u3750:
	line	637
	
l3102:
		movlw	low(__vsnprintf@format)
	movwf	((c:__atoi@str))^00h,c

	call	__atoi	;wreg free
	movff	0+?__atoi,(__vsnprintf@precision)
	movff	1+?__atoi,(__vsnprintf@precision+1)
	line	638
	goto	l3136
	line	639
	
l3104:
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
	goto	u3761
	goto	u3760
u3761:
	goto	l3136
u3760:
	line	640
	
l3106:
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
	
l3108:
	movlb	1	; () banked
	btfsc	((__vsnprintf@prec+1))&0ffh,7
	goto	u3770
	movf	((__vsnprintf@prec+1))&0ffh,w
	bnz	u3771
	decf	((__vsnprintf@prec))&0ffh,w
	btfsc	status,0
	goto	u3771
	goto	u3770

u3771:
	goto	l322
u3770:
	
l3110:; BSR set to: 1

	clrf	((__vsnprintf@precision+1))&0ffh
	movlw	low(0)
	movwf	((__vsnprintf@precision))&0ffh
	goto	l3112
	
l322:; BSR set to: 1

	movff	(__vsnprintf@prec),(__vsnprintf@precision)
	movff	(__vsnprintf@prec+1),(__vsnprintf@precision+1)
	line	642
	
l3112:; BSR set to: 1

	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l3136
	line	649
	
l3114:
	movlb	1	; () banked
	bsf	(0+(8/8)+(__vsnprintf@flags))&0ffh,(8)&7
	line	650
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	651
	
l3116:; BSR set to: 0

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
	goto	u3781
	goto	u3780
u3781:
	goto	l3312
u3780:
	line	652
	
l3118:; BSR set to: 0

	movlb	1	; () banked
	bsf	(0+(9/8)+(__vsnprintf@flags))&0ffh,(9)&7
	line	653
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l3312
	line	657
	
l3120:
	movlb	1	; () banked
	bsf	(0+(7/8)+(__vsnprintf@flags))&0ffh,(7)&7
	line	658
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	659
	
l3122:; BSR set to: 0

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
	goto	u3791
	goto	u3790
u3791:
	goto	l3312
u3790:
	line	660
	
l3124:; BSR set to: 0

	movlb	1	; () banked
	bsf	(0+(6/8)+(__vsnprintf@flags))&0ffh,(6)&7
	line	661
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	goto	l3312
	line	671
	
l3126:
	movlb	1	; () banked
	bsf	(0+(9/8)+(__vsnprintf@flags))&0ffh,(9)&7
	
l335:; BSR set to: 1

	line	672
	movlb	0	; () banked
	incf	((__vsnprintf@format))&0ffh
	line	673
	goto	l3312
	line	680
	
l3136:
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
	goto	l3120
	xorlw	106^104	; case 106
	skipnz
	goto	l3126
	xorlw	108^106	; case 108
	skipnz
	goto	l3114
	xorlw	122^108	; case 122
	skipnz
	goto	l3126
	goto	l3312

	line	693
	
l3138:
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
	goto	u3801
	goto	u3800
u3801:
	goto	l3142
u3800:
	
l3140:
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
	goto	u3811
	goto	u3810
u3811:
	goto	l3144
u3810:
	line	694
	
l3142:
	movlb	1	; () banked
	clrf	((__vsnprintf@base+1))&0ffh
	movlw	low(010h)
	movwf	((__vsnprintf@base))&0ffh
	line	695
	goto	l3156
	line	696
	
l3144:
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
	goto	u3821
	goto	u3820
u3821:
	goto	l3148
u3820:
	line	697
	
l3146:
	movlb	1	; () banked
	clrf	((__vsnprintf@base+1))&0ffh
	movlw	low(08h)
	movwf	((__vsnprintf@base))&0ffh
	line	698
	goto	l3156
	line	699
	
l3148:
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
	goto	u3831
	goto	u3830
u3831:
	goto	l3152
u3830:
	line	700
	
l3150:
	movlb	1	; () banked
	clrf	((__vsnprintf@base+1))&0ffh
	movlw	low(02h)
	movwf	((__vsnprintf@base))&0ffh
	line	701
	goto	l3156
	line	703
	
l3152:
	movlb	1	; () banked
	clrf	((__vsnprintf@base+1))&0ffh
	movlw	low(0Ah)
	movwf	((__vsnprintf@base))&0ffh
	line	704
	
l3154:; BSR set to: 1

	bcf	(0+(4/8)+(__vsnprintf@flags))&0ffh,(4)&7
	line	707
	
l3156:; BSR set to: 1

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
	goto	u3841
	goto	u3840
u3841:
	goto	l3160
u3840:
	line	708
	
l3158:; BSR set to: 1

	bsf	(0+(5/8)+(__vsnprintf@flags))&0ffh,(5)&7
	line	712
	
l3160:; BSR set to: 1

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
	goto	u3851
	goto	u3850
u3851:
	goto	l3166
u3850:
	
l3162:; BSR set to: 1

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
	goto	u3861
	goto	u3860
u3861:
	goto	l3166
u3860:
	line	713
	
l3164:; BSR set to: 1

	movlw	low(0FFF3h)
	andwf	((__vsnprintf@flags))&0ffh
	movlw	high(0FFF3h)
	andwf	((__vsnprintf@flags+1))&0ffh
	line	717
	
l3166:; BSR set to: 1

	
	btfss	((__vsnprintf@flags+1))&0ffh,(10)&7
	goto	u3871
	goto	u3870
u3871:
	goto	l3170
u3870:
	line	718
	
l3168:; BSR set to: 1

	bcf	(0+(0/8)+(__vsnprintf@flags))&0ffh,(0)&7
	line	722
	
l3170:; BSR set to: 1

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
	goto	u3881
	goto	u3880
u3881:
	goto	l363
u3880:
	
l3172:; BSR set to: 1

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
	goto	u3891
	goto	u3890
u3891:
	goto	l361
u3890:
	
l363:; BSR set to: 1

	line	724
	
	btfss	((__vsnprintf@flags+1))&0ffh,(9)&7
	goto	u3901
	goto	u3900
u3901:
	goto	l364
u3900:
	goto	l3040
	line	730
	
l364:; BSR set to: 1

	
	btfss	((__vsnprintf@flags+1))&0ffh,(8)&7
	goto	u3911
	goto	u3910
u3911:
	goto	l366
u3910:
	line	731
	
l3176:; BSR set to: 1

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
	
l3178:; BSR set to: 1

	btfsc	((__vsnprintf@value+3))&0ffh,7
	goto	u3920
	movf	((__vsnprintf@value+3))&0ffh,w
	iorwf	((__vsnprintf@value+2))&0ffh,w
	iorwf	((__vsnprintf@value+1))&0ffh,w
	bnz	u3921
	decf	((__vsnprintf@value))&0ffh,w
	btfsc	status,0
	goto	u3921
	goto	u3920

u3921:
	goto	l368
u3920:
	
l3180:; BSR set to: 1

	movf	((__vsnprintf@value))&0ffh,w
	sublw	low(0)
	movwf	((__vsnprintf$904))&0ffh
	movlw	high(0)
	subfwb	((__vsnprintf@value+1))&0ffh,w
	movwf	1+((__vsnprintf$904))&0ffh
	
	movlw	low highword(0)
	subfwb	((__vsnprintf@value+2))&0ffh,w
	movwf	2+((__vsnprintf$904))&0ffh
	
	movlw	high highword(0)
	subfwb	((__vsnprintf@value+3))&0ffh,w
	movwf	3+((__vsnprintf$904))&0ffh
	goto	l3182
	
l368:; BSR set to: 1

	movff	(__vsnprintf@value),(__vsnprintf$904)
	movff	(__vsnprintf@value+1),(__vsnprintf$904+1)
	movff	(__vsnprintf@value+2),(__vsnprintf$904+2)
	movff	(__vsnprintf@value+3),(__vsnprintf$904+3)
	
l3182:; BSR set to: 1

		movff	(__vsnprintf@out),(__ntoa_long@out)
	movff	(__vsnprintf@out+1),(__ntoa_long@out+1)

		movff	(__vsnprintf@buffer),(__ntoa_long@buffer)
	movff	(__vsnprintf@buffer+1),(__ntoa_long@buffer+1)

	movff	(__vsnprintf@idx),(__ntoa_long@idx)
	movff	(__vsnprintf@idx+1),(__ntoa_long@idx+1)
	movff	(__vsnprintf@maxlen),(__ntoa_long@maxlen)
	movff	(__vsnprintf@maxlen+1),(__ntoa_long@maxlen+1)
	movff	(__vsnprintf$904),(__ntoa_long@value)
	movff	(__vsnprintf$904+1),(__ntoa_long@value+1)
	movff	(__vsnprintf$904+2),(__ntoa_long@value+2)
	movff	(__vsnprintf$904+3),(__ntoa_long@value+3)
	btfsc	((__vsnprintf@value+3))&0ffh,7
	goto	u3931
	goto	u3930

u3931:
	movlw	1
	goto	u3940
u3930:
	movlw	0
u3940:
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
	goto	l3040
	line	734
	
l366:; BSR set to: 1

	line	735
	
	btfsc	((__vsnprintf@flags))&0ffh,(6)&7
	goto	u3951
	goto	u3950
u3951:
	goto	l3192
u3950:
	
l3184:; BSR set to: 1

	
	btfsc	((__vsnprintf@flags))&0ffh,(7)&7
	goto	u3961
	goto	u3960
u3961:
	goto	l3188
u3960:
	
l3186:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movlw	02h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(__vsnprintf$906)
	movff	postinc2,(__vsnprintf$906+1)
	goto	l3190
	
l3188:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movlw	02h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(__vsnprintf$906)
	movff	postinc2,(__vsnprintf$906+1)
	
l3190:; BSR set to: 1

	movff	(__vsnprintf$906),(__vsnprintf@value_905)
	movff	(__vsnprintf$906+1),(__vsnprintf@value_905+1)
	goto	l3194
	
l3192:; BSR set to: 1

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
	movwf	((__vsnprintf@value_905))&0ffh
	clrf	((__vsnprintf@value_905+1))&0ffh
	line	736
	
l3194:; BSR set to: 1

	btfsc	((__vsnprintf@value_905+1))&0ffh,7
	goto	u3970
	movf	((__vsnprintf@value_905+1))&0ffh,w
	bnz	u3971
	decf	((__vsnprintf@value_905))&0ffh,w
	btfsc	status,0
	goto	u3971
	goto	u3970

u3971:
	goto	l381
u3970:
	
l3196:; BSR set to: 1

	movf	((__vsnprintf@value_905))&0ffh,w
	sublw	low(0)
	movwf	((__vsnprintf$907))&0ffh
	movf	((__vsnprintf@value_905+1))&0ffh,w
	btfss	status,0
	incf	wreg
	sublw	high(0)
	
	movwf	1+((__vsnprintf$907))&0ffh
	goto	l3198
	
l381:; BSR set to: 1

	movff	(__vsnprintf@value_905),(__vsnprintf$907)
	movff	(__vsnprintf@value_905+1),(__vsnprintf$907+1)
	
l3198:; BSR set to: 1

		movff	(__vsnprintf@out),(__ntoa_long@out)
	movff	(__vsnprintf@out+1),(__ntoa_long@out+1)

		movff	(__vsnprintf@buffer),(__ntoa_long@buffer)
	movff	(__vsnprintf@buffer+1),(__ntoa_long@buffer+1)

	movff	(__vsnprintf@idx),(__ntoa_long@idx)
	movff	(__vsnprintf@idx+1),(__ntoa_long@idx+1)
	movff	(__vsnprintf@maxlen),(__ntoa_long@maxlen)
	movff	(__vsnprintf@maxlen+1),(__ntoa_long@maxlen+1)
	movff	(__vsnprintf$907),(__ntoa_long@value)
	movff	(__vsnprintf$907+1),(__ntoa_long@value+1)
	movlb	0	; () banked
	clrf	((__ntoa_long@value+2))&0ffh
	clrf	((__ntoa_long@value+3))&0ffh
	movlb	1	; () banked
	btfsc	((__vsnprintf@value_905+1))&0ffh,7
	goto	u3981
	goto	u3980

u3981:
	movlw	1
	goto	u3990
u3980:
	movlw	0
u3990:
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
	goto	l3040
	line	739
	
l361:; BSR set to: 1

	line	741
	
	btfss	((__vsnprintf@flags+1))&0ffh,(9)&7
	goto	u4001
	goto	u4000
u4001:
	goto	l385
u4000:
	goto	l3040
	line	746
	
l385:; BSR set to: 1

	
	btfss	((__vsnprintf@flags+1))&0ffh,(8)&7
	goto	u4011
	goto	u4010
u4011:
	goto	l387
u4010:
	line	747
	
l3202:; BSR set to: 1

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
	goto	l3040
	line	749
	
l387:; BSR set to: 1

	line	750
	
	btfsc	((__vsnprintf@flags))&0ffh,(6)&7
	goto	u4021
	goto	u4020
u4021:
	goto	l3212
u4020:
	
l3204:; BSR set to: 1

	
	btfsc	((__vsnprintf@flags))&0ffh,(7)&7
	goto	u4031
	goto	u4030
u4031:
	goto	l3208
u4030:
	
l3206:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movlw	02h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(__vsnprintf$909)
	movff	postinc2,(__vsnprintf$909+1)
	goto	l3210
	
l3208:; BSR set to: 1

	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movlw	02h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(__vsnprintf$909)
	movff	postinc2,(__vsnprintf$909+1)
	
l3210:; BSR set to: 1

	movff	(__vsnprintf$909),(__vsnprintf@value_908)
	movff	(__vsnprintf$909+1),(__vsnprintf@value_908+1)
	goto	l3214
	
l3212:; BSR set to: 1

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
	movwf	((__vsnprintf@value_908))&0ffh
	clrf	((__vsnprintf@value_908+1))&0ffh
	line	751
	
l3214:; BSR set to: 1

		movff	(__vsnprintf@out),(__ntoa_long@out)
	movff	(__vsnprintf@out+1),(__ntoa_long@out+1)

		movff	(__vsnprintf@buffer),(__ntoa_long@buffer)
	movff	(__vsnprintf@buffer+1),(__ntoa_long@buffer+1)

	movff	(__vsnprintf@idx),(__ntoa_long@idx)
	movff	(__vsnprintf@idx+1),(__ntoa_long@idx+1)
	movff	(__vsnprintf@maxlen),(__ntoa_long@maxlen)
	movff	(__vsnprintf@maxlen+1),(__ntoa_long@maxlen+1)
	movff	(__vsnprintf@value_908),(__ntoa_long@value)
	movff	(__vsnprintf@value_908+1),(__ntoa_long@value+1)
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
	goto	l3040
	line	777
	
l3218:
	movlb	1	; () banked
	clrf	((__vsnprintf@l+1))&0ffh
	movlw	low(01h)
	movwf	((__vsnprintf@l))&0ffh
	line	779
	
l3220:; BSR set to: 1

	
	btfsc	((__vsnprintf@flags))&0ffh,(1)&7
	goto	u4041
	goto	u4040
u4041:
	goto	l3230
u4040:
	goto	l3228
	line	781
	
l3224:; BSR set to: 0

	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u4058
	goto	u4059
u4058:
	push
	
	movwf	pclath
	movf	((__vsnprintf@out))&0ffh,w
	movwf	tosl
	movf	((__vsnprintf@out+1))&0ffh,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u4059:
	
l3226:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	780
	
l3228:; BSR set to: 1

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
	goto	u4061
	goto	u4060

u4061:
	goto	l3224
u4060:
	line	785
	
l3230:
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
	call	u4078
	goto	u4079
u4078:
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
	u4079:
	
l3232:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	787
	
l3234:; BSR set to: 1

	
	btfss	((__vsnprintf@flags))&0ffh,(1)&7
	goto	u4081
	goto	u4080
u4081:
	goto	l3040
u4080:
	goto	l3242
	line	789
	
l3238:; BSR set to: 0

	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u4098
	goto	u4099
u4098:
	push
	
	movwf	pclath
	movf	((__vsnprintf@out))&0ffh,w
	movwf	tosl
	movf	((__vsnprintf@out+1))&0ffh,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u4099:
	
l3240:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	788
	
l3242:; BSR set to: 1

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
	goto	u4101
	goto	u4100

u4101:
	goto	l3238
u4100:
	goto	l3040
	line	797
	
l3246:
	movff	(__vsnprintf@va),fsr2l
	movff	(__vsnprintf@va+1),fsr2h
	movlw	02h
	addwf	indf2,f
	subwf	indf2,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(__vsnprintf@p)
	line	798
	
l3248:
	movlb	1	; () banked
	movf	((__vsnprintf@precision))&0ffh,w
iorwf	((__vsnprintf@precision+1))&0ffh,w
	btfss	status,2
	goto	u4111
	goto	u4110

u4111:
	goto	l409
u4110:
	
l3250:; BSR set to: 1

	setf	((__vsnprintf$914))&0ffh
	setf	((__vsnprintf$914+1))&0ffh
	goto	l3252
	
l409:; BSR set to: 1

	movff	(__vsnprintf@precision),(__vsnprintf$914)
	movff	(__vsnprintf@precision+1),(__vsnprintf$914+1)
	
l3252:; BSR set to: 1

		movff	(__vsnprintf@p),(c:__strnlen_s@str)

	movff	(__vsnprintf$914),(c:__strnlen_s@maxsize)
	movff	(__vsnprintf$914+1),(c:__strnlen_s@maxsize+1)
	call	__strnlen_s	;wreg free
	movff	0+?__strnlen_s,(__vsnprintf@l_912)
	movff	1+?__strnlen_s,(__vsnprintf@l_912+1)
	line	800
	
l3254:
	movlb	1	; () banked
	
	btfss	((__vsnprintf@flags+1))&0ffh,(10)&7
	goto	u4121
	goto	u4120
u4121:
	goto	l412
u4120:
	line	801
	
l3256:; BSR set to: 1

		movf	((__vsnprintf@precision))&0ffh,w
	subwf	((__vsnprintf@l_912))&0ffh,w
	movf	((__vsnprintf@precision+1))&0ffh,w
	subwfb	((__vsnprintf@l_912+1))&0ffh,w
	btfss	status,0
	goto	u4131
	goto	u4130

u4131:
	goto	l412
u4130:
	
l3258:; BSR set to: 1

	movff	(__vsnprintf@precision),(__vsnprintf@l_912)
	movff	(__vsnprintf@precision+1),(__vsnprintf@l_912+1)
	line	802
	
l412:; BSR set to: 1

	line	803
	
	btfsc	((__vsnprintf@flags))&0ffh,(1)&7
	goto	u4141
	goto	u4140
u4141:
	goto	l3274
u4140:
	goto	l3266
	line	805
	
l3262:; BSR set to: 0

	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u4158
	goto	u4159
u4158:
	push
	
	movwf	pclath
	movf	((__vsnprintf@out))&0ffh,w
	movwf	tosl
	movf	((__vsnprintf@out+1))&0ffh,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u4159:
	
l3264:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	804
	
l3266:; BSR set to: 1

	movf	((__vsnprintf@l_912))&0ffh,w
	movlb	0	; () banked
	movwf	(??__vsnprintf+0)&0ffh
	movlb	1	; () banked
	movf	((__vsnprintf@l_912+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+(??__vsnprintf+0)&0ffh
	movlb	1	; () banked
	infsnz	((__vsnprintf@l_912))&0ffh
	incf	((__vsnprintf@l_912+1))&0ffh
		movf	((__vsnprintf@width))&0ffh,w
	movlb	0	; () banked
	subwf	(??__vsnprintf+0)&0ffh,w
	movlb	1	; () banked
	movf	((__vsnprintf@width+1))&0ffh,w
	movlb	0	; () banked
	subwfb	(??__vsnprintf+0+1)&0ffh,w
	btfss	status,0
	goto	u4161
	goto	u4160

u4161:
	goto	l3262
u4160:
	goto	l3274
	line	810
	
l3268:; BSR set to: 1

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
	call	u4178
	goto	u4179
u4178:
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
	u4179:
	
l3270:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	
l3272:; BSR set to: 1

	incf	((__vsnprintf@p))&0ffh
	line	809
	
l3274:
	movlb	1	; () banked
	movf	((__vsnprintf@p))&0ffh,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	btfsc	status,2
	goto	u4181
	goto	u4180
u4181:
	goto	l425
u4180:
	
l3276:; BSR set to: 1

	
	btfss	((__vsnprintf@flags+1))&0ffh,(10)&7
	goto	u4191
	goto	u4190
u4191:
	goto	l3268
u4190:
	
l3278:; BSR set to: 1

	decf	((__vsnprintf@precision))&0ffh
	btfss	status,0
	decf	((__vsnprintf@precision+1))&0ffh
		incf	((__vsnprintf@precision))&0ffh,w
	bnz	u4201
	incf	((__vsnprintf@precision+1))&0ffh,w
	btfss	status,2
	goto	u4201
	goto	u4200

u4201:
	goto	l3268
u4200:
	
l425:; BSR set to: 1

	line	813
	
	btfss	((__vsnprintf@flags))&0ffh,(1)&7
	goto	u4211
	goto	u4210
u4211:
	goto	l3040
u4210:
	goto	l3286
	line	815
	
l3282:; BSR set to: 0

	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u4228
	goto	u4229
u4228:
	push
	
	movwf	pclath
	movf	((__vsnprintf@out))&0ffh,w
	movwf	tosl
	movf	((__vsnprintf@out+1))&0ffh,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u4229:
	
l3284:
	movlb	1	; () banked
	infsnz	((__vsnprintf@idx))&0ffh
	incf	((__vsnprintf@idx+1))&0ffh
	line	814
	
l3286:; BSR set to: 1

	movf	((__vsnprintf@l_912))&0ffh,w
	movlb	0	; () banked
	movwf	(??__vsnprintf+0)&0ffh
	movlb	1	; () banked
	movf	((__vsnprintf@l_912+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+(??__vsnprintf+0)&0ffh
	movlb	1	; () banked
	infsnz	((__vsnprintf@l_912))&0ffh
	incf	((__vsnprintf@l_912+1))&0ffh
		movf	((__vsnprintf@width))&0ffh,w
	movlb	0	; () banked
	subwf	(??__vsnprintf+0)&0ffh,w
	movlb	1	; () banked
	movf	((__vsnprintf@width+1))&0ffh,w
	movlb	0	; () banked
	subwfb	(??__vsnprintf+0+1)&0ffh,w
	btfss	status,0
	goto	u4231
	goto	u4230

u4231:
	goto	l3282
u4230:
	goto	l3040
	line	823
	
l3290:
	movlb	1	; () banked
	clrf	((__vsnprintf@width+1))&0ffh
	movlw	low(04h)
	movwf	((__vsnprintf@width))&0ffh
	line	824
	
l3292:; BSR set to: 1

	movlw	021h
	iorwf	((__vsnprintf@flags))&0ffh
	line	832
	
l3294:; BSR set to: 1

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
	goto	l3040
	line	841
	
l3298:
	movlw	low(025h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf@idx),(c:__out_fct@idx)
	movff	(__vsnprintf@idx+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u4248
	goto	u4249
u4248:
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
	u4249:
	goto	l3038
	line	846
	
l3304:
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
	call	u4258
	goto	u4259
u4258:
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
	u4259:
	goto	l3038
	line	849
	
l3312:
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
	goto	l3298
	xorlw	88^37	; case 88
	skipnz
	goto	l3138
	xorlw	98^88	; case 98
	skipnz
	goto	l3138
	xorlw	99^98	; case 99
	skipnz
	goto	l3218
	xorlw	100^99	; case 100
	skipnz
	goto	l3138
	xorlw	105^100	; case 105
	skipnz
	goto	l3138
	xorlw	111^105	; case 111
	skipnz
	goto	l3138
	xorlw	112^111	; case 112
	skipnz
	goto	l3290
	xorlw	115^112	; case 115
	skipnz
	goto	l3246
	xorlw	117^115	; case 117
	skipnz
	goto	l3138
	xorlw	120^117	; case 120
	skipnz
	goto	l3138
	goto	l3304

	line	587
	
l3314:; BSR set to: 0

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
	goto	u4261
	goto	u4260
u4261:
	goto	l3034
u4260:
	line	853
	
l3316:; BSR set to: 0

		movf	((__vsnprintf@maxlen))&0ffh,w
	movlb	1	; () banked
	subwf	((__vsnprintf@idx))&0ffh,w
	movlb	0	; () banked
	movf	((__vsnprintf@maxlen+1))&0ffh,w
	movlb	1	; () banked
	subwfb	((__vsnprintf@idx+1))&0ffh,w
	btfss	status,0
	goto	u4271
	goto	u4270

u4271:
	goto	l435
u4270:
	
l3318:; BSR set to: 1

	movlw	low(0FFFFh)
	movlb	0	; () banked
	addwf	((__vsnprintf@maxlen))&0ffh,w
	movlb	1	; () banked
	movwf	((__vsnprintf$915))&0ffh
	movlw	high(0FFFFh)
	movlb	0	; () banked
	addwfc	((__vsnprintf@maxlen+1))&0ffh,w
	movlb	1	; () banked
	movwf	1+((__vsnprintf$915))&0ffh
	goto	l3320
	
l435:; BSR set to: 1

	movff	(__vsnprintf@idx),(__vsnprintf$915)
	movff	(__vsnprintf@idx+1),(__vsnprintf$915+1)
	
l3320:; BSR set to: 1

	movlw	low(0)
	movwf	((c:__out_fct@character))^00h,c
		movff	(__vsnprintf@buffer),(c:__out_fct@buffer)
	movff	(__vsnprintf@buffer+1),(c:__out_fct@buffer+1)

	movff	(__vsnprintf$915),(c:__out_fct@idx)
	movff	(__vsnprintf$915+1),(c:__out_fct@idx+1)
	movff	(__vsnprintf@maxlen),(c:__out_fct@maxlen)
	movff	(__vsnprintf@maxlen+1),(c:__out_fct@maxlen+1)
	call	u4288
	goto	u4289
u4288:
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
	u4289:
	line	856
	
l3322:
	movff	(__vsnprintf@idx),(?__vsnprintf)
	movff	(__vsnprintf@idx+1),(?__vsnprintf+1)
	line	857
	
l438:
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
;;		 -> ?_fctprintf(2), ?_snprintf_(2), ?_sprintf_(2), ?_printf_(2), 
;;  maxsize         2   13[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  s               1   15[COMRAM] PTR const unsigned char 
;;		 -> ?_fctprintf(2), ?_snprintf_(2), ?_sprintf_(2), ?_printf_(2), 
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
psect	text3,class=CODE,space=0,reloc=2,inline,group=0
	line	171
global __ptext3
__ptext3:
psect	text3
	file	"external/printf/printf.c"
	line	171
	
__strnlen_s:
;incstack = 0
	callstack 25
	line	174
	
l2952:
		movff	(c:__strnlen_s@str),(c:__strnlen_s@s)

	goto	l2956
	
l2954:
	incf	((c:__strnlen_s@s))^00h,c
	
l2956:
	movf	((c:__strnlen_s@s))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	btfsc	status,2
	goto	u3551
	goto	u3550
u3551:
	goto	l2960
u3550:
	
l2958:
	decf	((c:__strnlen_s@maxsize))^00h,c
	btfss	status,0
	decf	((c:__strnlen_s@maxsize+1))^00h,c
		incf	((c:__strnlen_s@maxsize))^00h,c,w
	bnz	u3561
	incf	((c:__strnlen_s@maxsize+1))^00h,c,w
	btfss	status,2
	goto	u3561
	goto	u3560

u3561:
	goto	l2954
u3560:
	line	175
	
l2960:
	movf	((c:__strnlen_s@str))^00h,c,w
	subwf	((c:__strnlen_s@s))^00h,c,w
	movwf	((c:?__strnlen_s))^00h,c
	clrf	((c:?__strnlen_s+1))^00h,c
	btfsc	((c:?__strnlen_s))^00h,c,7
	decf	((c:?__strnlen_s+1))^00h,c
	line	176
	
l216:
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
;;  out             2    0[BANK0 ] PTR FTN(unsigned char ,P
;;		 -> _out_fct(1), _out_char(1), _out_null(1), _out_buffer(1), 
;;  buffer          2    2[BANK0 ] PTR unsigned char 
;;		 -> RAM(2047), vprintf_@buffer(1), printf_@buffer(1), 
;;  idx             2    4[BANK0 ] unsigned int 
;;  maxlen          2    6[BANK0 ] unsigned int 
;;  value           4    8[BANK0 ] unsigned long 
;;  negative        1   12[BANK0 ] _Bool 
;;  base            4   13[BANK0 ] unsigned long 
;;  prec            2   17[BANK0 ] unsigned int 
;;  width           2   19[BANK0 ] unsigned int 
;;  flags           2   21[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  digit           1   59[BANK0 ] const unsigned char 
;;  buf            32   23[BANK0 ] unsigned char [32]
;;  len             2   60[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
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
psect	text4,class=CODE,space=0,reloc=2,group=0
	line	281
global __ptext4
__ptext4:
psect	text4
	file	"external/printf/printf.c"
	line	281
	
__ntoa_long:
;incstack = 0
	callstack 20
	line	284
	
l2970:
	movlb	0	; () banked
	clrf	((__ntoa_long@len+1))&0ffh
	movlw	low(0)
	movwf	((__ntoa_long@len))&0ffh
	line	287
	
l2972:; BSR set to: 0

	movf	((__ntoa_long@value))&0ffh,w
iorwf	((__ntoa_long@value+1))&0ffh,w
iorwf	((__ntoa_long@value+2))&0ffh,w
iorwf	((__ntoa_long@value+3))&0ffh,w
	btfss	status,2
	goto	u3581
	goto	u3580

u3581:
	goto	l2976
u3580:
	line	288
	
l2974:; BSR set to: 0

	bcf	(0+(4/8)+(__ntoa_long@flags))&0ffh,(4)&7
	line	292
	
l2976:; BSR set to: 0

	
	btfss	((__ntoa_long@flags+1))&0ffh,(10)&7
	goto	u3591
	goto	u3590
u3591:
	goto	l2980
u3590:
	
l2978:; BSR set to: 0

	movf	((__ntoa_long@value))&0ffh,w
iorwf	((__ntoa_long@value+1))&0ffh,w
iorwf	((__ntoa_long@value+2))&0ffh,w
iorwf	((__ntoa_long@value+3))&0ffh,w
	btfsc	status,2
	goto	u3601
	goto	u3600

u3601:
	goto	l3004
u3600:
	line	294
	
l2980:; BSR set to: 0

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
	
l2982:; BSR set to: 0

		movlw	0Ah-1
	cpfsgt	((__ntoa_long@digit))&0ffh
	goto	u3611
	goto	u3610

u3611:
	goto	l2992
u3610:
	
l2984:; BSR set to: 0

	
	btfsc	((__ntoa_long@flags))&0ffh,(5)&7
	goto	u3621
	goto	u3620
u3621:
	goto	l2988
u3620:
	
l2986:; BSR set to: 0

	clrf	((__ntoa_long$877+1))&0ffh
	movlw	low(061h)
	movwf	((__ntoa_long$877))&0ffh
	goto	l2990
	
l2988:; BSR set to: 0

	clrf	((__ntoa_long$877+1))&0ffh
	movlw	low(041h)
	movwf	((__ntoa_long$877))&0ffh
	
l2990:; BSR set to: 0

	movf	((__ntoa_long@digit))&0ffh,w
	addwf	((__ntoa_long$877))&0ffh,w
	movwf	(??__ntoa_long+0)^00h,c
	movlw	0
	addwfc	((__ntoa_long$877+1))&0ffh,w
	movwf	(??__ntoa_long+0+1)^00h,c
	movlw	low(0FFF6h)
	addwf	(??__ntoa_long+0)^00h,c,w
	movwf	((__ntoa_long$876))&0ffh
	movlw	high(0FFF6h)
	addwfc	(??__ntoa_long+0+1)^00h,c,w
	movwf	1+((__ntoa_long$876))&0ffh
	goto	l2994
	
l2992:; BSR set to: 0

	movlw	low(030h)
	addwf	((__ntoa_long@digit))&0ffh,w
	movwf	((__ntoa_long$876))&0ffh
	clrf	1+((__ntoa_long$876))&0ffh
	movlw	high(030h)
	addwfc	1+((__ntoa_long$876))&0ffh
	
l2994:; BSR set to: 0

	movf	((__ntoa_long@len))&0ffh,w
	addlw	low(__ntoa_long@buf)
	movwf	fsr2l
	clrf	fsr2h
	movff	(__ntoa_long$876),indf2

	
l2996:; BSR set to: 0

	infsnz	((__ntoa_long@len))&0ffh
	incf	((__ntoa_long@len+1))&0ffh
	line	296
	
l2998:; BSR set to: 0

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
	
l3000:
	movlb	0	; () banked
	movf	((__ntoa_long@value))&0ffh,w
iorwf	((__ntoa_long@value+1))&0ffh,w
iorwf	((__ntoa_long@value+2))&0ffh,w
iorwf	((__ntoa_long@value+3))&0ffh,w
	btfsc	status,2
	goto	u3631
	goto	u3630

u3631:
	goto	l3004
u3630:
	
l3002:; BSR set to: 0

		movf	((__ntoa_long@len+1))&0ffh,w
	bnz	u3640
	movlw	32
	subwf	 ((__ntoa_long@len))&0ffh,w
	btfss	status,0
	goto	u3641
	goto	u3640

u3641:
	goto	l2980
u3640:
	line	300
	
l3004:; BSR set to: 0

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
	
l294:
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
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:        22       0       0       0       0       0       0       0       0
;;Total ram usage:       22 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		__out_rev
;; This function is called by:
;;		__ntoa_long
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	line	227
global __ptext5
__ptext5:
psect	text5
	file	"external/printf/printf.c"
	line	227
	
__ntoa_format:
;incstack = 0
	callstack 20
	line	230
	
l2814:
	
	btfsc	((c:__ntoa_format@flags))^00h,c,(1)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l244
u3190:
	line	231
	
l2816:
	movf	((c:__ntoa_format@width))^00h,c,w
iorwf	((c:__ntoa_format@width+1))^00h,c,w
	btfsc	status,2
	goto	u3201
	goto	u3200

u3201:
	goto	l2830
u3200:
	
l2818:
	
	btfss	((c:__ntoa_format@flags))^00h,c,(0)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l2830
u3210:
	
l2820:
	movf	((c:__ntoa_format@negative))^00h,c,w
	btfss	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l2824
u3220:
	
l2822:
	movlw	0Ch
	andwf	((c:__ntoa_format@flags))^00h,c,w
	movwf	(??__ntoa_format+0)^00h,c
	movlw	0
	andwf	((c:__ntoa_format@flags+1))^00h,c,w
	movwf	(??__ntoa_format+0+1)^00h,c
	movf	(??__ntoa_format+0)^00h,c,w
iorwf	(??__ntoa_format+0+1)^00h,c,w
	btfsc	status,2
	goto	u3231
	goto	u3230

u3231:
	goto	l2830
u3230:
	line	232
	
l2824:
	decf	((c:__ntoa_format@width))^00h,c
	btfss	status,0
	decf	((c:__ntoa_format@width+1))^00h,c
	goto	l2830
	line	235
	
l2826:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	
l2828:
	infsnz	((c:__ntoa_format@len))^00h,c
	incf	((c:__ntoa_format@len+1))^00h,c
	line	234
	
l2830:
		movf	((c:__ntoa_format@prec))^00h,c,w
	subwf	((c:__ntoa_format@len))^00h,c,w
	movf	((c:__ntoa_format@prec+1))^00h,c,w
	subwfb	((c:__ntoa_format@len+1))^00h,c,w
	btfsc	status,0
	goto	u3241
	goto	u3240

u3241:
	goto	l2838
u3240:
	
l2832:
		movf	((c:__ntoa_format@len+1))^00h,c,w
	bnz	u3250
	movlw	32
	subwf	 ((c:__ntoa_format@len))^00h,c,w
	btfss	status,0
	goto	u3251
	goto	u3250

u3251:
	goto	l2826
u3250:
	goto	l2838
	line	238
	
l2834:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	
l2836:
	infsnz	((c:__ntoa_format@len))^00h,c
	incf	((c:__ntoa_format@len+1))^00h,c
	line	237
	
l2838:
	
	btfss	((c:__ntoa_format@flags))^00h,c,(0)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l244
u3260:
	
l2840:
		movf	((c:__ntoa_format@width))^00h,c,w
	subwf	((c:__ntoa_format@len))^00h,c,w
	movf	((c:__ntoa_format@width+1))^00h,c,w
	subwfb	((c:__ntoa_format@len+1))^00h,c,w
	btfsc	status,0
	goto	u3271
	goto	u3270

u3271:
	goto	l244
u3270:
	
l2842:
		movf	((c:__ntoa_format@len+1))^00h,c,w
	bnz	u3280
	movlw	32
	subwf	 ((c:__ntoa_format@len))^00h,c,w
	btfss	status,0
	goto	u3281
	goto	u3280

u3281:
	goto	l2834
u3280:
	line	240
	
l244:
	line	243
	
	btfss	((c:__ntoa_format@flags))^00h,c,(4)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l2894
u3290:
	line	244
	
l2844:
	
	btfsc	((c:__ntoa_format@flags+1))^00h,c,(10)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l2860
u3300:
	
l2846:
	movf	((c:__ntoa_format@len))^00h,c,w
iorwf	((c:__ntoa_format@len+1))^00h,c,w
	btfsc	status,2
	goto	u3311
	goto	u3310

u3311:
	goto	l2860
u3310:
	
l2848:
	movf	((c:__ntoa_format@prec))^00h,c,w
xorwf	((c:__ntoa_format@len))^00h,c,w
	bnz	u3320
movf	((c:__ntoa_format@prec+1))^00h,c,w
xorwf	((c:__ntoa_format@len+1))^00h,c,w
	btfsc	status,2
	goto	u3321
	goto	u3320

u3321:
	goto	l2852
u3320:
	
l2850:
	movf	((c:__ntoa_format@width))^00h,c,w
xorwf	((c:__ntoa_format@len))^00h,c,w
	bnz	u3331
movf	((c:__ntoa_format@width+1))^00h,c,w
xorwf	((c:__ntoa_format@len+1))^00h,c,w
	btfss	status,2
	goto	u3331
	goto	u3330

u3331:
	goto	l2860
u3330:
	line	245
	
l2852:
	decf	((c:__ntoa_format@len))^00h,c
	btfss	status,0
	decf	((c:__ntoa_format@len+1))^00h,c
	line	246
	
l2854:
	movf	((c:__ntoa_format@len))^00h,c,w
iorwf	((c:__ntoa_format@len+1))^00h,c,w
	btfsc	status,2
	goto	u3341
	goto	u3340

u3341:
	goto	l2860
u3340:
	
l2856:
		movlw	16
	xorwf	((c:__ntoa_format@base))^00h,c,w
iorwf	((c:__ntoa_format@base+1))^00h,c,w
	btfss	status,2
	goto	u3351
	goto	u3350

u3351:
	goto	l2860
u3350:
	line	247
	
l2858:
	decf	((c:__ntoa_format@len))^00h,c
	btfss	status,0
	decf	((c:__ntoa_format@len+1))^00h,c
	line	250
	
l2860:
		movlw	16
	xorwf	((c:__ntoa_format@base))^00h,c,w
iorwf	((c:__ntoa_format@base+1))^00h,c,w
	btfss	status,2
	goto	u3361
	goto	u3360

u3361:
	goto	l2870
u3360:
	
l2862:
	
	btfsc	((c:__ntoa_format@flags))^00h,c,(5)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l2870
u3370:
	
l2864:
		movf	((c:__ntoa_format@len+1))^00h,c,w
	bnz	u3381
	movlw	32
	subwf	 ((c:__ntoa_format@len))^00h,c,w
	btfsc	status,0
	goto	u3381
	goto	u3380

u3381:
	goto	l2870
u3380:
	line	251
	
l2866:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(078h)
	movwf	indf2
	
l2868:
	infsnz	((c:__ntoa_format@len))^00h,c
	incf	((c:__ntoa_format@len+1))^00h,c
	line	252
	goto	l2888
	line	253
	
l2870:
		movlw	16
	xorwf	((c:__ntoa_format@base))^00h,c,w
iorwf	((c:__ntoa_format@base+1))^00h,c,w
	btfss	status,2
	goto	u3391
	goto	u3390

u3391:
	goto	l2880
u3390:
	
l2872:
	
	btfss	((c:__ntoa_format@flags))^00h,c,(5)&7
	goto	u3401
	goto	u3400
u3401:
	goto	l2880
u3400:
	
l2874:
		movf	((c:__ntoa_format@len+1))^00h,c,w
	bnz	u3411
	movlw	32
	subwf	 ((c:__ntoa_format@len))^00h,c,w
	btfsc	status,0
	goto	u3411
	goto	u3410

u3411:
	goto	l2880
u3410:
	line	254
	
l2876:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(058h)
	movwf	indf2
	goto	l2868
	line	256
	
l2880:
		movlw	2
	xorwf	((c:__ntoa_format@base))^00h,c,w
iorwf	((c:__ntoa_format@base+1))^00h,c,w
	btfss	status,2
	goto	u3421
	goto	u3420

u3421:
	goto	l2888
u3420:
	
l2882:
		movf	((c:__ntoa_format@len+1))^00h,c,w
	bnz	u3431
	movlw	32
	subwf	 ((c:__ntoa_format@len))^00h,c,w
	btfsc	status,0
	goto	u3431
	goto	u3430

u3431:
	goto	l2888
u3430:
	line	257
	
l2884:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(062h)
	movwf	indf2
	goto	l2868
	line	259
	
l2888:
		movf	((c:__ntoa_format@len+1))^00h,c,w
	bnz	u3441
	movlw	32
	subwf	 ((c:__ntoa_format@len))^00h,c,w
	btfsc	status,0
	goto	u3441
	goto	u3440

u3441:
	goto	l2894
u3440:
	line	260
	
l2890:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	
l2892:
	infsnz	((c:__ntoa_format@len))^00h,c
	incf	((c:__ntoa_format@len+1))^00h,c
	line	264
	
l2894:
		movf	((c:__ntoa_format@len+1))^00h,c,w
	bnz	u3451
	movlw	32
	subwf	 ((c:__ntoa_format@len))^00h,c,w
	btfsc	status,0
	goto	u3451
	goto	u3450

u3451:
	goto	l2910
u3450:
	line	265
	
l2896:
	movf	((c:__ntoa_format@negative))^00h,c,w
	btfsc	status,2
	goto	u3461
	goto	u3460
u3461:
	goto	l270
u3460:
	line	266
	
l2898:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02Dh)
	movwf	indf2
	
l2900:
	infsnz	((c:__ntoa_format@len))^00h,c
	incf	((c:__ntoa_format@len+1))^00h,c
	line	267
	goto	l2910
	line	268
	
l270:
	
	btfss	((c:__ntoa_format@flags))^00h,c,(2)&7
	goto	u3471
	goto	u3470
u3471:
	goto	l272
u3470:
	line	269
	
l2902:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02Bh)
	movwf	indf2
	goto	l2900
	line	271
	
l272:
	
	btfss	((c:__ntoa_format@flags))^00h,c,(3)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l2910
u3480:
	line	272
	
l2906:
	movf	((c:__ntoa_format@buf))^00h,c,w
	addwf	((c:__ntoa_format@len))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(020h)
	movwf	indf2
	goto	l2900
	line	276
	
l2910:
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
	
l275:
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
psect	text6,class=CODE,space=0,reloc=2,group=0
	line	199
global __ptext6
__ptext6:
psect	text6
	file	"external/printf/printf.c"
	line	199
	
__out_rev:
;incstack = 0
	callstack 20
	line	201
	
l2776:
	movff	(c:__out_rev@idx),(c:__out_rev@start_idx)
	movff	(c:__out_rev@idx+1),(c:__out_rev@start_idx+1)
	line	204
	
	btfsc	((c:__out_rev@flags))^00h,c,(1)&7
	goto	u3081
	goto	u3080
u3081:
	goto	l2794
u3080:
	
l2778:
	
	btfsc	((c:__out_rev@flags))^00h,c,(0)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l2794
u3090:
	line	205
	
l2780:
	movff	(c:__out_rev@len),(c:__out_rev@i)
	movff	(c:__out_rev@len+1),(c:__out_rev@i+1)
	goto	l2788
	line	206
	
l2782:
	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(c:__out_rev@buffer),(c:__out_fct@buffer)
	movff	(c:__out_rev@buffer+1),(c:__out_fct@buffer+1)

	movff	(c:__out_rev@idx),(c:__out_fct@idx)
	movff	(c:__out_rev@idx+1),(c:__out_fct@idx+1)
	movff	(c:__out_rev@maxlen),(c:__out_fct@maxlen)
	movff	(c:__out_rev@maxlen+1),(c:__out_fct@maxlen+1)
	call	u3108
	goto	u3109
u3108:
	push
	
	movwf	pclath
	movf	((c:__out_rev@out))^00h,c,w
	movwf	tosl
	movf	((c:__out_rev@out+1))^00h,c,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u3109:
	
l2784:
	infsnz	((c:__out_rev@idx))^00h,c
	incf	((c:__out_rev@idx+1))^00h,c
	line	207
	
l2786:
	infsnz	((c:__out_rev@i))^00h,c
	incf	((c:__out_rev@i+1))^00h,c
	
l2788:
		movf	((c:__out_rev@width))^00h,c,w
	subwf	((c:__out_rev@i))^00h,c,w
	movf	((c:__out_rev@width+1))^00h,c,w
	subwfb	((c:__out_rev@i+1))^00h,c,w
	btfss	status,0
	goto	u3111
	goto	u3110

u3111:
	goto	l2782
u3110:
	goto	l2794
	line	212
	
l2790:
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
	call	u3128
	goto	u3129
u3128:
	push
	
	movwf	pclath
	movf	((c:__out_rev@out))^00h,c,w
	movwf	tosl
	movf	((c:__out_rev@out+1))^00h,c,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u3129:
	
l2792:
	infsnz	((c:__out_rev@idx))^00h,c
	incf	((c:__out_rev@idx+1))^00h,c
	line	211
	
l2794:
	movf	((c:__out_rev@len))^00h,c,w
iorwf	((c:__out_rev@len+1))^00h,c,w
	btfss	status,2
	goto	u3131
	goto	u3130

u3131:
	goto	l2790
u3130:
	
l236:
	line	216
	
	btfss	((c:__out_rev@flags))^00h,c,(1)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l237
u3140:
	goto	l2802
	line	218
	
l2798:
	movlw	low(020h)
	movwf	((c:__out_fct@character))^00h,c
		movff	(c:__out_rev@buffer),(c:__out_fct@buffer)
	movff	(c:__out_rev@buffer+1),(c:__out_fct@buffer+1)

	movff	(c:__out_rev@idx),(c:__out_fct@idx)
	movff	(c:__out_rev@idx+1),(c:__out_fct@idx+1)
	movff	(c:__out_rev@maxlen),(c:__out_fct@maxlen)
	movff	(c:__out_rev@maxlen+1),(c:__out_fct@maxlen+1)
	call	u3158
	goto	u3159
u3158:
	push
	
	movwf	pclath
	movf	((c:__out_rev@out))^00h,c,w
	movwf	tosl
	movf	((c:__out_rev@out+1))^00h,c,w
	movwf	tosl+1
	clrf 	tosl+2
	movf	pclath,w
	
	return	;indir
	u3159:
	
l2800:
	infsnz	((c:__out_rev@idx))^00h,c
	incf	((c:__out_rev@idx+1))^00h,c
	line	217
	
l2802:
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
	goto	u3161
	goto	u3160

u3161:
	goto	l2798
u3160:
	line	220
	
l237:
	line	222
	movff	(c:__out_rev@idx),(c:?__out_rev)
	movff	(c:__out_rev@idx+1),(c:?__out_rev+1)
	line	223
	
l241:
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
psect	text7,class=CODE,space=0,reloc=2,inline,keep,group=0
	line	159
global __ptext7
__ptext7:
psect	text7
	file	"external/printf/printf.c"
	line	159
	
__out_fct:
;incstack = 0
	callstack 22
	line	162
	
l2774:
	line	166
	
l208:
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
psect	text8,class=CODE,space=0,reloc=2,inline,keep,group=0
	line	149
global __ptext8
__ptext8:
psect	text8
	file	"external/printf/printf.c"
	line	149
	
__out_char:
;incstack = 0
	callstack 22
	line	152
	
l2770:
	movf	((c:__out_char@character))^00h,c,w
	btfsc	status,2
	goto	u3071
	goto	u3070
u3071:
	goto	l204
u3070:
	line	153
	
l2772:
	movf	((c:__out_char@character))^00h,c,w
	
	call	__putchar
	line	155
	
l204:
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
psect	text9,class=CODE,space=0,reloc=2,inline,keep,group=0
	line	133
global __ptext9
__ptext9:
psect	text9
	file	"external/printf/printf.c"
	line	133
	
__out_buffer:
;incstack = 0
	callstack 22
	line	135
	
l2766:
		movf	((c:__out_buffer@maxlen))^00h,c,w
	subwf	((c:__out_buffer@idx))^00h,c,w
	movf	((c:__out_buffer@maxlen+1))^00h,c,w
	subwfb	((c:__out_buffer@idx+1))^00h,c,w
	btfsc	status,0
	goto	u3061
	goto	u3060

u3061:
	goto	l197
u3060:
	line	136
	
l2768:
	movf	((c:__out_buffer@idx))^00h,c,w
	addwf	((c:__out_buffer@buffer))^00h,c,w
	movwf	c:fsr2l
	movf	((c:__out_buffer@idx+1))^00h,c,w
	addwfc	((c:__out_buffer@buffer+1))^00h,c,w
	movwf	1+c:fsr2l
	movff	(c:__out_buffer@character),indf2

	line	138
	
l197:
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
psect	text10,class=CODE,space=0,reloc=2,inline,keep,group=0
	line	142
global __ptext10
__ptext10:
psect	text10
	file	"external/printf/printf.c"
	line	142
	
__out_null:
;incstack = 0
	callstack 22
	line	145
	
l200:
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
psect	text11,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	109
global __ptext11
__ptext11:
psect	text11
	file	"src/uart.c"
	line	109
	
__putchar:
;incstack = 0
	callstack 20
	movwf	((c:__putchar@c))^00h,c
	line	111
	
l2762:
		movlw	low(_tx_buffer)
	movwf	((c:Buffer_Add@buffer))^00h,c
	clrf	((c:Buffer_Add@buffer+1))^00h,c

	movff	(c:__putchar@c),(c:Buffer_Add@element)
	call	_Buffer_Add	;wreg free
	line	112
	
l2764:
	bsf	((c:3997))^0f00h,c,4	;volatile
	line	113
	
l143:
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
psect	text12,class=CODE,space=0,reloc=2,group=0
	file	"src/buffer.c"
	line	9
global __ptext12
__ptext12:
psect	text12
	file	"src/buffer.c"
	line	9
	
_Buffer_Add:
;incstack = 0
	callstack 20
	line	11
	
l2748:
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
	
l2750:
		movlw	20
	xorwf	((c:Buffer_Add@next_head))^00h,c,w
	btfss	status,2
	goto	u3041
	goto	u3040

u3041:
	goto	l2754
u3040:
	line	14
	
l2752:
	clrf	((c:Buffer_Add@next_head))^00h,c
	line	16
	
l2754:
	lfsr	2,015h
	movf	((c:Buffer_Add@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Add@buffer+1))^00h,c,w
	addwfc	fsr2h
	movf	((c:Buffer_Add@next_head))^00h,c,w
xorwf	postinc2,w
	btfss	status,2
	goto	u3051
	goto	u3050

u3051:
	goto	l2758
u3050:
	goto	l84
	line	22
	
l2758:
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
	
l84:
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
psect	text13,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/llmod.c"
	line	7
global __ptext13
__ptext13:
psect	text13
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/llmod.c"
	line	7
	
___llmod:
;incstack = 0
	callstack 24
	line	12
	
l2936:
	movf	((c:___llmod@divisor))^00h,c,w
iorwf	((c:___llmod@divisor+1))^00h,c,w
iorwf	((c:___llmod@divisor+2))^00h,c,w
iorwf	((c:___llmod@divisor+3))^00h,c,w
	btfsc	status,2
	goto	u3521
	goto	u3520

u3521:
	goto	l991
u3520:
	line	13
	
l2938:
	movlw	low(01h)
	movwf	((c:___llmod@counter))^00h,c
	line	14
	goto	l2942
	line	15
	
l2940:
	bcf	status,0
	rlcf	((c:___llmod@divisor))^00h,c
	rlcf	((c:___llmod@divisor+1))^00h,c
	rlcf	((c:___llmod@divisor+2))^00h,c
	rlcf	((c:___llmod@divisor+3))^00h,c
	line	16
	incf	((c:___llmod@counter))^00h,c
	line	14
	
l2942:
	
	btfss	((c:___llmod@divisor+3))^00h,c,(31)&7
	goto	u3531
	goto	u3530
u3531:
	goto	l2940
u3530:
	line	19
	
l2944:
		movf	((c:___llmod@divisor))^00h,c,w
	subwf	((c:___llmod@dividend))^00h,c,w
	movf	((c:___llmod@divisor+1))^00h,c,w
	subwfb	((c:___llmod@dividend+1))^00h,c,w
	movf	((c:___llmod@divisor+2))^00h,c,w
	subwfb	((c:___llmod@dividend+2))^00h,c,w
	movf	((c:___llmod@divisor+3))^00h,c,w
	subwfb	((c:___llmod@dividend+3))^00h,c,w
	btfss	status,0
	goto	u3541
	goto	u3540

u3541:
	goto	l2948
u3540:
	line	20
	
l2946:
	movf	((c:___llmod@divisor))^00h,c,w
	subwf	((c:___llmod@dividend))^00h,c
	movf	((c:___llmod@divisor+1))^00h,c,w
	subwfb	((c:___llmod@dividend+1))^00h,c
	movf	((c:___llmod@divisor+2))^00h,c,w
	subwfb	((c:___llmod@dividend+2))^00h,c
	movf	((c:___llmod@divisor+3))^00h,c,w
	subwfb	((c:___llmod@dividend+3))^00h,c
	line	21
	
l2948:
	bcf	status,0
	rrcf	((c:___llmod@divisor+3))^00h,c
	rrcf	((c:___llmod@divisor+2))^00h,c
	rrcf	((c:___llmod@divisor+1))^00h,c
	rrcf	((c:___llmod@divisor))^00h,c
	line	22
	
l2950:
	decfsz	((c:___llmod@counter))^00h,c
	
	goto	l2944
	line	23
	
l991:
	line	24
	movff	(c:___llmod@dividend),(c:?___llmod)
	movff	(c:___llmod@dividend+1),(c:?___llmod+1)
	movff	(c:___llmod@dividend+2),(c:?___llmod+2)
	movff	(c:___llmod@dividend+3),(c:?___llmod+3)
	line	25
	
l998:
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
psect	text14,class=CODE,space=0,reloc=2,group=1
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/__lldiv.c"
	line	7
global __ptext14
__ptext14:
psect	text14
	file	"/opt/microchip/xc8/v3.10/pic/sources/c99/common/__lldiv.c"
	line	7
	
___lldiv:
;incstack = 0
	callstack 24
	line	13
	
l2914:
	movlw	low(0)
	movwf	((c:___lldiv@quotient))^00h,c
	movlw	high(0)
	movwf	((c:___lldiv@quotient+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___lldiv@quotient+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___lldiv@quotient+3))^00h,c
	line	14
	
l2916:
	movf	((c:___lldiv@divisor))^00h,c,w
iorwf	((c:___lldiv@divisor+1))^00h,c,w
iorwf	((c:___lldiv@divisor+2))^00h,c,w
iorwf	((c:___lldiv@divisor+3))^00h,c,w
	btfsc	status,2
	goto	u3491
	goto	u3490

u3491:
	goto	l488
u3490:
	line	15
	
l2918:
	movlw	low(01h)
	movwf	((c:___lldiv@counter))^00h,c
	line	16
	goto	l2922
	line	17
	
l2920:
	bcf	status,0
	rlcf	((c:___lldiv@divisor))^00h,c
	rlcf	((c:___lldiv@divisor+1))^00h,c
	rlcf	((c:___lldiv@divisor+2))^00h,c
	rlcf	((c:___lldiv@divisor+3))^00h,c
	line	18
	incf	((c:___lldiv@counter))^00h,c
	line	16
	
l2922:
	
	btfss	((c:___lldiv@divisor+3))^00h,c,(31)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l2920
u3500:
	line	21
	
l2924:
	bcf	status,0
	rlcf	((c:___lldiv@quotient))^00h,c
	rlcf	((c:___lldiv@quotient+1))^00h,c
	rlcf	((c:___lldiv@quotient+2))^00h,c
	rlcf	((c:___lldiv@quotient+3))^00h,c
	line	22
	
l2926:
		movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c,w
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c,w
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c,w
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c,w
	btfss	status,0
	goto	u3511
	goto	u3510

u3511:
	goto	l2932
u3510:
	line	23
	
l2928:
	movf	((c:___lldiv@divisor))^00h,c,w
	subwf	((c:___lldiv@dividend))^00h,c
	movf	((c:___lldiv@divisor+1))^00h,c,w
	subwfb	((c:___lldiv@dividend+1))^00h,c
	movf	((c:___lldiv@divisor+2))^00h,c,w
	subwfb	((c:___lldiv@dividend+2))^00h,c
	movf	((c:___lldiv@divisor+3))^00h,c,w
	subwfb	((c:___lldiv@dividend+3))^00h,c
	line	24
	
l2930:
	bsf	(0+(0/8)+(c:___lldiv@quotient))^00h,c,(0)&7
	line	26
	
l2932:
	bcf	status,0
	rrcf	((c:___lldiv@divisor+3))^00h,c
	rrcf	((c:___lldiv@divisor+2))^00h,c
	rrcf	((c:___lldiv@divisor+1))^00h,c
	rrcf	((c:___lldiv@divisor))^00h,c
	line	27
	
l2934:
	decfsz	((c:___lldiv@counter))^00h,c
	
	goto	l2924
	line	28
	
l488:
	line	29
	movff	(c:___lldiv@quotient),(c:?___lldiv)
	movff	(c:___lldiv@quotient+1),(c:?___lldiv+1)
	movff	(c:___lldiv@quotient+2),(c:?___lldiv+2)
	movff	(c:___lldiv@quotient+3),(c:?___lldiv+3)
	line	30
	
l495:
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
psect	text15,class=CODE,space=0,reloc=2,group=0
	file	"external/printf/printf.c"
	line	188
global __ptext15
__ptext15:
psect	text15
	file	"external/printf/printf.c"
	line	188
	
__atoi:
;incstack = 0
	callstack 24
	line	190
	
l2964:
	clrf	((c:__atoi@i+1))^00h,c
	movlw	low(0)
	movwf	((c:__atoi@i))^00h,c
	line	191
	goto	l2968
	line	192
	
l2966:
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
	
l2968:
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
	goto	u3571
	goto	u3570
u3571:
	goto	l2966
u3570:
	
l226:
	line	194
	movff	(c:__atoi@i),(c:?__atoi)
	movff	(c:__atoi@i+1),(c:?__atoi+1)
	line	195
	
l227:
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
psect	text16,class=CODE,space=0,reloc=2,inline,group=0
	line	181
global __ptext16
__ptext16:
psect	text16
	file	"external/printf/printf.c"
	line	181
	
__is_digit:
;incstack = 0
	callstack 24
	movwf	((c:__is_digit@ch))^00h,c
	line	183
	
l2804:
	clrf	((c:__is_digit$812))^00h,c
	
l2806:
		movlw	030h-1
	cpfsgt	((c:__is_digit@ch))^00h,c
	goto	u3171
	goto	u3170

u3171:
	goto	l220
u3170:
	
l2808:
		movlw	03Ah-0
	cpfslt	((c:__is_digit@ch))^00h,c
	goto	u3181
	goto	u3180

u3181:
	goto	l220
u3180:
	
l2810:
	movlw	low(01h)
	movwf	((c:__is_digit$812))^00h,c
	
l220:
	movf	((c:__is_digit$812))^00h,c,w
	line	184
	
l221:
	return	;funcret
	callstack 0
GLOBAL	__end_of__is_digit
	__end_of__is_digit:
	signat	__is_digit,4217
	global	_isr_init

;; *************** function _isr_init *****************
;; Defined at:
;;		line 14 in file "src/isr.c"
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
psect	text17,class=CODE,space=0,reloc=2,group=0
	file	"src/isr.c"
	line	14
global __ptext17
__ptext17:
psect	text17
	file	"src/isr.c"
	line	14
	
_isr_init:
;incstack = 0
	callstack 27
	line	16
	
l2646:
	bcf	((c:4048))^0f00h,c,7	;volatile
	line	17
	bsf	((c:4082))^0f00h,c,6	;volatile
	line	18
	bsf	((c:4082))^0f00h,c,7	;volatile
	line	19
	
l187:
	return	;funcret
	callstack 0
GLOBAL	__end_of_isr_init
	__end_of_isr_init:
	signat	_isr_init,89
	global	_Uart_Start

;; *************** function _Uart_Start *****************
;; Defined at:
;;		line 33 in file "src/uart.c"
;; Parameters:    Size  Location     Type
;;  uart            1   19[COMRAM] PTR const struct .
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
psect	text18,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	33
global __ptext18
__ptext18:
psect	text18
	file	"src/uart.c"
	line	33
	
_Uart_Start:
;incstack = 0
	callstack 26
	line	35
	
l3358:
	movf	((c:Uart_Start@uart))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:Gpio_Init@gpio))^00h,c
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
	movwf	((c:Gpio_Init@gpio))^00h,c
	movlw	low(01h)
	movwf	((c:Gpio_Init@dir))^00h,c
	call	_Gpio_Init	;wreg free
	line	38
		movlw	low(_tx_buffer)
	movwf	((c:Buffer_Init@buffer))^00h,c
	clrf	((c:Buffer_Init@buffer+1))^00h,c

	call	_Buffer_Init	;wreg free
	line	39
		movlw	low(_rx_buffer)
	movwf	((c:Buffer_Init@buffer))^00h,c
	movlw	high(_rx_buffer)
	movwf	((c:Buffer_Init@buffer+1))^00h,c

	call	_Buffer_Init	;wreg free
	line	41
	
l3360:
	bsf	((c:4011))^0f00h,c,7	;volatile
	line	42
	
l3362:
	bsf	((c:4012))^0f00h,c,5	;volatile
	line	43
	
l3364:
	bsf	((c:4011))^0f00h,c,4	;volatile
	line	45
	
l3366:
	bcf	((c:3998))^0f00h,c,4	;volatile
	line	46
	
l3368:
	bcf	((c:3997))^0f00h,c,4	;volatile
	line	49
	
l3370:
	btfss	((c:3998))^0f00h,c,5	;volatile
	goto	u4331
	goto	u4330
u4331:
	goto	l127
u4330:
	line	51
	
l3372:
	movf	((c:4014))^0f00h,c,w	;volatile
	line	53
	
l127:
	line	54
	bsf	((c:3997))^0f00h,c,5	;volatile
	line	56
	
l128:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Uart_Start
	__end_of_Uart_Start:
	signat	_Uart_Start,4217
	global	_Gpio_Init

;; *************** function _Gpio_Init *****************
;; Defined at:
;;		line 4 in file "src/gpio.c"
;; Parameters:    Size  Location     Type
;;  gpio            1   12[COMRAM] PTR struct .
;;		 -> tx(7), rx(7), button(7), led(7), 
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
;;		_main
;;		_Uart_Start
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=0
	file	"src/gpio.c"
	line	4
global __ptext19
__ptext19:
psect	text19
	file	"src/gpio.c"
	line	4
	
_Gpio_Init:
;incstack = 0
	callstack 26
	line	6
	
l2266:
	movf	((c:Gpio_Init@dir))^00h,c,w
	btfss	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l2270
u2140:
	line	8
	
l2268:
	movf	((c:Gpio_Init@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_Gpio_Init+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_Gpio_Init+1)^00h,c
	incf	((??_Gpio_Init+0))^00h,c
	goto	u2154
u2155:
	bcf	status,0
	rlcf	((??_Gpio_Init+1))^00h,c
u2154:
	decfsz	((??_Gpio_Init+0))^00h,c
	goto	u2155
	movf	((??_Gpio_Init+1))^00h,c,w
	xorlw	0ffh
	movwf	(??_Gpio_Init+2)^00h,c
	movf	((c:Gpio_Init@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,??_Gpio_Init+3
	movff	postdec2,??_Gpio_Init+3+1
	movff	??_Gpio_Init+3,fsr2l
	movff	??_Gpio_Init+3+1,fsr2h
	movf	((??_Gpio_Init+2))^00h,c,w
	andwf	indf2
	line	9
	goto	l64
	line	12
	
l2270:
	movf	((c:Gpio_Init@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_Gpio_Init+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_Gpio_Init+1)^00h,c
	incf	((??_Gpio_Init+0))^00h,c
	goto	u2164
u2165:
	bcf	status,0
	rlcf	((??_Gpio_Init+1))^00h,c
u2164:
	decfsz	((??_Gpio_Init+0))^00h,c
	goto	u2165
	movf	((c:Gpio_Init@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,??_Gpio_Init+2
	movff	postdec2,??_Gpio_Init+2+1
	movff	??_Gpio_Init+2,fsr2l
	movff	??_Gpio_Init+2+1,fsr2h
	movf	((??_Gpio_Init+1))^00h,c,w
	iorwf	indf2
	line	14
	
l64:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Gpio_Init
	__end_of_Gpio_Init:
	signat	_Gpio_Init,8313
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
psect	text20,class=CODE,space=0,reloc=2,group=0
	file	"src/buffer.c"
	line	3
global __ptext20
__ptext20:
psect	text20
	file	"src/buffer.c"
	line	3
	
_Buffer_Init:
;incstack = 0
	callstack 26
	line	5
	
l3008:
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
	
l79:
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
psect	text21,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	115
global __ptext21
__ptext21:
psect	text21
	file	"src/uart.c"
	line	115
	
_Uart_Read:
;incstack = 0
	callstack 26
	line	117
	
l3380:
		movlw	low(_rx_buffer)
	movwf	((c:Buffer_Get@buffer))^00h,c
	movlw	high(_rx_buffer)
	movwf	((c:Buffer_Get@buffer+1))^00h,c

		movff	(c:Uart_Read@data),(c:Buffer_Get@element)

	call	_Buffer_Get	;wreg free
	line	118
	
l146:
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
;;		 -> Uart_InterruptHandler@c_494(1), main@c(1), 
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
psect	text22,class=CODE,space=0,reloc=2,group=0
	file	"src/buffer.c"
	line	27
global __ptext22
__ptext22:
psect	text22
	file	"src/buffer.c"
	line	27
	
_Buffer_Get:
;incstack = 0
	callstack 26
	line	29
	
l3010:
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
	goto	u3651
	goto	u3650

u3651:
	goto	l3016
u3650:
	line	32
	
l3012:
	movlw	(0)&0ffh
	goto	l88
	line	35
	
l3016:
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
	
l3018:
	lfsr	2,015h
	movf	((c:Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	incf	indf2

	line	38
	
l3020:
	lfsr	2,015h
	movf	((c:Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	movlw	20
	xorwf	postinc2,w
	btfss	status,2
	goto	u3661
	goto	u3660

u3661:
	goto	l3024
u3660:
	line	39
	
l3022:
	lfsr	2,015h
	movf	((c:Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	clrf	indf2
	line	41
	
l3024:
	movlw	(01h)&0ffh
	line	42
	
l88:
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
psect	text23,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	10
global __ptext23
__ptext23:
psect	text23
	file	"src/uart.c"
	line	10
	
_Uart_Init:
;incstack = 0
	callstack 27
	line	12
	
l2622:
	bcf	((c:4012))^0f00h,c,6	;volatile
	line	13
	bcf	((c:4011))^0f00h,c,6	;volatile
	line	14
	bcf	((c:4012))^0f00h,c,4	;volatile
	line	16
	
l2624:
	movf	((c:Uart_Init@uart))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movlw	128
	xorwf	postinc2,w
	bnz	u2851
movlw	37
	xorwf	postinc2,w
iorwf	postinc2,w
iorwf	postinc2,w
	btfss	status,2
	goto	u2851
	goto	u2850

u2851:
	goto	l124
u2850:
	line	18
	
l2626:
	bsf	((c:4012))^0f00h,c,2	;volatile
	line	19
	bcf	((c:4024))^0f00h,c,3	;volatile
	line	21
	clrf	((c:4016))^0f00h,c	;volatile
	line	22
	
l2628:
	movlw	low(081h)
	movwf	((c:4015))^0f00h,c	;volatile
	line	30
	
l124:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Uart_Init
	__end_of_Uart_Init:
	signat	_Uart_Init,4217
	global	_Gpio_Write

;; *************** function _Gpio_Write *****************
;; Defined at:
;;		line 16 in file "src/gpio.c"
;; Parameters:    Size  Location     Type
;;  gpio            1   12[COMRAM] PTR struct .
;;		 -> led(7), 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=0
	file	"src/gpio.c"
	line	16
global __ptext24
__ptext24:
psect	text24
	file	"src/gpio.c"
	line	16
	
_Gpio_Write:
;incstack = 0
	callstack 27
	line	18
	
l2648:
		decf	((c:Gpio_Write@level))^00h,c,w
	btfss	status,2
	goto	u2871
	goto	u2870

u2871:
	goto	l2652
u2870:
	line	20
	
l2650:
	movf	((c:Gpio_Write@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_Gpio_Write+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_Gpio_Write+1)^00h,c
	incf	((??_Gpio_Write+0))^00h,c
	goto	u2884
u2885:
	bcf	status,0
	rlcf	((??_Gpio_Write+1))^00h,c
u2884:
	decfsz	((??_Gpio_Write+0))^00h,c
	goto	u2885
	movf	((c:Gpio_Write@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movff	postinc2,??_Gpio_Write+2
	movff	postdec2,??_Gpio_Write+2+1
	movff	??_Gpio_Write+2,fsr2l
	movff	??_Gpio_Write+2+1,fsr2h
	movf	((??_Gpio_Write+1))^00h,c,w
	iorwf	indf2
	line	21
	goto	l69
	line	24
	
l2652:
	movf	((c:Gpio_Write@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_Gpio_Write+0)^00h,c
	movlw	(01h)&0ffh
	movwf	(??_Gpio_Write+1)^00h,c
	incf	((??_Gpio_Write+0))^00h,c
	goto	u2894
u2895:
	bcf	status,0
	rlcf	((??_Gpio_Write+1))^00h,c
u2894:
	decfsz	((??_Gpio_Write+0))^00h,c
	goto	u2895
	movf	((??_Gpio_Write+1))^00h,c,w
	xorlw	0ffh
	movwf	(??_Gpio_Write+2)^00h,c
	movf	((c:Gpio_Write@gpio))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(02h)
	addwf	fsr2l

	movff	postinc2,??_Gpio_Write+3
	movff	postdec2,??_Gpio_Write+3+1
	movff	??_Gpio_Write+3,fsr2l
	movff	??_Gpio_Write+3+1,fsr2h
	movf	((??_Gpio_Write+2))^00h,c,w
	andwf	indf2
	line	26
	
l69:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Gpio_Write
	__end_of_Gpio_Write:
	signat	_Gpio_Write,8313
	global	_Gpio_Read

;; *************** function _Gpio_Read *****************
;; Defined at:
;;		line 28 in file "src/gpio.c"
;; Parameters:    Size  Location     Type
;;  gpio            1   12[COMRAM] PTR struct .
;;		 -> button(7), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E41
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=0
	line	28
global __ptext25
__ptext25:
psect	text25
	file	"src/gpio.c"
	line	28
	
_Gpio_Read:
;incstack = 0
	callstack 27
	line	30
	
l2654:
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
	goto	u2904
u2905:
	bcf	status,0
	rlcf	((??_Gpio_Read+4))^00h,c
u2904:
	decfsz	((??_Gpio_Read+3))^00h,c
	goto	u2905
	movf	((??_Gpio_Read+4))^00h,c,w
	andwf	((??_Gpio_Read+2))^00h,c,w
	iorlw	0
	btfsc	status,2
	goto	u2911
	goto	u2910
u2911:
	goto	l2660
u2910:
	line	32
	
l2656:
	movlw	(01h)&0ffh
	goto	l73
	line	34
	
l2660:
	movlw	(0)&0ffh
	line	35
	
l73:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Gpio_Read
	__end_of_Gpio_Read:
	signat	_Gpio_Read,4217
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 6 in file "src/isr.c"
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
	line	6
	
_ISR:
;incstack = 0
	callstack 20
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
	line	8
	
i2l3426:
	movlw	0
	btfsc	((c:3998))^0f00h,c,5	;volatile
	movlw	1
	btfsc	((c:3998))^0f00h,c,4	;volatile
	movlw	1

	btfsc	wreg,0
	goto	i2u444_41
	goto	i2u444_40
i2u444_41:
	clrf	(??_ISR+0)^00h,c
	incf	(??_ISR+0)^00h,c
	goto	i2u444_48
i2u444_40:
	clrf	(??_ISR+0)^00h,c
i2u444_48:
	movf	(??_ISR+0)^00h,c,w
	btfsc	status,2
	goto	i2u445_41
	goto	i2u445_40
i2u445_41:
	goto	i2l184
i2u445_40:
	line	10
	
i2l3428:
	call	_Uart_InterruptHandler	;wreg free
	line	12
	
i2l184:
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
psect	text27,class=CODE,space=0,reloc=2,group=0
	file	"src/uart.c"
	line	66
global __ptext27
__ptext27:
psect	text27
	file	"src/uart.c"
	line	66
	
_Uart_InterruptHandler:
;incstack = 0
	callstack 20
	line	69
	
i2l3384:
	btfss	((c:3998))^0f00h,c,5	;volatile
	goto	i2u434_41
	goto	i2u434_40
i2u434_41:
	goto	i2l3394
i2u434_40:
	line	72
	
i2l3386:
	btfss	((c:4011))^0f00h,c,1	;volatile
	goto	i2u435_41
	goto	i2u435_40
i2u435_41:
	goto	i2l135
i2u435_40:
	line	75
	
i2l3388:
	bcf	((c:4011))^0f00h,c,4	;volatile
	line	76
	bsf	((c:4011))^0f00h,c,4	;volatile
	line	77
	goto	i2l136
	line	78
	
i2l135:
	line	80
	btfss	((c:4011))^0f00h,c,2	;volatile
	goto	i2u436_41
	goto	i2u436_40
i2u436_41:
	goto	i2l137
i2u436_40:
	line	83
	
i2l3390:
	movf	((c:4014))^0f00h,c,w	;volatile
	line	84
	goto	i2l136
	line	85
	
i2l137:
	line	87
	movff	(c:4014),(c:Uart_InterruptHandler@c)	;volatile
	line	88
	
i2l3392:
		movlw	low(_rx_buffer)
	movwf	((c:i2Buffer_Add@buffer))^00h,c
	movlw	high(_rx_buffer)
	movwf	((c:i2Buffer_Add@buffer+1))^00h,c

	movff	(c:Uart_InterruptHandler@c),(c:i2Buffer_Add@element)
	call	i2_Buffer_Add	;wreg free
	line	93
	
i2l3394:
	btfss	((c:3998))^0f00h,c,4	;volatile
	goto	i2u437_41
	goto	i2u437_40
i2u437_41:
	goto	i2l136
i2u437_40:
	
i2l3396:
	btfss	((c:3997))^0f00h,c,4	;volatile
	goto	i2u438_41
	goto	i2u438_40
i2u438_41:
	goto	i2l136
i2u438_40:
	line	96
	
i2l3398:
		movlw	low(_tx_buffer)
	movwf	((c:i2Buffer_Get@buffer))^00h,c
	clrf	((c:i2Buffer_Get@buffer+1))^00h,c

		movlw	low(Uart_InterruptHandler@c_494)
	movwf	((c:i2Buffer_Get@element))^00h,c

	call	i2_Buffer_Get	;wreg free
	iorlw	0
	btfsc	status,2
	goto	i2u439_41
	goto	i2u439_40
i2u439_41:
	goto	i2l139
i2u439_40:
	line	98
	
i2l3400:
	movff	(c:Uart_InterruptHandler@c_494),(c:4013)	;volatile
	line	99
	goto	i2l136
	line	100
	
i2l139:
	line	102
	bcf	((c:3997))^0f00h,c,4	;volatile
	line	106
	
i2l136:
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
;;		 -> Uart_InterruptHandler@c_494(1), main@c(1), 
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
psect	text28,class=CODE,space=0,reloc=2,group=0
	file	"src/buffer.c"
	line	27
global __ptext28
__ptext28:
psect	text28
	file	"src/buffer.c"
	line	27
	
i2_Buffer_Get:
;incstack = 0
	callstack 20
	line	29
	
i2l3340:
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
	goto	i2u431_41
	goto	i2u431_40

i2u431_41:
	goto	i2l3346
i2u431_40:
	line	32
	
i2l3342:
	movlw	(0)&0ffh
	goto	i2l88
	line	35
	
i2l3346:
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
	
i2l3348:
	lfsr	2,015h
	movf	((c:i2Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:i2Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	incf	indf2

	line	38
	
i2l3350:
	lfsr	2,015h
	movf	((c:i2Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:i2Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	movlw	20
	xorwf	postinc2,w
	btfss	status,2
	goto	i2u432_41
	goto	i2u432_40

i2u432_41:
	goto	i2l3354
i2u432_40:
	line	39
	
i2l3352:
	lfsr	2,015h
	movf	((c:i2Buffer_Get@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:i2Buffer_Get@buffer+1))^00h,c,w
	addwfc	fsr2h
	clrf	indf2
	line	41
	
i2l3354:
	movlw	(01h)&0ffh
	line	42
	
i2l88:
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
psect	text29,class=CODE,space=0,reloc=2,group=0
	line	9
global __ptext29
__ptext29:
psect	text29
	file	"src/buffer.c"
	line	9
	
i2_Buffer_Add:
;incstack = 0
	callstack 20
	line	11
	
i2l3326:
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
	
i2l3328:
		movlw	20
	xorwf	((c:i2Buffer_Add@next_head))^00h,c,w
	btfss	status,2
	goto	i2u429_41
	goto	i2u429_40

i2u429_41:
	goto	i2l3332
i2u429_40:
	line	14
	
i2l3330:
	clrf	((c:i2Buffer_Add@next_head))^00h,c
	line	16
	
i2l3332:
	lfsr	2,015h
	movf	((c:i2Buffer_Add@buffer))^00h,c,w
	addwf	fsr2l
	movf	((c:i2Buffer_Add@buffer+1))^00h,c,w
	addwfc	fsr2h
	movf	((c:i2Buffer_Add@next_head))^00h,c,w
xorwf	postinc2,w
	btfss	status,2
	goto	i2u430_41
	goto	i2u430_40

i2u430_41:
	goto	i2l3336
i2u430_40:
	goto	i2l84
	line	22
	
i2l3336:
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
	
i2l84:
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

;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 27 2017) (MINGW32)
; This file was generated Mon Sep 11 16:46:07 2017
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"asm.c"
	list	p=16f87
	radix dec
	include "p16f87.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_CCP1CONbits
	extern	_CMCONbits
	extern	_CVRCONbits
	extern	_EECON1bits
	extern	_INTCONbits
	extern	_OPTION_REGbits
	extern	_OSCCONbits
	extern	_OSCTUNEbits
	extern	_PCONbits
	extern	_PIE1bits
	extern	_PIE2bits
	extern	_PIR1bits
	extern	_PIR2bits
	extern	_PORTAbits
	extern	_PORTBbits
	extern	_RCSTAbits
	extern	_SSPCONbits
	extern	_SSPSTATbits
	extern	_STATUSbits
	extern	_T1CONbits
	extern	_T2CONbits
	extern	_TRISAbits
	extern	_TRISBbits
	extern	_TXSTAbits
	extern	_WDTCONbits
	extern	_INDF
	extern	_TMR0
	extern	_PCL
	extern	_STATUS
	extern	_FSR
	extern	_PORTA
	extern	_PORTB
	extern	_PCLATH
	extern	_INTCON
	extern	_PIR1
	extern	_PIR2
	extern	_TMR1L
	extern	_TMR1H
	extern	_T1CON
	extern	_TMR2
	extern	_T2CON
	extern	_SSPBUF
	extern	_SSPCON
	extern	_CCPR1L
	extern	_CCPR1H
	extern	_CCP1CON
	extern	_RCSTA
	extern	_TXREG
	extern	_RCREG
	extern	_OPTION_REG
	extern	_TRISA
	extern	_TRISB
	extern	_PIE1
	extern	_PIE2
	extern	_PCON
	extern	_OSCCON
	extern	_OSCTUNE
	extern	_PR2
	extern	_SSPADD
	extern	_SSPSTAT
	extern	_TXSTA
	extern	_SPBRG
	extern	_CMCON
	extern	_CVRCON
	extern	_WDTCON
	extern	_EEDATA
	extern	_EEADR
	extern	_EEDATH
	extern	_EEADRH
	extern	_EECON1
	extern	_EECON2
	extern	__gptrget1
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_c_a
	global	_c_b

	global PSAVE
	global SSAVE
	global WSAVE
	global STK12
	global STK11
	global STK10
	global STK09
	global STK08
	global STK07
	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0070
PSAVE	res 1
SSAVE	res 1
WSAVE	res 1
STK12	res 1
STK11	res 1
STK10	res 1
STK09	res 1
STK08	res 1
STK07	res 1
STK06	res 1
STK05	res 1
STK04	res 1
STK03	res 1
STK02	res 1
STK01	res 1
STK00	res 1

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_asm_0	udata
_c_a	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_asm_0	udata
r0x1001	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_asm_0	code
_c_b
	retlw 0x64

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	nop
	pagesel __sdcc_gsinit_startup
	goto	__sdcc_gsinit_startup
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_asm	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   __gptrget1
;   __gptrget1
;3 compiler assigned registers:
;   STK01
;   STK00
;   r0x1001
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	13; "asm.c"	c_a = T2CON;
	BANKSEL	_T2CON
	MOVF	_T2CON,W
	BANKSEL	_c_a
	MOVWF	_c_a
;;genAssign from CODESPACE
;	.line	16; "asm.c"	PORTA = c_a + c_b;
	BANKSEL	_c_b
	MOVF	low (_c_b+0),W
;; BANKOPT1 BANKSEL dropped; STK01 present in all of _c_b's banks
	MOVWF	STK01
;; BANKOPT2 BANKSEL dropped; _c_b present in same bank as _c_b
	MOVF	low (_c_b+1),W
;; BANKOPT1 BANKSEL dropped; STK00 present in all of _c_b's banks
	MOVWF	STK00
	MOVLW	0x80
	PAGESEL	__gptrget1
;; BANKOPT3 drop assumptions: PCI with label or call found
	CALL	__gptrget1
	PAGESEL	$
	BANKSEL	r0x1001
	MOVWF	r0x1001
	BANKSEL	_c_a
	ADDWF	_c_a,W
	BANKSEL	_PORTA
	MOVWF	_PORTA
;	.line	17; "asm.c"	PORTB = c_a - c_b;
	BANKSEL	r0x1001
	MOVF	r0x1001,W
	BANKSEL	_c_a
	SUBWF	_c_a,W
	BANKSEL	_PORTB
	MOVWF	_PORTB
;; BANKOPT4 drop assumptions: label or ASMDIR found
	movai 100
;; BANKOPT4 drop assumptions: label or ASMDIR found
	movra PORTA
;; BANKOPT4 drop assumptions: label or ASMDIR found
	
;; BANKOPT4 drop assumptions: label or ASMDIR found
	stop
;; BANKOPT4 drop assumptions: label or ASMDIR found
	nop
;; BANKOPT4 drop assumptions: label or ASMDIR found
	clrwdt
;; BANKOPT4 drop assumptions: label or ASMDIR found
	stop
;; BANKOPT3 drop assumptions: PCI with label or call found
_00106_DS_
;	.line	30; "asm.c"	while(1);
	GOTO	_00106_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	   16+   11 =    27 instructions (   76 byte)

	end

;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 17 2017) (MINGW32)
; This file was generated Thu Aug 17 23:12:26 2017
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"main.c"
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
	extern	__sdcc_gsinit_startup
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_fun1
	global	_main
	global	_gVar

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
UD_main_0	udata
_gVar	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
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
code_main	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;functions called:
;   _fun1
;   _fun1
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	21; "main.c"	gVar = 18;
	MOVLW	0x12
	BANKSEL	_gVar
	MOVWF	_gVar
;; BANKOPT3 drop assumptions: PCI with label or call found
;	.line	22; "main.c"	fun1();
	CALL	_fun1
;	.line	24; "main.c"	PORTA = 0XFF;
	MOVLW	0xff
	BANKSEL	_PORTA
	MOVWF	_PORTA
;; BANKOPT3 drop assumptions: PCI with label or call found
_00114_DS_
;	.line	28; "main.c"	PORTA=~PORTA;       
	BANKSEL	_PORTA
	COMF	_PORTA,W
;; BANKOPT2 BANKSEL dropped; _PORTA present in same bank as _PORTA
	MOVWF	_PORTA
	GOTO	_00114_DS_
	RETURN	
; exit point of _main

;***
;  pBlock Stats: dbName = C
;***
;entry:  _fun1	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   r0x1001
;; Starting pCode block
_fun1	;Function start
; 2 exit points
;	.line	8; "main.c"	lVar = gVar-1;
	BANKSEL	_gVar
	DECF	_gVar,W
;;1	MOVWF	r0x1001
;	.line	9; "main.c"	if(lVar==18)
	XORLW	0x12
	BTFSS	STATUS,2
	GOTO	_00106_DS_
;	.line	11; "main.c"	PORTB = 0;
	BANKSEL	_PORTB
	CLRF	_PORTB
	GOTO	_00108_DS_
;; BANKOPT3 drop assumptions: PCI with label or call found
_00106_DS_
;	.line	15; "main.c"	PORTB = 1;
	MOVLW	0x01
	BANKSEL	_PORTB
	MOVWF	_PORTB
;; BANKOPT3 drop assumptions: PCI with label or call found
_00108_DS_
	RETURN	
; exit point of _fun1


;	code size estimation:
;	   18+    6 =    24 instructions (   60 byte)

	end

;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 27 2017) (MINGW32)
; This file was generated Mon Sep 25 13:13:07 2017
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
;	.file	"switch.c"
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
	global	_main
	global	_rom

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
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_switch_0	udata
r0x1000	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_switch_0	code
_rom
	retlw 0x01
	retlw 0x02
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00
	retlw 0x00

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
code_switch	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;1 compiler assigned register :
;   r0x1000
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	9; "switch.c"	unsigned char i=1;
	MOVLW	0x01
	BANKSEL	r0x1000
	MOVWF	r0x1000
;	.line	11; "switch.c"	switch(i)
	MOVLW	HIGH(_00114_DS_)
	BANKSEL	PCLATH
	MOVWF	PCLATH
	MOVLW	_00114_DS_
	BANKSEL	r0x1000
	ADDWF	r0x1000,W
	BTFSS	STATUS,0
	GOTO	_00001_DS_
	BANKSEL	PCLATH
	INCF	PCLATH,F
;; BANKOPT3 drop assumptions: PCI with label or call found
;; BANKOPT1 BANKSEL dropped; PCL present in all of (null)'s banks
_00001_DS_
	MOVWF	PCL
;; BANKOPT3 drop assumptions: PCI with label or call found
_00114_DS_
	GOTO	_00105_DS_
	GOTO	_00106_DS_
	GOTO	_00107_DS_
	GOTO	_00111_DS_
;; BANKOPT3 drop assumptions: PCI with label or call found
_00105_DS_
;	.line	14; "switch.c"	PORTA=1;
	MOVLW	0x01
	BANKSEL	_PORTA
	MOVWF	_PORTA
;	.line	15; "switch.c"	break;  	   	
	GOTO	_00111_DS_
;; BANKOPT3 drop assumptions: PCI with label or call found
_00106_DS_
;	.line	17; "switch.c"	PORTA=0;  	
	BANKSEL	_PORTA
	CLRF	_PORTA
;	.line	18; "switch.c"	break;   	
	GOTO	_00111_DS_
;; BANKOPT3 drop assumptions: PCI with label or call found
_00107_DS_
;	.line	21; "switch.c"	break;
	GOTO	_00111_DS_
;; BANKOPT3 drop assumptions: PCI with label or call found
_00111_DS_
;	.line	27; "switch.c"	}
	RETURN	
; exit point of _main


;	code size estimation:
;	   21+    6 =    27 instructions (   66 byte)

	end

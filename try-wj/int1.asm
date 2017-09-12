;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Sep 11 2017) (MINGW32)
; This file was generated Mon Sep 11 18:05:25 2017
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"int1.c"
	list	p=0311
	radix dec
	include "0311.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_STATUSbits
	extern	_P0bits
	extern	_P1bits
	extern	_MCRbits
	extern	_KBIMbits
	extern	_PDCONbits
	extern	_ODCONbits
	extern	_PUCONbits
	extern	_INTECONbits
	extern	_INTFLAGbits
	extern	_T0CRbits
	extern	_DDR0bits
	extern	_DDR1bits
	extern	_TMCRbits
	extern	_T1CRbits
	extern	_INDF
	extern	_T0CNT
	extern	_PCL
	extern	_STATUS
	extern	_FSR
	extern	_P0
	extern	_P1
	extern	_MCR
	extern	_KBIM
	extern	_PCLATH
	extern	_PDCON
	extern	_ODCON
	extern	_PUCON
	extern	_INTECON
	extern	_INTFLAG
	extern	_T0CR
	extern	_DDR0
	extern	_DDR1
	extern	_TMCR
	extern	_T1CR
	extern	_T1CNT
	extern	_T1LOAD
	extern	_T1DATA
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_int_isr
	global	_main

	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0010
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
UDL_int1_0	udata
r0x1000	res	1
r0x1001	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

;@Allocation info for local variables in function 'int_isr'
;@int_isr int_isr                   Allocated to registers ;size:2
;@int_isr STATUSbits                Allocated to registers ;size:1
;@int_isr P0bits                    Allocated to registers ;size:1
;@int_isr P1bits                    Allocated to registers ;size:1
;@int_isr MCRbits                   Allocated to registers ;size:1
;@int_isr KBIMbits                  Allocated to registers ;size:1
;@int_isr PDCONbits                 Allocated to registers ;size:1
;@int_isr ODCONbits                 Allocated to registers ;size:1
;@int_isr PUCONbits                 Allocated to registers ;size:1
;@int_isr INTECONbits               Allocated to registers ;size:1
;@int_isr INTFLAGbits               Allocated to registers ;size:1
;@int_isr T0CRbits                  Allocated to registers ;size:1
;@int_isr DDR0bits                  Allocated to registers ;size:1
;@int_isr DDR1bits                  Allocated to registers ;size:1
;@int_isr TMCRbits                  Allocated to registers ;size:1
;@int_isr T1CRbits                  Allocated to registers ;size:1
;@int_isr INDF                      Allocated to registers ;size:1
;@int_isr T0CNT                     Allocated to registers ;size:1
;@int_isr PCL                       Allocated to registers ;size:1
;@int_isr STATUS                    Allocated to registers ;size:1
;@int_isr FSR                       Allocated to registers ;size:1
;@int_isr P0                        Allocated to registers ;size:1
;@int_isr P1                        Allocated to registers ;size:1
;@int_isr MCR                       Allocated to registers ;size:1
;@int_isr KBIM                      Allocated to registers ;size:1
;@int_isr PCLATH                    Allocated to registers ;size:1
;@int_isr PDCON                     Allocated to registers ;size:1
;@int_isr ODCON                     Allocated to registers ;size:1
;@int_isr PUCON                     Allocated to registers ;size:1
;@int_isr INTECON                   Allocated to registers ;size:1
;@int_isr INTFLAG                   Allocated to registers ;size:1
;@int_isr T0CR                      Allocated to registers ;size:1
;@int_isr DDR0                      Allocated to registers ;size:1
;@int_isr DDR1                      Allocated to registers ;size:1
;@int_isr TMCR                      Allocated to registers ;size:1
;@int_isr T1CR                      Allocated to registers ;size:1
;@int_isr T1CNT                     Allocated to registers ;size:1
;@int_isr T1LOAD                    Allocated to registers ;size:1
;@int_isr T1DATA                    Allocated to registers ;size:1
;@end Allocation info for local variables in function 'int_isr';
;@Allocation info for local variables in function 'main'
;@main a                         Allocated to registers r0x1000 ;size:1
;@main b                         Allocated to registers r0x1001 ;size:1
;@main c                         Allocated to registers ;size:1
;@end Allocation info for local variables in function 'main';

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; reset vector 
;--------------------------------------------------------
STARTUP	code 0x0000
	goto	_main
;--------------------------------------------------------
; interrupt and initialization code
;--------------------------------------------------------
c_interrupt	code	0x8
__sdcc_interrupt
;***
;  pBlock Stats: dbName = I
;***
;entry:  _int_isr	;Function start
; 0 exit points
;; Starting pCode block
_int_isr	;Function start
; 0 exit points
;	.line	5; "int1.c"	P01 = 1;
	BSET	_P0bits,1
;	.line	6; "int1.c"	P01 = 0;
	BCLR	_P0bits,1
;	.line	7; "int1.c"	P01 = 1;
	BSET	_P0bits,1
;	.line	8; "int1.c"	T1IF = 0;
	BCLR	_TMCRbits,0
END_OF_INTERRUPT
	RETIE	

;--------------------------------------------------------
; code
;--------------------------------------------------------
code_int1	code
;***
;  pBlock Stats: dbName = M
;***
;entry:  _main	;Function start
; 2 exit points
;has an exit
;2 compiler assigned registers:
;   r0x1000
;   r0x1001
;; Starting pCode block
_main	;Function start
; 2 exit points
;	.line	15; "int1.c"	DDR1 = 0x01;
	MOVAI	0x01
	MOVRA	_DDR1
;	.line	16; "int1.c"	KBIM = DDR1 & 0x55;
	MOVAI	0x55
	ANDAR	_DDR1
	MOVRA	_KBIM
;	.line	17; "int1.c"	KBIM = DDR1 | 0x66;
	MOVAI	0x66
	ORAR	_DDR1
	MOVRA	_KBIM
;	.line	18; "int1.c"	KBIM = DDR1 ^ 0x66;
	MOVAI	0x66
	XORAR	_DDR1
	MOVRA	_KBIM
;	.line	19; "int1.c"	KBIE = 1;
	BSET	_INTECONbits,1
;	.line	23; "int1.c"	while(a==3)
	MOVAI	0x01
	MOVRA	r0x1000
	MOVAI	0x02
	MOVRA	r0x1001
_00109_DS_
	MOVAR	r0x1000
	XORAI	0x03
	JBSET	STATUS,2
	GOTO	_00112_DS_
;	.line	25; "int1.c"	a++;
	INCR	r0x1000
;	.line	26; "int1.c"	b = b + 2;
	INCR	r0x1001
	INCR	r0x1001
;	.line	27; "int1.c"	c = a + b;
	GOTO	_00109_DS_
_00112_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	   30+    0 =    30 instructions (   60 byte)

	end

;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Sep 11 2017) (MINGW32)
; This file was generated Mon Sep 11 13:47:12 2017
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"asm.c"
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
	extern	__gptrget1
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_c_a
	global	_c_b

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
	retai 0x64


;@Allocation info for local variables in function 'main'
;@main main                      Allocated to registers ;size:2
;@main STATUSbits                Allocated to registers ;size:1
;@main P0bits                    Allocated to registers ;size:1
;@main P1bits                    Allocated to registers ;size:1
;@main MCRbits                   Allocated to registers ;size:1
;@main KBIMbits                  Allocated to registers ;size:1
;@main PDCONbits                 Allocated to registers ;size:1
;@main ODCONbits                 Allocated to registers ;size:1
;@main PUCONbits                 Allocated to registers ;size:1
;@main INTECONbits               Allocated to registers ;size:1
;@main INTFLAGbits               Allocated to registers ;size:1
;@main T0CRbits                  Allocated to registers ;size:1
;@main DDR0bits                  Allocated to registers ;size:1
;@main DDR1bits                  Allocated to registers ;size:1
;@main TMCRbits                  Allocated to registers ;size:1
;@main T1CRbits                  Allocated to registers ;size:1
;@main c_a                       Allocated to registers ;size:1
;@main INDF                      Allocated to registers ;size:1
;@main T0CNT                     Allocated to registers ;size:1
;@main PCL                       Allocated to registers ;size:1
;@main STATUS                    Allocated to registers ;size:1
;@main FSR                       Allocated to registers ;size:1
;@main P0                        Allocated to registers ;size:1
;@main P1                        Allocated to registers ;size:1
;@main MCR                       Allocated to registers ;size:1
;@main KBIM                      Allocated to registers ;size:1
;@main PCLATH                    Allocated to registers ;size:1
;@main PDCON                     Allocated to registers ;size:1
;@main ODCON                     Allocated to registers ;size:1
;@main PUCON                     Allocated to registers ;size:1
;@main INTECON                   Allocated to registers ;size:1
;@main INTFLAG                   Allocated to registers ;size:1
;@main T0CR                      Allocated to registers ;size:1
;@main DDR0                      Allocated to registers ;size:1
;@main DDR1                      Allocated to registers ;size:1
;@main TMCR                      Allocated to registers ;size:1
;@main T1CR                      Allocated to registers ;size:1
;@main T1CNT                     Allocated to registers ;size:1
;@main T1LOAD                    Allocated to registers ;size:1
;@main T1DATA                    Allocated to registers ;size:1
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
;	.line	8; "asm.c"	c_a = MCR;
	MOVAR	_MCR
	MOVRA	_c_a
;;genAssign from CODESPACE
;	.line	11; "asm.c"	P0 = c_a + c_b;
	MOVAR	low (_c_b+0)
	MOVRA	STK01
	MOVAR	low (_c_b+1)
	MOVRA	STK00
	MOVAI	0x80
	CALL	__gptrget1
	MOVRA	r0x1001
	MOVAR	r0x1001
	ADDAR	_c_a
	MOVRA	_P0
;	.line	12; "asm.c"	P1 = c_a - c_b;
	MOVAR	r0x1001
	RSUBAR	_c_a
	MOVRA	_P1
;	.line	17; "asm.c"	__endasm;
	movai 100
	movra P1
	
;	.line	19; "asm.c"	__asm__("stop");
	stop
;	.line	21; "asm.c"	Nop();
	nop
;	.line	22; "asm.c"	ClrWdt();
	clrwdt
;	.line	23; "asm.c"	Stop();
	stop
_00106_DS_
;	.line	25; "asm.c"	while(1);
	GOTO	_00106_DS_
	RETURN	
; exit point of _main


;	code size estimation:
;	   17+    0 =    17 instructions (   34 byte)

	end

;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.4 (Sep 11 2017) (MINGW32)
; This file was generated Mon Sep 25 13:19:05 2017
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
;	.file	"switch.c"
	list	p=3221
	radix dec
	include "3221.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_STATUSbits
	extern	_MCRbits
	extern	_INTEbits
	extern	_INTFbits
	extern	_IOP0bits
	extern	_OEP0bits
	extern	_PUP0bits
	extern	_ANSELbits
	extern	_IOP1bits
	extern	_OEP1bits
	extern	_PUP1bits
	extern	_KBIMbits
	extern	_T0CRbits
	extern	_T1CRbits
	extern	_LVDCRbits
	extern	_OSCMbits
	extern	_ADCR0bits
	extern	_ADCR1bits
	extern	_INDF
	extern	_INDF0
	extern	_INDF1
	extern	_INDF2
	extern	_HIBYTE
	extern	_FSR
	extern	_FSR0
	extern	_FSR1
	extern	_PCL
	extern	_STATUS
	extern	_MCR
	extern	_INDF3
	extern	_INTE
	extern	_INTF
	extern	_IOP0
	extern	_OEP0
	extern	_PUP0
	extern	_ANSEL
	extern	_IOP1
	extern	_OEP1
	extern	_PUP1
	extern	_KBIM
	extern	_T0CR
	extern	_T0CNT
	extern	_T0LOAD
	extern	_T0DATA
	extern	_T1CR
	extern	_T1CNT
	extern	_T1LOAD
	extern	_T1DATA
	extern	_LVDCR
	extern	_OSCM
	extern	_ADCR0
	extern	_ADCR1
	extern	_ADRH
	extern	_ADRL
	extern	_OSCAL
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_main
	global	_rom

	global STK06
	global STK05
	global STK04
	global STK03
	global STK02
	global STK01
	global STK00

sharebank udata_ovr 0x0000
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
	retai 0x01
	retai 0x02
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00


;@Allocation info for local variables in function 'main'
;@main main                      Allocated to registers ;size:2
;@main STATUSbits                Allocated to registers ;size:1
;@main MCRbits                   Allocated to registers ;size:1
;@main INTEbits                  Allocated to registers ;size:1
;@main INTFbits                  Allocated to registers ;size:1
;@main IOP0bits                  Allocated to registers ;size:1
;@main OEP0bits                  Allocated to registers ;size:1
;@main PUP0bits                  Allocated to registers ;size:1
;@main ANSELbits                 Allocated to registers ;size:1
;@main IOP1bits                  Allocated to registers ;size:1
;@main OEP1bits                  Allocated to registers ;size:1
;@main PUP1bits                  Allocated to registers ;size:1
;@main KBIMbits                  Allocated to registers ;size:1
;@main T0CRbits                  Allocated to registers ;size:1
;@main T1CRbits                  Allocated to registers ;size:1
;@main LVDCRbits                 Allocated to registers ;size:1
;@main OSCMbits                  Allocated to registers ;size:1
;@main ADCR0bits                 Allocated to registers ;size:1
;@main ADCR1bits                 Allocated to registers ;size:1
;@main i                         Allocated to registers r0x1000 ;size:1
;@main INDF                      Allocated to registers ;size:1
;@main INDF0                     Allocated to registers ;size:1
;@main INDF1                     Allocated to registers ;size:1
;@main INDF2                     Allocated to registers ;size:1
;@main HIBYTE                    Allocated to registers ;size:1
;@main FSR                       Allocated to registers ;size:1
;@main FSR0                      Allocated to registers ;size:1
;@main FSR1                      Allocated to registers ;size:1
;@main PCL                       Allocated to registers ;size:1
;@main STATUS                    Allocated to registers ;size:1
;@main MCR                       Allocated to registers ;size:1
;@main INDF3                     Allocated to registers ;size:1
;@main INTE                      Allocated to registers ;size:1
;@main INTF                      Allocated to registers ;size:1
;@main IOP0                      Allocated to registers ;size:1
;@main OEP0                      Allocated to registers ;size:1
;@main PUP0                      Allocated to registers ;size:1
;@main ANSEL                     Allocated to registers ;size:1
;@main IOP1                      Allocated to registers ;size:1
;@main OEP1                      Allocated to registers ;size:1
;@main PUP1                      Allocated to registers ;size:1
;@main KBIM                      Allocated to registers ;size:1
;@main T0CR                      Allocated to registers ;size:1
;@main T0CNT                     Allocated to registers ;size:1
;@main T0LOAD                    Allocated to registers ;size:1
;@main T0DATA                    Allocated to registers ;size:1
;@main T1CR                      Allocated to registers ;size:1
;@main T1CNT                     Allocated to registers ;size:1
;@main T1LOAD                    Allocated to registers ;size:1
;@main T1DATA                    Allocated to registers ;size:1
;@main LVDCR                     Allocated to registers ;size:1
;@main OSCM                      Allocated to registers ;size:1
;@main ADCR0                     Allocated to registers ;size:1
;@main ADCR1                     Allocated to registers ;size:1
;@main ADRH                      Allocated to registers ;size:1
;@main ADRL                      Allocated to registers ;size:1
;@main OSCAL                     Allocated to registers ;size:1
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
	MOVAI	0x01
	MOVRA	r0x1000
;	.line	11; "switch.c"	switch(i)
	MOVAI	_00114_DS_
	ADDAR	r0x1000
	MOVRA	PCL
_00114_DS_
	GOTO	_00105_DS_
	GOTO	_00106_DS_
	GOTO	_00107_DS_
	GOTO	_00111_DS_
_00105_DS_
;	.line	14; "switch.c"	IOP0=1;
	MOVAI	0x01
	MOVRA	_IOP0
;	.line	15; "switch.c"	break;  	   	
	GOTO	_00111_DS_
_00106_DS_
;	.line	17; "switch.c"	IOP0=0;  	
	CLRR	_IOP0
;	.line	18; "switch.c"	break;   	
	GOTO	_00111_DS_
_00107_DS_
;	.line	21; "switch.c"	break;
	GOTO	_00111_DS_
_00111_DS_
;	.line	27; "switch.c"	}
	RETURN	
; exit point of _main


;	code size estimation:
;	   16+    0 =    16 instructions (   32 byte)

	end

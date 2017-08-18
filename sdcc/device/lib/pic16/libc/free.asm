;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:21:52 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_free

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	_heap

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
INDF0	equ	0xfef
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _free [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char near* fixed) fixed}
S_free__free	code
_free:
;	.line	33; stdlib/free.c	void free(unsigned char _MALLOC_SPEC *buf)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:4 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}{ sir@ _free_buf_1_9}[r0x00 r0x01 ] = recv _free [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char near* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: 	iTemp1 [k4 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x00 r0x01 ] = (unsigned-int fixed)iTemp0 [k2 lr3:4 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}{ sir@ _free_buf_1_9}[r0x00 r0x01 ]
; ;ic:5: 	iTemp2 [k5 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int register}[r0x00 r0x01 ] = iTemp1 [k4 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x00 r0x01 ] - 0x1 {unsigned-int literal}
;	.line	36; stdlib/free.c	((_MALLOC_SPEC _malloc_rec *)((unsigned int)buf - 1))->bits.alloc = 0;
	MOVLW	0xff
	ADDWF	r0x00, F
	ADDWFC	r0x01, F
; ;ic:6: 	iTemp5 [k10 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[r0x00 r0x01 ] = (struct __00000000 near* fixed)iTemp2 [k5 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int register}[r0x00 r0x01 ]
; ;ic:7: 	*(iTemp5 [k10 lr6:7 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[r0x00 r0x01 ]) := 0x0 {const-unsigned-char literal}
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, FSR0H
	BCF	INDF0, 7
; ;ic:8:  _return($1) :
; ;ic:9: 	eproc _free [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char near* fixed) fixed}
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	   58 (0x003a) bytes ( 0.04%)
;           	   29 (0x001d) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    2 (0x0002) bytes


	end

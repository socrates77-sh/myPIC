;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:21:50 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_calloc

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	_heap
	extern	_malloc

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
INDF0	equ	0xfef
POSTINC1	equ	0xfe6
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($9) :
; ;ic:2: 	proc _calloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* function ( unsigned-char fixed) data}
S_calloc__calloc	code
_calloc:
;	.line	33; stdlib/calloc.c	unsigned char _MALLOC_SPEC *calloc(unsigned char len)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _calloc_len_1_9}[r0x00 ] = recv _calloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* function ( unsigned-char fixed) data}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
; ;ic:4: 	iTemp1 [k4 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _calloc_len_1_9}[r0x00 ] < 0x7f {const-unsigned-char literal}
;	.line	37; stdlib/calloc.c	if (len >= MAX_BLOCK_SIZE) return ((unsigned char _MALLOC_SPEC *)0);
	MOVLW	0x7f
	SUBWF	r0x00, W
	BNC	_00106_DS_
; ;ic:5: 	if iTemp1 [k4 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _iffalse_0($2)
; ;ic:6: 	ret 0x0 {unsigned-char near* literal}
	CLRF	PRODL
	CLRF	WREG
	BRA	_00112_DS_
; ;ic:7:  _iffalse_0($2) :
; ;ic:8: 	send iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _calloc_len_1_9}[r0x00 ]{argreg = 1}
; ;ic:9: 	iTemp2 [k5 lr9:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}{ sir@ _calloc_ch_1_10}[r0x01 r0x02 ] = call _malloc [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* function ( unsigned-char fixed) fixed}
_00106_DS_:
;	.line	38; stdlib/calloc.c	ch = malloc( len );
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_malloc
	MOVWF	r0x01
	MOVFF	PRODL, r0x02
	MOVF	POSTINC1, F
; ;ic:10: 	iTemp4 [k10 lr10:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}{ sir@ _calloc_result_1_10}[r0x03 r0x04 ] := iTemp2 [k5 lr9:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}{ sir@ _calloc_ch_1_10}[r0x01 r0x02 ]
;	.line	39; stdlib/calloc.c	result = ch;
	MOVFF	r0x01, r0x03
	MOVFF	r0x02, r0x04
; ;ic:11: 	if iTemp2 [k5 lr9:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}{ sir@ _calloc_ch_1_10}[r0x01 r0x02 ] == 0 goto _iffalse_1($7)
;	.line	41; stdlib/calloc.c	if (result != 0) {
	IORWF	r0x02, W
	BZ	_00111_DS_
; ;ic:12: 	iTemp5 [k12 lr12:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x00 ] := iTemp0 [k2 lr3:12 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _calloc_len_1_9}[r0x00 ]
; ;ic:13: 	iTemp8 [k15 lr13:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}[r0x01 r0x02 ] := iTemp2 [k5 lr9:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}{ sir@ _calloc_ch_1_10}[r0x01 r0x02 ]
; ;ic:15:  _whilecontinue_0($3) :
; ;ic:16: 	if iTemp5 [k12 lr12:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x00 ] == 0 goto _iffalse_1($7)
_00107_DS_:
;	.line	42; stdlib/calloc.c	while (len) {
	MOVF	r0x00, W
	BZ	_00111_DS_
; ;ic:17: 	iTemp5 [k12 lr12:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x00 ] = iTemp5 [k12 lr12:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x00 ] - 0x1 {const-unsigned-char literal}
;	.line	43; stdlib/calloc.c	--len;
	DECF	r0x00, F
; ;ic:18: 	*(iTemp8 [k15 lr13:20 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}[r0x01 r0x02 ]) := 0x0 {const-unsigned-char literal}
;	.line	44; stdlib/calloc.c	*ch = 0;
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	CLRF	INDF0
; ;ic:19: 	iTemp8 [k15 lr13:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}[r0x01 r0x02 ] = iTemp8 [k15 lr13:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}[r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
;	.line	45; stdlib/calloc.c	ch++;
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:20: 	 goto _whilecontinue_0($3)
	BRA	_00107_DS_
; ;ic:21:  _iffalse_1($7) :
; ;ic:22: 	ret iTemp4 [k10 lr10:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}{ sir@ _calloc_result_1_10}[r0x03 r0x04 ]
_00111_DS_:
;	.line	49; stdlib/calloc.c	return (result);
	MOVFF	r0x04, PRODL
	MOVF	r0x03, W
; ;ic:23:  _return($8) :
; ;ic:24: 	eproc _calloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* function ( unsigned-char fixed) data}
_00112_DS_:
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  128 (0x0080) bytes ( 0.10%)
;           	   64 (0x0040) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    5 (0x0005) bytes


	end

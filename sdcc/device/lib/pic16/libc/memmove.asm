;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:09 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_memmove

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1
	extern	__gptrput1

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb
PRODL	equ	0xff3
PRODH	equ	0xff4


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1
r0x06	res	1
r0x07	res	1
r0x08	res	1
r0x09	res	1
r0x0a	res	1
r0x0b	res	1
r0x0c	res	1
r0x0d	res	1
r0x0e	res	1
r0x0f	res	1
r0x10	res	1
r0x11	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($12) :
; ;ic:2: 	proc _memmove [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, void generic* fixed, unsigned-int fixed) fixed}
S_memmove__memmove	code
_memmove:
;	.line	33; string/memmove.c	memmove (void *dst, void *src, size_t acount) 
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVFF	r0x09, POSTDEC1
	MOVFF	r0x0a, POSTDEC1
	MOVFF	r0x0b, POSTDEC1
	MOVFF	r0x0c, POSTDEC1
	MOVFF	r0x0d, POSTDEC1
	MOVFF	r0x0e, POSTDEC1
	MOVFF	r0x0f, POSTDEC1
	MOVFF	r0x10, POSTDEC1
	MOVFF	r0x11, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memmove_dst_1_28}[r0x00 r0x01 r0x02 ] = recv _memmove [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, void generic* fixed, unsigned-int fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memmove_src_1_28}[r0x03 r0x04 r0x05 ] = recv _memmove [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, void generic* fixed, unsigned-int fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memmove_acount_1_28}[r0x06 r0x07 ] = recv _memmove [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, void generic* fixed, unsigned-int fixed) fixed}
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:6: 	iTemp3 [k8 lr6:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x08 r0x09 ] = (int fixed)iTemp1 [k4 lr4:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memmove_src_1_28}[r0x03 r0x04 r0x05 ]
;	.line	38; string/memmove.c	if (((int)src < (int)dst) && ((((int)src) + acount) > (int)dst))
	MOVF	r0x03, W
	MOVWF	r0x08
	MOVF	r0x04, W
	MOVWF	r0x09
; ;ic:7: 	iTemp4 [k9 lr7:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x0a r0x0b ] = (int fixed)iTemp0 [k2 lr3:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memmove_dst_1_28}[r0x00 r0x01 r0x02 ]
	MOVF	r0x00, W
	MOVWF	r0x0a
	MOVF	r0x01, W
	MOVWF	r0x0b
; ;ic:8: 	iTemp5 [k10 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp3 [k8 lr6:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x08 r0x09 ] < iTemp4 [k9 lr7:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x0a r0x0b ]
	MOVF	r0x09, W
	ADDLW	0x80
	MOVWF	PRODL
	MOVF	r0x0b, W
	ADDLW	0x80
	SUBWF	PRODL, W
	BNZ	_00131_DS_
	MOVF	r0x0a, W
	SUBWF	r0x08, W
_00131_DS_:
	BTFSC	STATUS, 0
	BRA	_00112_DS_
; ;ic:9: 	if iTemp5 [k10 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_0($8)
; ;ic:10: 	iTemp7 [k12 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x08 r0x09 ] = (unsigned-int fixed)iTemp3 [k8 lr6:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x08 r0x09 ]
; ;ic:11: 	iTemp8 [k13 lr11:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x08 r0x09 ] = iTemp7 [k12 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x08 r0x09 ] + iTemp2 [k6 lr5:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memmove_acount_1_28}[r0x06 r0x07 ]
	MOVF	r0x06, W
	ADDWF	r0x08, F
	MOVF	r0x07, W
	ADDWFC	r0x09, F
; ;ic:12: 	iTemp10 [k15 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x0a r0x0b ] = (unsigned-int fixed)iTemp4 [k9 lr7:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x0a r0x0b ]
; ;ic:13: 	iTemp11 [k16 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp8 [k13 lr11:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x08 r0x09 ] > iTemp10 [k15 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x0a r0x0b ]
	MOVF	r0x09, W
	SUBWF	r0x0b, W
	BNZ	_00132_DS_
	MOVF	r0x08, W
	SUBWF	r0x0a, W
_00132_DS_:
	BTFSC	STATUS, 0
	BRA	_00112_DS_
; ;ic:14: 	if iTemp11 [k16 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_0($8)
; ;ic:15: 	iTemp13 [k19 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] = (char generic* fixed)iTemp0 [k2 lr3:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memmove_dst_1_28}[r0x00 r0x01 r0x02 ]
;	.line	43; string/memmove.c	d = ((char *)dst) + acount - 1;
	MOVF	r0x02, W
	MOVWF	r0x0a
	MOVF	r0x01, W
	MOVWF	r0x09
	MOVF	r0x00, W
	MOVWF	r0x08
; ;ic:16: 	iTemp14 [k20 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] = iTemp13 [k19 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] + iTemp2 [k6 lr5:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memmove_acount_1_28}[r0x06 r0x07 ]
	MOVF	r0x06, W
	ADDWF	r0x08, F
	MOVF	r0x07, W
	ADDWFC	r0x09, F
	CLRF	WREG
	ADDWFC	r0x0a, F
; ;ic:17: 	iTemp12 [k17 lr17:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _memmove_d_1_29}[r0x08 r0x09 r0x0a ] = iTemp14 [k20 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] - 0x1 {unsigned-bit literal}
	MOVLW	0xff
	ADDWF	r0x08, F
	ADDWFC	r0x09, F
	ADDWFC	r0x0a, F
; ;ic:18: 	iTemp17 [k24 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ] = (char generic* fixed)iTemp1 [k4 lr4:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memmove_src_1_28}[r0x03 r0x04 r0x05 ]
;	.line	44; string/memmove.c	s = ((char *)src) + acount - 1;
	MOVF	r0x05, W
	MOVWF	r0x0d
	MOVF	r0x04, W
	MOVWF	r0x0c
	MOVF	r0x03, W
	MOVWF	r0x0b
; ;ic:19: 	iTemp18 [k25 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ] = iTemp17 [k24 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ] + iTemp2 [k6 lr5:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memmove_acount_1_28}[r0x06 r0x07 ]
	MOVF	r0x06, W
	ADDWF	r0x0b, F
	MOVF	r0x07, W
	ADDWFC	r0x0c, F
	CLRF	WREG
	ADDWFC	r0x0d, F
; ;ic:20: 	iTemp16 [k22 lr20:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _memmove_s_1_29}[r0x0b r0x0c r0x0d ] = iTemp18 [k25 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ] - 0x1 {unsigned-bit literal}
	MOVLW	0xff
	ADDWF	r0x0b, F
	ADDWFC	r0x0c, F
	ADDWFC	r0x0d, F
; ;ic:21: 	iTemp25 [k32 lr21:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ] := iTemp16 [k22 lr20:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _memmove_s_1_29}[r0x0b r0x0c r0x0d ]
; ;ic:22: 	iTemp23 [k30 lr22:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] := iTemp12 [k17 lr17:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _memmove_d_1_29}[r0x08 r0x09 r0x0a ]
; ;ic:23: 	iTemp21 [k28 lr23:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x0e r0x0f ] := iTemp2 [k6 lr5:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memmove_acount_1_28}[r0x06 r0x07 ]
;	.line	45; string/memmove.c	while (acount--)
	MOVFF	r0x06, r0x0e
	MOVFF	r0x07, r0x0f
; ;ic:25:  _whilecontinue_0($1) :
; ;ic:26: 	iTemp20 [k27 lr26:28 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x10 r0x11 ] := iTemp21 [k28 lr23:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x0e r0x0f ]
_00105_DS_:
	MOVFF	r0x0e, r0x10
	MOVFF	r0x0f, r0x11
; ;ic:27: 	iTemp21 [k28 lr23:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x0e r0x0f ] = iTemp21 [k28 lr23:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x0e r0x0f ] - 0x1 {const-unsigned-char literal}
	MOVLW	0xff
	ADDWF	r0x0e, F
	ADDWFC	r0x0f, F
; ;ic:28: 	if iTemp20 [k27 lr26:28 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x10 r0x11 ] == 0 goto _ifend_0($9)
	MOVF	r0x10, W
	IORWF	r0x11, W
	BTFSC	STATUS, 2
	BRA	_00113_DS_
; ;ic:29: 	iTemp26 [k33 lr29:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x10 ] = @[iTemp25 [k32 lr21:33 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ] + 0x0 {const-unsigned-char literal}]
;	.line	46; string/memmove.c	*d-- = *s--;
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x0c, PRODL
	MOVF	r0x0d, W
	CALL	__gptrget1
	MOVWF	r0x10
; ;ic:30: 	iTemp25 [k32 lr21:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ] = iTemp25 [k32 lr21:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0b r0x0c r0x0d ] - 0x1 {const-unsigned-char literal}
	MOVLW	0xff
	ADDWF	r0x0b, F
	ADDWFC	r0x0c, F
	ADDWFC	r0x0d, F
; ;ic:31: 	*(iTemp23 [k30 lr22:33 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ]) := iTemp26 [k33 lr29:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x10 ]
	MOVFF	r0x10, POSTDEC1
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, PRODL
	MOVF	r0x0a, W
	CALL	__gptrput1
; ;ic:32: 	iTemp23 [k30 lr22:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] = iTemp23 [k30 lr22:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] - 0x1 {const-unsigned-char literal}
	MOVLW	0xff
	ADDWF	r0x08, F
	ADDWFC	r0x09, F
	ADDWFC	r0x0a, F
; ;ic:33: 	 goto _whilecontinue_0($1)
	BRA	_00105_DS_
; ;ic:34:  _iffalse_0($8) :
; ;ic:35: 	iTemp32 [k39 lr35:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] = (char generic* fixed)iTemp0 [k2 lr3:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memmove_dst_1_28}[r0x00 r0x01 r0x02 ]
_00112_DS_:
;	.line	53; string/memmove.c	d = dst;
	MOVF	r0x02, W
	MOVWF	r0x0a
	MOVF	r0x01, W
	MOVWF	r0x09
	MOVF	r0x00, W
;	.line	54; string/memmove.c	s = src;
	MOVWF	r0x08
; ;ic:36: 	iTemp34 [k41 lr36:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] = (char generic* fixed)iTemp1 [k4 lr4:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memmove_src_1_28}[r0x03 r0x04 r0x05 ]
; #	MOVF	r0x05, W
; #	MOVWF	r0x05
; #	MOVF	r0x05, W
; #	MOVF	r0x04, W
; #	MOVF	r0x04, W
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
; #	MOVF	r0x03, W
; #	MOVF	r0x03, W
; #	MOVWF	r0x03
; #;;ic:37: 	iTemp30 [k37 lr37:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] := iTemp2 [k6 lr5:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memmove_acount_1_28}[r0x06 r0x07 ]
; #;;ic:39:  _whilecontinue_1($4) :
; #;;ic:40: 	iTemp29 [k36 lr40:42 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x0b r0x0c ] := iTemp30 [k37 lr37:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ]
_00108_DS_:
;	.line	55; string/memmove.c	while (acount--)
	MOVFF	r0x06, r0x0b
	MOVFF	r0x07, r0x0c
; ;ic:41: 	iTemp30 [k37 lr37:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] = iTemp30 [k37 lr37:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] - 0x1 {const-unsigned-char literal}
	MOVLW	0xff
	ADDWF	r0x06, F
	ADDWFC	r0x07, F
; ;ic:42: 	if iTemp29 [k36 lr40:42 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x0b r0x0c ] == 0 goto _ifend_0($9)
	MOVF	r0x0b, W
	IORWF	r0x0c, W
	BZ	_00113_DS_
; ;ic:43: 	iTemp35 [k42 lr43:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0b ] = @[iTemp34 [k41 lr36:47 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
;	.line	56; string/memmove.c	*d++ = *s++;
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x0b
; ;ic:44: 	iTemp34 [k41 lr36:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] = iTemp34 [k41 lr36:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
	INCF	r0x03, F
	BNC	_00133_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:45: 	*(iTemp32 [k39 lr35:47 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ]) := iTemp35 [k42 lr43:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0b ]
_00133_DS_:
	MOVFF	r0x0b, POSTDEC1
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, PRODL
	MOVF	r0x0a, W
	CALL	__gptrput1
; ;ic:46: 	iTemp32 [k39 lr35:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] = iTemp32 [k39 lr35:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] + 0x1 {const-unsigned-char literal}
	INCF	r0x08, F
	BNC	_00108_DS_
	INFSNZ	r0x09, F
	INCF	r0x0a, F
; ;ic:47: 	 goto _whilecontinue_1($4)
_00134_DS_:
	BRA	_00108_DS_
; ;ic:48:  _ifend_0($9) :
; ;ic:49: 	ret iTemp0 [k2 lr3:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memmove_dst_1_28}[r0x00 r0x01 r0x02 ]
_00113_DS_:
;	.line	59; string/memmove.c	return dst;
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:50:  _return($11) :
; ;ic:51: 	eproc _memmove [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, void generic* fixed, unsigned-int fixed) fixed}
	MOVFF	PREINC1, r0x11
	MOVFF	PREINC1, r0x10
	MOVFF	PREINC1, r0x0f
	MOVFF	PREINC1, r0x0e
	MOVFF	PREINC1, r0x0d
	MOVFF	PREINC1, r0x0c
	MOVFF	PREINC1, r0x0b
	MOVFF	PREINC1, r0x0a
	MOVFF	PREINC1, r0x09
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  506 (0x01fa) bytes ( 0.39%)
;           	  253 (0x00fd) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   18 (0x0012) bytes


	end

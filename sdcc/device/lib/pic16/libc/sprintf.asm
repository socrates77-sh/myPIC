;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:21:38 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_sprintf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrput1
	extern	_stdin
	extern	_stdout
	extern	_vfprintf

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
FSR2H	equ	0xfda
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
r0x05	res	1
r0x06	res	1
r0x07	res	1
r0x08	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _sprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, char generic* auto) __reentrant fixed}
S_sprintf__sprintf	code
_sprintf:
;	.line	33; stdio/sprintf.c	sprintf (char *ebuf, char *fmt, ...)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
; ;ic:3: 	iTemp1 [k5 lr3:4 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* near* auto}[r0x00 r0x01 ] = &[fmt [k4 lr0:0 so:5]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* auto}]
;	.line	38; stdio/sprintf.c	ap = va_start (ap, fmt);
	MOVLW	0x05
	ADDWF	FSR2L, W
	MOVWF	r0x00
	MOVLW	0x00
	ADDWFC	FSR2H, W
; #	MOVWF	r0x01
; #;;ic:4: 	iTemp2 [k6 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x00 r0x01 r0x02 ] = (unsigned-char generic* fixed)iTemp1 [k5 lr3:4 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* near* auto}[r0x00 r0x01 ]
; #	MOVF	r0x01, W
; #	MOVWF	r0x01
; #	MOVWF	r0x01
	MOVWF	r0x01
; #	MOVF	r0x00, W
; #	MOVWF	r0x00
	MOVLW	0x80
	MOVWF	r0x02
; ;ic:5: 	iTemp0 [k2 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _sprintf_ap_1_17}[r0x00 r0x01 r0x02 ] = iTemp2 [k6 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x3 {const-unsigned-char literal}
	MOVLW	0x03
	ADDWF	r0x00, F
	MOVLW	0x00
	ADDWFC	r0x01, F
	ADDWFC	r0x02, F
; ;ic:6: 	iTemp5 [k12 lr6:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* generic* fixed}[r0x03 r0x04 r0x05 ] = (char generic* generic* fixed)ebuf [k11 lr0:0 so:2]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}
;	.line	39; stdio/sprintf.c	i = vfprintf ((FILE *) ebuf, fmt, ap);
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x06
	MOVLW	0x03
	MOVFF	PLUSW2, r0x07
	MOVLW	0x04
	MOVFF	PLUSW2, r0x08
	MOVF	r0x08, W
	MOVWF	r0x05
	MOVF	r0x07, W
	MOVWF	r0x04
	MOVF	r0x06, W
	MOVWF	r0x03
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
; ;ic:7: 	send iTemp5 [k12 lr6:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* generic* fixed}[r0x03 r0x04 r0x05 ]{argreg = 1}
; ;ic:8: 	send fmt [k4 lr0:0 so:5]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* auto}{argreg = 2}
; ;ic:9: 	send iTemp0 [k2 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _sprintf_ap_1_17}[r0x00 r0x01 r0x02 ]{argreg = 3}
; ;ic:10: 	iTemp6 [k16 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _sprintf_i_1_17}[r0x00 r0x01 ] = call _vfprintf [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* generic* fixed, const-char generic* fixed, unsigned-char generic* fixed) fixed}
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVLW	0x07
	MOVFF	PLUSW2, POSTDEC1
	MOVLW	0x06
	MOVFF	PLUSW2, POSTDEC1
	MOVLW	0x05
	MOVFF	PLUSW2, POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_vfprintf
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVLW	0x09
	ADDWF	FSR1L, F
; ;ic:11: 	iTemp4 [k8 lr11:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int auto}{ sir@ _sprintf_i_1_17}[r0x00 r0x01 ] := iTemp6 [k16 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _sprintf_i_1_17}[r0x00 r0x01 ]
; ;ic:12: 	iTemp7 [k17 lr12:13 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x02 r0x03 r0x04 ] = ebuf [k11 lr0:0 so:2]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed} + iTemp4 [k8 lr11:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int auto}{ sir@ _sprintf_i_1_17}[r0x00 r0x01 ]
;	.line	40; stdio/sprintf.c	ebuf[i] = '\0';
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
	MOVFF	r0x08, POSTDEC1
	MOVLW	0x02
	MOVFF	PLUSW2, r0x06
	MOVLW	0x03
	MOVFF	PLUSW2, r0x07
	MOVLW	0x04
	MOVFF	PLUSW2, r0x08
	MOVF	r0x00, W
	ADDWF	r0x06, W
	MOVWF	r0x02
	MOVF	r0x01, W
	ADDWFC	r0x07, W
	MOVWF	r0x03
	CLRF	WREG
	ADDWFC	r0x08, W
	MOVFF	PREINC1, r0x08
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
; ;ic:13: 	*(iTemp7 [k17 lr12:13 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x02 r0x03 r0x04 ]) := 0x0 {const-char literal}
	CLRF	POSTDEC1
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, PRODL
	CALL	__gptrput1
; ;ic:14: 	ret iTemp4 [k8 lr11:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int auto}{ sir@ _sprintf_i_1_17}[r0x00 r0x01 ]
;	.line	42; stdio/sprintf.c	return i;
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:15:  _return($1) :
; ;ic:16: 	eproc _sprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, char generic* auto) __reentrant fixed}
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  276 (0x0114) bytes ( 0.21%)
;           	  138 (0x008a) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    9 (0x0009) bytes


	end

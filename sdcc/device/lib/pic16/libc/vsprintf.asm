;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:21:46 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_vsprintf

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
r0x09	res	1
r0x0a	res	1
r0x0b	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _vsprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, const-char generic* fixed, unsigned-char generic* fixed) fixed}
S_vsprintf__vsprintf	code
_vsprintf:
;	.line	33; stdio/vsprintf.c	vsprintf (char *ebuf, const char *fmt, va_list ap)
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
; ;ic:3: iTemp0 [k2 lr3:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _vsprintf_ebuf_1_16}[r0x00 r0x01 r0x02 ] = recv _vsprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, const-char generic* fixed, unsigned-char generic* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vsprintf_fmt_1_16}[r0x03 r0x04 r0x05 ] = recv _vsprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, const-char generic* fixed, unsigned-char generic* fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}{ sir@ _vsprintf_ap_1_16}[r0x06 r0x07 r0x08 ] = recv _vsprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, const-char generic* fixed, unsigned-char generic* fixed) fixed}
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
	MOVLW	0x0a
	MOVFF	PLUSW2, r0x08
; ;ic:6: 	iTemp4 [k11 lr6:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* generic* fixed}[r0x09 r0x0a r0x0b ] = (char generic* generic* fixed)iTemp0 [k2 lr3:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _vsprintf_ebuf_1_16}[r0x00 r0x01 r0x02 ]
;	.line	37; stdio/vsprintf.c	i = vfprintf ((FILE *) ebuf, fmt, ap);
	MOVF	r0x02, W
	MOVWF	r0x0b
	MOVF	r0x01, W
	MOVWF	r0x0a
	MOVF	r0x00, W
	MOVWF	r0x09
; ;ic:7: 	send iTemp4 [k11 lr6:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* generic* fixed}[r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:8: 	send iTemp1 [k4 lr4:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vsprintf_fmt_1_16}[r0x03 r0x04 r0x05 ]{argreg = 2}
; ;ic:9: 	send iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}{ sir@ _vsprintf_ap_1_16}[r0x06 r0x07 r0x08 ]{argreg = 3}
; ;ic:10: 	iTemp3 [k8 lr10:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _vsprintf_i_1_17}[r0x03 r0x04 ] = call _vfprintf [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* generic* fixed, const-char generic* fixed, unsigned-char generic* fixed) fixed}
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	CALL	_vfprintf
	MOVWF	r0x03
	MOVFF	PRODL, r0x04
	MOVLW	0x09
	ADDWF	FSR1L, F
; ;ic:11: 	iTemp6 [k16 lr11:12 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] = iTemp0 [k2 lr3:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _vsprintf_ebuf_1_16}[r0x00 r0x01 r0x02 ] + iTemp3 [k8 lr10:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _vsprintf_i_1_17}[r0x03 r0x04 ]
;	.line	38; stdio/vsprintf.c	ebuf[i] = '\0';
	MOVF	r0x03, W
	ADDWF	r0x00, F
	MOVF	r0x04, W
	ADDWFC	r0x01, F
	CLRF	WREG
	ADDWFC	r0x02, F
; ;ic:12: 	*(iTemp6 [k16 lr11:12 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ]) := 0x0 {const-char literal}
	CLRF	POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput1
; ;ic:13: 	ret iTemp3 [k8 lr10:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _vsprintf_i_1_17}[r0x03 r0x04 ]
;	.line	40; stdio/vsprintf.c	return i;
	MOVFF	r0x04, PRODL
	MOVF	r0x03, W
; ;ic:14:  _return($1) :
; ;ic:15: 	eproc _vsprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, const-char generic* fixed, unsigned-char generic* fixed) fixed}
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
; code size:	  260 (0x0104) bytes ( 0.20%)
;           	  130 (0x0082) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   12 (0x000c) bytes


	end

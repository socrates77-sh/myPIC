;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:16 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_strcpy

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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($5) :
; ;ic:2: 	proc _strcpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
S_strcpy__strcpy	code
_strcpy:
;	.line	32; string/strcpy.c	strcpy (char *d, char *s)
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
; ;ic:3: iTemp0 [k2 lr3:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcpy_d_1_28}[r0x00 r0x01 r0x02 ] = recv _strcpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp6 [k11 lr4:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] = recv _strcpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: 	iTemp4 [k9 lr5:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcpy_d1_1_29}[r0x06 r0x07 r0x08 ] := iTemp0 [k2 lr3:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcpy_d_1_28}[r0x00 r0x01 r0x02 ]
;	.line	36; string/strcpy.c	while (*d1++ = *s++)
	MOVFF	r0x00, r0x06
	MOVFF	r0x01, r0x07
	MOVFF	r0x02, r0x08
; ;ic:7:  _whilecontinue_0($1) :
; ;ic:8: 	iTemp7 [k12 lr8:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] = @[iTemp6 [k11 lr4:12 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00105_DS_:
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x09
; ;ic:9: 	iTemp6 [k11 lr4:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] = iTemp6 [k11 lr4:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
	INCF	r0x03, F
	BNC	_00115_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:10: 	*(iTemp4 [k9 lr5:12 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcpy_d1_1_29}[r0x06 r0x07 r0x08 ]) := iTemp7 [k12 lr8:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ]
_00115_DS_:
	MOVFF	r0x09, POSTDEC1
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrput1
; ;ic:11: 	iTemp4 [k9 lr5:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcpy_d1_1_29}[r0x06 r0x07 r0x08 ] = iTemp4 [k9 lr5:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcpy_d1_1_29}[r0x06 r0x07 r0x08 ] + 0x1 {const-unsigned-char literal}
	INCF	r0x06, F
	BNC	_00116_DS_
	INFSNZ	r0x07, F
	INCF	r0x08, F
; ;ic:12: 	if iTemp7 [k12 lr8:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] != 0 goto _whilecontinue_0($1)
_00116_DS_:
	MOVF	r0x09, W
	BNZ	_00105_DS_
; ;ic:13: 	ret iTemp0 [k2 lr3:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strcpy_d_1_28}[r0x00 r0x01 r0x02 ]
;	.line	39; string/strcpy.c	return d;
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:14:  _return($4) :
; ;ic:15: 	eproc _strcpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
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
; code size:	  206 (0x00ce) bytes ( 0.16%)
;           	  103 (0x0067) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   10 (0x000a) bytes


	end

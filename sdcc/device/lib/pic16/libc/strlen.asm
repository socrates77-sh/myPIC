;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:18 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_strlen

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1

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


; Internal registers
.registers	udata_ovr	0x0000
r0x00	res	1
r0x01	res	1
r0x02	res	1
r0x03	res	1
r0x04	res	1
r0x05	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($5) :
; ;ic:2: 	proc _strlen [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed) fixed}
S_strlen__strlen	code
_strlen:
;	.line	32; string/strlen.c	strlen (char *str) 
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
; ;ic:3: iTemp3 [k7 lr3:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] = recv _strlen [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: 	iTemp6 [k10 lr4:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}{ sir@ _strlen_i_1_29}[r0x03 r0x04 ] := 0x0 {int literal}
;	.line	36; string/strlen.c	while (*str++)
	CLRF	r0x03
	CLRF	r0x04
; ;ic:6:  _whilecontinue_0($1) :
; ;ic:7: 	iTemp4 [k8 lr7:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x05 ] = @[iTemp3 [k7 lr3:11 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
_00105_DS_:
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x05
; ;ic:8: 	iTemp3 [k7 lr3:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] = iTemp3 [k7 lr3:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
	INCF	r0x00, F
	BNC	_00115_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:9: 	if iTemp4 [k8 lr7:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x05 ] == 0 goto _whilebreak_0($3)
_00115_DS_:
	MOVF	r0x05, W
	BZ	_00107_DS_
; ;ic:10: 	iTemp6 [k10 lr4:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}{ sir@ _strlen_i_1_29}[r0x03 r0x04 ] = iTemp6 [k10 lr4:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}{ sir@ _strlen_i_1_29}[r0x03 r0x04 ] + 0x1 {const-unsigned-char literal}
;	.line	37; string/strlen.c	i++;
	INFSNZ	r0x03, F
	INCF	r0x04, F
; ;ic:11: 	 goto _whilecontinue_0($1)
	BRA	_00105_DS_
; ;ic:12:  _whilebreak_0($3) :
; ;ic:13: 	ret iTemp6 [k10 lr4:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}{ sir@ _strlen_i_1_29}[r0x03 r0x04 ]
_00107_DS_:
;	.line	39; string/strlen.c	return i;
	MOVFF	r0x04, PRODL
	MOVF	r0x03, W
; ;ic:14:  _return($4) :
; ;ic:15: 	eproc _strlen [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed) fixed}
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  124 (0x007c) bytes ( 0.09%)
;           	   62 (0x003e) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    6 (0x0006) bytes


	end

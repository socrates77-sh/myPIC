;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:25 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_strpbrk

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1
	extern	_strchr

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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($7) :
; ;ic:2: 	proc _strpbrk [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
S_strpbrk__strpbrk	code
_strpbrk:
;	.line	32; string/strpbrk.c	strpbrk (char *string, char *control) 
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
; ;ic:3: iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strpbrk_string_1_28}[r0x00 r0x01 r0x02 ] = recv _strpbrk [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strpbrk_control_1_28}[r0x03 r0x04 r0x05 ] = recv _strpbrk [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:6:  _whilecontinue_0($3) :
; ;ic:7: 	iTemp4 [k9 lr7:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}{ sir@ _strpbrk_ch_1_29}[r0x06 ] = @[iTemp0 [k2 lr3:14 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strpbrk_string_1_28}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
_00107_DS_:
;	.line	36; string/strpbrk.c	while(ch = *string)
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x06
; ;ic:8: 	iTemp2 [k6 lr8:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char register}[r0x07 ] := iTemp4 [k9 lr7:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}{ sir@ _strpbrk_ch_1_29}[r0x06 ]
	MOVFF	r0x06, r0x07
; ;ic:9: 	if iTemp4 [k9 lr7:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}{ sir@ _strpbrk_ch_1_29}[r0x06 ] == 0 goto _whilebreak_0($5)
	MOVF	r0x06, W
	BZ	_00109_DS_
; ;ic:10: 	send iTemp1 [k4 lr4:13 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strpbrk_control_1_28}[r0x03 r0x04 r0x05 ]{argreg = 1}
; ;ic:11: 	send iTemp2 [k6 lr8:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char register}[r0x07 ]{argreg = 2}
; ;ic:12: 	iTemp5 [k13 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ] = call _strchr [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char fixed) fixed}
;	.line	38; string/strpbrk.c	if (strchr (control, ch))
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_strchr
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVFF	PRODH, r0x08
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:13: 	if iTemp5 [k13 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ] == 0 goto _whilecontinue_0($3)
	MOVF	r0x06, W
	IORWF	r0x07, W
	IORWF	r0x08, W
	BZ	_00107_DS_
; ;ic:14: 	ret iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strpbrk_string_1_28}[r0x00 r0x01 r0x02 ]
;	.line	39; string/strpbrk.c	return string;
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00110_DS_
; ;ic:15:  _whilebreak_0($5) :
; ;ic:16: 	ret 0x0 {char generic* literal}
_00109_DS_:
;	.line	42; string/strpbrk.c	return NULL;
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
; ;ic:17:  _return($6) :
; ;ic:18: 	eproc _strpbrk [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
_00110_DS_:
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
; access size:	    9 (0x0009) bytes


	end

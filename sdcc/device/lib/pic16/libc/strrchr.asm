;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:26 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_strrchr

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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($11) :
; ;ic:2: 	proc _strrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char fixed) fixed}
S_strrchr__strrchr	code
_strrchr:
;	.line	32; string/strrchr.c	strrchr (char *string, char ch) 
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
; ;ic:3: iTemp0 [k2 lr3:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strrchr_string_1_28}[r0x00 r0x01 r0x02 ] = recv _strrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _strrchr_ch_1_28}[r0x03 ] = recv _strrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:5: 	iTemp4 [k9 lr5:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strrchr_s_1_29}[r0x04 r0x05 r0x06 ] := iTemp0 [k2 lr3:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strrchr_string_1_28}[r0x00 r0x01 r0x02 ]
;	.line	37; string/strrchr.c	while (*s++)
	MOVFF	r0x00, r0x04
	MOVFF	r0x01, r0x05
	MOVFF	r0x02, r0x06
; ;ic:7:  _whilecontinue_0($1) :
; ;ic:8: 	iTemp5 [k10 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x07 ] = @[iTemp4 [k9 lr5:11 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strrchr_s_1_29}[r0x04 r0x05 r0x06 ] + 0x0 {const-unsigned-char literal}]
_00105_DS_:
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, PRODL
	MOVF	r0x06, W
	CALL	__gptrget1
	MOVWF	r0x07
; ;ic:9: 	iTemp4 [k9 lr5:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strrchr_s_1_29}[r0x04 r0x05 r0x06 ] = iTemp4 [k9 lr5:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strrchr_s_1_29}[r0x04 r0x05 r0x06 ] + 0x1 {const-unsigned-char literal}
	INCF	r0x04, F
	BNC	_00127_DS_
	INFSNZ	r0x05, F
	INCF	r0x06, F
; ;ic:10: 	if iTemp5 [k10 lr8:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x07 ] != 0 goto _whilecontinue_0($1)
_00127_DS_:
	MOVF	r0x07, W
	BNZ	_00105_DS_
; ;ic:11: 	iTemp6 [k11 lr11:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strrchr_s_1_29}[r0x04 r0x05 r0x06 ] := iTemp4 [k9 lr5:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strrchr_s_1_29}[r0x04 r0x05 r0x06 ]
; ;ic:13:  _whilecontinue_1($5) :
; ;ic:14: 	iTemp6 [k11 lr11:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strrchr_s_1_29}[r0x04 r0x05 r0x06 ] = iTemp6 [k11 lr11:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strrchr_s_1_29}[r0x04 r0x05 r0x06 ] - 0x1 {const-unsigned-char literal}
_00109_DS_:
;	.line	41; string/strrchr.c	while (--s != string && *s != ch)
	MOVLW	0xff
	ADDWF	r0x04, F
	ADDWFC	r0x05, F
	ADDWFC	r0x06, F
; ;ic:15: 	iTemp7 [k12 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp6 [k11 lr11:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strrchr_s_1_29}[r0x04 r0x05 r0x06 ] == iTemp0 [k2 lr3:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strrchr_string_1_28}[r0x00 r0x01 r0x02 ]
	MOVF	r0x04, W
	XORWF	r0x00, W
	BNZ	_00129_DS_
	MOVF	r0x05, W
	XORWF	r0x01, W
	BNZ	_00129_DS_
	MOVF	r0x06, W
	XORWF	r0x02, W
	BZ	_00111_DS_
; ;ic:16: 	if iTemp7 [k12 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _whilebreak_1($7)
; ;ic:17: 	iTemp9 [k14 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x07 ] = @[iTemp6 [k11 lr11:24 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strrchr_s_1_29}[r0x04 r0x05 r0x06 ] + 0x0 {const-unsigned-char literal}]
_00129_DS_:
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, PRODL
	MOVF	r0x06, W
	CALL	__gptrget1
; #	MOVWF	r0x07
; #;;ic:18: 	iTemp10 [k15 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp9 [k14 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x07 ] == iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _strrchr_ch_1_28}[r0x03 ]
; #	MOVF	r0x07, W
	XORWF	r0x03, W
	BNZ	_00109_DS_
; ;ic:19: 	if iTemp10 [k15 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _whilecontinue_1($5)
; ;ic:20:  _whilebreak_1($7) :
; ;ic:21: 	iTemp12 [k17 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x00 ] = @[iTemp6 [k11 lr11:24 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strrchr_s_1_29}[r0x04 r0x05 r0x06 ] + 0x0 {const-unsigned-char literal}]
_00111_DS_:
;	.line	45; string/strrchr.c	if (*s == ch)
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, PRODL
	MOVF	r0x06, W
	CALL	__gptrget1
; #	MOVWF	r0x00
; #;;ic:22: 	iTemp13 [k18 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp12 [k17 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x00 ] == iTemp1 [k4 lr4:22 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _strrchr_ch_1_28}[r0x03 ]
; #	MOVF	r0x00, W
	XORWF	r0x03, W
	BNZ	_00113_DS_
; ;ic:23: 	if iTemp13 [k18 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_0($9)
; ;ic:24: 	ret iTemp6 [k11 lr11:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strrchr_s_1_29}[r0x04 r0x05 r0x06 ]
;	.line	46; string/strrchr.c	return s;
	MOVFF	r0x06, PRODH
	MOVFF	r0x05, PRODL
	MOVF	r0x04, W
	BRA	_00114_DS_
; ;ic:25:  _iffalse_0($9) :
; ;ic:26: 	ret 0x0 {char generic* literal}
_00113_DS_:
;	.line	48; string/strrchr.c	return NULL;
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
; ;ic:27:  _return($10) :
; ;ic:28: 	eproc _strrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char fixed) fixed}
_00114_DS_:
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
; code size:	  222 (0x00de) bytes ( 0.17%)
;           	  111 (0x006f) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    8 (0x0008) bytes


	end

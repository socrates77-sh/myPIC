;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:15 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_strcmp

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
r0x06	res	1
r0x07	res	1
r0x08	res	1
r0x09	res	1
r0x0a	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($11) :
; ;ic:2: 	proc _strcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, char generic* fixed) fixed}
S_strcmp__strcmp	code
_strcmp:
;	.line	32; string/strcmp.c	strcmp (char *asrc, char *adst)
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
; ;ic:3: iTemp12 [k17 lr3:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] = recv _strcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, char generic* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp13 [k18 lr4:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] = recv _strcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, char generic* fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:6:  _whilecontinue_0($2) :
; ;ic:7: 	iTemp4 [k9 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] = @[iTemp12 [k17 lr3:17 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
_00106_DS_:
;	.line	36; string/strcmp.c	while (!(ret = *asrc - *adst) && *adst)
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x06
; ;ic:8: 	iTemp5 [k10 lr8:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x06 r0x07 ] = (int fixed)iTemp4 [k9 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ]
	CLRF	r0x07
	BTFSC	r0x06, 7
	SETF	r0x07
; ;ic:9: 	iTemp7 [k12 lr9:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x08 ] = @[iTemp13 [k18 lr4:17 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x08
; ;ic:10: 	iTemp8 [k13 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ] = (int fixed)iTemp7 [k12 lr9:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x08 ]
	MOVFF	r0x08, r0x09
	CLRF	r0x0a
	BTFSC	r0x08, 7
	SETF	r0x0a
; ;ic:11: 	iTemp9 [k14 lr11:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _strcmp_ret_1_29}[r0x06 r0x07 ] = iTemp5 [k10 lr8:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x06 r0x07 ] - iTemp8 [k13 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ]
	MOVF	r0x09, W
	SUBWF	r0x06, F
	MOVF	r0x0a, W
	SUBWFB	r0x07, F
; ;ic:12: 	iTemp2 [k6 lr12:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int register}[r0x09 r0x0a ] := iTemp9 [k14 lr11:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _strcmp_ret_1_29}[r0x06 r0x07 ]
	MOVFF	r0x06, r0x09
	MOVFF	r0x07, r0x0a
; ;ic:13: 	if iTemp9 [k14 lr11:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _strcmp_ret_1_29}[r0x06 r0x07 ] != 0 goto _whilebreak_0($4)
	MOVF	r0x06, W
	IORWF	r0x07, W
	BNZ	_00108_DS_
; ;ic:14: 	if iTemp7 [k12 lr9:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x08 ] == 0 goto _whilebreak_0($4)
	MOVF	r0x08, W
	BZ	_00108_DS_
; ;ic:15: 	iTemp12 [k17 lr3:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] = iTemp12 [k17 lr3:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
;	.line	37; string/strcmp.c	++asrc, ++adst;
	INCF	r0x00, F
	BNC	_00127_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:16: 	iTemp13 [k18 lr4:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] = iTemp13 [k18 lr4:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
_00127_DS_:
	INCF	r0x03, F
	BNC	_00106_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:17: 	 goto _whilecontinue_0($2)
_00128_DS_:
	BRA	_00106_DS_
; ;ic:18:  _whilebreak_0($4) :
; ;ic:19: 	iTemp14 [k19 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp2 [k6 lr12:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int register}[r0x09 r0x0a ] < 0x0 {int literal}
_00108_DS_:
;	.line	39; string/strcmp.c	if (ret < 0)
	BSF	STATUS, 0
	BTFSS	r0x0a, 7
	BCF	STATUS, 0
	BNC	_00112_DS_
; ;ic:20: 	if iTemp14 [k19 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_1($8)
; ;ic:21: 	iTemp2 [k6 lr12:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int register}[r0x09 r0x0a ] := 0xffffffff {int literal}
;	.line	40; string/strcmp.c	ret = -1 ;
	SETF	r0x09
	SETF	r0x0a
; ;ic:22: 	 goto _ifend_1($9)
	BRA	_00113_DS_
; ;ic:23:  _iffalse_1($8) :
; ;ic:24: 	iTemp15 [k20 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp2 [k6 lr12:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int register}[r0x09 r0x0a ] > 0x0 {int literal}
_00112_DS_:
;	.line	41; string/strcmp.c	else if (ret > 0)
	MOVF	r0x0a, W
	ADDLW	0x80
	ADDLW	0x80
	BNZ	_00129_DS_
	MOVLW	0x01
	SUBWF	r0x09, W
_00129_DS_:
	BNC	_00113_DS_
; ;ic:25: 	if iTemp15 [k20 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _ifend_1($9)
; ;ic:26: 	iTemp2 [k6 lr12:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int register}[r0x09 r0x0a ] := 0x1 {int literal}
;	.line	42; string/strcmp.c	ret = 1 ;
	MOVLW	0x01
	MOVWF	r0x09
	CLRF	r0x0a
; ;ic:27:  _ifend_1($9) :
; ;ic:28: 	ret iTemp2 [k6 lr12:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int register}[r0x09 r0x0a ]
_00113_DS_:
;	.line	44; string/strcmp.c	return ret;
	MOVFF	r0x0a, PRODL
	MOVF	r0x09, W
; ;ic:29:  _return($10) :
; ;ic:30: 	eproc _strcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, char generic* fixed) fixed}
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
; code size:	  270 (0x010e) bytes ( 0.21%)
;           	  135 (0x0087) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   11 (0x000b) bytes


	end

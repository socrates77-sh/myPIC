;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:22 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_strncmp

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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($9) :
; ;ic:2: 	proc _strncmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, char generic* fixed, unsigned-int fixed) fixed}
S_strncmp__strncmp	code
_strncmp:
;	.line	32; string/strncmp.c	strncmp (char *first, char *last, size_t count) 
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
; ;ic:3: iTemp0 [k2 lr3:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strncmp_first_1_28}[r0x00 r0x01 r0x02 ] = recv _strncmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, char generic* fixed, unsigned-int fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strncmp_last_1_28}[r0x03 r0x04 r0x05 ] = recv _strncmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, char generic* fixed, unsigned-int fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _strncmp_count_1_28}[r0x06 r0x07 ] = recv _strncmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, char generic* fixed, unsigned-int fixed) fixed}
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:6: 	if iTemp2 [k6 lr5:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _strncmp_count_1_28}[r0x06 r0x07 ] != 0 goto preHeaderLbl0($14)
;	.line	34; string/strncmp.c	if (!count)
	MOVF	r0x06, W
	IORWF	r0x07, W
	BNZ	_00109_DS_
; ;ic:7: 	ret 0x0 {int literal}
;	.line	35; string/strncmp.c	return 0;
	CLRF	PRODL
	CLRF	WREG
	BRA	_00112_DS_
; ;ic:8:  preHeaderLbl0($14) :
; ;ic:9: 	iTemp12 [k17 lr9:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] := iTemp0 [k2 lr3:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strncmp_first_1_28}[r0x00 r0x01 r0x02 ]
; ;ic:10: 	iTemp14 [k19 lr10:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] := iTemp1 [k4 lr4:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strncmp_last_1_28}[r0x03 r0x04 r0x05 ]
; ;ic:11: 	iTemp3 [k8 lr11:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] := iTemp2 [k6 lr5:11 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _strncmp_count_1_28}[r0x06 r0x07 ]
; ;ic:13:  _whilecontinue_0($5) :
; ;ic:14: 	iTemp3 [k8 lr11:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] = iTemp3 [k8 lr11:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] - 0x1 {const-unsigned-char literal}
_00109_DS_:
;	.line	37; string/strncmp.c	while (--count && *first && *first == *last)
	MOVLW	0xff
	ADDWF	r0x06, F
	ADDWFC	r0x07, F
; ;ic:15: 	if iTemp3 [k8 lr11:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] == 0 goto _whilebreak_0($7)
	MOVF	r0x06, W
	IORWF	r0x07, W
	BZ	_00111_DS_
; ;ic:16: 	iTemp5 [k10 lr16:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x08 ] = @[iTemp12 [k17 lr9:25 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x08
; ;ic:17: 	if iTemp5 [k10 lr16:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x08 ] == 0 goto _whilebreak_0($7)
	MOVF	r0x08, W
	BZ	_00111_DS_
; ;ic:18: 	iTemp9 [k14 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] = @[iTemp14 [k19 lr10:27 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x09
; #;;ic:19: 	iTemp10 [k15 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp5 [k10 lr16:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x08 ] == iTemp9 [k14 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ]
; #	MOVF	r0x08, W
; #	XORWF	r0x09, W
	XORWF	r0x08, W
	BNZ	_00111_DS_
; ;ic:20: 	if iTemp10 [k15 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _whilebreak_0($7)
; ;ic:21: 	iTemp12 [k17 lr9:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] = iTemp12 [k17 lr9:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
;	.line	39; string/strncmp.c	first++;
	INCF	r0x00, F
	BNC	_00127_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:22: 	iTemp14 [k19 lr10:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] = iTemp14 [k19 lr10:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
_00127_DS_:
;	.line	40; string/strncmp.c	last++;
	INCF	r0x03, F
	BNC	_00128_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:23: 	 goto _whilecontinue_0($5)
_00128_DS_:
	BRA	_00109_DS_
; ;ic:24:  _whilebreak_0($7) :
; ;ic:25: 	iTemp16 [k21 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x00 ] = @[iTemp12 [k17 lr9:25 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
_00111_DS_:
;	.line	43; string/strncmp.c	return *first - *last;
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x00
; ;ic:26: 	iTemp17 [k22 lr26:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x00 r0x01 ] = (int fixed)iTemp16 [k21 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x00 ]
	CLRF	r0x01
	BTFSC	r0x00, 7
	SETF	r0x01
; ;ic:27: 	iTemp19 [k24 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x03 ] = @[iTemp14 [k19 lr10:27 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x03
; ;ic:28: 	iTemp20 [k25 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x03 r0x02 ] = (int fixed)iTemp19 [k24 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x03 ]
	CLRF	r0x02
	BTFSC	r0x03, 7
	SETF	r0x02
; ;ic:29: 	iTemp21 [k26 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x00 r0x01 ] = iTemp17 [k22 lr26:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x00 r0x01 ] - iTemp20 [k25 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x03 r0x02 ]
	MOVF	r0x03, W
	SUBWF	r0x00, F
	MOVF	r0x02, W
	SUBWFB	r0x01, F
; ;ic:30: 	ret iTemp21 [k26 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x00 r0x01 ]
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:31:  _return($8) :
; ;ic:32: 	eproc _strncmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed, char generic* fixed, unsigned-int fixed) fixed}
_00112_DS_:
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
; code size:	  272 (0x0110) bytes ( 0.21%)
;           	  136 (0x0088) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    9 (0x0009) bytes


	end

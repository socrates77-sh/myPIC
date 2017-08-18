;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:29 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_strtok

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1
	extern	__gptrput1
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


	idata
_strtok_s_1_29	db	0x00, 0x00, 0x00


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
; ;ic:1:  _entry($20) :
; ;ic:2: 	proc _strtok [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
S_strtok__strtok	code
_strtok:
;	.line	32; string/strtok.c	strtok (char *str, char *control) 
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
; ;ic:3: iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strtok_str_1_28}[r0x00 r0x01 r0x02 ] = recv _strtok [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strtok_control_1_28}[r0x03 r0x04 r0x05 ] = recv _strtok [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: 	if iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strtok_str_1_28}[r0x00 r0x01 r0x02 ] == 0 goto _iffalse_0($2)
;	.line	37; string/strtok.c	if (str)
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	BZ	_00106_DS_
; ;ic:6: 	_strtok_s_1_29 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data} := iTemp0 [k2 lr3:6 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strtok_str_1_28}[r0x00 r0x01 r0x02 ]
;	.line	38; string/strtok.c	s = str;
	MOVFF	r0x00, _strtok_s_1_29
	MOVFF	r0x01, (_strtok_s_1_29 + 1)
	MOVFF	r0x02, (_strtok_s_1_29 + 2)
; ;ic:7:  _iffalse_0($2) :
; ;ic:8: 	if _strtok_s_1_29 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data} != 0 goto _whilecontinue_0($8)
_00106_DS_:
	BANKSEL	_strtok_s_1_29
;	.line	40; string/strtok.c	if (!s)
	MOVF	_strtok_s_1_29, W, B
; removed redundant BANKSEL
	IORWF	(_strtok_s_1_29 + 1), W, B
; removed redundant BANKSEL
	IORWF	(_strtok_s_1_29 + 2), W, B
	BNZ	_00112_DS_
; ;ic:9: 	ret 0x0 {char generic* literal}
;	.line	41; string/strtok.c	return NULL;
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	BRA	_00123_DS_
; ;ic:11:  _whilecontinue_0($8) :
; ;ic:12: 	iTemp3 [k8 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data}[r0x00 r0x01 r0x02 ] := _strtok_s_1_29 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data}
_00112_DS_:
;	.line	43; string/strtok.c	while (*s)
	MOVFF	_strtok_s_1_29, r0x00
	MOVFF	(_strtok_s_1_29 + 1), r0x01
	MOVFF	(_strtok_s_1_29 + 2), r0x02
; ;ic:13: 	iTemp4 [k9 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x00 ] = @[iTemp3 [k8 lr12:13 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x00
; ;ic:14: 	if iTemp4 [k9 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x00 ] == 0 goto _whilebreak_0($10)
	MOVF	r0x00, W
	BZ	_00114_DS_
; ;ic:15: 	iTemp5 [k11 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data}[r0x00 r0x01 r0x02 ] := _strtok_s_1_29 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data}
;	.line	45; string/strtok.c	if (strchr (control, *s))
	MOVFF	_strtok_s_1_29, r0x00
	MOVFF	(_strtok_s_1_29 + 1), r0x01
	MOVFF	(_strtok_s_1_29 + 2), r0x02
; ;ic:16: 	iTemp6 [k12 lr16:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x00 ] = @[iTemp5 [k11 lr15:16 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
; #	MOVWF	r0x00
; #;;ic:17: 	send iTemp1 [k4 lr4:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strtok_control_1_28}[r0x03 r0x04 r0x05 ]{argreg = 1}
; #;;ic:18: 	send iTemp6 [k12 lr16:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x00 ]{argreg = 2}
; #;;ic:19: 	iTemp7 [k15 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] = call _strchr [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char fixed) fixed}
; #	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	_strchr
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:20: 	if iTemp7 [k15 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] == 0 goto _whilebreak_0($10)
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	BZ	_00114_DS_
; ;ic:21: 	_strtok_s_1_29 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data} = _strtok_s_1_29 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data} + 0x1 {const-unsigned-char literal}
	BANKSEL	_strtok_s_1_29
;	.line	46; string/strtok.c	s++;
	INCF	_strtok_s_1_29, F, B
	BNC	_00112_DS_
; removed redundant BANKSEL
	INCFSZ	(_strtok_s_1_29 + 1), F, B
	BRA	_10105_DS_
; removed redundant BANKSEL
	INCF	(_strtok_s_1_29 + 2), F, B
_10105_DS_:
; ;ic:22: 	 goto _whilecontinue_0($8)
_00143_DS_:
	BRA	_00112_DS_
; ;ic:23:  _whilebreak_0($10) :
; ;ic:24: 	iTemp11 [k19 lr24:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strtok_s1_1_29}[r0x00 r0x01 r0x02 ] := _strtok_s_1_29 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data}
_00114_DS_:
;	.line	51; string/strtok.c	s1 = s;
	MOVFF	_strtok_s_1_29, r0x00
	MOVFF	(_strtok_s_1_29 + 1), r0x01
	MOVFF	(_strtok_s_1_29 + 2), r0x02
; ;ic:26:  _whilecontinue_1($13) :
; ;ic:27: 	iTemp12 [k21 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data}[r0x06 r0x07 r0x08 ] := _strtok_s_1_29 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data}
_00117_DS_:
;	.line	53; string/strtok.c	while (*s)
	MOVFF	_strtok_s_1_29, r0x06
	MOVFF	(_strtok_s_1_29 + 1), r0x07
	MOVFF	(_strtok_s_1_29 + 2), r0x08
; ;ic:28: 	iTemp13 [k22 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] = @[iTemp12 [k21 lr27:28 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data}[r0x06 r0x07 r0x08 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrget1
	MOVWF	r0x06
; ;ic:29: 	if iTemp13 [k22 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] == 0 goto _whilebreak_1($15)
	MOVF	r0x06, W
	BTFSC	STATUS, 2
	BRA	_00119_DS_
; ;ic:30: 	iTemp14 [k23 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data}[r0x06 r0x07 r0x08 ] := _strtok_s_1_29 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data}
;	.line	55; string/strtok.c	if (strchr (control, *s))
	MOVFF	_strtok_s_1_29, r0x06
	MOVFF	(_strtok_s_1_29 + 1), r0x07
	MOVFF	(_strtok_s_1_29 + 2), r0x08
; ;ic:31: 	iTemp15 [k24 lr31:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] = @[iTemp14 [k23 lr30:31 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data}[r0x06 r0x07 r0x08 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrget1
; #	MOVWF	r0x06
; #;;ic:32: 	send iTemp1 [k4 lr4:41 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strtok_control_1_28}[r0x03 r0x04 r0x05 ]{argreg = 1}
; #;;ic:33: 	send iTemp15 [k24 lr31:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ]{argreg = 2}
; #;;ic:34: 	iTemp16 [k25 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ] = call _strchr [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char fixed) fixed}
; #	MOVF	r0x06, W
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
; ;ic:35: 	if iTemp16 [k25 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ] == 0 goto _iffalse_3($12)
	MOVF	r0x06, W
	IORWF	r0x07, W
	IORWF	r0x08, W
	BZ	_00116_DS_
; ;ic:36: 	iTemp17 [k26 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data}[r0x06 r0x07 r0x08 ] := _strtok_s_1_29 [k6 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data}
;	.line	57; string/strtok.c	*s = '\0';
	MOVFF	_strtok_s_1_29, r0x06
	MOVFF	(_strtok_s_1_29 + 1), r0x07
	MOVFF	(_strtok_s_1_29 + 2), r0x08
; ;ic:37: 	*(iTemp17 [k26 lr36:37 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data}[r0x06 r0x07 r0x08 ]) := 0x0 {const-char literal}
	CLRF	POSTDEC1
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrput1
; ;ic:38: 	ret iTemp11 [k19 lr24:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strtok_s1_1_29}[r0x00 r0x01 r0x02 ]
;	.line	58; string/strtok.c	return s1;
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00123_DS_
; ;ic:39:  _iffalse_3($12) :
; ;ic:40: 	_strtok_s_1_29 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data} = _strtok_s_1_29 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data} + 0x1 {const-unsigned-char literal}
_00116_DS_:
	BANKSEL	_strtok_s_1_29
;	.line	60; string/strtok.c	++s;
	INCF	_strtok_s_1_29, F, B
	BNC	_00117_DS_
; removed redundant BANKSEL
	INCFSZ	(_strtok_s_1_29 + 1), F, B
	BRA	_20106_DS_
; removed redundant BANKSEL
	INCF	(_strtok_s_1_29 + 2), F, B
_20106_DS_:
; ;ic:41: 	 goto _whilecontinue_1($13)
_00144_DS_:
	BRA	_00117_DS_
; ;ic:42:  _whilebreak_1($15) :
; ;ic:43: 	_strtok_s_1_29 [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* data} := 0x0 {char generic* literal}
_00119_DS_:
	BANKSEL	_strtok_s_1_29
;	.line	63; string/strtok.c	s = NULL;
	CLRF	_strtok_s_1_29, B
; removed redundant BANKSEL
	CLRF	(_strtok_s_1_29 + 1), B
; removed redundant BANKSEL
	CLRF	(_strtok_s_1_29 + 2), B
; ;ic:44: 	iTemp23 [k32 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x03 ] = @[iTemp11 [k19 lr24:46 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strtok_s1_1_29}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
;	.line	65; string/strtok.c	if (*s1)
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x03
; ;ic:45: 	if iTemp23 [k32 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x03 ] == 0 goto _iffalse_4($17)
	MOVF	r0x03, W
	BZ	_00121_DS_
; ;ic:46: 	ret iTemp11 [k19 lr24:46 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strtok_s1_1_29}[r0x00 r0x01 r0x02 ]
;	.line	66; string/strtok.c	return s1;
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00123_DS_
; ;ic:47:  _iffalse_4($17) :
; ;ic:48: 	ret 0x0 {char generic* literal}
_00121_DS_:
;	.line	68; string/strtok.c	return NULL;
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
; ;ic:49:  _return($19) :
; ;ic:50: 	eproc _strtok [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
_00123_DS_:
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
; code size:	  484 (0x01e4) bytes ( 0.37%)
;           	  242 (0x00f2) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    9 (0x0009) bytes


	end

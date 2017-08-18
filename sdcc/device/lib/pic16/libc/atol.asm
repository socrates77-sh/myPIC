;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:21:49 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_atol

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1
	extern	__mullong

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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($19) :
; ;ic:2: 	proc _atol [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function ( char generic* fixed) fixed}
S_atol__atol	code
_atol:
;	.line	29; stdlib/atol.c	long atol(char * s)
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
; ;ic:3: iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atol_s_1_1}[r0x00 r0x01 r0x02 ] = recv _atol [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function ( char generic* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: 	iTemp1 [k4 lr4:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int register}{ sir@ _atol_rv_1_2}[r0x03 r0x04 r0x05 r0x06 ] := 0x0 {long-int literal}
;	.line	31; stdlib/atol.c	register long rv=0; 
	CLRF	r0x03
	CLRF	r0x04
	CLRF	r0x05
	CLRF	r0x06
; ;ic:5: 	iTemp18 [k23 lr5:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x07 r0x08 r0x09 ] := iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atol_s_1_1}[r0x00 r0x01 r0x02 ]
;	.line	35; stdlib/atol.c	while (*s) {
	MOVFF	r0x00, r0x07
	MOVFF	r0x01, r0x08
	MOVFF	r0x02, r0x09
; ;ic:7:  _whilecontinue_0($7) :
; ;ic:8: 	iTemp4 [k9 lr8:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0a ] = @[iTemp18 [k23 lr5:24 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x07 r0x08 r0x09 ] + 0x0 {const-unsigned-char literal}]
_00111_DS_:
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, PRODL
	MOVF	r0x09, W
	CALL	__gptrget1
	MOVWF	r0x0a
; ;ic:9: 	if iTemp4 [k9 lr8:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0a ] == 0 goto loopExitLbl4($33)
	MOVF	r0x0a, W
	BZ	_00137_DS_
; ;ic:10: 	iTemp7 [k12 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp4 [k9 lr8:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0a ] > 0x39 {const-char literal}
;	.line	36; stdlib/atol.c	if (*s <= '9' && *s >= '0')
	MOVF	r0x0a, W
	ADDLW	0x80
	ADDLW	0x46
	BC	_00106_DS_
; ;ic:11: 	if iTemp7 [k12 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _iffalse_0($2)
; ;ic:12: 	iTemp10 [k15 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp4 [k9 lr8:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0a ] < 0x30 {const-char literal}
	MOVF	r0x0a, W
	ADDLW	0x80
	ADDLW	0x50
	BC	_00137_DS_
; ;ic:13: 	if iTemp10 [k15 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto loopExitLbl4($33)
; ;ic:14:  _iffalse_0($2) :
; ;ic:15: 	iTemp12 [k17 lr15:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0a ] = @[iTemp18 [k23 lr5:24 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x07 r0x08 r0x09 ] + 0x0 {const-unsigned-char literal}]
_00106_DS_:
;	.line	38; stdlib/atol.c	if (*s == '-' || *s == '+') 
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, PRODL
	MOVF	r0x09, W
	CALL	__gptrget1
; #	MOVWF	r0x0a
; #;;ic:16: 	iTemp13 [k18 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp12 [k17 lr15:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0a ] == 0x2d {const-char literal}
; #	MOVF	r0x0a, W
	MOVWF	r0x0a
	XORLW	0x2d
	BZ	_00137_DS_
; ;ic:17: 	if iTemp13 [k18 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto loopExitLbl4($33)
; ;ic:18: 	iTemp16 [k21 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp12 [k17 lr15:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0a ] == 0x2b {const-char literal}
	MOVF	r0x0a, W
	XORLW	0x2b
	BZ	_00137_DS_
; ;ic:19: 	if iTemp16 [k21 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto loopExitLbl4($33)
; ;ic:20: 	iTemp18 [k23 lr5:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x07 r0x08 r0x09 ] = iTemp18 [k23 lr5:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x07 r0x08 r0x09 ] + 0x1 {const-unsigned-char literal}
;	.line	40; stdlib/atol.c	s++;
	INCF	r0x07, F
	BNC	_00156_DS_
	INFSNZ	r0x08, F
	INCF	r0x09, F
; ;ic:21: 	 goto _whilecontinue_0($7)
_00156_DS_:
	BRA	_00111_DS_
; ;ic:22:  loopExitLbl4($33) :
; ;ic:23: 	iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atol_s_1_1}[r0x00 r0x01 r0x02 ] := iTemp18 [k23 lr5:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x07 r0x08 r0x09 ]
_00137_DS_:
	MOVFF	r0x07, r0x00
	MOVFF	r0x08, r0x01
	MOVFF	r0x09, r0x02
; ;ic:24: 	iTemp20 [k25 lr24:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x07 ] = @[iTemp18 [k23 lr5:24 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x07 r0x08 r0x09 ] + 0x0 {const-unsigned-char literal}]
;	.line	43; stdlib/atol.c	sign = (*s == '-');
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, PRODL
	MOVF	r0x09, W
	CALL	__gptrget1
	MOVWF	r0x07
; ;ic:25: 	iTemp21 [k26 lr25:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _atol_sign_1_2}[r0x08 ] = iTemp20 [k25 lr24:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x07 ] == 0x2d {const-char literal}
	CLRF	r0x08
	XORLW	0x2d
	BNZ	_00158_DS_
	INCF	r0x08, F
; ;ic:26: 	iTemp2 [k6 lr26:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char register}[r0x09 ] := iTemp21 [k26 lr25:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _atol_sign_1_2}[r0x08 ]
_00158_DS_:
	MOVFF	r0x08, r0x09
; ;ic:27: 	if iTemp21 [k26 lr25:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _atol_sign_1_2}[r0x08 ] != 0 goto _iftrue_2($10)
;	.line	44; stdlib/atol.c	if (*s == '-' || *s == '+') s++;
	MOVF	r0x08, W
	BNZ	_00114_DS_
; ;ic:28: 	iTemp27 [k32 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp20 [k25 lr24:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x07 ] == 0x2b {const-char literal}
	MOVF	r0x07, W
	XORLW	0x2b
	BNZ	_00135_DS_
; ;ic:29: 	if iTemp27 [k32 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto preHeaderLbl3($31)
; ;ic:30:  _iftrue_2($10) :
; ;ic:31: 	iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atol_s_1_1}[r0x00 r0x01 r0x02 ] = iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atol_s_1_1}[r0x00 r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
_00114_DS_:
	INCF	r0x00, F
	BNC	_00135_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:32:  preHeaderLbl3($31) :
; ;ic:33: 	iTemp46 [k51 lr33:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] := iTemp0 [k2 lr3:33 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atol_s_1_1}[r0x00 r0x01 r0x02 ]
; ;ic:35:  _whilecontinue_1($15) :
; ;ic:36: 	iTemp31 [k36 lr36:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x07 ] = @[iTemp46 [k51 lr33:50 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
_00161_DS_:
_00135_DS_:
_00119_DS_:
;	.line	46; stdlib/atol.c	while (*s && *s >= '0' && *s <= '9') {
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x07
; ;ic:37: 	if iTemp31 [k36 lr36:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x07 ] == 0 goto _whilebreak_1($17)
	MOVF	r0x07, W
	BTFSC	STATUS, 2
	BRA	_00121_DS_
; ;ic:38: 	iTemp34 [k39 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp31 [k36 lr36:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x07 ] < 0x30 {const-char literal}
	MOVF	r0x07, W
	ADDLW	0x80
	ADDLW	0x50
	BNC	_00121_DS_
; ;ic:39: 	if iTemp34 [k39 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _whilebreak_1($17)
; ;ic:40: 	iTemp37 [k42 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp31 [k36 lr36:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x07 ] > 0x39 {const-char literal}
	MOVF	r0x07, W
	ADDLW	0x80
	ADDLW	0x46
	BC	_00121_DS_
; ;ic:41: 	if iTemp37 [k42 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _whilebreak_1($17)
; ;ic:42: 	send 0xa {long-int literal}{argreg = 1}
; ;ic:43: 	send iTemp1 [k4 lr4:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int register}{ sir@ _atol_rv_1_2}[r0x03 r0x04 r0x05 r0x06 ]{argreg = 2}
; ;ic:44: 	iTemp38 [k43 lr44:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int register}[r0x08 r0x0a r0x0b r0x0c ] = call __mullong [k54 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function ( long-int fixed, long-int fixed) fixed}
;	.line	47; stdlib/atol.c	rv = (rv * 10) + (*s - '0');
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	__mullong
	MOVWF	r0x08
	MOVFF	PRODL, r0x0a
	MOVFF	PRODH, r0x0b
	MOVFF	FSR0L, r0x0c
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:45: 	iTemp41 [k46 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x07 r0x0d ] = (int fixed)iTemp31 [k36 lr36:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x07 ]
	CLRF	r0x0d
	BTFSC	r0x07, 7
	SETF	r0x0d
; ;ic:46: 	iTemp42 [k47 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x07 r0x0d ] = iTemp41 [k46 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x07 r0x0d ] - 0x30 {int literal}
	MOVLW	0xd0
	ADDWF	r0x07, F
	BTFSS	STATUS, 0
	DECF	r0x0d, F
; ;ic:47: 	iTemp43 [k48 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int register}[r0x07 r0x0d r0x0e r0x0f ] = (long-int register)iTemp42 [k47 lr46:47 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x07 r0x0d ]
	CLRF	WREG
	BTFSC	r0x0d, 7
	MOVLW	0xff
	MOVWF	r0x0e
	MOVWF	r0x0f
; ;ic:48: 	iTemp1 [k4 lr4:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int register}{ sir@ _atol_rv_1_2}[r0x03 r0x04 r0x05 r0x06 ] = iTemp38 [k43 lr44:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int register}[r0x08 r0x0a r0x0b r0x0c ] + iTemp43 [k48 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int register}[r0x07 r0x0d r0x0e r0x0f ]
	MOVF	r0x07, W
	ADDWF	r0x08, W
	MOVWF	r0x03
	MOVF	r0x0d, W
	ADDWFC	r0x0a, W
	MOVWF	r0x04
	MOVF	r0x0e, W
	ADDWFC	r0x0b, W
	MOVWF	r0x05
	MOVF	r0x0f, W
	ADDWFC	r0x0c, W
	MOVWF	r0x06
; ;ic:49: 	iTemp46 [k51 lr33:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] = iTemp46 [k51 lr33:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
;	.line	48; stdlib/atol.c	s++;
	INCF	r0x00, F
	BNC	_00164_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:50: 	 goto _whilecontinue_1($15)
_00164_DS_:
	BRA	_00119_DS_
; ;ic:51:  _whilebreak_1($17) :
; ;ic:52: 	if iTemp2 [k6 lr26:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char register}[r0x09 ] == 0 goto iTempLbl0($20)
_00121_DS_:
;	.line	51; stdlib/atol.c	return (sign ? -rv : rv);
	MOVF	r0x09, W
	BZ	_00124_DS_
; ;ic:53: 	iTemp47 [k52 lr53:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int register}[r0x00 r0x01 r0x02 r0x07 ] = - iTemp1 [k4 lr4:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int register}{ sir@ _atol_rv_1_2}[r0x03 r0x04 r0x05 r0x06 ]
	COMF	r0x06, W
	MOVWF	r0x07
	COMF	r0x05, W
	MOVWF	r0x02
	COMF	r0x04, W
	MOVWF	r0x01
	COMF	r0x03, W
	MOVWF	r0x00
	INCF	r0x00, F
	BNZ	_00165_DS_
	INCF	r0x01, F
	BNZ	_00165_DS_
	INFSNZ	r0x02, F
	INCF	r0x07, F
; ;ic:54: 	 goto iTempLbl1($21)
_00165_DS_:
	BRA	_00125_DS_
; ;ic:55:  iTempLbl0($20) :
; ;ic:56: 	iTemp47 [k52 lr53:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int register}[r0x00 r0x01 r0x02 r0x07 ] := iTemp1 [k4 lr4:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int register}{ sir@ _atol_rv_1_2}[r0x03 r0x04 r0x05 r0x06 ]
_00124_DS_:
	MOVFF	r0x03, r0x00
	MOVFF	r0x04, r0x01
	MOVFF	r0x05, r0x02
	MOVFF	r0x06, r0x07
; ;ic:57:  iTempLbl1($21) :
; ;ic:58: 	ret iTemp47 [k52 lr53:58 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int register}[r0x00 r0x01 r0x02 r0x07 ]
_00125_DS_:
	MOVFF	r0x07, FSR0L
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:59:  _return($18) :
; ;ic:60: 	eproc _atol [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int function ( char generic* fixed) fixed}
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
; code size:	  518 (0x0206) bytes ( 0.40%)
;           	  259 (0x0103) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   16 (0x0010) bytes


	end

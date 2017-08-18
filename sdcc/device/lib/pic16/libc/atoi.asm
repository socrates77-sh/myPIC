;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:21:48 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_atoi

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1
	extern	__mulint

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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($24) :
; ;ic:2: 	proc _atoi [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed) fixed}
S_atoi__atoi	code
_atoi:
;	.line	29; stdlib/atoi.c	int atoi(char * s)
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
; ;ic:3: iTemp0 [k2 lr3:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atoi_s_1_1}[r0x00 r0x01 r0x02 ] = recv _atoi [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: 	iTemp1 [k4 lr4:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _atoi_rv_1_2}[r0x03 r0x04 ] := 0x0 {int literal}
;	.line	31; stdlib/atoi.c	int rv=0; 
	CLRF	r0x03
	CLRF	r0x04
; ;ic:5: 	iTemp2 [k6 lr5:54 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _atoi_sign_1_2}[r0x05 ] := 0x0 {const-unsigned-char literal}
;	.line	32; stdlib/atoi.c	char sign = 0;
	CLRF	r0x05
; ;ic:6: 	iTemp18 [k23 lr6:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ] := iTemp0 [k2 lr3:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atoi_s_1_1}[r0x00 r0x01 r0x02 ]
;	.line	35; stdlib/atoi.c	while (*s) {
	MOVFF	r0x00, r0x06
	MOVFF	r0x01, r0x07
	MOVFF	r0x02, r0x08
; ;ic:8:  _whilecontinue_0($7) :
; ;ic:9: 	iTemp4 [k9 lr9:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] = @[iTemp18 [k23 lr6:25 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ] + 0x0 {const-unsigned-char literal}]
_00111_DS_:
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrget1
	MOVWF	r0x09
; ;ic:10: 	if iTemp4 [k9 lr9:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] == 0 goto loopExitLbl2($37)
	MOVF	r0x09, W
	BZ	_00141_DS_
; ;ic:11: 	iTemp7 [k12 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp4 [k9 lr9:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] > 0x39 {const-char literal}
;	.line	36; stdlib/atoi.c	if (*s <= '9' && *s >= '0')
	MOVF	r0x09, W
	ADDLW	0x80
	ADDLW	0x46
	BC	_00106_DS_
; ;ic:12: 	if iTemp7 [k12 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _iffalse_0($2)
; ;ic:13: 	iTemp10 [k15 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp4 [k9 lr9:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] < 0x30 {const-char literal}
	MOVF	r0x09, W
	ADDLW	0x80
	ADDLW	0x50
	BC	_00141_DS_
; ;ic:14: 	if iTemp10 [k15 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto loopExitLbl2($37)
; ;ic:15:  _iffalse_0($2) :
; ;ic:16: 	iTemp12 [k17 lr16:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] = @[iTemp18 [k23 lr6:25 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ] + 0x0 {const-unsigned-char literal}]
_00106_DS_:
;	.line	38; stdlib/atoi.c	if (*s == '-' || *s == '+') 
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrget1
; #	MOVWF	r0x09
; #;;ic:17: 	iTemp13 [k18 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp12 [k17 lr16:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] == 0x2d {const-char literal}
; #	MOVF	r0x09, W
	MOVWF	r0x09
	XORLW	0x2d
	BZ	_00141_DS_
; ;ic:18: 	if iTemp13 [k18 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto loopExitLbl2($37)
; ;ic:19: 	iTemp16 [k21 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp12 [k17 lr16:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] == 0x2b {const-char literal}
	MOVF	r0x09, W
	XORLW	0x2b
	BZ	_00141_DS_
; ;ic:20: 	if iTemp16 [k21 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto loopExitLbl2($37)
; ;ic:21: 	iTemp18 [k23 lr6:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ] = iTemp18 [k23 lr6:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ] + 0x1 {const-unsigned-char literal}
;	.line	40; stdlib/atoi.c	s++;
	INCF	r0x06, F
	BNC	_00161_DS_
	INFSNZ	r0x07, F
	INCF	r0x08, F
; ;ic:22: 	 goto _whilecontinue_0($7)
_00161_DS_:
	BRA	_00111_DS_
; ;ic:23:  loopExitLbl2($37) :
; ;ic:24: 	iTemp0 [k2 lr3:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atoi_s_1_1}[r0x00 r0x01 r0x02 ] := iTemp18 [k23 lr6:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ]
_00141_DS_:
	MOVFF	r0x06, r0x00
	MOVFF	r0x07, r0x01
	MOVFF	r0x08, r0x02
; ;ic:25: 	iTemp20 [k25 lr25:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] = @[iTemp18 [k23 lr6:25 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ] + 0x0 {const-unsigned-char literal}]
;	.line	43; stdlib/atoi.c	if(*s == '-')sign=1;
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrget1
	MOVWF	r0x06
; ;ic:26: 	iTemp21 [k26 lr26:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x07 ] = iTemp20 [k25 lr25:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] == 0x2d {const-char literal}
	CLRF	r0x07
	XORLW	0x2d
	BNZ	_00163_DS_
	INCF	r0x07, F
; ;ic:27: 	if iTemp21 [k26 lr26:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x07 ] == 0 goto _iffalse_2($11)
_00163_DS_:
	MOVF	r0x07, W
	BZ	_00115_DS_
; ;ic:28: 	iTemp2 [k6 lr5:54 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _atoi_sign_1_2}[r0x05 ] := 0x1 {const-unsigned-char literal}
	MOVLW	0x01
	MOVWF	r0x05
; ;ic:29:  _iffalse_2($11) :
; ;ic:30: 	if iTemp21 [k26 lr26:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x07 ] != 0 goto _iftrue_3($12)
_00115_DS_:
;	.line	46; stdlib/atoi.c	if (*s == '-' || *s == '+') s++;
	MOVF	r0x07, W
	BNZ	_00116_DS_
; ;ic:31: 	iTemp27 [k32 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp20 [k25 lr25:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] == 0x2b {const-char literal}
	MOVF	r0x06, W
	XORLW	0x2b
	BNZ	_00139_DS_
; ;ic:32: 	if iTemp27 [k32 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto preHeaderLbl1($35)
; ;ic:33:  _iftrue_3($12) :
; ;ic:34: 	iTemp0 [k2 lr3:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atoi_s_1_1}[r0x00 r0x01 r0x02 ] = iTemp0 [k2 lr3:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atoi_s_1_1}[r0x00 r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
_00116_DS_:
	INCF	r0x00, F
	BNC	_00139_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:35:  preHeaderLbl1($35) :
; ;ic:36: 	iTemp45 [k50 lr36:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] := iTemp0 [k2 lr3:36 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atoi_s_1_1}[r0x00 r0x01 r0x02 ]
; ;ic:38:  _whilecontinue_1($17) :
; ;ic:39: 	iTemp31 [k36 lr39:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] = @[iTemp45 [k50 lr36:52 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
_00166_DS_:
_00139_DS_:
_00121_DS_:
;	.line	48; stdlib/atoi.c	while (*s && *s >= '0' && *s <= '9') {
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x06
; ;ic:40: 	if iTemp31 [k36 lr39:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] == 0 goto _whilebreak_1($19)
	MOVF	r0x06, W
	BZ	_00123_DS_
; ;ic:41: 	iTemp34 [k39 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp31 [k36 lr39:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] < 0x30 {const-char literal}
	MOVF	r0x06, W
	ADDLW	0x80
	ADDLW	0x50
	BNC	_00123_DS_
; ;ic:42: 	if iTemp34 [k39 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _whilebreak_1($19)
; ;ic:43: 	iTemp37 [k42 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp31 [k36 lr39:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] > 0x39 {const-char literal}
	MOVF	r0x06, W
	ADDLW	0x80
	ADDLW	0x46
	BC	_00123_DS_
; ;ic:44: 	if iTemp37 [k42 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _whilebreak_1($19)
; ;ic:45: 	send 0xa {int literal}{argreg = 1}
; ;ic:46: 	send iTemp1 [k4 lr4:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _atoi_rv_1_2}[r0x03 r0x04 ]{argreg = 2}
; ;ic:47: 	iTemp38 [k43 lr47:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x07 r0x08 ] = call __mulint [k52 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( int fixed, int fixed) fixed}
;	.line	49; stdlib/atoi.c	rv = (rv * 10) + (*s - '0');
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x0a
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x07
	MOVFF	PRODL, r0x08
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:48: 	iTemp41 [k46 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x06 r0x09 ] = (int fixed)iTemp31 [k36 lr39:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ]
	CLRF	r0x09
	BTFSC	r0x06, 7
	SETF	r0x09
; ;ic:49: 	iTemp42 [k47 lr49:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x06 r0x09 ] = iTemp41 [k46 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x06 r0x09 ] - 0x30 {int literal}
	MOVLW	0xd0
	ADDWF	r0x06, F
	BTFSS	STATUS, 0
	DECF	r0x09, F
; ;ic:50: 	iTemp1 [k4 lr4:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _atoi_rv_1_2}[r0x03 r0x04 ] = iTemp38 [k43 lr47:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x07 r0x08 ] + iTemp42 [k47 lr49:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x06 r0x09 ]
	MOVF	r0x06, W
	ADDWF	r0x07, W
	MOVWF	r0x03
	MOVF	r0x09, W
	ADDWFC	r0x08, W
	MOVWF	r0x04
; ;ic:51: 	iTemp45 [k50 lr36:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] = iTemp45 [k50 lr36:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
;	.line	50; stdlib/atoi.c	s++;
	INCF	r0x00, F
	BNC	_00169_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:52: 	 goto _whilecontinue_1($17)
_00169_DS_:
	BRA	_00121_DS_
; ;ic:53:  _whilebreak_1($19) :
; ;ic:54: 	if iTemp2 [k6 lr5:54 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _atoi_sign_1_2}[r0x05 ] == 0 goto _iffalse_4($21)
_00123_DS_:
;	.line	53; stdlib/atoi.c	if(sign)return (-rv);
	MOVF	r0x05, W
	BZ	_00125_DS_
; ;ic:55: 	iTemp46 [k51 lr55:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x00 r0x01 ] = - iTemp1 [k4 lr4:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _atoi_rv_1_2}[r0x03 r0x04 ]
	COMF	r0x04, W
	MOVWF	r0x01
	COMF	r0x03, W
	MOVWF	r0x00
	INFSNZ	r0x00, F
	INCF	r0x01, F
; ;ic:56: 	ret iTemp46 [k51 lr55:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x00 r0x01 ]
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00127_DS_
; ;ic:57:  _iffalse_4($21) :
; ;ic:58: 	ret iTemp1 [k4 lr4:58 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _atoi_rv_1_2}[r0x03 r0x04 ]
_00125_DS_:
;	.line	54; stdlib/atoi.c	else return (rv);
	MOVFF	r0x04, PRODL
	MOVF	r0x03, W
; ;ic:59:  _return($23) :
; ;ic:60: 	eproc _atoi [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed) fixed}
_00127_DS_:
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
; code size:	  394 (0x018a) bytes ( 0.30%)
;           	  197 (0x00c5) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   10 (0x000a) bytes


	end

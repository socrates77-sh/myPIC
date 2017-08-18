;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:21:47 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_atof

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1
	extern	_isdigit
	extern	_islower
	extern	_isspace
	extern	_atoi
	extern	___fsmul
	extern	___sint2fs
	extern	___fsadd

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
POSTINC1	equ	0xfe6
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
r0x10	res	1
r0x11	res	1
r0x12	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($30) :
; ;ic:2: 	proc _atof [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function ( char generic* fixed) fixed}
S_atof__atof	code
_atof:
;	.line	32; stdlib/atof.c	float atof(char * s)
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
	MOVFF	r0x10, POSTDEC1
	MOVFF	r0x11, POSTDEC1
	MOVFF	r0x12, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:96 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atof_s_1_25}[r0x00 r0x01 r0x02 ] = recv _atof [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function ( char generic* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: 	iTemp5 [k10 lr4:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] := iTemp0 [k2 lr3:96 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atof_s_1_25}[r0x00 r0x01 r0x02 ]
;	.line	39; stdlib/atof.c	while (isspace(*s)) s++;
	MOVFF	r0x00, r0x03
	MOVFF	r0x01, r0x04
	MOVFF	r0x02, r0x05
; ;ic:6:  _whilecontinue_0($1) :
; ;ic:7: 	iTemp2 [k6 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] = @[iTemp5 [k10 lr4:25 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00105_DS_:
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x06
; #;;ic:8: 	send iTemp2 [k6 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ]{argreg = 1}
; #;;ic:9: 	iTemp3 [k8 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x06 ] = call _isspace [k4 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char fixed) fixed}
; #	MOVF	r0x06, W
	MOVWF	POSTDEC1
	CALL	_isspace
	MOVWF	r0x06
	MOVF	POSTINC1, F
; ;ic:10: 	if iTemp3 [k8 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x06 ] == 0 goto loopExitLbl6($48)
	MOVF	r0x06, W
	BZ	_00152_DS_
; ;ic:11: 	iTemp5 [k10 lr4:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] = iTemp5 [k10 lr4:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
	INCF	r0x03, F
	BNC	_00170_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:12: 	 goto _whilecontinue_0($1)
_00170_DS_:
	BRA	_00105_DS_
; ;ic:13:  loopExitLbl6($48) :
; ;ic:14: 	iTemp0 [k2 lr3:96 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atof_s_1_25}[r0x00 r0x01 r0x02 ] := iTemp5 [k10 lr4:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ]
_00152_DS_:
	MOVFF	r0x03, r0x00
	MOVFF	r0x04, r0x01
	MOVFF	r0x05, r0x02
; ;ic:15: 	iTemp7 [k12 lr15:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] = @[iTemp5 [k10 lr4:25 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
;	.line	42; stdlib/atof.c	if (*s == '-')
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x06
; #;;ic:16: 	iTemp8 [k13 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp7 [k12 lr15:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] == 0x2d {const-char literal}
; #	MOVF	r0x06, W
	MOVWF	r0x06
	XORLW	0x2d
	BNZ	_00111_DS_
; ;ic:17: 	if iTemp8 [k13 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_1($7)
; ;ic:18: 	iTemp9 [k14 lr18:116 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _atof_sign_1_26}[r0x07 ] := 0x1 {const-unsigned-char literal}
;	.line	44; stdlib/atof.c	sign=1;
	MOVLW	0x01
	MOVWF	r0x07
; ;ic:19: 	iTemp0 [k2 lr3:96 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atof_s_1_25}[r0x00 r0x01 r0x02 ] = iTemp5 [k10 lr4:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	45; stdlib/atof.c	s++;
	MOVF	r0x03, W
	ADDLW	0x01
	MOVWF	r0x00
	MOVLW	0x00
	ADDWFC	r0x04, W
	MOVWF	r0x01
	MOVLW	0x00
	ADDWFC	r0x05, W
	MOVWF	r0x02
; ;ic:20: 	 goto _ifend_1($8)
	BRA	_00112_DS_
; ;ic:21:  _iffalse_1($7) :
; ;ic:22: 	iTemp9 [k14 lr18:116 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _atof_sign_1_26}[r0x07 ] := 0x0 {const-unsigned-char literal}
_00111_DS_:
;	.line	49; stdlib/atof.c	sign=0;
	CLRF	r0x07
; ;ic:23: 	iTemp14 [k20 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp7 [k12 lr15:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x06 ] == 0x2b {const-char literal}
;	.line	50; stdlib/atof.c	if (*s == '+') s++;
	MOVF	r0x06, W
	XORLW	0x2b
	BNZ	_00112_DS_
; ;ic:24: 	if iTemp14 [k20 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _ifend_1($8)
; ;ic:25: 	iTemp0 [k2 lr3:96 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atof_s_1_25}[r0x00 r0x01 r0x02 ] = iTemp5 [k10 lr4:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
	MOVF	r0x03, W
	ADDLW	0x01
	MOVWF	r0x00
	MOVLW	0x00
	ADDWFC	r0x04, W
	MOVWF	r0x01
	MOVLW	0x00
	ADDWFC	r0x05, W
	MOVWF	r0x02
; ;ic:26:  _ifend_1($8) :
; ;ic:27: 	iTemp17 [k23 lr27:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atof_value_1_26}[r0x03 r0x04 r0x05 r0x06 ] := 0 {const-float literal}
_00112_DS_:
;	.line	54; stdlib/atof.c	for (value=0.0; isdigit(*s); s++)
	CLRF	r0x03
	CLRF	r0x04
	CLRF	r0x05
	CLRF	r0x06
; ;ic:28: 	iTemp29 [k38 lr28:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] := iTemp0 [k2 lr3:96 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atof_s_1_25}[r0x00 r0x01 r0x02 ]
	MOVFF	r0x00, r0x08
	MOVFF	r0x01, r0x09
	MOVFF	r0x02, r0x0a
; ;ic:30:  _forcond_0($21) :
; ;ic:31: 	iTemp19 [k27 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0b ] = @[iTemp29 [k38 lr28:53 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] + 0x0 {const-unsigned-char literal}]
_00125_DS_:
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, PRODL
	MOVF	r0x0a, W
	CALL	__gptrget1
; #	MOVWF	r0x0b
; #;;ic:32: 	send iTemp19 [k27 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0b ]{argreg = 1}
; #;;ic:33: 	iTemp20 [k29 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x0b ] = call _isdigit [k25 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char fixed) fixed}
; #	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	CALL	_isdigit
	MOVWF	r0x0b
	MOVF	POSTINC1, F
; ;ic:34: 	if iTemp20 [k29 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x0b ] == 0 goto loopExitLbl7($49)
	MOVF	r0x0b, W
	BTFSC	STATUS, 2
	BRA	_00153_DS_
; ;ic:35: 	send 10 {const-float literal}{argreg = 1}
; ;ic:36: 	send iTemp17 [k23 lr27:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atof_value_1_26}[r0x03 r0x04 r0x05 r0x06 ]{argreg = 2}
; ;ic:37: 	iTemp21 [k30 lr37:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x0b r0x0c r0x0d r0x0e ] = call ___fsmul [k89 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function ( float fixed, float fixed) fixed}
;	.line	56; stdlib/atof.c	value=10.0*value+(*s-'0');
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVLW	0x41
	MOVWF	POSTDEC1
	MOVLW	0x20
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x0b
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
	MOVFF	FSR0L, r0x0e
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:38: 	iTemp23 [k32 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0f ] = @[iTemp29 [k38 lr28:53 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, PRODL
	MOVF	r0x0a, W
	CALL	__gptrget1
	MOVWF	r0x0f
; ;ic:39: 	iTemp24 [k33 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x0f r0x10 ] = (int fixed)iTemp23 [k32 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0f ]
	CLRF	r0x10
	BTFSC	r0x0f, 7
	SETF	r0x10
; ;ic:40: 	iTemp25 [k34 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x0f r0x10 ] = iTemp24 [k33 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x0f r0x10 ] - 0x30 {int literal}
	MOVLW	0xd0
	ADDWF	r0x0f, F
	BTFSS	STATUS, 0
	DECF	r0x10, F
; ;ic:41: 	send iTemp25 [k34 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x0f r0x10 ]{argreg = 1}
; ;ic:42: 	iTemp26 [k35 lr42:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x0f r0x10 r0x11 r0x12 ] = call ___sint2fs [k90 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function ( int fixed) fixed}
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x0f
	MOVFF	PRODL, r0x10
	MOVFF	PRODH, r0x11
	MOVFF	FSR0L, r0x12
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
; ;ic:43: 	send iTemp21 [k30 lr37:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x0b r0x0c r0x0d r0x0e ]{argreg = 1}
; ;ic:44: 	send iTemp26 [k35 lr42:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x0f r0x10 r0x11 r0x12 ]{argreg = 2}
; ;ic:45: 	iTemp17 [k23 lr27:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atof_value_1_26}[r0x03 r0x04 r0x05 r0x06 ] = call ___fsadd [k91 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function ( float fixed, float fixed) fixed}
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0e, W
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x03
	MOVFF	PRODL, r0x04
	MOVFF	PRODH, r0x05
	MOVFF	FSR0L, r0x06
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:46: 	iTemp29 [k38 lr28:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] = iTemp29 [k38 lr28:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] + 0x1 {const-unsigned-char literal}
;	.line	54; stdlib/atof.c	for (value=0.0; isdigit(*s); s++)
	INCF	r0x08, F
	BNC	_00175_DS_
	INFSNZ	r0x09, F
	INCF	r0x0a, F
; ;ic:47: 	 goto _forcond_0($21)
_00175_DS_:
	BRA	_00125_DS_
; ;ic:48:  loopExitLbl7($49) :
; ;ic:49: 	iTemp0 [k2 lr3:96 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atof_s_1_25}[r0x00 r0x01 r0x02 ] := iTemp29 [k38 lr28:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ]
_00153_DS_:
	MOVFF	r0x08, r0x00
	MOVFF	r0x09, r0x01
	MOVFF	r0x0a, r0x02
; ;ic:50: 	iTemp31 [k40 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0b ] = @[iTemp29 [k38 lr28:53 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] + 0x0 {const-unsigned-char literal}]
;	.line	60; stdlib/atof.c	if (*s == '.')
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, PRODL
	MOVF	r0x0a, W
	CALL	__gptrget1
; #	MOVWF	r0x0b
; #;;ic:51: 	iTemp32 [k41 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp31 [k40 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0b ] == 0x2e {const-char literal}
; #	MOVF	r0x0b, W
	XORLW	0x2e
	BZ	_00177_DS_
	BRA	_00114_DS_
; ;ic:52: 	if iTemp32 [k41 lr51:52 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_2($10)
; ;ic:53: 	iTemp0 [k2 lr3:96 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atof_s_1_25}[r0x00 r0x01 r0x02 ] = iTemp29 [k38 lr28:53 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] + 0x1 {const-unsigned-char literal}
_00177_DS_:
;	.line	62; stdlib/atof.c	s++;
	MOVF	r0x08, W
	ADDLW	0x01
	MOVWF	r0x00
	MOVLW	0x00
	ADDWFC	r0x09, W
	MOVWF	r0x01
	MOVLW	0x00
	ADDWFC	r0x0a, W
	MOVWF	r0x02
; ;ic:54: 	iTemp35 [k44 lr54:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atof_fraction_1_26}[r0x08 r0x09 r0x0a r0x0b ] := 0.1 {const-float literal}
;	.line	63; stdlib/atof.c	for (fraction=0.1; isdigit(*s); s++)
	MOVLW	0xcd
	MOVWF	r0x08
	MOVLW	0xcc
	MOVWF	r0x09
	MOVWF	r0x0a
	MOVLW	0x3d
	MOVWF	r0x0b
; ;ic:55: 	iTemp48 [k58 lr55:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0c r0x0d r0x0e ] := iTemp0 [k2 lr3:96 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atof_s_1_25}[r0x00 r0x01 r0x02 ]
	MOVFF	r0x00, r0x0c
	MOVFF	r0x01, r0x0d
	MOVFF	r0x02, r0x0e
; ;ic:57:  _forcond_1($25) :
; ;ic:58: 	iTemp37 [k47 lr58:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0f ] = @[iTemp48 [k58 lr55:79 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0c r0x0d r0x0e ] + 0x0 {const-unsigned-char literal}]
_00129_DS_:
	MOVFF	r0x0c, FSR0L
	MOVFF	r0x0d, PRODL
	MOVF	r0x0e, W
	CALL	__gptrget1
; #	MOVWF	r0x0f
; #;;ic:59: 	send iTemp37 [k47 lr58:59 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0f ]{argreg = 1}
; #;;ic:60: 	iTemp38 [k48 lr60:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x0f ] = call _isdigit [k25 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char fixed) fixed}
; #	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	CALL	_isdigit
	MOVWF	r0x0f
	MOVF	POSTINC1, F
; ;ic:61: 	if iTemp38 [k48 lr60:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x0f ] == 0 goto loopExitLbl8($50)
	MOVF	r0x0f, W
	BTFSC	STATUS, 2
	BRA	_00154_DS_
; ;ic:62: 	iTemp40 [k50 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0f ] = @[iTemp48 [k58 lr55:79 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0c r0x0d r0x0e ] + 0x0 {const-unsigned-char literal}]
;	.line	65; stdlib/atof.c	value+=(*s-'0')*fraction;
	MOVFF	r0x0c, FSR0L
	MOVFF	r0x0d, PRODL
	MOVF	r0x0e, W
	CALL	__gptrget1
	MOVWF	r0x0f
; ;ic:63: 	iTemp41 [k51 lr63:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x0f r0x10 ] = (int fixed)iTemp40 [k50 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0f ]
	CLRF	r0x10
	BTFSC	r0x0f, 7
	SETF	r0x10
; ;ic:64: 	iTemp42 [k52 lr64:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x0f r0x10 ] = iTemp41 [k51 lr63:64 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x0f r0x10 ] - 0x30 {int literal}
	MOVLW	0xd0
	ADDWF	r0x0f, F
	BTFSS	STATUS, 0
	DECF	r0x10, F
; ;ic:65: 	send iTemp42 [k52 lr64:65 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x0f r0x10 ]{argreg = 1}
; ;ic:66: 	iTemp43 [k53 lr66:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x0f r0x10 r0x11 r0x12 ] = call ___sint2fs [k90 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function ( int fixed) fixed}
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	CALL	___sint2fs
	MOVWF	r0x0f
	MOVFF	PRODL, r0x10
	MOVFF	PRODH, r0x11
	MOVFF	FSR0L, r0x12
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
; ;ic:67: 	send iTemp43 [k53 lr66:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x0f r0x10 r0x11 r0x12 ]{argreg = 1}
; ;ic:68: 	send iTemp35 [k44 lr54:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atof_fraction_1_26}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 2}
; ;ic:69: 	iTemp44 [k54 lr69:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x0f r0x10 r0x11 r0x12 ] = call ___fsmul [k89 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function ( float fixed, float fixed) fixed}
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x0f
	MOVFF	PRODL, r0x10
	MOVFF	PRODH, r0x11
	MOVFF	FSR0L, r0x12
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:70: 	send iTemp17 [k23 lr27:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atof_value_1_26}[r0x03 r0x04 r0x05 r0x06 ]{argreg = 1}
; ;ic:71: 	send iTemp44 [k54 lr69:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float fixed}[r0x0f r0x10 r0x11 r0x12 ]{argreg = 2}
; ;ic:72: 	iTemp17 [k23 lr27:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atof_value_1_26}[r0x03 r0x04 r0x05 r0x06 ] = call ___fsadd [k91 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function ( float fixed, float fixed) fixed}
	MOVF	r0x12, W
	MOVWF	POSTDEC1
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	___fsadd
	MOVWF	r0x03
	MOVFF	PRODL, r0x04
	MOVFF	PRODH, r0x05
	MOVFF	FSR0L, r0x06
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:73: 	send 0.1 {const-float literal}{argreg = 1}
; ;ic:74: 	send iTemp35 [k44 lr54:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atof_fraction_1_26}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 2}
; ;ic:75: 	iTemp35 [k44 lr54:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atof_fraction_1_26}[r0x08 r0x09 r0x0a r0x0b ] = call ___fsmul [k89 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function ( float fixed, float fixed) fixed}
;	.line	66; stdlib/atof.c	fraction*=0.1;
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVLW	0x3d
	MOVWF	POSTDEC1
	MOVLW	0xcc
	MOVWF	POSTDEC1
	MOVWF	POSTDEC1
	MOVLW	0xcd
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x08
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0b
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:76: 	iTemp48 [k58 lr55:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0c r0x0d r0x0e ] = iTemp48 [k58 lr55:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0c r0x0d r0x0e ] + 0x1 {const-unsigned-char literal}
;	.line	63; stdlib/atof.c	for (fraction=0.1; isdigit(*s); s++)
	INCF	r0x0c, F
	BNC	_00178_DS_
	INFSNZ	r0x0d, F
	INCF	r0x0e, F
; ;ic:77: 	 goto _forcond_1($25)
_00178_DS_:
	BRA	_00129_DS_
; ;ic:78:  loopExitLbl8($50) :
; ;ic:79: 	iTemp0 [k2 lr3:96 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atof_s_1_25}[r0x00 r0x01 r0x02 ] := iTemp48 [k58 lr55:79 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0c r0x0d r0x0e ]
_00154_DS_:
	MOVFF	r0x0c, r0x00
	MOVFF	r0x0d, r0x01
	MOVFF	r0x0e, r0x02
; ;ic:80:  _iffalse_2($10) :
; ;ic:81: 	iTemp50 [k61 lr81:82 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x08 ] = @[iTemp0 [k2 lr3:96 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atof_s_1_25}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
_00114_DS_:
;	.line	71; stdlib/atof.c	if (toupper(*s)=='E')
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
; #	MOVWF	r0x08
; #;;ic:82: 	send iTemp50 [k61 lr81:82 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x08 ]{argreg = 1}
; #;;ic:83: 	iTemp51 [k63 lr83:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x08 ] = call _islower [k59 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char fixed) fixed}
; #	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	_islower
	MOVWF	r0x08
	MOVF	POSTINC1, F
; ;ic:84: 	if iTemp51 [k63 lr83:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x08 ] == 0 goto iTempLbl0($31)
	MOVF	r0x08, W
	BZ	_00135_DS_
; ;ic:85: 	iTemp54 [k66 lr85:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x08 ] = @[iTemp0 [k2 lr3:96 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atof_s_1_25}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x08
; ;ic:86: 	iTemp55 [k67 lr86:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x08 r0x09 ] = (int register)iTemp54 [k66 lr85:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x08 ]
	CLRF	r0x09
	BTFSC	r0x08, 7
	SETF	r0x09
; ;ic:87: 	iTemp52 [k64 lr87:93 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x08 r0x09 ] = iTemp55 [k67 lr86:87 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x08 r0x09 ] & 0xffffffdf {int literal}
	BCF	r0x08, 5
; ;ic:88: 	 goto iTempLbl1($32)
	BRA	_00136_DS_
; ;ic:89:  iTempLbl0($31) :
; ;ic:90: 	iTemp58 [k70 lr90:91 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0a ] = @[iTemp0 [k2 lr3:96 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atof_s_1_25}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
_00135_DS_:
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x0a
; ;ic:91: 	iTemp52 [k64 lr87:93 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x08 r0x09 ] = (int register)iTemp58 [k70 lr90:91 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0a ]
	MOVFF	r0x0a, r0x08
	CLRF	r0x09
	BTFSC	r0x0a, 7
	SETF	r0x09
; ;ic:92:  iTempLbl1($32) :
; ;ic:93: 	iTemp60 [k72 lr93:94 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp52 [k64 lr87:93 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x08 r0x09 ] == 0x45 {int literal}
_00136_DS_:
	MOVF	r0x08, W
	XORLW	0x45
	BNZ	_00180_DS_
	MOVF	r0x09, W
	BZ	_00181_DS_
_00180_DS_:
	BRA	_00122_DS_
; ;ic:94: 	if iTemp60 [k72 lr93:94 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_4($18)
; ;ic:95: 	iTemp0 [k2 lr3:96 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atof_s_1_25}[r0x00 r0x01 r0x02 ] = iTemp0 [k2 lr3:96 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atof_s_1_25}[r0x00 r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
_00181_DS_:
;	.line	73; stdlib/atof.c	s++;
	INCF	r0x00, F
	BNC	_00182_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:96: 	send iTemp0 [k2 lr3:96 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _atof_s_1_25}[r0x00 r0x01 r0x02 ]{argreg = 1}
; ;ic:97: 	iTemp64 [k79 lr97:98 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x00 r0x01 ] = call _atoi [k77 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* fixed) fixed}
_00182_DS_:
;	.line	74; stdlib/atof.c	iexp=(char)atoi(s);
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_atoi
	MOVWF	r0x00
	MOVLW	0x03
	ADDWF	FSR1L, F
; ;ic:98: 	iTemp63 [k75 lr98:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _atof_iexp_1_26}[r0x00 ] = (char fixed)iTemp64 [k79 lr97:98 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x00 r0x01 ]
; ;ic:100:  _whilecontinue_1($14) :
; ;ic:101: 	if iTemp63 [k75 lr98:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _atof_iexp_1_26}[r0x00 ] == 0 goto _iffalse_4($18)
_00118_DS_:
;	.line	76; stdlib/atof.c	while(iexp!=0)
	MOVF	r0x00, W
	BTFSC	STATUS, 2
	BRA	_00122_DS_
; ;ic:102: 	iTemp66 [k81 lr102:103 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp63 [k75 lr98:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _atof_iexp_1_26}[r0x00 ] < 0x0 {const-char literal}
;	.line	78; stdlib/atof.c	if(iexp<0)
	BSF	STATUS, 0
	BTFSS	r0x00, 7
	BCF	STATUS, 0
	BNC	_00116_DS_
; ;ic:103: 	if iTemp66 [k81 lr102:103 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_3($12)
; ;ic:104: 	send 0.1 {const-float literal}{argreg = 1}
; ;ic:105: 	send iTemp17 [k23 lr27:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atof_value_1_26}[r0x03 r0x04 r0x05 r0x06 ]{argreg = 2}
; ;ic:106: 	iTemp17 [k23 lr27:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atof_value_1_26}[r0x03 r0x04 r0x05 r0x06 ] = call ___fsmul [k89 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function ( float fixed, float fixed) fixed}
;	.line	80; stdlib/atof.c	value*=0.1;
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVLW	0x3d
	MOVWF	POSTDEC1
	MOVLW	0xcc
	MOVWF	POSTDEC1
	MOVWF	POSTDEC1
	MOVLW	0xcd
	MOVWF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x03
	MOVFF	PRODL, r0x04
	MOVFF	PRODH, r0x05
	MOVFF	FSR0L, r0x06
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:107: 	iTemp63 [k75 lr98:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _atof_iexp_1_26}[r0x00 ] = iTemp63 [k75 lr98:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _atof_iexp_1_26}[r0x00 ] + 0x1 {const-unsigned-char literal}
;	.line	81; stdlib/atof.c	iexp++;
	INCF	r0x00, F
; ;ic:108: 	 goto _whilecontinue_1($14)
	BRA	_00118_DS_
; ;ic:109:  _iffalse_3($12) :
; ;ic:110: 	send 10 {const-float literal}{argreg = 1}
; ;ic:111: 	send iTemp17 [k23 lr27:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atof_value_1_26}[r0x03 r0x04 r0x05 r0x06 ]{argreg = 2}
; ;ic:112: 	iTemp17 [k23 lr27:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atof_value_1_26}[r0x03 r0x04 r0x05 r0x06 ] = call ___fsmul [k89 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function ( float fixed, float fixed) fixed}
_00116_DS_:
;	.line	85; stdlib/atof.c	value*=10.0;
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVLW	0x41
	MOVWF	POSTDEC1
	MOVLW	0x20
	MOVWF	POSTDEC1
	MOVLW	0x00
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CALL	___fsmul
	MOVWF	r0x03
	MOVFF	PRODL, r0x04
	MOVFF	PRODH, r0x05
	MOVFF	FSR0L, r0x06
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:113: 	iTemp63 [k75 lr98:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _atof_iexp_1_26}[r0x00 ] = iTemp63 [k75 lr98:114 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _atof_iexp_1_26}[r0x00 ] - 0x1 {const-unsigned-char literal}
;	.line	86; stdlib/atof.c	iexp--;
	DECF	r0x00, F
; ;ic:114: 	 goto _whilecontinue_1($14)
	BRA	_00118_DS_
; ;ic:115:  _iffalse_4($18) :
; ;ic:116: 	if iTemp9 [k14 lr18:116 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _atof_sign_1_26}[r0x07 ] == 0 goto _iffalse_5($20)
_00122_DS_:
;	.line	92; stdlib/atof.c	if(sign) value*=-1.0;
	MOVF	r0x07, W
	BZ	_00124_DS_
; ;ic:117: 	iTemp17 [k23 lr27:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atof_value_1_26}[r0x03 r0x04 r0x05 r0x06 ] = - iTemp17 [k23 lr27:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atof_value_1_26}[r0x03 r0x04 r0x05 r0x06 ]
	BTG	r0x06, 7
; ;ic:118:  _iffalse_5($20) :
; ;ic:119: 	ret iTemp17 [k23 lr27:119 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _atof_value_1_26}[r0x03 r0x04 r0x05 r0x06 ]
_00124_DS_:
;	.line	93; stdlib/atof.c	return (value);
	MOVFF	r0x06, FSR0L
	MOVFF	r0x05, PRODH
	MOVFF	r0x04, PRODL
	MOVF	r0x03, W
; ;ic:120:  _return($29) :
; ;ic:121: 	eproc _atof [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float function ( char generic* fixed) fixed}
	MOVFF	PREINC1, r0x12
	MOVFF	PREINC1, r0x11
	MOVFF	PREINC1, r0x10
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
; code size:	 1158 (0x0486) bytes ( 0.88%)
;           	  579 (0x0243) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   19 (0x0013) bytes


	end

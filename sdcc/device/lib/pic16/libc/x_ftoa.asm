;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:01 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_x_cnvint_wrap
	global	_x_cnvfrac_wrap
	global	_x_ftoa

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	_convert_frac
	extern	_convert_int
	extern	_POSTDEC1
	extern	_PLUSW2
	extern	_FSR0L
	extern	_FSR0H
	extern	_PREINC1
	extern	_PREINC2
	extern	_FSR2L
	extern	_FSR2H

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
INDF0	equ	0xfef
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW2	equ	0xfdb


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

udata_x_ftoa_0	udata
_x_ftoa_f_l_1_26	res	4

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($20) :
; ;ic:2: 	proc _x_ftoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( float fixed, char near* data, unsigned-char fixed, unsigned-char fixed) fixed}
S_x_ftoa__x_ftoa	code
_x_ftoa:
;	.line	139; stdlib/x_ftoa.c	char x_ftoa(float num, __data char *buffer, unsigned char buflen, unsigned char prec)
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
; ;ic:3: iTemp0 [k2 lr3:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _x_ftoa_num_1_25}[r0x00 r0x01 r0x02 r0x03 ] = recv _x_ftoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( float fixed, char near* data, unsigned-char fixed, unsigned-char fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* data}{ sir@ _x_ftoa_buffer_1_25}[r0x04 r0x05 ] = recv _x_ftoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( float fixed, char near* data, unsigned-char fixed, unsigned-char fixed) fixed}
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp6 [k13 lr5:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_len_1_26}[r0x06 ] = recv _x_ftoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( float fixed, char near* data, unsigned-char fixed, unsigned-char fixed) fixed}
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
; ;ic:6: iTemp3 [k8 lr6:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _x_ftoa_prec_1_25}[r0x07 ] = recv _x_ftoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( float fixed, char near* data, unsigned-char fixed, unsigned-char fixed) fixed}
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:8:  _whilecontinue_0($1) :
; ;ic:9: 	iTemp5 [k12 lr9:11 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{char fixed}[r0x08 ] := iTemp6 [k13 lr5:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_len_1_26}[r0x06 ]
_00115_DS_:
;	.line	149; stdlib/x_ftoa.c	while(len--)buffer[len] = 0;
	MOVFF	r0x06, r0x08
; ;ic:10: 	iTemp6 [k13 lr5:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_len_1_26}[r0x06 ] = iTemp6 [k13 lr5:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_len_1_26}[r0x06 ] - 0x1 {const-unsigned-char literal}
	DECF	r0x06, F
; ;ic:11: 	if iTemp5 [k12 lr9:11 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{char fixed}[r0x08 ] == 0 goto _whilebreak_0($3)
	MOVF	r0x08, W
	BZ	_00117_DS_
; ;ic:12: 	iTemp7 [k14 lr12:13 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* data}[r0x08 r0x09 ] = iTemp1 [k4 lr4:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* data}{ sir@ _x_ftoa_buffer_1_25}[r0x04 r0x05 ] + iTemp6 [k13 lr5:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_len_1_26}[r0x06 ]
	MOVF	r0x06, W
	ADDWF	r0x04, W
	MOVWF	r0x08
	CLRF	WREG
	BTFSC	r0x06, 7
	SETF	WREG
	ADDWFC	r0x05, W
	MOVWF	r0x09
; ;ic:13: 	*(iTemp7 [k14 lr12:13 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* data}[r0x08 r0x09 ]) := 0x0 {const-unsigned-char literal}
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	CLRF	INDF0
; ;ic:14: 	 goto _whilecontinue_0($1)
	BRA	_00115_DS_
; ;ic:15:  _whilebreak_0($3) :
; ;ic:16: 	iTemp8 [k16 lr16:17 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat] = &[_x_ftoa_f_l_1_26 [k15 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long fixed}]
; ;ic:17: 	*(iTemp8 [k16 lr16:17 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-float near* fixed}[remat]) := iTemp0 [k2 lr3:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float fixed}{ sir@ _x_ftoa_num_1_25}[r0x00 r0x01 r0x02 r0x03 ]
_00117_DS_:
;	.line	151; stdlib/x_ftoa.c	f_l.f = num;
	MOVF	r0x00, W
	BANKSEL	_x_ftoa_f_l_1_26
	MOVWF	_x_ftoa_f_l_1_26, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(_x_ftoa_f_l_1_26 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(_x_ftoa_f_l_1_26 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_x_ftoa_f_l_1_26 + 3), B
; ;ic:18: 	iTemp10 [k19 lr18:28 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] = &[_x_ftoa_f_l_1_26 [k15 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct float_long fixed}]
; ;ic:19: 	iTemp12 [k22 lr19:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x00 r0x01 r0x02 r0x03 ] = @[iTemp10 [k19 lr18:28 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
;	.line	153; stdlib/x_ftoa.c	if((f_l.l & SIGNBIT) == SIGNBIT) {
	MOVFF	_x_ftoa_f_l_1_26, r0x00
	MOVFF	(_x_ftoa_f_l_1_26 + 1), r0x01
	MOVFF	(_x_ftoa_f_l_1_26 + 2), r0x02
	MOVFF	(_x_ftoa_f_l_1_26 + 3), r0x03
; ;ic:20: 	iTemp13 [k23 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x06 r0x08 r0x09 r0x0a ] = iTemp12 [k22 lr19:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x00 r0x01 r0x02 r0x03 ] & 0x80000000 {unsigned-long-int literal}
	CLRF	r0x06
	CLRF	r0x08
	CLRF	r0x09
	MOVLW	0x80
	ANDWF	r0x03, W
	MOVWF	r0x0a
; ;ic:21: 	iTemp14 [k24 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp13 [k23 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x06 r0x08 r0x09 r0x0a ] == 0x80000000 {unsigned-long-int literal}
	MOVF	r0x06, W
	BNZ	_00155_DS_
	MOVF	r0x08, W
	BNZ	_00155_DS_
	MOVF	r0x09, W
	BNZ	_00155_DS_
	MOVF	r0x0a, W
	XORLW	0x80
	BZ	_00156_DS_
_00155_DS_:
	BRA	_00119_DS_
; ;ic:22: 	if iTemp14 [k24 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_0($5)
; ;ic:23: 	iTemp20 [k32 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x00 r0x01 r0x02 r0x03 ] = iTemp12 [k22 lr19:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x00 r0x01 r0x02 r0x03 ] & 0x7fffffff {unsigned-long-int literal}
_00156_DS_:
;	.line	154; stdlib/x_ftoa.c	f_l.l &= ~SIGNBIT;
	BCF	r0x03, 7
; ;ic:24: 	*(iTemp10 [k19 lr18:28 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat]) := iTemp20 [k32 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x00 r0x01 r0x02 r0x03 ]
	MOVF	r0x00, W
	BANKSEL	_x_ftoa_f_l_1_26
	MOVWF	_x_ftoa_f_l_1_26, B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(_x_ftoa_f_l_1_26 + 1), B
	MOVF	r0x02, W
; removed redundant BANKSEL
	MOVWF	(_x_ftoa_f_l_1_26 + 2), B
	MOVF	r0x03, W
; removed redundant BANKSEL
	MOVWF	(_x_ftoa_f_l_1_26 + 3), B
; ;ic:25: 	*(iTemp1 [k4 lr4:74 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char near* data}{ sir@ _x_ftoa_buffer_1_25}[r0x04 r0x05 ]) := 0x2d {const-char literal}
;	.line	155; stdlib/x_ftoa.c	*buffer = '-';
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVLW	0x2d
	MOVWF	INDF0
; ;ic:26: 	iTemp1 [k4 lr4:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* data}{ sir@ _x_ftoa_buffer_1_25}[r0x04 r0x05 ] = iTemp1 [k4 lr4:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* data}{ sir@ _x_ftoa_buffer_1_25}[r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	156; stdlib/x_ftoa.c	buffer++;
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:27:  _iffalse_0($5) :
; ;ic:28: 	iTemp27 [k41 lr28:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}{ sir@ _x_ftoa_f_l_1_26} = @[iTemp10 [k19 lr18:28 so:0]{ ia1 a2p0 re0 rm1 nos0 ru0 dp0}{volatile-unsigned-long-int near* fixed}[remat] + 0x0 {const-unsigned-char literal}]
; ;ic:29: 	iTemp28 [k42 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x00 r0x01 r0x02 r0x03 ] = iTemp27 [k41 lr28:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}{ sir@ _x_ftoa_f_l_1_26} >> 0x17 {const-unsigned-char literal}
_00119_DS_:
	BANKSEL	(_x_ftoa_f_l_1_26 + 2)
;	.line	159; stdlib/x_ftoa.c	expn = EXCESS - EXP(f_l.l);	// - 24;
	RLCF	(_x_ftoa_f_l_1_26 + 2), W, B
; removed redundant BANKSEL
	RLCF	(_x_ftoa_f_l_1_26 + 3), W, B
; ;ic:30: 	iTemp29 [k43 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x00 r0x01 r0x02 r0x03 ] = iTemp28 [k42 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}[r0x00 r0x01 r0x02 r0x03 ] & 0xff {unsigned-long-int literal}
; ;ic:31: 	iTemp30 [k44 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x00 ] = (unsigned-char fixed)iTemp29 [k43 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x00 r0x01 r0x02 r0x03 ]
; ;ic:32: 	iTemp24 [k36 lr32:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_expn_1_26}[r0x00 ] = 0x7e {const-unsigned-char literal} - iTemp30 [k44 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x00 ]
	SUBLW	0x7e
	MOVWF	r0x00
; ;ic:33: 	iTemp36 [k52 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x01 r0x02 r0x03 r0x06 ] = iTemp27 [k41 lr28:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-long-int fixed}{ sir@ _x_ftoa_f_l_1_26} & 0x7fffff {unsigned-long-int literal}
; removed redundant BANKSEL
;	.line	161; stdlib/x_ftoa.c	ll = MANT(f_l.l);
	MOVF	_x_ftoa_f_l_1_26, W, B
	MOVWF	r0x01
; removed redundant BANKSEL
	MOVF	(_x_ftoa_f_l_1_26 + 1), W, B
	MOVWF	r0x02
	MOVLW	0x7f
; removed redundant BANKSEL
	ANDWF	(_x_ftoa_f_l_1_26 + 2), W, B
	MOVWF	r0x03
	CLRF	r0x06
; ;ic:34: 	iTemp32 [k46 lr34:71 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _x_ftoa_ll_1_26}[r0x01 r0x02 r0x03 r0x06 ] = iTemp36 [k52 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register}[r0x01 r0x02 r0x03 r0x06 ] | 0x800000 {unsigned-long-int literal}
	BSF	r0x03, 7
; ;ic:35: 	iTemp38 [k54 lr35:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _x_ftoa_li_1_26}[r0x08 r0x09 r0x0a r0x0b ] := 0x0 {unsigned-long-int literal}
;	.line	162; stdlib/x_ftoa.c	li = 0;
	CLRF	r0x08
	CLRF	r0x09
	CLRF	r0x0a
	CLRF	r0x0b
; ;ic:37:  _whilecontinue_1($11) :
; ;ic:38: 	if iTemp24 [k36 lr32:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_expn_1_26}[r0x00 ] == 0 goto _whilebreak_1($13)
_00125_DS_:
;	.line	164; stdlib/x_ftoa.c	while( expn ) {
	MOVF	r0x00, W
	BZ	_00127_DS_
; ;ic:39: 	iTemp39 [k56 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp24 [k36 lr32:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_expn_1_26}[r0x00 ] < 0x0 {const-char literal}
;	.line	165; stdlib/x_ftoa.c	if(expn < 0) {
	BSF	STATUS, 0
	BTFSS	r0x00, 7
	BCF	STATUS, 0
	BNC	_00123_DS_
; ;ic:40: 	if iTemp39 [k56 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_2($9)
; ;ic:41: 	iTemp38 [k54 lr35:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _x_ftoa_li_1_26}[r0x08 r0x09 r0x0a r0x0b ] = iTemp38 [k54 lr35:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _x_ftoa_li_1_26}[r0x08 r0x09 r0x0a r0x0b ] << 0x1 {const-unsigned-char literal}
;	.line	166; stdlib/x_ftoa.c	li <<= 1;
	MOVF	r0x08, W
	ADDWF	r0x08, F
	RLCF	r0x09, F
	RLCF	r0x0a, F
; #	RLCF	r0x0b, F
; #;;ic:42: 	iTemp41 [k58 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register} = iTemp32 [k46 lr34:71 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _x_ftoa_ll_1_26}[r0x01 r0x02 r0x03 r0x06 ] & 0x800000 {const-unsigned-long-int literal}
; #	BTFSS	r0x03, 7
; #	GOTO	_00121_DS_
; #;;ic:43: 	if iTemp41 [k58 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int register} == 0 goto _iffalse_1($7)
; #;;ic:44: 	iTemp38 [k54 lr35:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _x_ftoa_li_1_26}[r0x08 r0x09 r0x0a r0x0b ] = iTemp38 [k54 lr35:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _x_ftoa_li_1_26}[r0x08 r0x09 r0x0a r0x0b ] | 0x1 {unsigned-long-int literal}
; #	BSF	r0x08, 0
; #;;ic:45:  _iffalse_1($7) :
; #;;ic:46: 	iTemp32 [k46 lr34:71 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _x_ftoa_ll_1_26}[r0x01 r0x02 r0x03 r0x06 ] = iTemp32 [k46 lr34:71 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _x_ftoa_ll_1_26}[r0x01 r0x02 r0x03 r0x06 ] << 0x1 {const-unsigned-char literal}
; #	MOVF	r0x01, W
;	.line	167; stdlib/x_ftoa.c	if(ll & 0x00800000UL)li |= 1;
	RLCF	r0x0b, F
;	.line	168; stdlib/x_ftoa.c	ll <<= 1;
	BTFSC	r0x03, 7
	BSF	r0x08, 0
	MOVF	r0x01, W
	ADDWF	r0x01, F
	RLCF	r0x02, F
	RLCF	r0x03, F
	RLCF	r0x06, F
; ;ic:47: 	iTemp24 [k36 lr32:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_expn_1_26}[r0x00 ] = iTemp24 [k36 lr32:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_expn_1_26}[r0x00 ] + 0x1 {const-unsigned-char literal}
;	.line	169; stdlib/x_ftoa.c	expn++;
	INCF	r0x00, F
; ;ic:48: 	 goto _whilecontinue_1($11)
	BRA	_00125_DS_
; ;ic:49:  _iffalse_2($9) :
; ;ic:50: 	iTemp32 [k46 lr34:71 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _x_ftoa_ll_1_26}[r0x01 r0x02 r0x03 r0x06 ] = iTemp32 [k46 lr34:71 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _x_ftoa_ll_1_26}[r0x01 r0x02 r0x03 r0x06 ] >> 0x1 {const-unsigned-char literal}
_00123_DS_:
;	.line	171; stdlib/x_ftoa.c	ll >>= 1;
	BCF	STATUS, 0
	RRCF	r0x06, F
	RRCF	r0x03, F
	RRCF	r0x02, F
	RRCF	r0x01, F
; ;ic:51: 	iTemp24 [k36 lr32:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_expn_1_26}[r0x00 ] = iTemp24 [k36 lr32:52 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_expn_1_26}[r0x00 ] - 0x1 {const-unsigned-char literal}
;	.line	172; stdlib/x_ftoa.c	expn--;
	DECF	r0x00, F
; ;ic:52: 	 goto _whilecontinue_1($11)
	BRA	_00125_DS_
; ;ic:53:  _whilebreak_1($13) :
; ;ic:54: 	if iTemp38 [k54 lr35:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _x_ftoa_li_1_26}[r0x08 r0x09 r0x0a r0x0b ] == 0 goto _iffalse_3($15)
_00127_DS_:
;	.line	176; stdlib/x_ftoa.c	if(li)
	MOVF	r0x08, W
	IORWF	r0x09, W
	IORWF	r0x0a, W
	IORWF	r0x0b, W
	BZ	_00129_DS_
; ;ic:55: 	send iTemp38 [k54 lr35:56 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _x_ftoa_li_1_26}[r0x08 r0x09 r0x0a r0x0b ]{argreg = 1}
; ;ic:56: 	send iTemp1 [k4 lr4:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* data}{ sir@ _x_ftoa_buffer_1_25}[r0x04 r0x05 ]{argreg = 2}
; ;ic:57: 	iTemp4 [k10 lr57:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_len_1_26}[r0x00 ] = call _x_cnvint_wrap [k66 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-long-int fixed, char near* fixed) fixed}
;	.line	177; stdlib/x_ftoa.c	len = x_cnvint_wrap(li, buffer);
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x08, W
	MOVWF	POSTDEC1
	CALL	_x_cnvint_wrap
	MOVWF	r0x00
	MOVLW	0x06
	ADDWF	FSR1L, F
; ;ic:58: 	 goto _ifend_3($16)
	BRA	_00130_DS_
; ;ic:59:  _iffalse_3($15) :
; ;ic:60: 	*(iTemp1 [k4 lr4:74 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char near* data}{ sir@ _x_ftoa_buffer_1_25}[r0x04 r0x05 ]) := 0x30 {const-char literal}
_00129_DS_:
;	.line	179; stdlib/x_ftoa.c	*buffer = '0'; len = 1;
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVLW	0x30
	MOVWF	INDF0
; ;ic:61: 	iTemp4 [k10 lr57:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_len_1_26}[r0x00 ] := 0x1 {const-unsigned-char literal}
	MOVLW	0x01
	MOVWF	r0x00
; ;ic:62:  _ifend_3($16) :
; ;ic:63: 	iTemp1 [k4 lr4:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* data}{ sir@ _x_ftoa_buffer_1_25}[r0x04 r0x05 ] = iTemp1 [k4 lr4:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* data}{ sir@ _x_ftoa_buffer_1_25}[r0x04 r0x05 ] + iTemp4 [k10 lr57:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_len_1_26}[r0x00 ]
_00130_DS_:
;	.line	182; stdlib/x_ftoa.c	buffer += len;
	MOVF	r0x00, W
	ADDWF	r0x04, F
	CLRF	WREG
	BTFSC	r0x00, 7
	SETF	WREG
	ADDWFC	r0x05, F
; ;ic:64: 	if iTemp3 [k8 lr6:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _x_ftoa_prec_1_25}[r0x07 ] == 0 goto _iffalse_4($18)
;	.line	184; stdlib/x_ftoa.c	if(prec) {
	MOVF	r0x07, W
	BZ	_00132_DS_
; ;ic:65: 	*(iTemp1 [k4 lr4:74 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char near* data}{ sir@ _x_ftoa_buffer_1_25}[r0x04 r0x05 ]) := 0x2e {const-char literal}
;	.line	185; stdlib/x_ftoa.c	*buffer = '.'; len++;
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVLW	0x2e
	MOVWF	INDF0
; ;ic:66: 	iTemp4 [k10 lr57:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_len_1_26}[r0x00 ] = iTemp4 [k10 lr57:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_len_1_26}[r0x00 ] + 0x1 {const-unsigned-char literal}
	INCF	r0x00, F
; ;ic:67: 	iTemp1 [k4 lr4:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* data}{ sir@ _x_ftoa_buffer_1_25}[r0x04 r0x05 ] = iTemp1 [k4 lr4:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* data}{ sir@ _x_ftoa_buffer_1_25}[r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	186; stdlib/x_ftoa.c	buffer++;
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:68: 	iTemp57 [k78 lr68:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x08 ] = 0x18 {const-unsigned-char literal} - iTemp3 [k8 lr6:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _x_ftoa_prec_1_25}[r0x07 ]
;	.line	188; stdlib/x_ftoa.c	len += x_cnvfrac_wrap(ll, buffer, 24-prec);
	MOVF	r0x07, W
	SUBLW	0x18
; #	MOVWF	r0x08
; #;;ic:69: 	send iTemp32 [k46 lr34:71 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _x_ftoa_ll_1_26}[r0x01 r0x02 r0x03 r0x06 ]{argreg = 1}
; #;;ic:70: 	send iTemp1 [k4 lr4:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* data}{ sir@ _x_ftoa_buffer_1_25}[r0x04 r0x05 ]{argreg = 2}
; #;;ic:71: 	send iTemp57 [k78 lr68:71 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x08 ]{argreg = 3}
; #;;ic:72: 	iTemp58 [k82 lr72:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x01 ] = call _x_cnvfrac_wrap [k77 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-long-int fixed, char near* fixed, unsigned-char fixed) fixed}
; #	MOVF	r0x08, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	_x_cnvfrac_wrap
	MOVWF	r0x01
	MOVLW	0x07
	ADDWF	FSR1L, F
; ;ic:73: 	iTemp4 [k10 lr57:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_len_1_26}[r0x00 ] = iTemp4 [k10 lr57:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_len_1_26}[r0x00 ] + iTemp58 [k82 lr72:73 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x01 ]
	MOVF	r0x01, W
	ADDWF	r0x00, F
; ;ic:74: 	iTemp60 [k84 lr74:75 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* data}[r0x04 r0x05 ] = iTemp1 [k4 lr4:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* data}{ sir@ _x_ftoa_buffer_1_25}[r0x04 r0x05 ] + iTemp3 [k8 lr6:74 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _x_ftoa_prec_1_25}[r0x07 ]
;	.line	189; stdlib/x_ftoa.c	buffer[ prec ] = '\0';
	MOVF	r0x07, W
	ADDWF	r0x04, F
	CLRF	WREG
	ADDWFC	r0x05, F
; ;ic:75: 	*(iTemp60 [k84 lr74:75 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* data}[r0x04 r0x05 ]) := 0x0 {const-char literal}
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	CLRF	INDF0
; ;ic:76:  _iffalse_4($18) :
; ;ic:77: 	ret iTemp4 [k10 lr57:77 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _x_ftoa_len_1_26}[r0x00 ]
_00132_DS_:
;	.line	192; stdlib/x_ftoa.c	return (len);
	MOVF	r0x00, W
; ;ic:78:  _return($19) :
; ;ic:79: 	eproc _x_ftoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( float fixed, char near* data, unsigned-char fixed, unsigned-char fixed) fixed}
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

; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _x_cnvfrac_wrap [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-long-int fixed, char near* fixed, unsigned-char fixed) fixed}
S_x_ftoa__x_cnvfrac_wrap	code
_x_cnvfrac_wrap:
;	.line	90; stdlib/x_ftoa.c	char x_cnvfrac_wrap(unsigned long num, __data char *buffer, unsigned char prec)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
; ;ic:3: inline
	movff 0x00, _POSTDEC1
	movff 0x01, _POSTDEC1
	movff 0x02, _POSTDEC1
	movff 0x03, _POSTDEC1
	movff 0x04, _POSTDEC1
	movlw 2
	movff _PLUSW2, 0x00
	movlw 3
	movff _PLUSW2, 0x01
	movlw 4
	movff _PLUSW2, 0x02
	movlw 5
	movff _PLUSW2, 0x03
	movlw 6
	movff _PLUSW2, _FSR0L
	movlw 7
	movff _PLUSW2, _FSR0H
	movlw 8
	movff _PLUSW2, 0x04
	call _convert_frac
	movff _PREINC1, 0x04
	movff _PREINC1, 0x03
	movff _PREINC1, 0x02
	movff _PREINC1, 0x01
	movff _PREINC1, 0x00
	
; ;ic:4:  _return($1) :
; ;ic:5: 	eproc _x_cnvfrac_wrap [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-long-int fixed, char near* fixed, unsigned-char fixed) fixed}
	MOVFF	PREINC1, FSR2L
	RETURN	

; ; Starting pCode block
; ;ic:1:  _entry($2) :
; ;ic:2: 	proc _x_cnvint_wrap [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-long-int fixed, char near* fixed) fixed}
S_x_ftoa__x_cnvint_wrap	code
_x_cnvint_wrap:
;	.line	57; stdlib/x_ftoa.c	char x_cnvint_wrap(unsigned long num, __data char *buffer)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
; ;ic:3: inline
	movff 0x00, _POSTDEC1
	movff 0x01, _POSTDEC1
	movff 0x02, _POSTDEC1
	movff 0x03, _POSTDEC1
	movlw 2
	movff _PLUSW2, 0x00
	movlw 3
	movff _PLUSW2, 0x01
	movlw 4
	movff _PLUSW2, 0x02
	movlw 5
	movff _PLUSW2, 0x03
	movlw 6
	movff _PLUSW2, _FSR0L
	movlw 7
	movff _PLUSW2, _FSR0H
	call _convert_int
	movff _PREINC1, 0x03
	movff _PREINC1, 0x02
	movff _PREINC1, 0x01
	movff _PREINC1, 0x00
	
; ;ic:4:  _return($1) :
; ;ic:5: 	eproc _x_cnvint_wrap [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-long-int fixed, char near* fixed) fixed}
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	  672 (0x02a0) bytes ( 0.51%)
;           	  336 (0x0150) words
; udata size:	    4 (0x0004) bytes ( 0.31%)
; access size:	   12 (0x000c) bytes


	end

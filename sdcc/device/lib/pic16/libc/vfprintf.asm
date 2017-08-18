;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:21:44 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_vfprintf

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1
	extern	__gptrget3
	extern	__gptrget4
	extern	__gptrget2
	extern	__gptrput1
	extern	_stdin
	extern	_stdout
	extern	_islower
	extern	___stream_putchar
	extern	_ultoa
	extern	_ltoa

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
r0x13	res	1
r0x14	res	1
r0x15	res	1
r0x16	res	1
r0x17	res	1
r0x18	res	1
r0x19	res	1
r0x1a	res	1
r0x1b	res	1
r0x1c	res	1
r0x1d	res	1
r0x1e	res	1

udata_vfprintf_0	udata
_vfprintf_stringbuffer_1_41	res	3

udata_vfprintf_1	udata
_vfprintf_buffer_1_41	res	13

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($115) :
; ;ic:2: 	proc _vfprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* generic* fixed, const-char generic* fixed, unsigned-char generic* fixed) fixed}
S_vfprintf__vfprintf	code
_vfprintf:
;	.line	157; stdio/vfprintf.c	vfprintf (FILE * stream, const char *fmt, va_list ap)
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
	MOVFF	r0x13, POSTDEC1
	MOVFF	r0x14, POSTDEC1
	MOVFF	r0x15, POSTDEC1
	MOVFF	r0x16, POSTDEC1
	MOVFF	r0x17, POSTDEC1
	MOVFF	r0x18, POSTDEC1
	MOVFF	r0x19, POSTDEC1
	MOVFF	r0x1a, POSTDEC1
	MOVFF	r0x1b, POSTDEC1
	MOVFF	r0x1c, POSTDEC1
	MOVFF	r0x1d, POSTDEC1
	MOVFF	r0x1e, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* generic* fixed}{ sir@ _vfprintf_stream_1_40}[r0x00 r0x01 r0x02 ] = recv _vfprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* generic* fixed, const-char generic* fixed, unsigned-char generic* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_fmt_1_40}[r0x03 r0x04 r0x05 ] = recv _vfprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* generic* fixed, const-char generic* fixed, unsigned-char generic* fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}{ sir@ _vfprintf_ap_1_40}[r0x06 r0x07 r0x08 ] = recv _vfprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* generic* fixed, const-char generic* fixed, unsigned-char generic* fixed) fixed}
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
	MOVLW	0x0a
	MOVFF	PLUSW2, r0x08
; ;ic:6: 	iTemp3 [k8 lr6:358 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ] := 0x0 {int literal}
;	.line	181; stdio/vfprintf.c	int count = 0;
	CLRF	r0x09
	CLRF	r0x0a
; ;ic:7: 	iTemp4 [k10 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x0b r0x0c r0x0d r0x0e ] = (unsigned-long-int fixed)iTemp0 [k2 lr3:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* generic* fixed}{ sir@ _vfprintf_stream_1_40}[r0x00 r0x01 r0x02 ]
;	.line	188; stdio/vfprintf.c	if (0x80 == (unsigned char)(((unsigned long)stream) >> 16)) {
	MOVFF	r0x02, r0x0d
; ;ic:8: 	iTemp5 [k11 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x0b r0x0c r0x0d r0x0e ] = iTemp4 [k10 lr7:8 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x0b r0x0c r0x0d r0x0e ] >> 0x10 {const-unsigned-char literal}
	MOVF	r0x0d, W
; ;ic:9: 	iTemp6 [k12 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x0b ] = (unsigned-char fixed)iTemp5 [k11 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x0b r0x0c r0x0d r0x0e ]
; ;ic:10: 	iTemp7 [k13 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = 0x80 {const-unsigned-char literal} == iTemp6 [k12 lr9:10 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x0b ]
	XORLW	0x80
	BNZ	_00215_DS_
; ;ic:11: 	if iTemp7 [k13 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_0($2)
; ;ic:12: 	_vfprintf_stringbuffer_1_41 [k14 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed} = (char generic* fixed)iTemp0 [k2 lr3:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* generic* fixed}{ sir@ _vfprintf_stream_1_40}[r0x00 r0x01 r0x02 ]
;	.line	190; stdio/vfprintf.c	stringbuffer = (char *) stream;
	MOVF	r0x02, W
	BANKSEL	(_vfprintf_stringbuffer_1_41 + 2)
	MOVWF	(_vfprintf_stringbuffer_1_41 + 2), B
	MOVF	r0x01, W
; removed redundant BANKSEL
	MOVWF	(_vfprintf_stringbuffer_1_41 + 1), B
	MOVF	r0x00, W
; removed redundant BANKSEL
	MOVWF	_vfprintf_stringbuffer_1_41, B
; ;ic:13: 	iTemp9 [k16 lr13:14 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char generic* near* fixed}[remat] = &[_vfprintf_stringbuffer_1_41 [k14 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}]
; ;ic:14: 	iTemp0 [k2 lr3:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* generic* fixed}{ sir@ _vfprintf_stream_1_40}[r0x00 r0x01 r0x02 ] = (char generic* generic* fixed)iTemp9 [k16 lr13:14 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char generic* near* fixed}[remat]
;	.line	191; stdio/vfprintf.c	stream = (FILE *) &stringbuffer;
	MOVLW	HIGH(_vfprintf_stringbuffer_1_41)
	MOVWF	r0x01
	MOVLW	LOW(_vfprintf_stringbuffer_1_41)
	MOVWF	r0x00
	MOVLW	0x80
	MOVWF	r0x02
; ;ic:15:  _iffalse_0($2) :
; ;ic:16: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] := iTemp1 [k4 lr4:16 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_fmt_1_40}[r0x03 r0x04 r0x05 ]
; ;ic:17: 	iTemp166 [k194 lr17:18 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* fixed}[remat] = &[_vfprintf_buffer_1_41 [k193 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char [13d] fixed}]
; ;ic:18: 	iTemp167 [k195 lr18:356 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* fixed}[remat] = iTemp166 [k194 lr17:18 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* fixed}[remat] + 0x1 {const-unsigned-char literal}
; ;ic:19: 	iTemp138 [k164 lr19:356 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{const-char code* fixed}[remat] = &[__str_0 [k163 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char [11d] code}]
; ;ic:21:  _whilecontinue_0($111) :
; ;ic:22: 	iTemp13 [k21 lr22:348 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0b ] = @[iTemp11 [k18 lr16:356 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00215_DS_:
;	.line	203; stdio/vfprintf.c	while (*ch) //for (; *fmt ; fmt++ )
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x0b
; ;ic:23: 	if iTemp13 [k21 lr22:348 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0b ] == 0 goto _whilebreak_0($113)
	MOVF	r0x0b, W
	BTFSC	STATUS, 2
	GOTO	_00217_DS_
; ;ic:24: 	iTemp16 [k24 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp13 [k21 lr22:348 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0b ] == 0x25 {const-char literal}
;	.line	205; stdio/vfprintf.c	if (*ch == '%')
	MOVF	r0x0b, W
	XORLW	0x25
	BZ	_00338_DS_
	GOTO	_00213_DS_
; ;ic:25: 	if iTemp16 [k24 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_32($109)
; ;ic:26: 	iTemp17 [k25 lr26:201 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_flong_1_41}[r0x0c ] := 0x0 {const-unsigned-char literal}
_00338_DS_:
;	.line	207; stdio/vfprintf.c	flong = 0;
	CLRF	r0x0c
; ;ic:27: 	iTemp18 [k27 lr27:186 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_fstr_1_41}[r0x0d ] := 0x0 {const-unsigned-char literal}
;	.line	208; stdio/vfprintf.c	fstr = 0;
	CLRF	r0x0d
; ;ic:28: 	iTemp19 [k29 lr28:209 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_fchar_1_41}[r0x0e ] := 0x0 {const-unsigned-char literal}
;	.line	209; stdio/vfprintf.c	fchar = 0;
	CLRF	r0x0e
; ;ic:29: 	iTemp20 [k31 lr29:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_ffloat_1_41}[r0x0f ] := 0x0 {const-unsigned-char literal}
;	.line	211; stdio/vfprintf.c	ffloat = 0;
	CLRF	r0x0f
; ;ic:30: 	iTemp21 [k33 lr30:240 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_nosign_1_41}[r0x10 ] := 0x0 {const-unsigned-char literal}
;	.line	213; stdio/vfprintf.c	nosign = 0;
	CLRF	r0x10
; ;ic:31: 	iTemp22 [k35 lr31:323 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_radix_1_41}[r0x11 ] := 0xa {const-unsigned-char literal}
;	.line	214; stdio/vfprintf.c	radix = 10;
	MOVLW	0x0a
	MOVWF	r0x11
; ;ic:32: 	iTemp23 [k37 lr32:330 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_upcase_1_41}[r0x12 ] := 0x0 {const-unsigned-char literal}
;	.line	215; stdio/vfprintf.c	upcase = 0;
	CLRF	r0x12
; ;ic:33: 	iTemp24 [k39 lr33:297 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x13 ] := 0x0 {const-unsigned-char literal}
;	.line	217; stdio/vfprintf.c	fieldwidth = 0;
	CLRF	r0x13
; ;ic:34: 	iTemp25 [k41 lr34:333 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_lalign_1_41}[r0x14 ] := 0x0 {const-unsigned-char literal}
;	.line	218; stdio/vfprintf.c	lalign = 0;
	CLRF	r0x14
; ;ic:35: 	iTemp26 [k43 lr35:289 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _vfprintf_padchar_1_41}[r0x15 ] := 0x20 {const-char literal}
;	.line	219; stdio/vfprintf.c	padchar = ' ';
	MOVLW	0x20
	MOVWF	r0x15
; ;ic:36: 	iTemp27 [k45 lr36:294 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_precision_1_41}[r0x16 ] := 0xffffffff {const-char literal}
;	.line	223; stdio/vfprintf.c	precision = -1;
	SETF	r0x16
; ;ic:37: 	iTemp28 [k47 lr37:252 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_printsign_1_41}[r0x17 ] := 0x0 {const-unsigned-char literal}
;	.line	226; stdio/vfprintf.c	printsign = 0;
	CLRF	r0x17
; ;ic:38: 	iTemp29 [k49 lr38:257 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _vfprintf_positivechar_1_41}[r0x18 ] := 0x2b {const-char literal}
;	.line	227; stdio/vfprintf.c	positivechar = '+';
	MOVLW	0x2b
	MOVWF	r0x18
; ;ic:39: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	229; stdio/vfprintf.c	++ch;
	INCF	r0x03, F
	BNC	_00339_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:40: 	iTemp32 [k53 lr40:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] = @[iTemp11 [k18 lr16:356 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00339_DS_:
;	.line	231; stdio/vfprintf.c	if (*ch == '%')
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x19
; #;;ic:41: 	iTemp33 [k54 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp32 [k53 lr40:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] == 0x25 {const-char literal}
; #	MOVF	r0x19, W
	MOVWF	r0x19
	XORLW	0x25
	BNZ	_00108_DS_
; ;ic:42: 	if iTemp33 [k54 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_1($4)
; ;ic:43: 	send iTemp0 [k2 lr3:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* generic* fixed}{ sir@ _vfprintf_stream_1_40}[r0x00 r0x01 r0x02 ]{argreg = 1}
; ;ic:44: 	send iTemp32 [k53 lr40:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ]{argreg = 2}
; ;ic:45: 	iTemp36 [k60 lr45:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call ___stream_putchar [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char generic* generic* fixed, char fixed) fixed}
;	.line	233; stdio/vfprintf.c	__stream_putchar (stream, *ch);
	MOVF	r0x19, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___stream_putchar
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:46: 	iTemp3 [k8 lr6:358 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ] = iTemp3 [k8 lr6:358 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ] + 0x1 {const-unsigned-char literal}
;	.line	234; stdio/vfprintf.c	++count;
	INFSNZ	r0x09, F
	INCF	r0x0a, F
; ;ic:47: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	235; stdio/vfprintf.c	++ch;
	INCF	r0x03, F
	BNC	_00342_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:48: 	 goto _whilecontinue_0($111)
_00342_DS_:
;	.line	236; stdio/vfprintf.c	continue;
	BRA	_00215_DS_
; ;ic:49:  _iffalse_1($4) :
; ;ic:50: 	iTemp41 [k65 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp32 [k53 lr40:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] == 0x30 {const-char literal}
_00108_DS_:
;	.line	240; stdio/vfprintf.c	if (*ch == '0')
	MOVF	r0x19, W
	XORLW	0x30
	BNZ	_00110_DS_
; ;ic:51: 	if iTemp41 [k65 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_2($6)
; ;ic:52: 	iTemp26 [k43 lr35:289 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _vfprintf_padchar_1_41}[r0x15 ] := 0x30 {const-char literal}
;	.line	242; stdio/vfprintf.c	padchar = '0';
	MOVLW	0x30
	MOVWF	r0x15
; ;ic:53: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	243; stdio/vfprintf.c	++ch;
	INCF	r0x03, F
	BNC	_00110_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:54:  _iffalse_2($6) :
; ;ic:55: 	iTemp44 [k68 lr55:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] = @[iTemp11 [k18 lr16:356 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00345_DS_:
_00110_DS_:
;	.line	246; stdio/vfprintf.c	if (*ch == '-')
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x19
; #;;ic:56: 	iTemp45 [k69 lr56:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp44 [k68 lr55:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] == 0x2d {const-char literal}
; #	MOVF	r0x19, W
	XORLW	0x2d
	BNZ	_00112_DS_
; ;ic:57: 	if iTemp45 [k69 lr56:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_3($8)
; ;ic:58: 	iTemp25 [k41 lr34:333 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_lalign_1_41}[r0x14 ] := 0x1 {const-unsigned-char literal}
;	.line	248; stdio/vfprintf.c	lalign = 1;
	MOVLW	0x01
	MOVWF	r0x14
; ;ic:59: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	249; stdio/vfprintf.c	++ch;
	INCF	r0x03, F
	BNC	_00112_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:60:  _iffalse_3($8) :
; ;ic:61: 	iTemp48 [k72 lr61:62 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] = @[iTemp11 [k18 lr16:356 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00348_DS_:
_00112_DS_:
;	.line	253; stdio/vfprintf.c	if (*ch == ' ')
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x19
; #;;ic:62: 	iTemp49 [k73 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp48 [k72 lr61:62 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] == 0x20 {const-char literal}
; #	MOVF	r0x19, W
	XORLW	0x20
	BNZ	_00114_DS_
; ;ic:63: 	if iTemp49 [k73 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_4($10)
; ;ic:64: 	iTemp28 [k47 lr37:252 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_printsign_1_41}[r0x17 ] := 0x1 {const-unsigned-char literal}
;	.line	255; stdio/vfprintf.c	printsign = 1;
	MOVLW	0x01
	MOVWF	r0x17
; ;ic:65: 	iTemp29 [k49 lr38:257 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _vfprintf_positivechar_1_41}[r0x18 ] := 0x20 {const-char literal}
;	.line	256; stdio/vfprintf.c	positivechar = ' ';
	MOVLW	0x20
	MOVWF	r0x18
; ;ic:66: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	257; stdio/vfprintf.c	++ch;
	INCF	r0x03, F
	BNC	_00114_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:67:  _iffalse_4($10) :
; ;ic:68: 	iTemp52 [k76 lr68:69 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] = @[iTemp11 [k18 lr16:356 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00351_DS_:
_00114_DS_:
;	.line	260; stdio/vfprintf.c	if (*ch == '+')
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x19
; #;;ic:69: 	iTemp53 [k77 lr69:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp52 [k76 lr68:69 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] == 0x2b {const-char literal}
; #	MOVF	r0x19, W
	XORLW	0x2b
	BNZ	_00116_DS_
; ;ic:70: 	if iTemp53 [k77 lr69:70 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_5($12)
; ;ic:71: 	iTemp28 [k47 lr37:252 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_printsign_1_41}[r0x17 ] := 0x1 {const-unsigned-char literal}
;	.line	262; stdio/vfprintf.c	printsign = 1;
	MOVLW	0x01
	MOVWF	r0x17
; ;ic:72: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	263; stdio/vfprintf.c	++ch;
	INCF	r0x03, F
	BNC	_00116_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:73:  _iffalse_5($12) :
; ;ic:74: 	iTemp56 [k80 lr74:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] = @[iTemp11 [k18 lr16:356 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00354_DS_:
_00116_DS_:
;	.line	268; stdio/vfprintf.c	if ((*ch >= '1') && (*ch <= '9'))
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x19
; #;;ic:75: 	iTemp57 [k81 lr75:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp56 [k80 lr74:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] < 0x31 {const-char literal}
; #	MOVF	r0x19, W
	MOVWF	r0x19
	ADDLW	0x80
	ADDLW	0x4f
	BNC	_00122_DS_
; ;ic:76: 	if iTemp57 [k81 lr75:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _iffalse_6($18)
; ;ic:77: 	iTemp60 [k84 lr77:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp56 [k80 lr74:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] > 0x39 {const-char literal}
	MOVF	r0x19, W
	ADDLW	0x80
	ADDLW	0x46
	BC	_00122_DS_
; ;ic:78: 	if iTemp60 [k84 lr77:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _iffalse_6($18)
; ;ic:79: 	iTemp73 [k97 lr79:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* fixed}[r0x19 r0x1a r0x1b ] := iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ]
;	.line	270; stdio/vfprintf.c	while ((*ch >= '0') && (*ch <= '9'))
	MOVFF	r0x03, r0x19
	MOVFF	r0x04, r0x1a
	MOVFF	r0x05, r0x1b
; ;ic:81:  _whilecontinue_1($14) :
; ;ic:82: 	iTemp62 [k86 lr82:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1c ] = @[iTemp73 [k97 lr79:95 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* fixed}[r0x19 r0x1a r0x1b ] + 0x0 {const-unsigned-char literal}]
_00118_DS_:
	MOVFF	r0x19, FSR0L
	MOVFF	r0x1a, PRODL
	MOVF	r0x1b, W
	CALL	__gptrget1
; #	MOVWF	r0x1c
; #;;ic:83: 	iTemp63 [k87 lr83:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp62 [k86 lr82:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1c ] < 0x30 {const-char literal}
; #	MOVF	r0x1c, W
	MOVWF	r0x1c
	ADDLW	0x80
	ADDLW	0x50
	BNC	_00274_DS_
; ;ic:84: 	if iTemp63 [k87 lr83:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto loopExitLbl9($170)
; ;ic:85: 	iTemp66 [k90 lr85:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp62 [k86 lr82:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1c ] > 0x39 {const-char literal}
	MOVF	r0x1c, W
	ADDLW	0x80
	ADDLW	0x46
	BC	_00274_DS_
; ;ic:86: 	if iTemp66 [k90 lr85:86 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto loopExitLbl9($170)
; ;ic:87: 	iTemp67 [k91 lr87:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x1d ] = iTemp24 [k39 lr33:297 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x13 ] * 0xa {const-unsigned-char literal}
; ;multiply lit val:0x0a by variable r0x13 and store in r0x1d
;	.line	272; stdio/vfprintf.c	fieldwidth = 10 * fieldwidth + (*ch) - '0';
	MOVF	r0x13, W
	MULLW	0x0a
	MOVFF	PRODL, r0x1d
; ;ic:88: 	iTemp70 [k94 lr88:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1d ] = (const-char register)iTemp67 [k91 lr87:88 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x1d ]
; ;ic:89: 	iTemp71 [k95 lr89:90 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1c ] = iTemp70 [k94 lr88:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1d ] + iTemp62 [k86 lr82:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1c ]
	MOVF	r0x1d, W
	ADDWF	r0x1c, F
; ;ic:90: 	iTemp24 [k39 lr33:297 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x13 ] = iTemp71 [k95 lr89:90 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1c ] - 0x30 {const-char literal}
	MOVLW	0xd0
	ADDWF	r0x1c, W
	MOVWF	r0x13
; ;ic:91: 	iTemp73 [k97 lr79:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* fixed}[r0x19 r0x1a r0x1b ] = iTemp73 [k97 lr79:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* fixed}[r0x19 r0x1a r0x1b ] + 0x1 {const-unsigned-char literal}
;	.line	273; stdio/vfprintf.c	++ch;
	INCF	r0x19, F
	BNC	_00359_DS_
	INFSNZ	r0x1a, F
	INCF	r0x1b, F
; ;ic:92: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] := iTemp73 [k97 lr79:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* fixed}[r0x19 r0x1a r0x1b ]
; ;ic:93: 	 goto _whilecontinue_1($14)
_00359_DS_:
	BRA	_00118_DS_
; ;ic:94:  loopExitLbl9($170) :
; ;ic:95: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] := iTemp73 [k97 lr79:95 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* fixed}[r0x19 r0x1a r0x1b ]
_00274_DS_:
	MOVFF	r0x19, r0x03
	MOVFF	r0x1a, r0x04
	MOVFF	r0x1b, r0x05
; ;ic:96:  _iffalse_6($18) :
; ;ic:97: 	iTemp75 [k99 lr97:98 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] = @[iTemp11 [k18 lr16:356 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00122_DS_:
;	.line	279; stdio/vfprintf.c	if (*ch == '.')
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x19
; #;;ic:98: 	iTemp76 [k100 lr98:99 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp75 [k99 lr97:98 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] == 0x2e {const-char literal}
; #	MOVF	r0x19, W
	XORLW	0x2e
	BNZ	_00129_DS_
; ;ic:99: 	if iTemp76 [k100 lr98:99 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_7($25)
; ;ic:100: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	281; stdio/vfprintf.c	++ch;
	INCF	r0x03, F
	BNC	_00362_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:101: 	iTemp27 [k45 lr36:294 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_precision_1_41}[r0x16 ] := 0x0 {const-unsigned-char literal}
_00362_DS_:
;	.line	282; stdio/vfprintf.c	precision = 0;
	CLRF	r0x16
; ;ic:102: 	iTemp90 [k114 lr102:118 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* fixed}[r0x19 r0x1a r0x1b ] := iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ]
;	.line	283; stdio/vfprintf.c	while ((*ch >= '0') && (*ch <= '9'))
	MOVFF	r0x03, r0x19
	MOVFF	r0x04, r0x1a
	MOVFF	r0x05, r0x1b
; ;ic:104:  _whilecontinue_2($21) :
; ;ic:105: 	iTemp79 [k103 lr105:112 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1c ] = @[iTemp90 [k114 lr102:118 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* fixed}[r0x19 r0x1a r0x1b ] + 0x0 {const-unsigned-char literal}]
_00125_DS_:
	MOVFF	r0x19, FSR0L
	MOVFF	r0x1a, PRODL
	MOVF	r0x1b, W
	CALL	__gptrget1
; #	MOVWF	r0x1c
; #;;ic:106: 	iTemp80 [k104 lr106:107 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp79 [k103 lr105:112 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1c ] < 0x30 {const-char literal}
; #	MOVF	r0x1c, W
	MOVWF	r0x1c
	ADDLW	0x80
	ADDLW	0x50
	BNC	_00275_DS_
; ;ic:107: 	if iTemp80 [k104 lr106:107 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto loopExitLbl10($171)
; ;ic:108: 	iTemp83 [k107 lr108:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp79 [k103 lr105:112 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1c ] > 0x39 {const-char literal}
	MOVF	r0x1c, W
	ADDLW	0x80
	ADDLW	0x46
	BC	_00275_DS_
; ;ic:109: 	if iTemp83 [k107 lr108:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto loopExitLbl10($171)
; ;ic:110: 	iTemp84 [k108 lr110:111 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x1d ] = iTemp27 [k45 lr36:294 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_precision_1_41}[r0x16 ] * 0xa {const-unsigned-char literal}
; ;multiply lit val:0x0a by variable r0x16 and store in r0x1d
;	.line	285; stdio/vfprintf.c	precision = 10 * precision + (*ch) - '0';
	MOVF	r0x16, W
	MULLW	0x0a
	MOVFF	PRODL, r0x1d
; ;ic:111: 	iTemp87 [k111 lr111:112 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1d ] = (const-char register)iTemp84 [k108 lr110:111 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x1d ]
; ;ic:112: 	iTemp88 [k112 lr112:113 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1c ] = iTemp87 [k111 lr111:112 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1d ] + iTemp79 [k103 lr105:112 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1c ]
	MOVF	r0x1d, W
	ADDWF	r0x1c, F
; ;ic:113: 	iTemp27 [k45 lr36:294 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_precision_1_41}[r0x16 ] = iTemp88 [k112 lr112:113 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x1c ] - 0x30 {const-char literal}
	MOVLW	0xd0
	ADDWF	r0x1c, W
	MOVWF	r0x16
; ;ic:114: 	iTemp90 [k114 lr102:118 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* fixed}[r0x19 r0x1a r0x1b ] = iTemp90 [k114 lr102:118 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* fixed}[r0x19 r0x1a r0x1b ] + 0x1 {const-unsigned-char literal}
;	.line	286; stdio/vfprintf.c	++ch;
	INCF	r0x19, F
	BNC	_00365_DS_
	INFSNZ	r0x1a, F
	INCF	r0x1b, F
; ;ic:115: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] := iTemp90 [k114 lr102:118 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* fixed}[r0x19 r0x1a r0x1b ]
; ;ic:116: 	 goto _whilecontinue_2($21)
_00365_DS_:
	BRA	_00125_DS_
; ;ic:117:  loopExitLbl10($171) :
; ;ic:118: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] := iTemp90 [k114 lr102:118 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* fixed}[r0x19 r0x1a r0x1b ]
_00275_DS_:
	MOVFF	r0x19, r0x03
	MOVFF	r0x1a, r0x04
	MOVFF	r0x1b, r0x05
; ;ic:119:  _iffalse_7($25) :
; ;ic:120: 	iTemp92 [k116 lr120:127 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] = @[iTemp11 [k18 lr16:356 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00129_DS_:
;	.line	291; stdio/vfprintf.c	if (*ch == 'l')
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x19
; #;;ic:121: 	iTemp93 [k117 lr121:122 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp92 [k116 lr120:127 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] == 0x6c {const-char literal}
; #	MOVF	r0x19, W
	MOVWF	r0x19
	XORLW	0x6c
	BNZ	_00133_DS_
; ;ic:122: 	if iTemp93 [k117 lr121:122 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_9($29)
; ;ic:123: 	iTemp17 [k25 lr26:201 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_flong_1_41}[r0x0c ] := 0x1 {const-unsigned-char literal}
;	.line	293; stdio/vfprintf.c	flong = 1;
	MOVLW	0x01
	MOVWF	r0x0c
; ;ic:124: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	294; stdio/vfprintf.c	++ch;
	INCF	r0x03, F
	BNC	_00368_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:125: 	 goto _ifend_9($30)
_00368_DS_:
	BRA	_00134_DS_
; ;ic:126:  _iffalse_9($29) :
; ;ic:127: 	iTemp97 [k121 lr127:128 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp92 [k116 lr120:127 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] == 0x68 {const-char literal}
_00133_DS_:
;	.line	296; stdio/vfprintf.c	else if (*ch == 'h')
	MOVF	r0x19, W
	XORLW	0x68
	BNZ	_00134_DS_
; ;ic:128: 	if iTemp97 [k121 lr127:128 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _ifend_9($30)
; ;ic:129: 	iTemp19 [k29 lr28:209 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_fchar_1_41}[r0x0e ] := 0x1 {const-unsigned-char literal}
;	.line	298; stdio/vfprintf.c	fchar = 1;
	MOVLW	0x01
	MOVWF	r0x0e
; ;ic:130: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	299; stdio/vfprintf.c	++ch;
	INCF	r0x03, F
	BNC	_00134_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:131:  _ifend_9($30) :
; ;ic:132: 	iTemp100 [k124 lr132:133 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] = @[iTemp11 [k18 lr16:356 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00371_DS_:
_00134_DS_:
;	.line	302; stdio/vfprintf.c	if (*ch == 'u')
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x19
; #;;ic:133: 	iTemp101 [k125 lr133:134 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp100 [k124 lr132:133 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] == 0x75 {const-char literal}
; #	MOVF	r0x19, W
	XORLW	0x75
	BNZ	_00136_DS_
; ;ic:134: 	if iTemp101 [k125 lr133:134 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_10($32)
; ;ic:135: 	iTemp21 [k33 lr30:240 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_nosign_1_41}[r0x10 ] := 0x1 {const-unsigned-char literal}
;	.line	304; stdio/vfprintf.c	nosign = 1;
	MOVLW	0x01
	MOVWF	r0x10
; ;ic:136: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	305; stdio/vfprintf.c	++ch;
	INCF	r0x03, F
	BNC	_00136_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:137:  _iffalse_10($32) :
; ;ic:138: 	iTemp104 [k128 lr138:180 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] = @[iTemp11 [k18 lr16:356 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00374_DS_:
_00136_DS_:
;	.line	308; stdio/vfprintf.c	if (*ch == 's')
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x19
; #;;ic:139: 	iTemp105 [k129 lr139:140 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp104 [k128 lr138:180 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] == 0x73 {const-char literal}
; #	MOVF	r0x19, W
	MOVWF	r0x19
	XORLW	0x73
	BNZ	_00160_DS_
; ;ic:140: 	if iTemp105 [k129 lr139:140 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_18($56)
; ;ic:141: 	iTemp18 [k27 lr27:186 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_fstr_1_41}[r0x0d ] := 0x1 {const-unsigned-char literal}
;	.line	310; stdio/vfprintf.c	fstr = 1;
	MOVLW	0x01
	MOVWF	r0x0d
; ;ic:142: 	iTemp26 [k43 lr35:289 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _vfprintf_padchar_1_41}[r0x15 ] := 0x20 {const-char literal}
;	.line	312; stdio/vfprintf.c	padchar = ' ';    /* Strings are always space-padded */
	MOVLW	0x20
	MOVWF	r0x15
; ;ic:143: 	 goto _ifend_18($57)
	BRA	_00161_DS_
; ;ic:144:  _iffalse_18($56) :
; ;ic:145: 	iTemp108 [k132 lr145:146 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp104 [k128 lr138:180 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] == 0x78 {const-char literal}
_00160_DS_:
;	.line	315; stdio/vfprintf.c	else if (*ch == 'x')
	MOVF	r0x19, W
	XORLW	0x78
	BNZ	_00157_DS_
; ;ic:146: 	if iTemp108 [k132 lr145:146 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_17($53)
; ;ic:147: 	iTemp22 [k35 lr31:323 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_radix_1_41}[r0x11 ] := 0x10 {const-unsigned-char literal}
;	.line	316; stdio/vfprintf.c	radix = 16;
	MOVLW	0x10
	MOVWF	r0x11
; ;ic:148: 	 goto _ifend_18($57)
	BRA	_00161_DS_
; ;ic:149:  _iffalse_17($53) :
; ;ic:150: 	iTemp111 [k135 lr150:151 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp104 [k128 lr138:180 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] == 0x58 {const-char literal}
_00157_DS_:
;	.line	317; stdio/vfprintf.c	else if (*ch == 'X')
	MOVF	r0x19, W
	XORLW	0x58
	BNZ	_00154_DS_
; ;ic:151: 	if iTemp111 [k135 lr150:151 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_16($50)
; ;ic:152: 	iTemp22 [k35 lr31:323 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_radix_1_41}[r0x11 ] := 0x10 {const-unsigned-char literal}
;	.line	319; stdio/vfprintf.c	radix = 16;
	MOVLW	0x10
	MOVWF	r0x11
; ;ic:153: 	iTemp23 [k37 lr32:330 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_upcase_1_41}[r0x12 ] := 0x1 {const-unsigned-char literal}
;	.line	320; stdio/vfprintf.c	upcase = 1;
	MOVLW	0x01
	MOVWF	r0x12
; ;ic:154: 	 goto _ifend_18($57)
	BRA	_00161_DS_
; ;ic:155:  _iffalse_16($50) :
; ;ic:156: 	iTemp114 [k138 lr156:157 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp104 [k128 lr138:180 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] == 0x63 {const-char literal}
_00154_DS_:
;	.line	322; stdio/vfprintf.c	else if (*ch == 'c')
	MOVF	r0x19, W
	XORLW	0x63
	BNZ	_00151_DS_
; ;ic:157: 	if iTemp114 [k138 lr156:157 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_15($47)
; ;ic:158: 	iTemp22 [k35 lr31:323 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_radix_1_41}[r0x11 ] := 0x0 {const-unsigned-char literal}
;	.line	323; stdio/vfprintf.c	radix = 0;
	CLRF	r0x11
; ;ic:159: 	 goto _ifend_18($57)
	BRA	_00161_DS_
; ;ic:160:  _iffalse_15($47) :
; ;ic:161: 	iTemp117 [k141 lr161:162 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp104 [k128 lr138:180 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] == 0x6f {const-char literal}
_00151_DS_:
;	.line	324; stdio/vfprintf.c	else if (*ch == 'o')
	MOVF	r0x19, W
	XORLW	0x6f
	BNZ	_00148_DS_
; ;ic:162: 	if iTemp117 [k141 lr161:162 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_14($44)
; ;ic:163: 	iTemp22 [k35 lr31:323 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_radix_1_41}[r0x11 ] := 0x8 {const-unsigned-char literal}
;	.line	325; stdio/vfprintf.c	radix = 8;
	MOVLW	0x08
	MOVWF	r0x11
; ;ic:164: 	 goto _ifend_18($57)
	BRA	_00161_DS_
; ;ic:165:  _iffalse_14($44) :
; ;ic:166: 	iTemp120 [k144 lr166:167 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp104 [k128 lr138:180 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] == 0x66 {const-char literal}
_00148_DS_:
;	.line	331; stdio/vfprintf.c	else if (*ch == 'f')
	MOVF	r0x19, W
	XORLW	0x66
	BNZ	_00145_DS_
; ;ic:167: 	if iTemp120 [k144 lr166:167 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_13($41)
; ;ic:168: 	iTemp20 [k31 lr29:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_ffloat_1_41}[r0x0f ] := 0x1 {const-unsigned-char literal}
;	.line	333; stdio/vfprintf.c	ffloat = 1;
	MOVLW	0x01
	MOVWF	r0x0f
; ;ic:169: 	 goto _ifend_18($57)
	BRA	_00161_DS_
; ;ic:170:  _iffalse_13($41) :
; ;ic:171: 	iTemp123 [k147 lr171:172 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp104 [k128 lr138:180 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] == 0x64 {const-char literal}
_00145_DS_:
;	.line	337; stdio/vfprintf.c	else if ((*ch == 'd') || (*ch == 'i'))  /* This is the default */
	MOVF	r0x19, W
	XORLW	0x64
	BZ	_00161_DS_
; ;ic:172: 	if iTemp123 [k147 lr171:172 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _ifend_18($57)
; ;ic:173: 	iTemp126 [k150 lr173:174 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp104 [k128 lr138:180 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ] == 0x69 {const-char literal}
	MOVF	r0x19, W
	XORLW	0x69
	BZ	_00161_DS_
; ;ic:174: 	if iTemp126 [k150 lr173:174 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _ifend_18($57)
; ;ic:175: 	if iTemp21 [k33 lr30:240 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_nosign_1_41}[r0x10 ] == 0 goto _iffalse_11($34)
;	.line	339; stdio/vfprintf.c	else if (nosign)                        /* %u alone is the same as %ud */
	MOVF	r0x10, W
	BZ	_00138_DS_
; ;ic:176: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] - 0x1 {const-unsigned-char literal}
;	.line	340; stdio/vfprintf.c	--ch;
	MOVLW	0xff
	ADDWF	r0x03, F
	ADDWFC	r0x04, F
	ADDWFC	r0x05, F
; ;ic:177: 	 goto _ifend_18($57)
	BRA	_00161_DS_
; ;ic:178:  _iffalse_11($34) :
; ;ic:179: 	send iTemp0 [k2 lr3:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* generic* fixed}{ sir@ _vfprintf_stream_1_40}[r0x00 r0x01 r0x02 ]{argreg = 1}
; ;ic:180: 	send iTemp104 [k128 lr138:180 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x19 ]{argreg = 2}
; ;ic:181: 	iTemp130 [k154 lr181:181 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call ___stream_putchar [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char generic* generic* fixed, char fixed) fixed}
_00138_DS_:
;	.line	347; stdio/vfprintf.c	__stream_putchar (stream, *ch);
	MOVF	r0x19, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___stream_putchar
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:182: 	iTemp3 [k8 lr6:358 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ] = iTemp3 [k8 lr6:358 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ] + 0x1 {const-unsigned-char literal}
;	.line	348; stdio/vfprintf.c	++count;
	INFSNZ	r0x09, F
	INCF	r0x0a, F
; ;ic:183: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	349; stdio/vfprintf.c	++ch;
	INCF	r0x03, F
	BNC	_00391_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:184: 	 goto _whilecontinue_0($111)
_00391_DS_:
;	.line	350; stdio/vfprintf.c	continue;
	BRA	_00215_DS_
; ;ic:185:  _ifend_18($57) :
; ;ic:186: 	if iTemp18 [k27 lr27:186 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_fstr_1_41}[r0x0d ] == 0 goto _iffalse_27($83)
_00161_DS_:
;	.line	353; stdio/vfprintf.c	if (fstr)
	MOVF	r0x0d, W
	BZ	_00187_DS_
; ;ic:187: 	iTemp134 [k159 lr187:189 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0d r0x19 r0x1a ] = iTemp2 [k6 lr5:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}{ sir@ _vfprintf_ap_1_40}[r0x06 r0x07 r0x08 ] + 0x3 {const-unsigned-char literal}
;	.line	355; stdio/vfprintf.c	str = va_arg (ap, char *);
	MOVF	r0x06, W
	ADDLW	0x03
	MOVWF	r0x0d
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x19
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x1a
; ;ic:188: 	iTemp2 [k6 lr5:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}{ sir@ _vfprintf_ap_1_40}[r0x06 r0x07 r0x08 ] := iTemp134 [k159 lr187:189 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0d r0x19 r0x1a ]
	MOVFF	r0x0d, r0x06
	MOVFF	r0x19, r0x07
	MOVFF	r0x1a, r0x08
; ;ic:189: 	iTemp135 [k160 lr189:190 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0d r0x19 r0x1a ] = iTemp134 [k159 lr187:189 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0d r0x19 r0x1a ] - 0x3 {unsigned-char literal}
	MOVLW	0xfd
	ADDWF	r0x0d, F
	MOVLW	0xff
	ADDWFC	r0x19, F
	ADDWFC	r0x1a, F
; ;ic:190: 	iTemp136 [k161 lr190:191 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* generic* fixed}[r0x0d r0x19 r0x1a ] = (char generic* generic* fixed)iTemp135 [k160 lr189:190 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0d r0x19 r0x1a ]
; #	MOVF	r0x1a, W
; #	MOVWF	r0x1a
; #	MOVF	r0x1a, W
; #	MOVF	r0x19, W
; #	MOVF	r0x19, W
; #	MOVWF	r0x19
; #	MOVF	r0x19, W
; #	MOVF	r0x0d, W
; #	MOVF	r0x0d, W
; #	MOVWF	r0x0d
; #;;ic:191: 	iTemp133 [k157 lr191:295 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _vfprintf_str_1_41}[r0x0d r0x19 r0x1a ] = @[iTemp136 [k161 lr190:191 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* generic* fixed}[r0x0d r0x19 r0x1a ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x0d, FSR0L
	MOVFF	r0x19, PRODL
	MOVF	r0x1a, W
	CALL	__gptrget3
	MOVWF	r0x0d
	MOVFF	PRODL, r0x19
	MOVFF	PRODH, r0x1a
; ;ic:192: 	 goto preHeaderLbl5($159)
	BRA	_00263_DS_
; ;ic:193:  _iffalse_27($83) :
; ;ic:194: 	if iTemp20 [k31 lr29:194 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_ffloat_1_41}[r0x0f ] == 0 goto _iffalse_26($80)
_00187_DS_:
;	.line	366; stdio/vfprintf.c	else if (ffloat)
	MOVF	r0x0f, W
	BZ	_00184_DS_
; ;ic:195: 	iTemp133 [k157 lr191:295 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _vfprintf_str_1_41}[r0x0d r0x19 r0x1a ] = (char generic* fixed)iTemp138 [k164 lr19:356 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{const-char code* fixed}[remat]
;	.line	368; stdio/vfprintf.c	str = (char*)"<NO FLOAT>";
	MOVLW	UPPER(__str_0)
	MOVWF	r0x1a
	MOVLW	HIGH(__str_0)
	MOVWF	r0x19
	MOVLW	LOW(__str_0)
	MOVWF	r0x0d
; ;ic:196: 	iTemp2 [k6 lr5:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}{ sir@ _vfprintf_ap_1_40}[r0x06 r0x07 r0x08 ] = iTemp2 [k6 lr5:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}{ sir@ _vfprintf_ap_1_40}[r0x06 r0x07 r0x08 ] + 0x4 {const-unsigned-char literal}
;	.line	369; stdio/vfprintf.c	va_arg (ap, float);
	MOVLW	0x04
	ADDWF	r0x06, F
	MOVLW	0x00
	ADDWFC	r0x07, F
	ADDWFC	r0x08, F
; ;ic:197: 	iTemp27 [k45 lr36:294 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_precision_1_41}[r0x16 ] := 0xffffffff {const-char literal}
;	.line	371; stdio/vfprintf.c	precision = -1;
	SETF	r0x16
; ;ic:198: 	 goto preHeaderLbl5($159)
	BRA	_00263_DS_
; ;ic:199:  _iffalse_26($80) :
; ;ic:200: 	iTemp27 [k45 lr36:294 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_precision_1_41}[r0x16 ] := 0xffffffff {const-char literal}
_00184_DS_:
;	.line	378; stdio/vfprintf.c	precision = -1; //FIXME: No support for the precision field on numerals
	SETF	r0x16
; ;ic:201: 	if iTemp17 [k25 lr26:201 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_flong_1_41}[r0x0c ] == 0 goto _iffalse_22($68)
;	.line	381; stdio/vfprintf.c	if (flong)
	MOVF	r0x0c, W
	BZ	_00172_DS_
; ;ic:202: 	iTemp145 [k172 lr202:204 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0c r0x0f r0x1b ] = iTemp2 [k6 lr5:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}{ sir@ _vfprintf_ap_1_40}[r0x06 r0x07 r0x08 ] + 0x4 {const-unsigned-char literal}
;	.line	383; stdio/vfprintf.c	val = va_arg (ap, long);
	MOVF	r0x06, W
	ADDLW	0x04
	MOVWF	r0x0c
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x0f
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x1b
; ;ic:203: 	iTemp2 [k6 lr5:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}{ sir@ _vfprintf_ap_1_40}[r0x06 r0x07 r0x08 ] := iTemp145 [k172 lr202:204 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0c r0x0f r0x1b ]
	MOVFF	r0x0c, r0x06
	MOVFF	r0x0f, r0x07
	MOVFF	r0x1b, r0x08
; ;ic:204: 	iTemp146 [k173 lr204:205 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0c r0x0f r0x1b ] = iTemp145 [k172 lr202:204 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0c r0x0f r0x1b ] - 0x4 {unsigned-char literal}
	MOVLW	0xfc
	ADDWF	r0x0c, F
	MOVLW	0xff
	ADDWFC	r0x0f, F
	ADDWFC	r0x1b, F
; ;ic:205: 	iTemp147 [k174 lr205:206 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int generic* fixed}[r0x0c r0x0f r0x1b ] = (long-int generic* fixed)iTemp146 [k173 lr204:205 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0c r0x0f r0x1b ]
; #	MOVF	r0x1b, W
; #	MOVWF	r0x1b
; #	MOVF	r0x1b, W
; #	MOVF	r0x0f, W
; #	MOVF	r0x0f, W
; #	MOVWF	r0x0f
; #	MOVF	r0x0f, W
; #	MOVF	r0x0c, W
; #	MOVF	r0x0c, W
; #	MOVWF	r0x0c
; #;;ic:206: 	iTemp144 [k170 lr206:260 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _vfprintf_val_1_41}[r0x0c r0x0f r0x1b r0x1c ] = @[iTemp147 [k174 lr205:206 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{long-int generic* fixed}[r0x0c r0x0f r0x1b ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x0c, FSR0L
	MOVFF	r0x0f, PRODL
	MOVF	r0x1b, W
	CALL	__gptrget4
	MOVWF	r0x0c
	MOVFF	PRODL, r0x0f
	MOVFF	PRODH, r0x1b
	MOVFF	FSR0L, r0x1c
; ;ic:207: 	 goto _ifend_22($69)
	BRA	_00173_DS_
; ;ic:208:  _iffalse_22($68) :
; ;ic:209: 	if iTemp19 [k29 lr28:209 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_fchar_1_41}[r0x0e ] == 0 goto _iffalse_21($65)
_00172_DS_:
;	.line	388; stdio/vfprintf.c	else if (fchar)
	MOVF	r0x0e, W
	BZ	_00169_DS_
; ;ic:210: 	iTemp149 [k176 lr210:212 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0e r0x1d r0x1e ] = iTemp2 [k6 lr5:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}{ sir@ _vfprintf_ap_1_40}[r0x06 r0x07 r0x08 ] + 0x2 {const-unsigned-char literal}
;	.line	390; stdio/vfprintf.c	val = (char) va_arg (ap, int);  // FIXME: SDCC passes 1-byte char varargs as 2-byte ints...
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x0e
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x1d
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x1e
; ;ic:211: 	iTemp2 [k6 lr5:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}{ sir@ _vfprintf_ap_1_40}[r0x06 r0x07 r0x08 ] := iTemp149 [k176 lr210:212 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0e r0x1d r0x1e ]
	MOVFF	r0x0e, r0x06
	MOVFF	r0x1d, r0x07
	MOVFF	r0x1e, r0x08
; ;ic:212: 	iTemp150 [k177 lr212:213 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0e r0x1d r0x1e ] = iTemp149 [k176 lr210:212 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0e r0x1d r0x1e ] - 0x2 {unsigned-char literal}
	MOVLW	0xfe
	ADDWF	r0x0e, F
	MOVLW	0xff
	ADDWFC	r0x1d, F
	ADDWFC	r0x1e, F
; ;ic:213: 	iTemp151 [k178 lr213:214 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* fixed}[r0x0e r0x1d r0x1e ] = (int generic* fixed)iTemp150 [k177 lr212:213 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0e r0x1d r0x1e ]
; #	MOVF	r0x1e, W
; #	MOVWF	r0x1e
; #	MOVF	r0x1e, W
; #	MOVF	r0x1d, W
; #	MOVF	r0x1d, W
; #	MOVWF	r0x1d
; #	MOVF	r0x1d, W
; #	MOVF	r0x0e, W
; #	MOVF	r0x0e, W
; #	MOVWF	r0x0e
; #;;ic:214: 	iTemp152 [k179 lr214:215 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x0e r0x1d ] = @[iTemp151 [k178 lr213:214 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* fixed}[r0x0e r0x1d r0x1e ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x0e, FSR0L
	MOVFF	r0x1d, PRODL
	MOVF	r0x1e, W
	CALL	__gptrget2
	MOVWF	r0x0e
; ;ic:215: 	iTemp153 [k180 lr215:216 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x0e ] = (char fixed)iTemp152 [k179 lr214:215 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x0e r0x1d ]
; ;ic:216: 	iTemp144 [k170 lr206:260 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _vfprintf_val_1_41}[r0x0c r0x0f r0x1b r0x1c ] = (long-int fixed)iTemp153 [k180 lr215:216 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x0e ]
	MOVFF	r0x0e, r0x0c
	CLRF	WREG
	BTFSC	r0x0e, 7
	MOVLW	0xff
	MOVWF	r0x0f
	MOVWF	r0x1b
	MOVWF	r0x1c
; ;ic:217: 	iTemp155 [k182 lr217:218 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp22 [k35 lr31:323 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_radix_1_41}[r0x11 ] == 0xa {const-unsigned-char literal}
;	.line	391; stdio/vfprintf.c	if ((radix != 10) || nosign)
	MOVF	r0x11, W
	XORLW	0x0a
	BNZ	_00162_DS_
; ;ic:218: 	if iTemp155 [k182 lr217:218 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iftrue_19($58)
; ;ic:219: 	if iTemp21 [k33 lr30:240 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_nosign_1_41}[r0x10 ] == 0 goto _ifend_22($69)
	MOVF	r0x10, W
	BTFSC	STATUS, 2
	BRA	_00173_DS_
; ;ic:220:  _iftrue_19($58) :
; ;ic:221: 	iTemp156 [k183 lr221:222 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x0e ] = (unsigned-char fixed)iTemp144 [k170 lr206:260 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _vfprintf_val_1_41}[r0x0c r0x0f r0x1b r0x1c ]
_00162_DS_:
;	.line	392; stdio/vfprintf.c	val = (unsigned char) val;    //Avoid unwanted sign extension
	MOVF	r0x0c, W
	MOVWF	r0x0e
; ;ic:222: 	iTemp144 [k170 lr206:260 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _vfprintf_val_1_41}[r0x0c r0x0f r0x1b r0x1c ] = (long-int fixed)iTemp156 [k183 lr221:222 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x0e ]
	MOVFF	r0x0e, r0x0c
	CLRF	r0x0f
	CLRF	r0x1b
	CLRF	r0x1c
; ;ic:223: 	 goto _ifend_22($69)
	BRA	_00173_DS_
; ;ic:224:  _iffalse_21($65) :
; ;ic:225: 	iTemp158 [k185 lr225:227 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0e r0x1d r0x1e ] = iTemp2 [k6 lr5:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}{ sir@ _vfprintf_ap_1_40}[r0x06 r0x07 r0x08 ] + 0x2 {const-unsigned-char literal}
_00169_DS_:
;	.line	399; stdio/vfprintf.c	val = va_arg (ap, int);
	MOVF	r0x06, W
	ADDLW	0x02
	MOVWF	r0x0e
	MOVLW	0x00
	ADDWFC	r0x07, W
	MOVWF	r0x1d
	MOVLW	0x00
	ADDWFC	r0x08, W
	MOVWF	r0x1e
; ;ic:226: 	iTemp2 [k6 lr5:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}{ sir@ _vfprintf_ap_1_40}[r0x06 r0x07 r0x08 ] := iTemp158 [k185 lr225:227 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0e r0x1d r0x1e ]
	MOVFF	r0x0e, r0x06
	MOVFF	r0x1d, r0x07
	MOVFF	r0x1e, r0x08
; ;ic:227: 	iTemp159 [k186 lr227:228 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0e r0x1d r0x1e ] = iTemp158 [k185 lr225:227 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0e r0x1d r0x1e ] - 0x2 {unsigned-char literal}
	MOVLW	0xfe
	ADDWF	r0x0e, F
	MOVLW	0xff
	ADDWFC	r0x1d, F
	ADDWFC	r0x1e, F
; ;ic:228: 	iTemp160 [k187 lr228:229 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* fixed}[r0x0e r0x1d r0x1e ] = (int generic* fixed)iTemp159 [k186 lr227:228 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x0e r0x1d r0x1e ]
; #	MOVF	r0x1e, W
; #	MOVWF	r0x1e
; #	MOVF	r0x1e, W
; #	MOVF	r0x1d, W
; #	MOVF	r0x1d, W
; #	MOVWF	r0x1d
; #	MOVF	r0x1d, W
; #	MOVF	r0x0e, W
; #	MOVF	r0x0e, W
; #	MOVWF	r0x0e
; #;;ic:229: 	iTemp161 [k188 lr229:230 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x0e r0x1d ] = @[iTemp160 [k187 lr228:229 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* fixed}[r0x0e r0x1d r0x1e ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x0e, FSR0L
	MOVFF	r0x1d, PRODL
	MOVF	r0x1e, W
	CALL	__gptrget2
	MOVWF	r0x0e
	MOVFF	PRODL, r0x1d
; ;ic:230: 	iTemp144 [k170 lr206:260 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _vfprintf_val_1_41}[r0x0c r0x0f r0x1b r0x1c ] = (long-int fixed)iTemp161 [k188 lr229:230 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x0e r0x1d ]
	MOVFF	r0x0e, r0x0c
	MOVFF	r0x1d, r0x0f
	CLRF	WREG
	BTFSC	r0x1d, 7
	MOVLW	0xff
	MOVWF	r0x1b
	MOVWF	r0x1c
; ;ic:231: 	iTemp163 [k190 lr231:232 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp22 [k35 lr31:323 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_radix_1_41}[r0x11 ] == 0xa {const-unsigned-char literal}
;	.line	400; stdio/vfprintf.c	if ((radix != 10) || nosign)
	MOVF	r0x11, W
	XORLW	0x0a
	BNZ	_00165_DS_
; ;ic:232: 	if iTemp163 [k190 lr231:232 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iftrue_20($61)
; ;ic:233: 	if iTemp21 [k33 lr30:240 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_nosign_1_41}[r0x10 ] == 0 goto _ifend_22($69)
	MOVF	r0x10, W
	BZ	_00173_DS_
; ;ic:234:  _iftrue_20($61) :
; ;ic:235: 	iTemp164 [k191 lr235:236 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x0e r0x1d ] = (unsigned-int fixed)iTemp144 [k170 lr206:260 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _vfprintf_val_1_41}[r0x0c r0x0f r0x1b r0x1c ]
_00165_DS_:
;	.line	401; stdio/vfprintf.c	val = (unsigned int) val;   //Avoid unwanted sign extension
	MOVF	r0x0c, W
	MOVWF	r0x0e
	MOVF	r0x0f, W
	MOVWF	r0x1d
; ;ic:236: 	iTemp144 [k170 lr206:260 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _vfprintf_val_1_41}[r0x0c r0x0f r0x1b r0x1c ] = (long-int fixed)iTemp164 [k191 lr235:236 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x0e r0x1d ]
	MOVFF	r0x0e, r0x0c
	MOVFF	r0x1d, r0x0f
	CLRF	r0x1b
	CLRF	r0x1c
; ;ic:237:  _ifend_22($69) :
; ;ic:238: 	iTemp133 [k157 lr191:295 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _vfprintf_str_1_41}[r0x0d r0x19 r0x1a ] = (char generic* fixed)iTemp167 [k195 lr18:356 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* fixed}[remat]
_00173_DS_:
;	.line	407; stdio/vfprintf.c	str = buffer + 1; //Reserve space for a forced '+'
	MOVLW	HIGH(_vfprintf_buffer_1_41 + 1)
	MOVWF	r0x19
	MOVLW	LOW(_vfprintf_buffer_1_41 + 1)
	MOVWF	r0x0d
	MOVLW	0x80
	MOVWF	r0x1a
; ;ic:239: 	if iTemp22 [k35 lr31:323 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_radix_1_41}[r0x11 ] == 0 goto _iffalse_25($77)
;	.line	408; stdio/vfprintf.c	if (radix)
	MOVF	r0x11, W
	BTFSC	STATUS, 2
	BRA	_00181_DS_
; ;ic:240: 	if iTemp21 [k33 lr30:240 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_nosign_1_41}[r0x10 ] == 0 goto _iffalse_23($71)
;	.line	410; stdio/vfprintf.c	if (nosign)
	MOVF	r0x10, W
	BZ	_00175_DS_
; ;ic:241: 	send iTemp144 [k170 lr206:260 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _vfprintf_val_1_41}[r0x0c r0x0f r0x1b r0x1c ]{argreg = 1}
; ;ic:242: 	send iTemp167 [k195 lr18:356 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* fixed}[remat]{argreg = 2}
; ;ic:243: 	send iTemp22 [k35 lr31:323 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_radix_1_41}[r0x11 ]{argreg = 3}
; ;ic:244: 	iTemp171 [k203 lr244:244 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _ultoa [k197 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-long-int fixed, char near* fixed, unsigned-char fixed) fixed}
;	.line	411; stdio/vfprintf.c	ultoa (val, buffer + 1, radix);
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_vfprintf_buffer_1_41 + 1)
	MOVWF	POSTDEC1
	MOVLW	LOW(_vfprintf_buffer_1_41 + 1)
	MOVWF	POSTDEC1
	MOVF	r0x1c, W
	MOVWF	POSTDEC1
	MOVF	r0x1b, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	CALL	_ultoa
	MOVLW	0x07
	ADDWF	FSR1L, F
; ;ic:245: 	 goto _ifend_23($72)
	BRA	_00176_DS_
; ;ic:246:  _iffalse_23($71) :
; ;ic:247: 	send iTemp144 [k170 lr206:260 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _vfprintf_val_1_41}[r0x0c r0x0f r0x1b r0x1c ]{argreg = 1}
; ;ic:248: 	send iTemp167 [k195 lr18:356 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* fixed}[remat]{argreg = 2}
; ;ic:249: 	send iTemp22 [k35 lr31:323 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_radix_1_41}[r0x11 ]{argreg = 3}
; ;ic:250: 	iTemp174 [k210 lr250:250 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _ltoa [k204 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( long-int fixed, char near* fixed, unsigned-char fixed) fixed}
_00175_DS_:
;	.line	413; stdio/vfprintf.c	ltoa (val, buffer + 1, radix);
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_vfprintf_buffer_1_41 + 1)
	MOVWF	POSTDEC1
	MOVLW	LOW(_vfprintf_buffer_1_41 + 1)
	MOVWF	POSTDEC1
	MOVF	r0x1c, W
	MOVWF	POSTDEC1
	MOVF	r0x1b, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	CALL	_ltoa
	MOVLW	0x07
	ADDWF	FSR1L, F
; ;ic:251:  _ifend_23($72) :
; ;ic:252: 	if iTemp28 [k47 lr37:252 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_printsign_1_41}[r0x17 ] == 0 goto preHeaderLbl5($159)
_00176_DS_:
;	.line	415; stdio/vfprintf.c	if (printsign && (*str != '-'))
	MOVF	r0x17, W
	BZ	_00263_DS_
; ;ic:253: 	iTemp176 [k212 lr253:254 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ] = @[iTemp133 [k157 lr191:295 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _vfprintf_str_1_41}[r0x0d r0x19 r0x1a ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x0d, FSR0L
	MOVFF	r0x19, PRODL
	MOVF	r0x1a, W
	CALL	__gptrget1
; #	MOVWF	r0x0e
; #;;ic:254: 	iTemp177 [k213 lr254:255 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp176 [k212 lr253:254 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ] == 0x2d {const-char literal}
; #	MOVF	r0x0e, W
	XORLW	0x2d
	BZ	_00263_DS_
; ;ic:255: 	if iTemp177 [k213 lr254:255 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto preHeaderLbl5($159)
; ;ic:256: 	iTemp133 [k157 lr191:295 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _vfprintf_str_1_41}[r0x0d r0x19 r0x1a ] = iTemp133 [k157 lr191:295 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _vfprintf_str_1_41}[r0x0d r0x19 r0x1a ] - 0x1 {const-unsigned-char literal}
;	.line	417; stdio/vfprintf.c	--str;
	MOVLW	0xff
	ADDWF	r0x0d, F
	ADDWFC	r0x19, F
	ADDWFC	r0x1a, F
; ;ic:257: 	*(iTemp133 [k157 lr191:295 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _vfprintf_str_1_41}[r0x0d r0x19 r0x1a ]) := iTemp29 [k49 lr38:257 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _vfprintf_positivechar_1_41}[r0x18 ]
;	.line	418; stdio/vfprintf.c	*str = positivechar;
	MOVFF	r0x18, POSTDEC1
	MOVFF	r0x0d, FSR0L
	MOVFF	r0x19, PRODL
	MOVF	r0x1a, W
	CALL	__gptrput1
; ;ic:258: 	 goto preHeaderLbl5($159)
	BRA	_00263_DS_
; ;ic:259:  _iffalse_25($77) :
; ;ic:260: 	iTemp181 [k217 lr260:261 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x0c ] = (unsigned-char fixed)iTemp144 [k170 lr206:260 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _vfprintf_val_1_41}[r0x0c r0x0f r0x1b r0x1c ]
; ;ic:261: 	*(iTemp133 [k157 lr191:295 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _vfprintf_str_1_41}[r0x0d r0x19 r0x1a ]) := iTemp181 [k217 lr260:261 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x0c ]
_00181_DS_:
;	.line	424; stdio/vfprintf.c	*str = (unsigned char) val;
	MOVFF	r0x0c, POSTDEC1
	MOVFF	r0x0d, FSR0L
	MOVFF	r0x19, PRODL
	MOVF	r0x1a, W
	CALL	__gptrput1
; ;ic:262: 	iTemp182 [k218 lr262:263 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0c r0x0e r0x0f ] = iTemp133 [k157 lr191:295 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _vfprintf_str_1_41}[r0x0d r0x19 r0x1a ] + 0x1 {const-unsigned-char literal}
;	.line	425; stdio/vfprintf.c	*(str + 1) = '\0';
	MOVF	r0x0d, W
	ADDLW	0x01
	MOVWF	r0x0c
	MOVLW	0x00
	ADDWFC	r0x19, W
	MOVWF	r0x0e
	MOVLW	0x00
	ADDWFC	r0x1a, W
; ;ic:263: 	*(iTemp182 [k218 lr262:263 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0c r0x0e r0x0f ]) := 0x0 {const-char literal}
	CLRF	POSTDEC1
	MOVFF	r0x0c, FSR0L
	MOVFF	r0x0e, PRODL
	CALL	__gptrput1
; ;ic:264:  preHeaderLbl5($159) :
; ;ic:265: 	iTemp186 [k223 lr265:274 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_str1_1_41}[r0x0c r0x0e r0x0f ] := iTemp133 [k157 lr191:295 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _vfprintf_str_1_41}[r0x0d r0x19 r0x1a ]
_00263_DS_:
;	.line	432; stdio/vfprintf.c	while (fieldwidth && *str1)
	MOVFF	r0x0d, r0x0c
	MOVFF	r0x19, r0x0e
	MOVFF	r0x1a, r0x0f
; ;ic:266: 	iTemp187 [k224 lr266:279 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x10 ] := iTemp24 [k39 lr33:297 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x13 ]
	MOVFF	r0x13, r0x10
; ;ic:268:  _whilecontinue_3($86) :
; ;ic:269: 	if iTemp187 [k224 lr266:279 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x10 ] == 0 goto loopExitLbl11($172)
_00190_DS_:
	MOVF	r0x10, W
	BZ	_00276_DS_
; ;ic:270: 	iTemp185 [k222 lr270:271 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x17 ] = @[iTemp186 [k223 lr265:274 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_str1_1_41}[r0x0c r0x0e r0x0f ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x0c, FSR0L
	MOVFF	r0x0e, PRODL
	MOVF	r0x0f, W
	CALL	__gptrget1
	MOVWF	r0x17
; ;ic:271: 	if iTemp185 [k222 lr270:271 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x17 ] == 0 goto loopExitLbl11($172)
	MOVF	r0x17, W
	BZ	_00276_DS_
; ;ic:272: 	iTemp186 [k223 lr265:274 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_str1_1_41}[r0x0c r0x0e r0x0f ] = iTemp186 [k223 lr265:274 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_str1_1_41}[r0x0c r0x0e r0x0f ] + 0x1 {const-unsigned-char literal}
;	.line	434; stdio/vfprintf.c	++str1;
	INCF	r0x0c, F
	BNC	_00398_DS_
	INFSNZ	r0x0e, F
	INCF	r0x0f, F
; ;ic:273: 	iTemp187 [k224 lr266:279 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x10 ] = iTemp187 [k224 lr266:279 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x10 ] - 0x1 {const-unsigned-char literal}
_00398_DS_:
;	.line	435; stdio/vfprintf.c	--fieldwidth;
	DECF	r0x10, F
; ;ic:274: 	 goto _whilecontinue_3($86)
	BRA	_00190_DS_
; ;ic:275:  loopExitLbl11($172) :
; ;ic:276: 	iTemp24 [k39 lr33:297 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x13 ] := iTemp187 [k224 lr266:279 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x10 ]
_00276_DS_:
	MOVFF	r0x10, r0x13
; ;ic:277: 	if iTemp25 [k41 lr34:333 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_lalign_1_41}[r0x14 ] != 0 goto preHeaderLbl7($166)
;	.line	438; stdio/vfprintf.c	if (!lalign)
	MOVF	r0x14, W
	BNZ	_00270_DS_
; ;ic:278: 	iTemp189 [k226 lr278:291 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x0c r0x0e ] := iTemp3 [k8 lr6:358 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ]
;	.line	440; stdio/vfprintf.c	while (fieldwidth)
	MOVFF	r0x09, r0x0c
	MOVFF	r0x0a, r0x0e
; ;ic:279: 	iTemp190 [k227 lr279:292 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_fieldwidth_1_41}[r0x0f ] := iTemp187 [k224 lr266:279 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x10 ]
	MOVFF	r0x10, r0x0f
; ;ic:281:  _whilecontinue_4($89) :
; ;ic:282: 	if iTemp190 [k227 lr279:292 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_fieldwidth_1_41}[r0x0f ] == 0 goto loopExitLbl12($173)
_00193_DS_:
	MOVF	r0x0f, W
	BZ	_00277_DS_
; ;ic:283: 	send iTemp0 [k2 lr3:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* generic* fixed}{ sir@ _vfprintf_stream_1_40}[r0x00 r0x01 r0x02 ]{argreg = 1}
; ;ic:284: 	send iTemp26 [k43 lr35:289 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _vfprintf_padchar_1_41}[r0x15 ]{argreg = 2}
; ;ic:285: 	iTemp188 [k225 lr285:285 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call ___stream_putchar [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char generic* generic* fixed, char fixed) fixed}
;	.line	442; stdio/vfprintf.c	__stream_putchar (stream, padchar);
	MOVF	r0x15, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___stream_putchar
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:286: 	iTemp189 [k226 lr278:291 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x0c r0x0e ] = iTemp189 [k226 lr278:291 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x0c r0x0e ] + 0x1 {const-unsigned-char literal}
;	.line	443; stdio/vfprintf.c	++count;
	INFSNZ	r0x0c, F
	INCF	r0x0e, F
; ;ic:287: 	iTemp3 [k8 lr6:358 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ] := iTemp189 [k226 lr278:291 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x0c r0x0e ]
; ;ic:288: 	iTemp190 [k227 lr279:292 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_fieldwidth_1_41}[r0x0f ] = iTemp190 [k227 lr279:292 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_fieldwidth_1_41}[r0x0f ] - 0x1 {const-unsigned-char literal}
;	.line	444; stdio/vfprintf.c	--fieldwidth;
	DECF	r0x0f, F
; ;ic:289: 	 goto _whilecontinue_4($89)
	BRA	_00193_DS_
; ;ic:290:  loopExitLbl12($173) :
; ;ic:291: 	iTemp3 [k8 lr6:358 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ] := iTemp189 [k226 lr278:291 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x0c r0x0e ]
_00277_DS_:
;	.line	448; stdio/vfprintf.c	while (*str
	MOVFF	r0x0c, r0x09
	MOVFF	r0x0e, r0x0a
; ;ic:292: 	iTemp24 [k39 lr33:297 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x13 ] := iTemp190 [k227 lr279:292 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_fieldwidth_1_41}[r0x0f ]
	MOVFF	r0x0f, r0x13
; ;ic:293:  preHeaderLbl7($166) :
; ;ic:294: 	iTemp196 [k233 lr294:330 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x0c ] := iTemp27 [k45 lr36:294 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_precision_1_41}[r0x16 ]
_00270_DS_:
	MOVFF	r0x16, r0x0c
; ;ic:295: 	iTemp204 [k243 lr295:330 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0d r0x0e r0x0f ] := iTemp133 [k157 lr191:295 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _vfprintf_str_1_41}[r0x0d r0x19 r0x1a ]
	MOVFF	r0x0d, r0x0d
	MOVFF	r0x19, r0x0e
	MOVFF	r0x1a, r0x0f
; ;ic:296: 	iTemp205 [k244 lr296:334 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x10 r0x15 ] := iTemp3 [k8 lr6:358 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ]
	MOVFF	r0x09, r0x10
	MOVFF	r0x0a, r0x15
; ;ic:297: 	iTemp207 [k246 lr297:335 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x13 ] := iTemp24 [k39 lr33:297 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x13 ]
; ;ic:299:  _whilecontinue_5($100) :
; ;ic:300: 	iTemp192 [k229 lr300:301 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x16 ] = @[iTemp204 [k243 lr295:330 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0d r0x0e r0x0f ] + 0x0 {const-unsigned-char literal}]
_00204_DS_:
;	.line	450; stdio/vfprintf.c	&& (!~precision || precision--)
	MOVFF	r0x0d, FSR0L
	MOVFF	r0x0e, PRODL
	MOVF	r0x0f, W
	CALL	__gptrget1
	MOVWF	r0x16
; ;ic:301: 	if iTemp192 [k229 lr300:301 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x16 ] == 0 goto loopExitLbl13($174)
	MOVF	r0x16, W
	BTFSC	STATUS, 2
	BRA	_00278_DS_
; ;ic:302: 	iTemp193 [k230 lr302:303 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x16 r0x17 ] = (int fixed)iTemp196 [k233 lr294:330 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x0c ]
	MOVFF	r0x0c, r0x16
	CLRF	r0x17
; ;ic:303: 	iTemp194 [k231 lr303:304 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x16 r0x17 ] = ~ iTemp193 [k230 lr302:303 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x16 r0x17 ]
	COMF	r0x16, F
	COMF	r0x17, F
; ;ic:304: 	if iTemp194 [k231 lr303:304 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x16 r0x17 ] == 0 goto _whilebody_5($101)
	MOVF	r0x16, W
	IORWF	r0x17, W
	BZ	_00205_DS_
; ;ic:305: 	iTemp195 [k232 lr305:307 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-char fixed}[r0x16 ] := iTemp196 [k233 lr294:330 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x0c ]
	MOVFF	r0x0c, r0x16
; ;ic:306: 	iTemp196 [k233 lr294:330 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x0c ] = iTemp196 [k233 lr294:330 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x0c ] - 0x1 {const-unsigned-char literal}
	DECF	r0x0c, F
; ;ic:307: 	if iTemp195 [k232 lr305:307 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-char fixed}[r0x16 ] == 0 goto loopExitLbl13($174)
	MOVF	r0x16, W
	BZ	_00278_DS_
; ;ic:308:  _whilebody_5($101) :
; ;ic:309: 	iTemp22 [k35 lr31:323 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_radix_1_41}[r0x11 ] = @[iTemp204 [k243 lr295:330 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0d r0x0e r0x0f ] + 0x0 {const-unsigned-char literal}]
_00205_DS_:
;	.line	454; stdio/vfprintf.c	radix = *str;
	MOVFF	r0x0d, FSR0L
	MOVFF	r0x0e, PRODL
	MOVF	r0x0f, W
	CALL	__gptrget1
	MOVWF	r0x11
; ;ic:310: 	if iTemp23 [k37 lr32:330 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_upcase_1_41}[r0x12 ] == 0 goto _iffalse_29($95)
;	.line	455; stdio/vfprintf.c	if (upcase)
	MOVF	r0x12, W
	BZ	_00199_DS_
; ;ic:311: 	send iTemp22 [k35 lr31:323 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_radix_1_41}[r0x11 ]{argreg = 1}
; ;ic:312: 	iTemp199 [k238 lr312:313 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x16 ] = call _islower [k236 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char fixed) fixed}
;	.line	457; stdio/vfprintf.c	radix = toupper (radix);
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	CALL	_islower
	MOVWF	r0x16
	MOVF	POSTINC1, F
; ;ic:313: 	if iTemp199 [k238 lr312:313 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x16 ] == 0 goto iTempLbl0($116)
	MOVF	r0x16, W
	BZ	_00220_DS_
; ;ic:314: 	iTemp201 [k240 lr314:315 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x16 ] = (char register)iTemp22 [k35 lr31:323 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_radix_1_41}[r0x11 ]
	MOVF	r0x11, W
	MOVWF	r0x16
; ;ic:315: 	iTemp200 [k239 lr315:320 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x16 ] = iTemp201 [k240 lr314:315 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x16 ] & 0xffffffdf {char literal}
	BCF	r0x16, 5
; ;ic:316: 	 goto iTempLbl1($117)
	BRA	_00221_DS_
; ;ic:317:  iTempLbl0($116) :
; ;ic:318: 	iTemp200 [k239 lr315:320 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x16 ] := iTemp22 [k35 lr31:323 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_radix_1_41}[r0x11 ]
_00220_DS_:
	MOVFF	r0x11, r0x16
; ;ic:319:  iTempLbl1($117) :
; ;ic:320: 	iTemp22 [k35 lr31:323 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_radix_1_41}[r0x11 ] := iTemp200 [k239 lr315:320 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x16 ]
_00221_DS_:
	MOVFF	r0x16, r0x11
; ;ic:321:  _iffalse_29($95) :
; ;ic:322: 	send iTemp0 [k2 lr3:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* generic* fixed}{ sir@ _vfprintf_stream_1_40}[r0x00 r0x01 r0x02 ]{argreg = 1}
; ;ic:323: 	send iTemp22 [k35 lr31:323 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_radix_1_41}[r0x11 ]{argreg = 2}
; ;ic:324: 	iTemp203 [k242 lr324:324 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call ___stream_putchar [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char generic* generic* fixed, char fixed) fixed}
_00199_DS_:
;	.line	459; stdio/vfprintf.c	__stream_putchar (stream, radix);
	MOVF	r0x11, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___stream_putchar
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:325: 	iTemp204 [k243 lr295:330 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0d r0x0e r0x0f ] = iTemp204 [k243 lr295:330 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0d r0x0e r0x0f ] + 0x1 {const-unsigned-char literal}
;	.line	460; stdio/vfprintf.c	++str;
	INCF	r0x0d, F
	BNC	_00400_DS_
	INFSNZ	r0x0e, F
	INCF	r0x0f, F
; ;ic:326: 	iTemp205 [k244 lr296:334 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x10 r0x15 ] = iTemp205 [k244 lr296:334 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x10 r0x15 ] + 0x1 {const-unsigned-char literal}
_00400_DS_:
;	.line	461; stdio/vfprintf.c	++count;
	INFSNZ	r0x10, F
	INCF	r0x15, F
; ;ic:327: 	iTemp3 [k8 lr6:358 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ] := iTemp205 [k244 lr296:334 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x10 r0x15 ]
; ;ic:328: 	if iTemp207 [k246 lr297:335 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x13 ] == 0 goto _whilecontinue_5($100)
;	.line	462; stdio/vfprintf.c	if (fieldwidth)
	MOVF	r0x13, W
	BTFSC	STATUS, 2
	BRA	_00204_DS_
; ;ic:329: 	iTemp207 [k246 lr297:335 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x13 ] = iTemp207 [k246 lr297:335 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x13 ] - 0x1 {const-unsigned-char literal}
;	.line	464; stdio/vfprintf.c	fieldwidth--;
	DECF	r0x13, F
; ;ic:330: 	 goto _whilecontinue_5($100)
	BRA	_00204_DS_
; ;ic:331:  loopExitLbl13($174) :
; ;ic:332: 	iTemp3 [k8 lr6:358 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ] := iTemp205 [k244 lr296:334 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x10 r0x15 ]
_00278_DS_:
	MOVFF	r0x10, r0x09
	MOVFF	r0x15, r0x0a
; ;ic:333: 	if iTemp25 [k41 lr34:333 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_lalign_1_41}[r0x14 ] == 0 goto _ifend_32($110)
;	.line	469; stdio/vfprintf.c	if (lalign)
	MOVF	r0x14, W
	BZ	_00214_DS_
; ;ic:334: 	iTemp209 [k248 lr334:353 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _vfprintf_count_1_41}[r0x0c r0x0d ] := iTemp205 [k244 lr296:334 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x10 r0x15 ]
;	.line	471; stdio/vfprintf.c	while (fieldwidth)
	MOVFF	r0x10, r0x0c
	MOVFF	r0x15, r0x0d
; ;ic:335: 	iTemp210 [k249 lr335:345 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_fieldwidth_1_41}[r0x0e ] := iTemp207 [k246 lr297:335 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x13 ]
	MOVFF	r0x13, r0x0e
; ;ic:337:  _whilecontinue_6($103) :
; ;ic:338: 	if iTemp210 [k249 lr335:345 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_fieldwidth_1_41}[r0x0e ] == 0 goto loopExitLbl14($175)
_00207_DS_:
	MOVF	r0x0e, W
	BZ	_00279_DS_
; ;ic:339: 	send iTemp0 [k2 lr3:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* generic* fixed}{ sir@ _vfprintf_stream_1_40}[r0x00 r0x01 r0x02 ]{argreg = 1}
; ;ic:340: 	send 0x20 {const-char literal}{argreg = 2}
; ;ic:341: 	iTemp208 [k247 lr341:341 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call ___stream_putchar [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char generic* generic* fixed, char fixed) fixed}
;	.line	473; stdio/vfprintf.c	__stream_putchar (stream, ' ');
	MOVLW	0x20
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___stream_putchar
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:342: 	iTemp209 [k248 lr334:353 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _vfprintf_count_1_41}[r0x0c r0x0d ] = iTemp209 [k248 lr334:353 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _vfprintf_count_1_41}[r0x0c r0x0d ] + 0x1 {const-unsigned-char literal}
;	.line	474; stdio/vfprintf.c	++count;
	INFSNZ	r0x0c, F
	INCF	r0x0d, F
; ;ic:343: 	iTemp3 [k8 lr6:358 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ] := iTemp209 [k248 lr334:353 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _vfprintf_count_1_41}[r0x0c r0x0d ]
; ;ic:344: 	iTemp210 [k249 lr335:345 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_fieldwidth_1_41}[r0x0e ] = iTemp210 [k249 lr335:345 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _vfprintf_fieldwidth_1_41}[r0x0e ] - 0x1 {const-unsigned-char literal}
;	.line	475; stdio/vfprintf.c	--fieldwidth;
	DECF	r0x0e, F
; ;ic:345: 	 goto _whilecontinue_6($103)
	BRA	_00207_DS_
; ;ic:346:  _iffalse_32($109) :
; ;ic:347: 	send iTemp0 [k2 lr3:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* generic* fixed}{ sir@ _vfprintf_stream_1_40}[r0x00 r0x01 r0x02 ]{argreg = 1}
; ;ic:348: 	send iTemp13 [k21 lr22:348 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0b ]{argreg = 2}
; ;ic:349: 	iTemp213 [k252 lr349:349 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call ___stream_putchar [k55 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char generic* generic* fixed, char fixed) fixed}
_00213_DS_:
;	.line	482; stdio/vfprintf.c	__stream_putchar (stream, *ch);
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	___stream_putchar
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:350: 	iTemp3 [k8 lr6:358 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ] = iTemp3 [k8 lr6:358 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ] + 0x1 {const-unsigned-char literal}
;	.line	483; stdio/vfprintf.c	++count;
	INFSNZ	r0x09, F
	INCF	r0x0a, F
; ;ic:351: 	 goto _ifend_32($110)
;	.line	489; stdio/vfprintf.c	return count;
	BRA	_00214_DS_
; ;ic:352:  loopExitLbl14($175) :
; ;ic:353: 	iTemp3 [k8 lr6:358 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ] := iTemp209 [k248 lr334:353 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}{ sir@ _vfprintf_count_1_41}[r0x0c r0x0d ]
_00279_DS_:
;	.line	483; stdio/vfprintf.c	++count;
	MOVFF	r0x0c, r0x09
	MOVFF	r0x0d, r0x0a
; ;ic:354:  _ifend_32($110) :
; ;ic:355: 	iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp11 [k18 lr16:356 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* fixed}{ sir@ _vfprintf_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
_00214_DS_:
;	.line	486; stdio/vfprintf.c	++ch;
	INCF	r0x03, F
	BNC	_00401_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:356: 	 goto _whilecontinue_0($111)
_00401_DS_:
	GOTO	_00215_DS_
; ;ic:357:  _whilebreak_0($113) :
; ;ic:358: 	ret iTemp3 [k8 lr6:358 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ]
_00217_DS_:
;	.line	489; stdio/vfprintf.c	return count;
	MOVFF	r0x0a, PRODL
	MOVF	r0x09, W
; ;ic:359:  _return($114) :
; ;ic:360: 	eproc _vfprintf [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( char generic* generic* fixed, const-char generic* fixed, unsigned-char generic* fixed) fixed}
	MOVFF	PREINC1, r0x1e
	MOVFF	PREINC1, r0x1d
	MOVFF	PREINC1, r0x1c
	MOVFF	PREINC1, r0x1b
	MOVFF	PREINC1, r0x1a
	MOVFF	PREINC1, r0x19
	MOVFF	PREINC1, r0x18
	MOVFF	PREINC1, r0x17
	MOVFF	PREINC1, r0x16
	MOVFF	PREINC1, r0x15
	MOVFF	PREINC1, r0x14
	MOVFF	PREINC1, r0x13
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

; ; Starting pCode block
__str_0:
	DB	0x3c, 0x4e, 0x4f, 0x20, 0x46, 0x4c, 0x4f, 0x41, 0x54, 0x3e, 0x00


; Statistics:
; code size:	 2050 (0x0802) bytes ( 1.56%)
;           	 1025 (0x0401) words
; udata size:	   16 (0x0010) bytes ( 1.25%)
; access size:	   31 (0x001f) bytes


	end

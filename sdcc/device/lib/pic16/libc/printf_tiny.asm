;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:21:36 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_printf_tiny

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1
	extern	__gptrget3
	extern	__gptrget4
	extern	__gptrget2
	extern	_stdin
	extern	_stdout
	extern	_islower
	extern	_putchar
	extern	_ultoa
	extern	_ltoa

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR1H	equ	0xfe2
FSR2L	equ	0xfd9
FSR2H	equ	0xfda
INDF0	equ	0xfef
POSTINC1	equ	0xfe6
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
PLUSW1	equ	0xfe3
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
; ;ic:1:  _entry($57) :
; ;ic:2: 	proc _printf_tiny [k1 lr0:0 so:13]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( const-char generic* auto) __reentrant fixed}
S_printf_tiny__printf_tiny	code
_printf_tiny:
;	.line	87; stdio/printf_tiny.c	printf_tiny (const char *fmt, ...)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVLW	0x0d
	SUBWF	FSR1L, F
	BTFSS	STATUS, 0
	DECF	FSR1H, F
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
; ;ic:3: 	iTemp1 [k5 lr3:4 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* near* auto}[r0x00 r0x01 ] = &[fmt [k4 lr0:0 so:2]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* auto}]
;	.line	100; stdio/printf_tiny.c	va_start (ap, fmt);
	MOVLW	0x02
	ADDWF	FSR2L, W
	MOVWF	r0x00
	MOVLW	0x00
	ADDWFC	FSR2H, W
; #	MOVWF	r0x01
; #;;ic:4: 	iTemp2 [k6 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x00 r0x01 r0x02 ] = (unsigned-char generic* fixed)iTemp1 [k5 lr3:4 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* near* auto}[r0x00 r0x01 ]
; #	MOVF	r0x01, W
; #	MOVWF	r0x01
; #	MOVWF	r0x01
	MOVWF	r0x01
; #	MOVF	r0x00, W
; #	MOVWF	r0x00
	MOVLW	0x80
	MOVWF	r0x02
; ;ic:5: 	iTemp0 [k2 lr5:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_tiny_ap_1_41}[r0x00 r0x01 r0x02 ] = iTemp2 [k6 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x3 {const-unsigned-char literal}
	MOVLW	0x03
	ADDWF	r0x00, F
	MOVLW	0x00
	ADDWFC	r0x01, F
	ADDWFC	r0x02, F
; ;ic:6: 	iTemp4 [k8 lr6:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_tiny_ch_1_41}[r0x03 r0x04 r0x05 ] := fmt [k4 lr0:0 so:2]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* auto}
;	.line	101; stdio/printf_tiny.c	ch = fmt;
	MOVLW	0x02
	MOVFF	PLUSW2, r0x03
	MOVLW	0x03
	MOVFF	PLUSW2, r0x04
	MOVLW	0x04
	MOVFF	PLUSW2, r0x05
; ;ic:7: 	iTemp82 [k107 lr7:159 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}{ sir@ _printf_tiny_str1_1_41}[r0x06 r0x07 ] = &[_printf_tiny_buffer_1_41 [k93 lr0:0 so:-13]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char [13d] auto}]
;	.line	103; stdio/printf_tiny.c	while (*ch) //for (; *fmt ; fmt++ )
	MOVLW	0xf4
	ADDWF	FSR2L, W
	MOVWF	r0x06
	MOVLW	0xff
	ADDWFC	FSR2H, W
	MOVWF	r0x07
; ;ic:9:  _whilecontinue_0($53) :
; ;ic:10: 	iTemp6 [k11 lr10:155 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x08 ] = @[iTemp4 [k8 lr6:159 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_tiny_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00157_DS_:
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x08
; ;ic:11: 	if iTemp6 [k11 lr10:155 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x08 ] == 0 goto _return($56)
	MOVF	r0x08, W
	BTFSC	STATUS, 2
	BRA	_00160_DS_
; ;ic:12: 	iTemp9 [k14 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp6 [k11 lr10:155 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x08 ] == 0x25 {const-char literal}
;	.line	105; stdio/printf_tiny.c	if (*ch == '%')
	MOVF	r0x08, W
	XORLW	0x25
	BZ	_00215_DS_
	BRA	_00155_DS_
; ;ic:13: 	if iTemp9 [k14 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_16($51)
; ;ic:14: 	iTemp10 [k15 lr14:86 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_flong_1_41}[r0x09 ] := 0x0 {const-unsigned-char literal}
_00215_DS_:
;	.line	107; stdio/printf_tiny.c	ISLONG = 0;
	CLRF	r0x09
; ;ic:15: 	iTemp11 [k17 lr15:71 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_fstr_1_41}[r0x0a ] := 0x0 {const-unsigned-char literal}
;	.line	108; stdio/printf_tiny.c	ISSTR = 0;
	CLRF	r0x0a
; ;ic:16: 	iTemp12 [k19 lr16:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_fchar_1_41}[r0x0b ] := 0x0 {const-unsigned-char literal}
;	.line	109; stdio/printf_tiny.c	ISCHAR = 0;
	CLRF	r0x0b
; ;ic:17: 	iTemp13 [k21 lr17:115 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_nosign_1_41}[r0x0c ] := 0x0 {const-unsigned-char literal}
;	.line	110; stdio/printf_tiny.c	HAVESIGN = 0;
	CLRF	r0x0c
; ;ic:18: 	iTemp14 [k23 lr18:145 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_radix_1_41}[r0x0d ] := 0x0 {const-unsigned-char literal}
;	.line	111; stdio/printf_tiny.c	radix = 0;
	CLRF	r0x0d
; ;ic:19: 	iTemp15 [k25 lr19:148 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_upcase_1_41}[r0x0e ] := 0x0 {const-unsigned-char literal}
;	.line	112; stdio/printf_tiny.c	upcase = 0;
	CLRF	r0x0e
; ;ic:20: 	iTemp4 [k8 lr6:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_tiny_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp4 [k8 lr6:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_tiny_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	113; stdio/printf_tiny.c	ch++;
	INCF	r0x03, F
	BNC	_00216_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:21: 	iTemp19 [k30 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0f ] = @[iTemp4 [k8 lr6:159 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_tiny_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00216_DS_:
;	.line	115; stdio/printf_tiny.c	if (*ch == 'u')
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x0f
; #;;ic:22: 	iTemp20 [k31 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp19 [k30 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0f ] == 0x75 {const-char literal}
; #	MOVF	r0x0f, W
	XORLW	0x75
	BNZ	_00106_DS_
; ;ic:23: 	if iTemp20 [k31 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_0($2)
; ;ic:24: 	iTemp13 [k21 lr17:115 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_nosign_1_41}[r0x0c ] := 0x1 {const-unsigned-char literal}
;	.line	117; stdio/printf_tiny.c	HAVESIGN = 1;
	MOVLW	0x01
	MOVWF	r0x0c
; ;ic:25: 	iTemp4 [k8 lr6:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_tiny_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp4 [k8 lr6:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_tiny_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	118; stdio/printf_tiny.c	++ch;
	INCF	r0x03, F
	BNC	_00106_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:26:  _iffalse_0($2) :
; ;ic:27: 	iTemp23 [k34 lr27:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0f ] = @[iTemp4 [k8 lr6:159 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_tiny_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00219_DS_:
_00106_DS_:
;	.line	121; stdio/printf_tiny.c	if (*ch == 'l')
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x0f
; #;;ic:28: 	iTemp24 [k35 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp23 [k34 lr27:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0f ] == 0x6c {const-char literal}
; #	MOVF	r0x0f, W
	MOVWF	r0x0f
	XORLW	0x6c
	BNZ	_00110_DS_
; ;ic:29: 	if iTemp24 [k35 lr28:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_2($6)
; ;ic:30: 	iTemp10 [k15 lr14:86 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_flong_1_41}[r0x09 ] := 0x1 {const-unsigned-char literal}
;	.line	123; stdio/printf_tiny.c	ISLONG = 1;
	MOVLW	0x01
	MOVWF	r0x09
; ;ic:31: 	iTemp4 [k8 lr6:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_tiny_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp4 [k8 lr6:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_tiny_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	124; stdio/printf_tiny.c	++ch;
	INCF	r0x03, F
	BNC	_00222_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:32: 	 goto _ifend_2($7)
_00222_DS_:
	BRA	_00111_DS_
; ;ic:33:  _iffalse_2($6) :
; ;ic:34: 	iTemp28 [k39 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp23 [k34 lr27:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0f ] == 0x68 {const-char literal}
_00110_DS_:
;	.line	126; stdio/printf_tiny.c	else if (*ch == 'h')
	MOVF	r0x0f, W
	XORLW	0x68
	BNZ	_00111_DS_
; ;ic:35: 	if iTemp28 [k39 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _ifend_2($7)
; ;ic:36: 	iTemp12 [k19 lr16:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_fchar_1_41}[r0x0b ] := 0x1 {const-unsigned-char literal}
;	.line	128; stdio/printf_tiny.c	ISCHAR = 1;
	MOVLW	0x01
	MOVWF	r0x0b
; ;ic:37: 	iTemp4 [k8 lr6:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_tiny_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp4 [k8 lr6:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_tiny_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	129; stdio/printf_tiny.c	++ch;
	INCF	r0x03, F
	BNC	_00111_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:38:  _ifend_2($7) :
; ;ic:39: 	iTemp31 [k42 lr39:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0f ] = @[iTemp4 [k8 lr6:159 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_tiny_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
_00225_DS_:
_00111_DS_:
;	.line	132; stdio/printf_tiny.c	if (*ch == 's')
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; #	MOVWF	r0x0f
; #;;ic:40: 	iTemp32 [k43 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp31 [k42 lr39:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0f ] == 0x73 {const-char literal}
; #	MOVF	r0x0f, W
	MOVWF	r0x0f
	XORLW	0x73
	BNZ	_00127_DS_
; ;ic:41: 	if iTemp32 [k43 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_8($23)
; ;ic:42: 	iTemp11 [k17 lr15:71 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_fstr_1_41}[r0x0a ] := 0x1 {const-unsigned-char literal}
;	.line	133; stdio/printf_tiny.c	ISSTR = 1;
	MOVLW	0x01
	MOVWF	r0x0a
; ;ic:43: 	 goto _ifend_8($24)
	BRA	_00128_DS_
; ;ic:44:  _iffalse_8($23) :
; ;ic:45: 	iTemp35 [k46 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp31 [k42 lr39:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0f ] == 0x64 {const-char literal}
_00127_DS_:
;	.line	134; stdio/printf_tiny.c	else if (*ch == 'd')
	MOVF	r0x0f, W
	XORLW	0x64
	BNZ	_00124_DS_
; ;ic:46: 	if iTemp35 [k46 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_7($20)
; ;ic:47: 	iTemp14 [k23 lr18:145 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_radix_1_41}[r0x0d ] := 0xa {const-unsigned-char literal}
;	.line	135; stdio/printf_tiny.c	radix = 10;
	MOVLW	0x0a
	MOVWF	r0x0d
; ;ic:48: 	 goto _ifend_8($24)
	BRA	_00128_DS_
; ;ic:49:  _iffalse_7($20) :
; ;ic:50: 	iTemp38 [k49 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp31 [k42 lr39:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0f ] == 0x78 {const-char literal}
_00124_DS_:
;	.line	136; stdio/printf_tiny.c	else if (*ch == 'x')
	MOVF	r0x0f, W
	XORLW	0x78
	BNZ	_00121_DS_
; ;ic:51: 	if iTemp38 [k49 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_6($17)
; ;ic:52: 	iTemp14 [k23 lr18:145 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_radix_1_41}[r0x0d ] := 0x10 {const-unsigned-char literal}
;	.line	138; stdio/printf_tiny.c	radix = 16;
	MOVLW	0x10
	MOVWF	r0x0d
; ;ic:53: 	iTemp15 [k25 lr19:148 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_upcase_1_41}[r0x0e ] := 0x0 {const-unsigned-char literal}
;	.line	139; stdio/printf_tiny.c	upcase = 0;
	CLRF	r0x0e
; ;ic:54: 	 goto _ifend_8($24)
	BRA	_00128_DS_
; ;ic:55:  _iffalse_6($17) :
; ;ic:56: 	iTemp41 [k52 lr56:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp31 [k42 lr39:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0f ] == 0x58 {const-char literal}
_00121_DS_:
;	.line	141; stdio/printf_tiny.c	else if (*ch == 'X')
	MOVF	r0x0f, W
	XORLW	0x58
	BNZ	_00118_DS_
; ;ic:57: 	if iTemp41 [k52 lr56:57 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_5($14)
; ;ic:58: 	iTemp14 [k23 lr18:145 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_radix_1_41}[r0x0d ] := 0x10 {const-unsigned-char literal}
;	.line	143; stdio/printf_tiny.c	radix = 16;
	MOVLW	0x10
	MOVWF	r0x0d
; ;ic:59: 	iTemp15 [k25 lr19:148 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_upcase_1_41}[r0x0e ] := 0x1 {const-unsigned-char literal}
;	.line	144; stdio/printf_tiny.c	upcase = 1;
	MOVLW	0x01
	MOVWF	r0x0e
; ;ic:60: 	 goto _ifend_8($24)
	BRA	_00128_DS_
; ;ic:61:  _iffalse_5($14) :
; ;ic:62: 	iTemp44 [k55 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp31 [k42 lr39:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0f ] == 0x63 {const-char literal}
_00118_DS_:
;	.line	146; stdio/printf_tiny.c	else if (*ch == 'c')
	MOVF	r0x0f, W
	XORLW	0x63
	BNZ	_00115_DS_
; ;ic:63: 	if iTemp44 [k55 lr62:63 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_4($11)
; ;ic:64: 	iTemp14 [k23 lr18:145 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_radix_1_41}[r0x0d ] := 0x0 {const-unsigned-char literal}
;	.line	147; stdio/printf_tiny.c	radix = 0;
	CLRF	r0x0d
; ;ic:65: 	 goto _ifend_8($24)
	BRA	_00128_DS_
; ;ic:66:  _iffalse_4($11) :
; ;ic:67: 	iTemp47 [k58 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp31 [k42 lr39:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0f ] == 0x6f {const-char literal}
_00115_DS_:
;	.line	148; stdio/printf_tiny.c	else if (*ch == 'o')
	MOVF	r0x0f, W
	XORLW	0x6f
	BNZ	_00128_DS_
; ;ic:68: 	if iTemp47 [k58 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _ifend_8($24)
; ;ic:69: 	iTemp14 [k23 lr18:145 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_radix_1_41}[r0x0d ] := 0x8 {const-unsigned-char literal}
;	.line	149; stdio/printf_tiny.c	radix = 8;
	MOVLW	0x08
	MOVWF	r0x0d
; ;ic:70:  _ifend_8($24) :
; ;ic:71: 	if iTemp11 [k17 lr15:71 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_fstr_1_41}[r0x0a ] == 0 goto _iffalse_15($48)
_00128_DS_:
;	.line	155; stdio/printf_tiny.c	if (ISSTR)
	MOVF	r0x0a, W
	BZ	_00152_DS_
; ;ic:72: 	iTemp49 [k61 lr72:74 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x0a r0x0f r0x10 ] = iTemp0 [k2 lr5:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_tiny_ap_1_41}[r0x00 r0x01 r0x02 ] + 0x3 {const-unsigned-char literal}
;	.line	157; stdio/printf_tiny.c	str = va_arg (ap, const char *);
	MOVF	r0x00, W
	ADDLW	0x03
	MOVWF	r0x0a
	MOVLW	0x00
	ADDWFC	r0x01, W
	MOVWF	r0x0f
	MOVLW	0x00
	ADDWFC	r0x02, W
	MOVWF	r0x10
; ;ic:73: 	iTemp0 [k2 lr5:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_tiny_ap_1_41}[r0x00 r0x01 r0x02 ] := iTemp49 [k61 lr72:74 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x0a r0x0f r0x10 ]
	MOVFF	r0x0a, r0x00
	MOVFF	r0x0f, r0x01
	MOVFF	r0x10, r0x02
; ;ic:74: 	iTemp50 [k62 lr74:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x0a r0x0f r0x10 ] = iTemp49 [k61 lr72:74 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x0a r0x0f r0x10 ] - 0x3 {unsigned-char literal}
	MOVLW	0xfd
	ADDWF	r0x0a, F
	MOVLW	0xff
	ADDWFC	r0x0f, F
	ADDWFC	r0x10, F
; ;ic:75: 	iTemp51 [k63 lr75:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* generic* fixed}[r0x0a r0x0f r0x10 ] = (const-char generic* generic* fixed)iTemp50 [k62 lr74:75 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x0a r0x0f r0x10 ]
; #	MOVF	r0x10, W
; #	MOVWF	r0x10
; #	MOVF	r0x10, W
; #	MOVF	r0x0f, W
; #	MOVF	r0x0f, W
; #	MOVWF	r0x0f
; #	MOVF	r0x0f, W
; #	MOVF	r0x0a, W
; #	MOVF	r0x0a, W
; #	MOVWF	r0x0a
; #;;ic:76: 	iTemp58 [k72 lr76:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* auto}[r0x0a r0x0f r0x10 ] = @[iTemp51 [k63 lr75:76 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* generic* fixed}[r0x0a r0x0f r0x10 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x0a, FSR0L
	MOVFF	r0x0f, PRODL
	MOVF	r0x10, W
	CALL	__gptrget3
	MOVWF	r0x0a
	MOVFF	PRODL, r0x0f
	MOVFF	PRODH, r0x10
; ;ic:78:  _whilecontinue_1($25) :
; ;ic:79: 	iTemp54 [k66 lr79:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x11 ] = @[iTemp58 [k72 lr76:84 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* auto}[r0x0a r0x0f r0x10 ] + 0x0 {const-unsigned-char literal}]
_00129_DS_:
;	.line	158; stdio/printf_tiny.c	while (*str)
	MOVFF	r0x0a, FSR0L
	MOVFF	r0x0f, PRODL
	MOVF	r0x10, W
	CALL	__gptrget1
	MOVWF	r0x11
; ;ic:80: 	if iTemp54 [k66 lr79:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x11 ] == 0 goto _ifend_16($52)
	MOVF	r0x11, W
	BTFSC	STATUS, 2
	BRA	_00156_DS_
; ;ic:81: 	send iTemp54 [k66 lr79:81 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x11 ]{argreg = 1}
; ;ic:82: 	iTemp57 [k71 lr82:82 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _putchar [k67 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char fixed) fixed}
;	.line	160; stdio/printf_tiny.c	putchar (*str);
	MOVF	r0x11, W
	CALL	_putchar
; ;ic:83: 	iTemp58 [k72 lr76:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* auto}[r0x0a r0x0f r0x10 ] = iTemp58 [k72 lr76:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* auto}[r0x0a r0x0f r0x10 ] + 0x1 {const-unsigned-char literal}
;	.line	161; stdio/printf_tiny.c	++str;
	INCF	r0x0a, F
	BNC	_00238_DS_
	INFSNZ	r0x0f, F
	INCF	r0x10, F
; ;ic:84: 	 goto _whilecontinue_1($25)
_00238_DS_:
	BRA	_00129_DS_
; ;ic:85:  _iffalse_15($48) :
; ;ic:86: 	if iTemp10 [k15 lr14:86 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_flong_1_41}[r0x09 ] == 0 goto _iffalse_11($34)
_00152_DS_:
;	.line	166; stdio/printf_tiny.c	if (ISLONG)
	MOVF	r0x09, W
	BZ	_00138_DS_
; ;ic:87: 	iTemp60 [k75 lr87:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x09 r0x0a r0x0f ] = iTemp0 [k2 lr5:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_tiny_ap_1_41}[r0x00 r0x01 r0x02 ] + 0x4 {const-unsigned-char literal}
;	.line	167; stdio/printf_tiny.c	val = va_arg (ap, long);
	MOVF	r0x00, W
	ADDLW	0x04
	MOVWF	r0x09
	MOVLW	0x00
	ADDWFC	r0x01, W
	MOVWF	r0x0a
	MOVLW	0x00
	ADDWFC	r0x02, W
	MOVWF	r0x0f
; ;ic:88: 	iTemp0 [k2 lr5:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_tiny_ap_1_41}[r0x00 r0x01 r0x02 ] := iTemp60 [k75 lr87:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x09 r0x0a r0x0f ]
	MOVFF	r0x09, r0x00
	MOVFF	r0x0a, r0x01
	MOVFF	r0x0f, r0x02
; ;ic:89: 	iTemp61 [k76 lr89:90 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x09 r0x0a r0x0f ] = iTemp60 [k75 lr87:89 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x09 r0x0a r0x0f ] - 0x4 {unsigned-char literal}
	MOVLW	0xfc
	ADDWF	r0x09, F
	MOVLW	0xff
	ADDWFC	r0x0a, F
	ADDWFC	r0x0f, F
; ;ic:90: 	iTemp62 [k77 lr90:91 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int generic* fixed}[r0x09 r0x0a r0x0f ] = (long-int generic* fixed)iTemp61 [k76 lr89:90 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x09 r0x0a r0x0f ]
; #	MOVF	r0x0f, W
; #	MOVWF	r0x0f
; #	MOVF	r0x0f, W
; #	MOVF	r0x0a, W
; #	MOVF	r0x0a, W
; #	MOVWF	r0x0a
; #	MOVF	r0x0a, W
; #	MOVF	r0x09, W
; #	MOVF	r0x09, W
; #	MOVWF	r0x09
; #;;ic:91: 	iTemp59 [k73 lr91:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int auto}{ sir@ _printf_tiny_val_1_41}[r0x09 r0x0a r0x0f r0x10 ] = @[iTemp62 [k77 lr90:91 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{long-int generic* fixed}[r0x09 r0x0a r0x0f ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0a, PRODL
	MOVF	r0x0f, W
	CALL	__gptrget4
	MOVWF	r0x09
	MOVFF	PRODL, r0x0a
	MOVFF	PRODH, r0x0f
	MOVFF	FSR0L, r0x10
; ;ic:92: 	 goto _ifend_11($35)
	BRA	_00139_DS_
; ;ic:93:  _iffalse_11($34) :
; ;ic:94: 	if iTemp12 [k19 lr16:94 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_fchar_1_41}[r0x0b ] == 0 goto _iffalse_10($31)
_00138_DS_:
;	.line	168; stdio/printf_tiny.c	else if (ISCHAR)
	MOVF	r0x0b, W
	BZ	_00135_DS_
; ;ic:95: 	iTemp64 [k79 lr95:97 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x0b r0x11 r0x12 ] = iTemp0 [k2 lr5:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_tiny_ap_1_41}[r0x00 r0x01 r0x02 ] + 0x2 {const-unsigned-char literal}
;	.line	170; stdio/printf_tiny.c	val = (unsigned char) va_arg (ap, int);       // FIXME: SDCC casts char arguments into ints
	MOVF	r0x00, W
	ADDLW	0x02
	MOVWF	r0x0b
	MOVLW	0x00
	ADDWFC	r0x01, W
	MOVWF	r0x11
	MOVLW	0x00
	ADDWFC	r0x02, W
	MOVWF	r0x12
; ;ic:96: 	iTemp0 [k2 lr5:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_tiny_ap_1_41}[r0x00 r0x01 r0x02 ] := iTemp64 [k79 lr95:97 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x0b r0x11 r0x12 ]
	MOVFF	r0x0b, r0x00
	MOVFF	r0x11, r0x01
	MOVFF	r0x12, r0x02
; ;ic:97: 	iTemp65 [k80 lr97:98 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x0b r0x11 r0x12 ] = iTemp64 [k79 lr95:97 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x0b r0x11 r0x12 ] - 0x2 {unsigned-char literal}
	MOVLW	0xfe
	ADDWF	r0x0b, F
	MOVLW	0xff
	ADDWFC	r0x11, F
	ADDWFC	r0x12, F
; ;ic:98: 	iTemp66 [k81 lr98:99 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* fixed}[r0x0b r0x11 r0x12 ] = (int generic* fixed)iTemp65 [k80 lr97:98 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x0b r0x11 r0x12 ]
; #	MOVF	r0x12, W
; #	MOVWF	r0x12
; #	MOVF	r0x12, W
; #	MOVF	r0x11, W
; #	MOVF	r0x11, W
; #	MOVWF	r0x11
; #	MOVF	r0x11, W
; #	MOVF	r0x0b, W
; #	MOVF	r0x0b, W
; #	MOVWF	r0x0b
; #;;ic:99: 	iTemp67 [k82 lr99:100 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x0b r0x11 ] = @[iTemp66 [k81 lr98:99 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* fixed}[r0x0b r0x11 r0x12 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x11, PRODL
	MOVF	r0x12, W
	CALL	__gptrget2
	MOVWF	r0x0b
; ;ic:100: 	iTemp68 [k83 lr100:101 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x0b ] = (unsigned-char fixed)iTemp67 [k82 lr99:100 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x0b r0x11 ]
; ;ic:101: 	iTemp59 [k73 lr91:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int auto}{ sir@ _printf_tiny_val_1_41}[r0x09 r0x0a r0x0f r0x10 ] = (long-int auto)iTemp68 [k83 lr100:101 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x0b ]
	MOVFF	r0x0b, r0x09
	CLRF	r0x0a
	CLRF	r0x0f
	CLRF	r0x10
; ;ic:102: 	if iTemp13 [k21 lr17:115 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_nosign_1_41}[r0x0c ] != 0 goto _ifend_11($35)
;	.line	171; stdio/printf_tiny.c	if (!HAVESIGN)
	MOVF	r0x0c, W
	BNZ	_00139_DS_
; ;ic:103: 	iTemp70 [k85 lr103:104 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x0b ] = (char fixed)iTemp59 [k73 lr91:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int auto}{ sir@ _printf_tiny_val_1_41}[r0x09 r0x0a r0x0f r0x10 ]
;	.line	172; stdio/printf_tiny.c	val = (char) val;   // FIXME cont'd: sign-extend if required
	MOVF	r0x09, W
	MOVWF	r0x0b
; ;ic:104: 	iTemp59 [k73 lr91:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int auto}{ sir@ _printf_tiny_val_1_41}[r0x09 r0x0a r0x0f r0x10 ] = (long-int auto)iTemp70 [k85 lr103:104 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x0b ]
	MOVFF	r0x0b, r0x09
	CLRF	WREG
	BTFSC	r0x0b, 7
	MOVLW	0xff
	MOVWF	r0x0a
	MOVWF	r0x0f
	MOVWF	r0x10
; ;ic:105: 	 goto _ifend_11($35)
	BRA	_00139_DS_
; ;ic:106:  _iffalse_10($31) :
; ;ic:107: 	iTemp72 [k87 lr107:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x0b r0x11 r0x12 ] = iTemp0 [k2 lr5:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_tiny_ap_1_41}[r0x00 r0x01 r0x02 ] + 0x2 {const-unsigned-char literal}
_00135_DS_:
;	.line	175; stdio/printf_tiny.c	val = va_arg (ap, int);
	MOVF	r0x00, W
	ADDLW	0x02
	MOVWF	r0x0b
	MOVLW	0x00
	ADDWFC	r0x01, W
	MOVWF	r0x11
	MOVLW	0x00
	ADDWFC	r0x02, W
	MOVWF	r0x12
; ;ic:108: 	iTemp0 [k2 lr5:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_tiny_ap_1_41}[r0x00 r0x01 r0x02 ] := iTemp72 [k87 lr107:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x0b r0x11 r0x12 ]
	MOVFF	r0x0b, r0x00
	MOVFF	r0x11, r0x01
	MOVFF	r0x12, r0x02
; ;ic:109: 	iTemp73 [k88 lr109:110 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x0b r0x11 r0x12 ] = iTemp72 [k87 lr107:109 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x0b r0x11 r0x12 ] - 0x2 {unsigned-char literal}
	MOVLW	0xfe
	ADDWF	r0x0b, F
	MOVLW	0xff
	ADDWFC	r0x11, F
	ADDWFC	r0x12, F
; ;ic:110: 	iTemp74 [k89 lr110:111 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* fixed}[r0x0b r0x11 r0x12 ] = (int generic* fixed)iTemp73 [k88 lr109:110 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x0b r0x11 r0x12 ]
; #	MOVF	r0x12, W
; #	MOVWF	r0x12
; #	MOVF	r0x12, W
; #	MOVF	r0x11, W
; #	MOVF	r0x11, W
; #	MOVWF	r0x11
; #	MOVF	r0x11, W
; #	MOVF	r0x0b, W
; #	MOVF	r0x0b, W
; #	MOVWF	r0x0b
; #;;ic:111: 	iTemp75 [k90 lr111:112 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x0b r0x11 ] = @[iTemp74 [k89 lr110:111 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* fixed}[r0x0b r0x11 r0x12 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x11, PRODL
	MOVF	r0x12, W
	CALL	__gptrget2
	MOVWF	r0x0b
	MOVFF	PRODL, r0x11
; ;ic:112: 	iTemp59 [k73 lr91:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int auto}{ sir@ _printf_tiny_val_1_41}[r0x09 r0x0a r0x0f r0x10 ] = (long-int auto)iTemp75 [k90 lr111:112 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x0b r0x11 ]
	MOVFF	r0x0b, r0x09
	MOVFF	r0x11, r0x0a
	CLRF	WREG
	BTFSC	r0x11, 7
	MOVLW	0xff
	MOVWF	r0x0f
	MOVWF	r0x10
; ;ic:113:  _ifend_11($35) :
; ;ic:114: 	if iTemp14 [k23 lr18:145 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_radix_1_41}[r0x0d ] == 0 goto _iffalse_14($45)
_00139_DS_:
;	.line	177; stdio/printf_tiny.c	if (radix)
	MOVF	r0x0d, W
	BTFSC	STATUS, 2
	BRA	_00149_DS_
; ;ic:115: 	if iTemp13 [k21 lr17:115 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_nosign_1_41}[r0x0c ] == 0 goto _iffalse_12($37)
;	.line	179; stdio/printf_tiny.c	if (HAVESIGN)
	MOVF	r0x0c, W
	BZ	_00141_DS_
; ;ic:116: 	send iTemp59 [k73 lr91:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int auto}{ sir@ _printf_tiny_val_1_41}[r0x09 r0x0a r0x0f r0x10 ]{argreg = 1}
; ;ic:117: 	send iTemp82 [k107 lr7:159 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}{ sir@ _printf_tiny_str1_1_41}[r0x06 r0x07 ]{argreg = 2}
; ;ic:118: 	send iTemp14 [k23 lr18:145 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_radix_1_41}[r0x0d ]{argreg = 3}
; ;ic:119: 	iTemp78 [k98 lr119:119 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _ultoa [k92 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-long-int fixed, char near* fixed, unsigned-char fixed) fixed}
;	.line	180; stdio/printf_tiny.c	ultoa (val, buffer, radix);
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	CALL	_ultoa
	MOVLW	0x07
	ADDWF	FSR1L, F
; ;ic:120: 	 goto _ifend_12($38)
	BRA	_00142_DS_
; ;ic:121:  _iffalse_12($37) :
; ;ic:122: 	send iTemp59 [k73 lr91:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int auto}{ sir@ _printf_tiny_val_1_41}[r0x09 r0x0a r0x0f r0x10 ]{argreg = 1}
; ;ic:123: 	send iTemp82 [k107 lr7:159 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}{ sir@ _printf_tiny_str1_1_41}[r0x06 r0x07 ]{argreg = 2}
; ;ic:124: 	send iTemp14 [k23 lr18:145 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_radix_1_41}[r0x0d ]{argreg = 3}
; ;ic:125: 	iTemp80 [k104 lr125:125 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _ltoa [k99 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( long-int fixed, char near* fixed, unsigned-char fixed) fixed}
_00141_DS_:
;	.line	182; stdio/printf_tiny.c	ltoa (val, buffer, radix);
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x10, W
	MOVWF	POSTDEC1
	MOVF	r0x0f, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	CALL	_ltoa
	MOVLW	0x07
	ADDWF	FSR1L, F
; ;ic:126:  _ifend_12($38) :
; ;ic:127: 	iTemp91 [k118 lr127:148 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x0b r0x0c ] := iTemp82 [k107 lr7:159 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}{ sir@ _printf_tiny_str1_1_41}[r0x06 r0x07 ]
_00142_DS_:
;	.line	184; stdio/printf_tiny.c	str1 = buffer;
	MOVFF	r0x06, r0x0b
	MOVFF	r0x07, r0x0c
; ;ic:129:  _whilecontinue_2($41) :
; ;ic:130: 	iTemp84 [k109 lr130:132 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x11 ] = @[iTemp91 [k118 lr127:148 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x0b r0x0c ] + 0x0 {const-unsigned-char literal}]
_00145_DS_:
;	.line	185; stdio/printf_tiny.c	while ((*str1))
	MOVFF	r0x0b, FSR0L
	MOVFF	r0x0c, FSR0H
	MOVFF	INDF0, r0x11
; ;ic:131: 	if iTemp84 [k109 lr130:132 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x11 ] == 0 goto _ifend_16($52)
	MOVF	r0x11, W
	BZ	_00156_DS_
; ;ic:132: 	iTemp86 [k111 lr132:133 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x11 ] := iTemp84 [k109 lr130:132 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x11 ]
; ;ic:133: 	iTemp14 [k23 lr18:145 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_radix_1_41}[r0x0d ] := iTemp86 [k111 lr132:133 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x11 ]
;	.line	187; stdio/printf_tiny.c	radix = *str1;
	MOVFF	r0x11, r0x0d
; ;ic:134: 	if iTemp15 [k25 lr19:148 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_upcase_1_41}[r0x0e ] == 0 goto _iffalse_13($40)
;	.line	188; stdio/printf_tiny.c	if (upcase)
	MOVF	r0x0e, W
	BZ	_00144_DS_
; ;ic:135: 	send iTemp14 [k23 lr18:145 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_radix_1_41}[r0x0d ]{argreg = 1}
; ;ic:136: 	iTemp87 [k114 lr136:137 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x11 ] = call _islower [k112 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( unsigned-char fixed) fixed}
;	.line	189; stdio/printf_tiny.c	radix = toupper (radix);
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	CALL	_islower
	MOVWF	r0x11
	MOVF	POSTINC1, F
; ;ic:137: 	if iTemp87 [k114 lr136:137 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x11 ] == 0 goto iTempLbl0($58)
	MOVF	r0x11, W
	BZ	_00162_DS_
; ;ic:138: 	iTemp88 [k115 lr138:143 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char auto}[r0x11 ] = iTemp14 [k23 lr18:145 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_radix_1_41}[r0x0d ] & 0xffffffdf {char literal}
	MOVLW	0xdf
	ANDWF	r0x0d, W
	MOVWF	r0x11
; ;ic:139: 	 goto iTempLbl1($59)
	BRA	_00163_DS_
; ;ic:140:  iTempLbl0($58) :
; ;ic:141: 	iTemp88 [k115 lr138:143 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char auto}[r0x11 ] := iTemp14 [k23 lr18:145 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_radix_1_41}[r0x0d ]
_00162_DS_:
	MOVFF	r0x0d, r0x11
; ;ic:142:  iTempLbl1($59) :
; ;ic:143: 	iTemp14 [k23 lr18:145 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_radix_1_41}[r0x0d ] := iTemp88 [k115 lr138:143 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char auto}[r0x11 ]
_00163_DS_:
	MOVFF	r0x11, r0x0d
; ;ic:144:  _iffalse_13($40) :
; ;ic:145: 	send iTemp14 [k23 lr18:145 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_tiny_radix_1_41}[r0x0d ]{argreg = 1}
; ;ic:146: 	iTemp90 [k117 lr146:146 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _putchar [k67 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char fixed) fixed}
_00144_DS_:
;	.line	190; stdio/printf_tiny.c	putchar (radix);
	MOVF	r0x0d, W
	CALL	_putchar
; ;ic:147: 	iTemp91 [k118 lr127:148 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x0b r0x0c ] = iTemp91 [k118 lr127:148 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x0b r0x0c ] + 0x1 {const-unsigned-char literal}
;	.line	191; stdio/printf_tiny.c	++str1;
	INFSNZ	r0x0b, F
	INCF	r0x0c, F
; ;ic:148: 	 goto _whilecontinue_2($41)
	BRA	_00145_DS_
; ;ic:149:  _iffalse_14($45) :
; ;ic:150: 	iTemp92 [k119 lr150:151 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x09 ] = (char fixed)iTemp59 [k73 lr91:150 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int auto}{ sir@ _printf_tiny_val_1_41}[r0x09 r0x0a r0x0f r0x10 ]
; ;ic:151: 	send iTemp92 [k119 lr150:151 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x09 ]{argreg = 1}
; ;ic:152: 	iTemp93 [k120 lr152:152 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _putchar [k67 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char fixed) fixed}
_00149_DS_:
;	.line	195; stdio/printf_tiny.c	putchar ((char) val);
	MOVF	r0x09, W
	CALL	_putchar
; ;ic:153: 	 goto _ifend_16($52)
	BRA	_00156_DS_
; ;ic:154:  _iffalse_16($51) :
; ;ic:155: 	send iTemp6 [k11 lr10:155 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x08 ]{argreg = 1}
; ;ic:156: 	iTemp96 [k123 lr156:156 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _putchar [k67 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char fixed) fixed}
_00155_DS_:
;	.line	199; stdio/printf_tiny.c	putchar (*ch);
	MOVF	r0x08, W
	CALL	_putchar
; ;ic:157:  _ifend_16($52) :
; ;ic:158: 	iTemp4 [k8 lr6:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_tiny_ch_1_41}[r0x03 r0x04 r0x05 ] = iTemp4 [k8 lr6:159 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_tiny_ch_1_41}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
_00156_DS_:
;	.line	201; stdio/printf_tiny.c	++ch;
	INCF	r0x03, F
	BNC	_00240_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:159: 	 goto _whilecontinue_0($53)
_00240_DS_:
	BRA	_00157_DS_
; ;ic:160:  _return($56) :
; ;ic:161: 	eproc _printf_tiny [k1 lr0:0 so:13]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( const-char generic* auto) __reentrant fixed}
_00160_DS_:
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
	MOVWF	POSTINC1
	MOVLW	0x0c
	ADDWF	FSR1L, F
	BTFSC	STATUS, 0
	INCF	FSR1H, F
	COMF	WREG, F
	MOVF	PLUSW1, W
	MOVFF	PREINC1, FSR2L
	RETURN	



; Statistics:
; code size:	 1002 (0x03ea) bytes ( 0.76%)
;           	  501 (0x01f5) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   19 (0x0013) bytes


	end

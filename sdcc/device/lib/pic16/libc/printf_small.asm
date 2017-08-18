;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:21:35 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_printf_small

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1
	extern	__gptrget3
	extern	__gptrget4
	extern	__gptrget2
	extern	_stdin
	extern	_stdout
	extern	_putchar
	extern	_ltoa
	extern	_x_ftoa

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
FSR2H	equ	0xfda
INDF0	equ	0xfef
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

udata_printf_small_0	udata
_printf_small_buffer_1_32	res	16

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($60) :
; ;ic:2: 	proc _printf_small [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( const-char generic* auto) __reentrant fixed}
S_printf_small__printf_small	code
_printf_small:
;	.line	59; stdio/printf_small.c	printf_small (const char *fmt, ...)
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
; ;ic:3: 	iTemp0 [k2 lr3:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_small_ch_1_32}[r0x00 r0x01 r0x02 ] := fmt [k4 lr0:0 so:2]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* auto}
;	.line	75; stdio/printf_small.c	ch = fmt;
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: 	iTemp2 [k7 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* near* auto}[r0x03 r0x04 ] = &[fmt [k4 lr0:0 so:2]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* auto}]
;	.line	76; stdio/printf_small.c	va_start (ap, fmt);
	MOVLW	0x02
	ADDWF	FSR2L, W
	MOVWF	r0x03
	MOVLW	0x00
	ADDWFC	FSR2H, W
; #	MOVWF	r0x04
; #;;ic:5: 	iTemp3 [k8 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x03 r0x04 r0x05 ] = (unsigned-char generic* fixed)iTemp2 [k7 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char generic* near* auto}[r0x03 r0x04 ]
; #	MOVF	r0x04, W
; #	MOVWF	r0x04
; #	MOVWF	r0x04
	MOVWF	r0x04
; #	MOVF	r0x03, W
; #	MOVWF	r0x03
	MOVLW	0x80
	MOVWF	r0x05
; ;ic:6: 	iTemp1 [k5 lr6:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_small_ap_1_32}[r0x03 r0x04 r0x05 ] = iTemp3 [k8 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x3 {const-unsigned-char literal}
	MOVLW	0x03
	ADDWF	r0x03, F
	MOVLW	0x00
	ADDWFC	r0x04, F
	ADDWFC	r0x05, F
; ;ic:7: 	iTemp61 [k82 lr7:172 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* fixed}[remat] = &[_printf_small_buffer_1_32 [k73 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char [16d] auto}]
; ;ic:8: 	iTemp72 [k93 lr8:172 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* fixed}[remat] := iTemp61 [k82 lr7:172 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* fixed}[remat]
; ;ic:9: 	iTemp97 [k123 lr9:172 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* fixed}[remat] := iTemp61 [k82 lr7:172 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* fixed}[remat]
; ;ic:11:  _whilecontinue_0($56) :
; ;ic:12: 	iTemp6 [k11 lr12:168 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x06 ] = @[iTemp0 [k2 lr3:172 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_small_ch_1_32}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
_00160_DS_:
;	.line	78; stdio/printf_small.c	while (*ch) //for (; *fmt ; fmt++ )
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x06
; ;ic:13: 	if iTemp6 [k11 lr12:168 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x06 ] == 0 goto _return($59)
	MOVF	r0x06, W
	BTFSC	STATUS, 2
	BRA	_00163_DS_
; ;ic:14: 	iTemp9 [k14 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp6 [k11 lr12:168 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x06 ] == 0x25 {const-char literal}
;	.line	80; stdio/printf_small.c	if (*ch == '%')
	MOVF	r0x06, W
	XORLW	0x25
	BZ	_00223_DS_
	BRA	_00158_DS_
; ;ic:15: 	if iTemp9 [k14 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_13($54)
; ;ic:16: 	iTemp13 [k21 lr16:80 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_ffloat_1_32}[r0x07 ] := 0x0 {const-unsigned-char literal}
_00223_DS_:
;	.line	82; stdio/printf_small.c	flong = fstr = fchar = ffloat = 0;
	CLRF	r0x07
; ;ic:17: 	iTemp12 [k19 lr17:131 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_fchar_1_32}[r0x08 ] := 0x0 {const-unsigned-char literal}
	CLRF	r0x08
; ;ic:18: 	iTemp11 [k17 lr18:64 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_fstr_1_32}[r0x09 ] := 0x0 {const-unsigned-char literal}
	CLRF	r0x09
; ;ic:19: 	iTemp10 [k15 lr19:123 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_flong_1_32}[r0x0a ] := 0x0 {const-unsigned-char literal}
	CLRF	r0x0a
; ;ic:20: 	iTemp14 [k23 lr20:151 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_radix_1_32}[r0x0b ] := 0x0 {const-unsigned-char literal}
;	.line	83; stdio/printf_small.c	radix = 0;
	CLRF	r0x0b
; ;ic:21: 	iTemp0 [k2 lr3:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_small_ch_1_32}[r0x00 r0x01 r0x02 ] = iTemp0 [k2 lr3:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_small_ch_1_32}[r0x00 r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
;	.line	84; stdio/printf_small.c	++ch;
	INCF	r0x00, F
	BNC	_00224_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:22: 	iTemp17 [k27 lr22:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0c ] = @[iTemp0 [k2 lr3:172 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_small_ch_1_32}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
_00224_DS_:
;	.line	86; stdio/printf_small.c	if (*ch == 'l')
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
; #	MOVWF	r0x0c
; #;;ic:23: 	iTemp18 [k28 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp17 [k27 lr22:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0c ] == 0x6c {const-char literal}
; #	MOVF	r0x0c, W
	MOVWF	r0x0c
	XORLW	0x6c
	BNZ	_00108_DS_
; ;ic:24: 	if iTemp18 [k28 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_1($4)
; ;ic:25: 	iTemp10 [k15 lr19:123 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_flong_1_32}[r0x0a ] := 0x1 {const-unsigned-char literal}
;	.line	88; stdio/printf_small.c	flong = 1;
	MOVLW	0x01
	MOVWF	r0x0a
; ;ic:26: 	iTemp0 [k2 lr3:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_small_ch_1_32}[r0x00 r0x01 r0x02 ] = iTemp0 [k2 lr3:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_small_ch_1_32}[r0x00 r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
;	.line	89; stdio/printf_small.c	++ch;
	INCF	r0x00, F
	BNC	_00227_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:27: 	 goto _ifend_1($5)
_00227_DS_:
	BRA	_00109_DS_
; ;ic:28:  _iffalse_1($4) :
; ;ic:29: 	iTemp22 [k32 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp17 [k27 lr22:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0c ] == 0x68 {const-char literal}
_00108_DS_:
;	.line	91; stdio/printf_small.c	else if (*ch == 'h')
	MOVF	r0x0c, W
	XORLW	0x68
	BNZ	_00109_DS_
; ;ic:30: 	if iTemp22 [k32 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _ifend_1($5)
; ;ic:31: 	iTemp12 [k19 lr17:131 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_fchar_1_32}[r0x08 ] := 0x1 {const-unsigned-char literal}
;	.line	93; stdio/printf_small.c	fchar = 1;
	MOVLW	0x01
	MOVWF	r0x08
; ;ic:32: 	iTemp0 [k2 lr3:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_small_ch_1_32}[r0x00 r0x01 r0x02 ] = iTemp0 [k2 lr3:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_small_ch_1_32}[r0x00 r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
;	.line	94; stdio/printf_small.c	++ch;
	INCF	r0x00, F
	BNC	_00109_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:33:  _ifend_1($5) :
; ;ic:34: 	iTemp25 [k35 lr34:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0c ] = @[iTemp0 [k2 lr3:172 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_small_ch_1_32}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
_00230_DS_:
_00109_DS_:
;	.line	97; stdio/printf_small.c	if (*ch == 's')
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
; #	MOVWF	r0x0c
; #;;ic:35: 	iTemp26 [k36 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp25 [k35 lr34:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0c ] == 0x73 {const-char literal}
; #	MOVF	r0x0c, W
	MOVWF	r0x0c
	XORLW	0x73
	BNZ	_00125_DS_
; ;ic:36: 	if iTemp26 [k36 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_7($21)
; ;ic:37: 	iTemp11 [k17 lr18:64 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_fstr_1_32}[r0x09 ] := 0x1 {const-unsigned-char literal}
;	.line	98; stdio/printf_small.c	fstr = 1;
	MOVLW	0x01
	MOVWF	r0x09
; ;ic:38: 	 goto _ifend_7($22)
	BRA	_00126_DS_
; ;ic:39:  _iffalse_7($21) :
; ;ic:40: 	iTemp29 [k39 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp25 [k35 lr34:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0c ] == 0x66 {const-char literal}
_00125_DS_:
;	.line	99; stdio/printf_small.c	else if (*ch == 'f')
	MOVF	r0x0c, W
	XORLW	0x66
	BNZ	_00122_DS_
; ;ic:41: 	if iTemp29 [k39 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_6($18)
; ;ic:42: 	iTemp13 [k21 lr16:80 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_ffloat_1_32}[r0x07 ] := 0x1 {const-unsigned-char literal}
;	.line	100; stdio/printf_small.c	ffloat = 1;
	MOVLW	0x01
	MOVWF	r0x07
; ;ic:43: 	 goto _ifend_7($22)
	BRA	_00126_DS_
; ;ic:44:  _iffalse_6($18) :
; ;ic:45: 	iTemp32 [k42 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp25 [k35 lr34:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0c ] == 0x64 {const-char literal}
_00122_DS_:
;	.line	101; stdio/printf_small.c	else if (*ch == 'd')
	MOVF	r0x0c, W
	XORLW	0x64
	BNZ	_00119_DS_
; ;ic:46: 	if iTemp32 [k42 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_5($15)
; ;ic:47: 	iTemp14 [k23 lr20:151 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_radix_1_32}[r0x0b ] := 0xa {const-unsigned-char literal}
;	.line	102; stdio/printf_small.c	radix = 10;
	MOVLW	0x0a
	MOVWF	r0x0b
; ;ic:48: 	 goto _ifend_7($22)
	BRA	_00126_DS_
; ;ic:49:  _iffalse_5($15) :
; ;ic:50: 	iTemp35 [k45 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp25 [k35 lr34:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0c ] == 0x78 {const-char literal}
_00119_DS_:
;	.line	103; stdio/printf_small.c	else if (*ch == 'x')
	MOVF	r0x0c, W
	XORLW	0x78
	BNZ	_00116_DS_
; ;ic:51: 	if iTemp35 [k45 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_4($12)
; ;ic:52: 	iTemp14 [k23 lr20:151 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_radix_1_32}[r0x0b ] := 0x10 {const-unsigned-char literal}
;	.line	104; stdio/printf_small.c	radix = 16;
	MOVLW	0x10
	MOVWF	r0x0b
; ;ic:53: 	 goto _ifend_7($22)
	BRA	_00126_DS_
; ;ic:54:  _iffalse_4($12) :
; ;ic:55: 	iTemp38 [k48 lr55:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp25 [k35 lr34:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0c ] == 0x63 {const-char literal}
_00116_DS_:
;	.line	105; stdio/printf_small.c	else if (*ch == 'c')
	MOVF	r0x0c, W
	XORLW	0x63
	BNZ	_00113_DS_
; ;ic:56: 	if iTemp38 [k48 lr55:56 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_3($9)
; ;ic:57: 	iTemp14 [k23 lr20:151 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_radix_1_32}[r0x0b ] := 0x0 {const-unsigned-char literal}
;	.line	106; stdio/printf_small.c	radix = 0;
	CLRF	r0x0b
; ;ic:58: 	 goto _ifend_7($22)
	BRA	_00126_DS_
; ;ic:59:  _iffalse_3($9) :
; ;ic:60: 	iTemp41 [k51 lr60:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp25 [k35 lr34:60 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x0c ] == 0x6f {const-char literal}
_00113_DS_:
;	.line	107; stdio/printf_small.c	else if (*ch == 'o')
	MOVF	r0x0c, W
	XORLW	0x6f
	BNZ	_00126_DS_
; ;ic:61: 	if iTemp41 [k51 lr60:61 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _ifend_7($22)
; ;ic:62: 	iTemp14 [k23 lr20:151 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_radix_1_32}[r0x0b ] := 0x8 {const-unsigned-char literal}
;	.line	108; stdio/printf_small.c	radix = 8;
	MOVLW	0x08
	MOVWF	r0x0b
; ;ic:63:  _ifend_7($22) :
; ;ic:64: 	if iTemp11 [k17 lr18:64 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_fstr_1_32}[r0x09 ] == 0 goto _iffalse_12($51)
_00126_DS_:
;	.line	110; stdio/printf_small.c	if (fstr)
	MOVF	r0x09, W
	BZ	_00155_DS_
; ;ic:65: 	iTemp43 [k54 lr65:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x09 r0x0c r0x0d ] = iTemp1 [k5 lr6:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_small_ap_1_32}[r0x03 r0x04 r0x05 ] + 0x3 {const-unsigned-char literal}
;	.line	112; stdio/printf_small.c	str = va_arg (ap, char *);
	MOVF	r0x03, W
	ADDLW	0x03
	MOVWF	r0x09
	MOVLW	0x00
	ADDWFC	r0x04, W
	MOVWF	r0x0c
	MOVLW	0x00
	ADDWFC	r0x05, W
	MOVWF	r0x0d
; ;ic:66: 	iTemp1 [k5 lr6:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_small_ap_1_32}[r0x03 r0x04 r0x05 ] := iTemp43 [k54 lr65:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x09 r0x0c r0x0d ]
	MOVFF	r0x09, r0x03
	MOVFF	r0x0c, r0x04
	MOVFF	r0x0d, r0x05
; ;ic:67: 	iTemp44 [k55 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x09 r0x0c r0x0d ] = iTemp43 [k54 lr65:67 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x09 r0x0c r0x0d ] - 0x3 {unsigned-char literal}
	MOVLW	0xfd
	ADDWF	r0x09, F
	MOVLW	0xff
	ADDWFC	r0x0c, F
	ADDWFC	r0x0d, F
; ;ic:68: 	iTemp45 [k56 lr68:69 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* generic* fixed}[r0x09 r0x0c r0x0d ] = (char generic* generic* fixed)iTemp44 [k55 lr67:68 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x09 r0x0c r0x0d ]
; #	MOVF	r0x0d, W
; #	MOVWF	r0x0d
; #	MOVF	r0x0d, W
; #	MOVF	r0x0c, W
; #	MOVF	r0x0c, W
; #	MOVWF	r0x0c
; #	MOVF	r0x0c, W
; #	MOVF	r0x09, W
; #	MOVF	r0x09, W
; #	MOVWF	r0x09
; #;;ic:69: 	iTemp50 [k62 lr69:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* auto}[r0x09 r0x0c r0x0d ] = @[iTemp45 [k56 lr68:69 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* generic* fixed}[r0x09 r0x0c r0x0d ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0c, PRODL
	MOVF	r0x0d, W
	CALL	__gptrget3
	MOVWF	r0x09
	MOVFF	PRODL, r0x0c
	MOVFF	PRODH, r0x0d
; ;ic:71:  _whilecontinue_1($23) :
; ;ic:72: 	iTemp48 [k59 lr72:74 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ] = @[iTemp50 [k62 lr69:78 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* auto}[r0x09 r0x0c r0x0d ] + 0x0 {const-unsigned-char literal}]
_00127_DS_:
;	.line	113; stdio/printf_small.c	while (*str)
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0c, PRODL
	MOVF	r0x0d, W
	CALL	__gptrget1
	MOVWF	r0x0e
; ;ic:73: 	if iTemp48 [k59 lr72:74 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ] == 0 goto _ifend_13($55)
	MOVF	r0x0e, W
	BTFSC	STATUS, 2
	BRA	_00159_DS_
; ;ic:74: 	iTemp51 [k63 lr74:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ] := iTemp48 [k59 lr72:74 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ]
; ;ic:75: 	iTemp50 [k62 lr69:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* auto}[r0x09 r0x0c r0x0d ] = iTemp50 [k62 lr69:78 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* auto}[r0x09 r0x0c r0x0d ] + 0x1 {const-unsigned-char literal}
;	.line	114; stdio/printf_small.c	putchar (*str++);
	INCF	r0x09, F
	BNC	_00243_DS_
	INFSNZ	r0x0c, F
	INCF	r0x0d, F
; ;ic:76: 	send iTemp51 [k63 lr74:76 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ]{argreg = 1}
; ;ic:77: 	iTemp52 [k65 lr77:77 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _putchar [k60 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char fixed) fixed}
_00243_DS_:
	MOVF	r0x0e, W
	CALL	_putchar
; ;ic:78: 	 goto _whilecontinue_1($23)
	BRA	_00127_DS_
; ;ic:79:  _iffalse_12($51) :
; ;ic:80: 	if iTemp13 [k21 lr16:80 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_ffloat_1_32}[r0x07 ] == 0 goto _iffalse_11($48)
_00155_DS_:
;	.line	116; stdio/printf_small.c	else if (ffloat)
	MOVF	r0x07, W
	BTFSC	STATUS, 2
	BRA	_00152_DS_
; ;ic:81: 	iTemp54 [k68 lr81:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x07 r0x09 r0x0c ] = iTemp1 [k5 lr6:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_small_ap_1_32}[r0x03 r0x04 r0x05 ] + 0x4 {const-unsigned-char literal}
;	.line	118; stdio/printf_small.c	flt = va_arg (ap, float);
	MOVF	r0x03, W
	ADDLW	0x04
	MOVWF	r0x07
	MOVLW	0x00
	ADDWFC	r0x04, W
	MOVWF	r0x09
	MOVLW	0x00
	ADDWFC	r0x05, W
	MOVWF	r0x0c
; ;ic:82: 	iTemp1 [k5 lr6:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_small_ap_1_32}[r0x03 r0x04 r0x05 ] := iTemp54 [k68 lr81:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x07 r0x09 r0x0c ]
	MOVFF	r0x07, r0x03
	MOVFF	r0x09, r0x04
	MOVFF	r0x0c, r0x05
; ;ic:83: 	iTemp55 [k69 lr83:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x07 r0x09 r0x0c ] = iTemp54 [k68 lr81:83 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x07 r0x09 r0x0c ] - 0x4 {unsigned-char literal}
	MOVLW	0xfc
	ADDWF	r0x07, F
	MOVLW	0xff
	ADDWFC	r0x09, F
	ADDWFC	r0x0c, F
; ;ic:84: 	iTemp56 [k70 lr84:85 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{float generic* fixed}[r0x07 r0x09 r0x0c ] = (float generic* fixed)iTemp55 [k69 lr83:84 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x07 r0x09 r0x0c ]
; #	MOVF	r0x0c, W
; #	MOVWF	r0x0c
; #	MOVF	r0x0c, W
; #	MOVF	r0x09, W
; #	MOVF	r0x09, W
; #	MOVWF	r0x09
; #	MOVF	r0x09, W
; #	MOVF	r0x07, W
; #	MOVF	r0x07, W
; #	MOVWF	r0x07
; #;;ic:85: 	iTemp53 [k66 lr85:89 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float auto}{ sir@ _printf_small_flt_1_32}[r0x07 r0x09 r0x0c r0x0d ] = @[iTemp56 [k70 lr84:85 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{float generic* fixed}[r0x07 r0x09 r0x0c ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x07, FSR0L
	MOVFF	r0x09, PRODL
	MOVF	r0x0c, W
	CALL	__gptrget4
	MOVWF	r0x07
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0c
	MOVFF	FSR0L, r0x0d
; ;ic:86: 	send iTemp53 [k66 lr85:89 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{float auto}{ sir@ _printf_small_flt_1_32}[r0x07 r0x09 r0x0c r0x0d ]{argreg = 1}
; ;ic:87: 	send iTemp61 [k82 lr7:172 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* fixed}[remat]{argreg = 2}
; ;ic:88: 	send 0x20 {const-unsigned-char literal}{argreg = 3}
; ;ic:89: 	send 0x6 {const-unsigned-char literal}{argreg = 4}
; ;ic:90: 	iTemp59 [k79 lr90:90 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = call _x_ftoa [k72 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char function ( float fixed, char near* fixed, unsigned-char fixed, unsigned-char fixed) fixed}
;	.line	119; stdio/printf_small.c	x_ftoa (flt, buffer, 32, 6);
	MOVLW	0x06
	MOVWF	POSTDEC1
	MOVLW	0x20
	MOVWF	POSTDEC1
	MOVLW	HIGH(_printf_small_buffer_1_32)
	MOVWF	POSTDEC1
	MOVLW	LOW(_printf_small_buffer_1_32)
	MOVWF	POSTDEC1
	MOVF	r0x0d, W
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	CALL	_x_ftoa
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:91: 	iTemp60 [k80 lr91:113 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* auto}{ sir@ _printf_small_str1_1_32}[r0x07 r0x09 ] := iTemp61 [k82 lr7:172 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* fixed}[remat]
;	.line	120; stdio/printf_small.c	str1 = buffer;
	MOVLW	LOW(_printf_small_buffer_1_32)
	MOVWF	r0x07
	MOVLW	HIGH(_printf_small_buffer_1_32)
	MOVWF	r0x09
; ;ic:92: 	iTemp64 [k85 lr92:100 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x0c r0x0d ] := iTemp60 [k80 lr91:113 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* auto}{ sir@ _printf_small_str1_1_32}[r0x07 r0x09 ]
;	.line	121; stdio/printf_small.c	while (*str1)
	MOVFF	r0x07, r0x0c
	MOVFF	r0x09, r0x0d
; ;ic:94:  _whilecontinue_2($26) :
; ;ic:95: 	iTemp63 [k84 lr95:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ] = @[iTemp64 [k85 lr92:100 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x0c r0x0d ] + 0x0 {const-unsigned-char literal}]
_00130_DS_:
	MOVFF	r0x0c, FSR0L
	MOVFF	r0x0d, FSR0H
	MOVFF	INDF0, r0x0e
; ;ic:96: 	if iTemp63 [k84 lr95:96 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ] == 0 goto _whilebreak_2($28)
	MOVF	r0x0e, W
	BZ	_00132_DS_
; ;ic:97: 	iTemp64 [k85 lr92:100 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x0c r0x0d ] = iTemp64 [k85 lr92:100 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x0c r0x0d ] + 0x1 {const-unsigned-char literal}
;	.line	122; stdio/printf_small.c	++str1;
	INFSNZ	r0x0c, F
	INCF	r0x0d, F
; ;ic:98: 	 goto _whilecontinue_2($26)
	BRA	_00130_DS_
; ;ic:99:  _whilebreak_2($28) :
; ;ic:100: 	iTemp60 [k80 lr91:113 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* auto}{ sir@ _printf_small_str1_1_32}[r0x07 r0x09 ] = iTemp64 [k85 lr92:100 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x0c r0x0d ] - 0x1 {const-unsigned-char literal}
_00132_DS_:
;	.line	123; stdio/printf_small.c	--str1;
	MOVF	r0x0c, W
	ADDLW	0xff
	MOVWF	r0x07
	MOVLW	0xff
	ADDWFC	r0x0d, W
	MOVWF	r0x09
; ;ic:101: 	iTemp69 [k90 lr101:110 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x0c r0x0d ] := iTemp60 [k80 lr91:113 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* auto}{ sir@ _printf_small_str1_1_32}[r0x07 r0x09 ]
;	.line	124; stdio/printf_small.c	while (*str1 == '0')
	MOVFF	r0x07, r0x0c
	MOVFF	r0x09, r0x0d
; ;ic:103:  _whilecontinue_3($29) :
; ;ic:104: 	iTemp67 [k88 lr104:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ] = @[iTemp69 [k90 lr101:110 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x0c r0x0d ] + 0x0 {const-unsigned-char literal}]
_00133_DS_:
	MOVFF	r0x0c, FSR0L
	MOVFF	r0x0d, FSR0H
	MOVFF	INDF0, r0x0e
; ;ic:105: 	iTemp68 [k89 lr105:106 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp67 [k88 lr104:105 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ] == 0x30 {const-char literal}
	MOVF	r0x0e, W
	XORLW	0x30
	BNZ	_00135_DS_
; ;ic:106: 	if iTemp68 [k89 lr105:106 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _whilebreak_3($31)
; ;ic:107: 	iTemp69 [k90 lr101:110 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x0c r0x0d ] = iTemp69 [k90 lr101:110 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x0c r0x0d ] - 0x1 {const-unsigned-char literal}
;	.line	125; stdio/printf_small.c	--str1;
	MOVLW	0xff
	ADDWF	r0x0c, F
	ADDWFC	r0x0d, F
; ;ic:108: 	 goto _whilecontinue_3($29)
	BRA	_00133_DS_
; ;ic:109:  _whilebreak_3($31) :
; ;ic:110: 	iTemp60 [k80 lr91:113 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* auto}{ sir@ _printf_small_str1_1_32}[r0x07 r0x09 ] = iTemp69 [k90 lr101:110 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x0c r0x0d ] + 0x1 {const-unsigned-char literal}
_00135_DS_:
;	.line	126; stdio/printf_small.c	++str1;
	MOVF	r0x0c, W
	ADDLW	0x01
	MOVWF	r0x07
	MOVLW	0x00
	ADDWFC	r0x0d, W
	MOVWF	r0x09
; ;ic:111: 	*(iTemp60 [k80 lr91:113 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char near* auto}{ sir@ _printf_small_str1_1_32}[r0x07 r0x09 ]) := 0x0 {const-unsigned-char literal}
;	.line	127; stdio/printf_small.c	*str1 = 0;
	MOVFF	r0x07, FSR0L
	MOVFF	r0x09, FSR0H
	CLRF	INDF0
; ;ic:112: 	iTemp60 [k80 lr91:113 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* auto}{ sir@ _printf_small_str1_1_32}[r0x07 r0x09 ] := iTemp72 [k93 lr8:172 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* fixed}[remat]
;	.line	128; stdio/printf_small.c	str1 = buffer;
	MOVLW	LOW(_printf_small_buffer_1_32)
	MOVWF	r0x07
	MOVLW	HIGH(_printf_small_buffer_1_32)
	MOVWF	r0x09
; ;ic:113: 	iTemp76 [k97 lr113:121 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x07 r0x09 ] := iTemp60 [k80 lr91:113 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* auto}{ sir@ _printf_small_str1_1_32}[r0x07 r0x09 ]
; ;ic:115:  _whilecontinue_4($32) :
; ;ic:116: 	iTemp74 [k95 lr116:119 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0c ] = @[iTemp76 [k97 lr113:121 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x07 r0x09 ] + 0x0 {const-unsigned-char literal}]
_00136_DS_:
;	.line	129; stdio/printf_small.c	while (*str1)
	MOVFF	r0x07, FSR0L
	MOVFF	r0x09, FSR0H
	MOVFF	INDF0, r0x0c
; ;ic:117: 	if iTemp74 [k95 lr116:119 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0c ] == 0 goto _ifend_13($55)
	MOVF	r0x0c, W
	BTFSC	STATUS, 2
	BRA	_00159_DS_
; ;ic:118: 	iTemp76 [k97 lr113:121 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x07 r0x09 ] = iTemp76 [k97 lr113:121 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x07 r0x09 ] + 0x1 {const-unsigned-char literal}
;	.line	130; stdio/printf_small.c	putchar (*str1++);
	INFSNZ	r0x07, F
	INCF	r0x09, F
; ;ic:119: 	send iTemp74 [k95 lr116:119 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0c ]{argreg = 1}
; ;ic:120: 	iTemp78 [k99 lr120:120 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _putchar [k60 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char fixed) fixed}
	MOVF	r0x0c, W
	CALL	_putchar
; ;ic:121: 	 goto _whilecontinue_4($32)
	BRA	_00136_DS_
; ;ic:122:  _iffalse_11($48) :
; ;ic:123: 	if iTemp10 [k15 lr19:123 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_flong_1_32}[r0x0a ] == 0 goto _iffalse_9($39)
_00152_DS_:
;	.line	134; stdio/printf_small.c	if (flong)
	MOVF	r0x0a, W
	BZ	_00143_DS_
; ;ic:124: 	iTemp80 [k102 lr124:126 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x07 r0x09 r0x0a ] = iTemp1 [k5 lr6:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_small_ap_1_32}[r0x03 r0x04 r0x05 ] + 0x4 {const-unsigned-char literal}
;	.line	135; stdio/printf_small.c	val = va_arg (ap, long);
	MOVF	r0x03, W
	ADDLW	0x04
	MOVWF	r0x07
	MOVLW	0x00
	ADDWFC	r0x04, W
	MOVWF	r0x09
	MOVLW	0x00
	ADDWFC	r0x05, W
	MOVWF	r0x0a
; ;ic:125: 	iTemp1 [k5 lr6:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_small_ap_1_32}[r0x03 r0x04 r0x05 ] := iTemp80 [k102 lr124:126 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x07 r0x09 r0x0a ]
	MOVFF	r0x07, r0x03
	MOVFF	r0x09, r0x04
	MOVFF	r0x0a, r0x05
; ;ic:126: 	iTemp81 [k103 lr126:127 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x07 r0x09 r0x0a ] = iTemp80 [k102 lr124:126 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x07 r0x09 r0x0a ] - 0x4 {unsigned-char literal}
	MOVLW	0xfc
	ADDWF	r0x07, F
	MOVLW	0xff
	ADDWFC	r0x09, F
	ADDWFC	r0x0a, F
; ;ic:127: 	iTemp82 [k104 lr127:128 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{long-int generic* fixed}[r0x07 r0x09 r0x0a ] = (long-int generic* fixed)iTemp81 [k103 lr126:127 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x07 r0x09 r0x0a ]
; #	MOVF	r0x0a, W
; #	MOVWF	r0x0a
; #	MOVF	r0x0a, W
; #	MOVF	r0x09, W
; #	MOVF	r0x09, W
; #	MOVWF	r0x09
; #	MOVF	r0x09, W
; #	MOVF	r0x07, W
; #	MOVF	r0x07, W
; #	MOVWF	r0x07
; #;;ic:128: 	iTemp79 [k100 lr128:163 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int auto}{ sir@ _printf_small_val_1_32}[r0x07 r0x09 r0x0a r0x0c ] = @[iTemp82 [k104 lr127:128 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{long-int generic* fixed}[r0x07 r0x09 r0x0a ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x07, FSR0L
	MOVFF	r0x09, PRODL
	MOVF	r0x0a, W
	CALL	__gptrget4
	MOVWF	r0x07
	MOVFF	PRODL, r0x09
	MOVFF	PRODH, r0x0a
	MOVFF	FSR0L, r0x0c
; ;ic:129: 	 goto _ifend_9($40)
	BRA	_00144_DS_
; ;ic:130:  _iffalse_9($39) :
; ;ic:131: 	if iTemp12 [k19 lr17:131 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_fchar_1_32}[r0x08 ] == 0 goto _iffalse_8($36)
_00143_DS_:
;	.line	136; stdio/printf_small.c	else if (fchar)
	MOVF	r0x08, W
	BZ	_00140_DS_
; ;ic:132: 	iTemp84 [k106 lr132:134 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x08 r0x0d r0x0e ] = iTemp1 [k5 lr6:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_small_ap_1_32}[r0x03 r0x04 r0x05 ] + 0x2 {const-unsigned-char literal}
;	.line	137; stdio/printf_small.c	val = (char) va_arg (ap, int);  // FIXME: SDCC casts char arguments into ints
	MOVF	r0x03, W
	ADDLW	0x02
	MOVWF	r0x08
	MOVLW	0x00
	ADDWFC	r0x04, W
	MOVWF	r0x0d
	MOVLW	0x00
	ADDWFC	r0x05, W
	MOVWF	r0x0e
; ;ic:133: 	iTemp1 [k5 lr6:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_small_ap_1_32}[r0x03 r0x04 r0x05 ] := iTemp84 [k106 lr132:134 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x08 r0x0d r0x0e ]
	MOVFF	r0x08, r0x03
	MOVFF	r0x0d, r0x04
	MOVFF	r0x0e, r0x05
; ;ic:134: 	iTemp85 [k107 lr134:135 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x08 r0x0d r0x0e ] = iTemp84 [k106 lr132:134 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x08 r0x0d r0x0e ] - 0x2 {unsigned-char literal}
	MOVLW	0xfe
	ADDWF	r0x08, F
	MOVLW	0xff
	ADDWFC	r0x0d, F
	ADDWFC	r0x0e, F
; ;ic:135: 	iTemp86 [k108 lr135:136 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* fixed}[r0x08 r0x0d r0x0e ] = (int generic* fixed)iTemp85 [k107 lr134:135 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x08 r0x0d r0x0e ]
; #	MOVF	r0x0e, W
; #	MOVWF	r0x0e
; #	MOVF	r0x0e, W
; #	MOVF	r0x0d, W
; #	MOVF	r0x0d, W
; #	MOVWF	r0x0d
; #	MOVF	r0x0d, W
; #	MOVF	r0x08, W
; #	MOVF	r0x08, W
; #	MOVWF	r0x08
; #;;ic:136: 	iTemp87 [k109 lr136:137 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x08 r0x0d ] = @[iTemp86 [k108 lr135:136 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* fixed}[r0x08 r0x0d r0x0e ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x08, FSR0L
	MOVFF	r0x0d, PRODL
	MOVF	r0x0e, W
	CALL	__gptrget2
	MOVWF	r0x08
; ;ic:137: 	iTemp88 [k110 lr137:138 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x08 ] = (char fixed)iTemp87 [k109 lr136:137 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x08 r0x0d ]
; ;ic:138: 	iTemp79 [k100 lr128:163 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int auto}{ sir@ _printf_small_val_1_32}[r0x07 r0x09 r0x0a r0x0c ] = (long-int auto)iTemp88 [k110 lr137:138 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x08 ]
	MOVFF	r0x08, r0x07
	CLRF	WREG
	BTFSC	r0x08, 7
	MOVLW	0xff
	MOVWF	r0x09
	MOVWF	r0x0a
	MOVWF	r0x0c
; ;ic:139: 	 goto _ifend_9($40)
	BRA	_00144_DS_
; ;ic:140:  _iffalse_8($36) :
; ;ic:141: 	iTemp90 [k112 lr141:143 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x08 r0x0d r0x0e ] = iTemp1 [k5 lr6:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_small_ap_1_32}[r0x03 r0x04 r0x05 ] + 0x2 {const-unsigned-char literal}
_00140_DS_:
;	.line	140; stdio/printf_small.c	val = va_arg (ap, int);
	MOVF	r0x03, W
	ADDLW	0x02
	MOVWF	r0x08
	MOVLW	0x00
	ADDWFC	r0x04, W
	MOVWF	r0x0d
	MOVLW	0x00
	ADDWFC	r0x05, W
	MOVWF	r0x0e
; ;ic:142: 	iTemp1 [k5 lr6:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}{ sir@ _printf_small_ap_1_32}[r0x03 r0x04 r0x05 ] := iTemp90 [k112 lr141:143 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x08 r0x0d r0x0e ]
	MOVFF	r0x08, r0x03
	MOVFF	r0x0d, r0x04
	MOVFF	r0x0e, r0x05
; ;ic:143: 	iTemp91 [k113 lr143:144 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x08 r0x0d r0x0e ] = iTemp90 [k112 lr141:143 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x08 r0x0d r0x0e ] - 0x2 {unsigned-char literal}
	MOVLW	0xfe
	ADDWF	r0x08, F
	MOVLW	0xff
	ADDWFC	r0x0d, F
	ADDWFC	r0x0e, F
; ;ic:144: 	iTemp92 [k114 lr144:145 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* fixed}[r0x08 r0x0d r0x0e ] = (int generic* fixed)iTemp91 [k113 lr143:144 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* auto}[r0x08 r0x0d r0x0e ]
; #	MOVF	r0x0e, W
; #	MOVWF	r0x0e
; #	MOVF	r0x0e, W
; #	MOVF	r0x0d, W
; #	MOVF	r0x0d, W
; #	MOVWF	r0x0d
; #	MOVF	r0x0d, W
; #	MOVF	r0x08, W
; #	MOVF	r0x08, W
; #	MOVWF	r0x08
; #;;ic:145: 	iTemp93 [k115 lr145:146 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x08 r0x0d ] = @[iTemp92 [k114 lr144:145 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{int generic* fixed}[r0x08 r0x0d r0x0e ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x08, FSR0L
	MOVFF	r0x0d, PRODL
	MOVF	r0x0e, W
	CALL	__gptrget2
	MOVWF	r0x08
	MOVFF	PRODL, r0x0d
; ;ic:146: 	iTemp79 [k100 lr128:163 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int auto}{ sir@ _printf_small_val_1_32}[r0x07 r0x09 r0x0a r0x0c ] = (long-int auto)iTemp93 [k115 lr145:146 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x08 r0x0d ]
	MOVFF	r0x08, r0x07
	MOVFF	r0x0d, r0x09
	CLRF	WREG
	BTFSC	r0x0d, 7
	MOVLW	0xff
	MOVWF	r0x0a
	MOVWF	r0x0c
; ;ic:147:  _ifend_9($40) :
; ;ic:148: 	if iTemp14 [k23 lr20:151 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_radix_1_32}[r0x0b ] == 0 goto _iffalse_10($45)
_00144_DS_:
;	.line	143; stdio/printf_small.c	if (radix)
	MOVF	r0x0b, W
	BZ	_00149_DS_
; ;ic:149: 	send iTemp79 [k100 lr128:163 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int auto}{ sir@ _printf_small_val_1_32}[r0x07 r0x09 r0x0a r0x0c ]{argreg = 1}
; ;ic:150: 	send iTemp61 [k82 lr7:172 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* fixed}[remat]{argreg = 2}
; ;ic:151: 	send iTemp14 [k23 lr20:151 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char auto}{ sir@ _printf_small_radix_1_32}[r0x0b ]{argreg = 3}
; ;ic:152: 	iTemp96 [k122 lr152:152 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _ltoa [k117 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( long-int fixed, char near* fixed, unsigned-char fixed) fixed}
;	.line	145; stdio/printf_small.c	ltoa (val, buffer, radix);
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVLW	HIGH(_printf_small_buffer_1_32)
	MOVWF	POSTDEC1
	MOVLW	LOW(_printf_small_buffer_1_32)
	MOVWF	POSTDEC1
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x07, W
	MOVWF	POSTDEC1
	CALL	_ltoa
	MOVLW	0x07
	ADDWF	FSR1L, F
; ;ic:153: 	iTemp101 [k127 lr153:161 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x08 r0x0b ] := iTemp97 [k123 lr9:172 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{char near* fixed}[remat]
;	.line	147; stdio/printf_small.c	str1 = buffer;
	MOVLW	LOW(_printf_small_buffer_1_32)
	MOVWF	r0x08
	MOVLW	HIGH(_printf_small_buffer_1_32)
	MOVWF	r0x0b
; ;ic:155:  _whilecontinue_5($41) :
; ;ic:156: 	iTemp99 [k125 lr156:159 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0d ] = @[iTemp101 [k127 lr153:161 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x08 r0x0b ] + 0x0 {const-unsigned-char literal}]
_00145_DS_:
;	.line	148; stdio/printf_small.c	while (*str1)
	MOVFF	r0x08, FSR0L
	MOVFF	r0x0b, FSR0H
	MOVFF	INDF0, r0x0d
; ;ic:157: 	if iTemp99 [k125 lr156:159 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0d ] == 0 goto _ifend_13($55)
	MOVF	r0x0d, W
	BZ	_00159_DS_
; ;ic:158: 	iTemp101 [k127 lr153:161 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x08 r0x0b ] = iTemp101 [k127 lr153:161 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* auto}[r0x08 r0x0b ] + 0x1 {const-unsigned-char literal}
;	.line	150; stdio/printf_small.c	putchar (*str1++);
	INFSNZ	r0x08, F
	INCF	r0x0b, F
; ;ic:159: 	send iTemp99 [k125 lr156:159 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0d ]{argreg = 1}
; ;ic:160: 	iTemp103 [k129 lr160:160 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _putchar [k60 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char fixed) fixed}
	MOVF	r0x0d, W
	CALL	_putchar
; ;ic:161: 	 goto _whilecontinue_5($41)
	BRA	_00145_DS_
; ;ic:162:  _iffalse_10($45) :
; ;ic:163: 	iTemp104 [k130 lr163:164 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x07 ] = (char fixed)iTemp79 [k100 lr128:163 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int auto}{ sir@ _printf_small_val_1_32}[r0x07 r0x09 r0x0a r0x0c ]
; ;ic:164: 	send iTemp104 [k130 lr163:164 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed}[r0x07 ]{argreg = 1}
; ;ic:165: 	iTemp105 [k131 lr165:165 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _putchar [k60 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char fixed) fixed}
_00149_DS_:
;	.line	154; stdio/printf_small.c	putchar ((char) val);
	MOVF	r0x07, W
	CALL	_putchar
; ;ic:166: 	 goto _ifend_13($55)
	BRA	_00159_DS_
; ;ic:167:  _iffalse_13($54) :
; ;ic:168: 	send iTemp6 [k11 lr12:168 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x06 ]{argreg = 1}
; ;ic:169: 	iTemp108 [k134 lr169:169 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _putchar [k60 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char fixed) fixed}
_00158_DS_:
;	.line	158; stdio/printf_small.c	putchar (*ch);
	MOVF	r0x06, W
	CALL	_putchar
; ;ic:170:  _ifend_13($55) :
; ;ic:171: 	iTemp0 [k2 lr3:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_small_ch_1_32}[r0x00 r0x01 r0x02 ] = iTemp0 [k2 lr3:172 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-char generic* auto}{ sir@ _printf_small_ch_1_32}[r0x00 r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
_00159_DS_:
;	.line	160; stdio/printf_small.c	++ch;
	INCF	r0x00, F
	BNC	_00246_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:172: 	 goto _whilecontinue_0($56)
_00246_DS_:
	BRA	_00160_DS_
; ;ic:173:  _return($59) :
; ;ic:174: 	eproc _printf_small [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( const-char generic* auto) __reentrant fixed}
_00163_DS_:
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
; code size:	 1054 (0x041e) bytes ( 0.80%)
;           	  527 (0x020f) words
; udata size:	   16 (0x0010) bytes ( 1.25%)
; access size:	   15 (0x000f) bytes


	end

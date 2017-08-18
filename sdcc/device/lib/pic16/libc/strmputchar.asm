;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:21:42 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	___stream_putchar

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget3
	extern	__gptrput1
	extern	__gptrput3
	extern	_stdin
	extern	_stdout
	extern	_putchar
	extern	___stream_usart_putchar
	extern	___stream_mssp_putchar
	extern	___stream_gpsim_putchar

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
TBLPTRL	equ	0xff6
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($18) :
; ;ic:2: 	proc ___stream_putchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char generic* generic* fixed, char fixed) fixed}
S_strmputchar____stream_putchar	code
___stream_putchar:
;	.line	32; stdio/strmputchar.c	__stream_putchar (FILE *stream, char c)
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
; ;ic:3: iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* generic* fixed}{ sir@ ___stream_putchar_stream_1_16}[r0x00 r0x01 r0x02 ] = recv ___stream_putchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char generic* generic* fixed, char fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ ___stream_putchar_c_1_16}[r0x03 ] = recv ___stream_putchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char generic* generic* fixed, char fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:5: 	iTemp3 [k8 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x04 r0x05 r0x06 r0x07 ] = (unsigned-long-int fixed)iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* generic* fixed}{ sir@ ___stream_putchar_stream_1_16}[r0x00 r0x01 r0x02 ]
;	.line	36; stdio/strmputchar.c	deref = (unsigned char) (((unsigned long) stream) >> 16);
	MOVFF	r0x02, r0x06
; ;ic:6: 	iTemp4 [k9 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x04 r0x05 r0x06 r0x07 ] = iTemp3 [k8 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x04 r0x05 r0x06 r0x07 ] >> 0x10 {const-unsigned-char literal}
	MOVF	r0x06, W
	MOVWF	r0x04
; ;ic:7: 	iTemp2 [k6 lr7:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ ___stream_putchar_deref_1_17}[r0x04 ] = (unsigned-char fixed)iTemp4 [k9 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x04 r0x05 r0x06 r0x07 ]
; ;ic:8: 	iTemp6 [k11 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp2 [k6 lr7:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ ___stream_putchar_deref_1_17}[r0x04 ] == 0x80 {const-unsigned-char literal}
;	.line	43; stdio/strmputchar.c	if (deref == 0x80)
	XORLW	0x80
	BNZ	_00119_DS_
; ;ic:9: 	if iTemp6 [k11 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_5($15)
; ;ic:10: 	iTemp8 [k13 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x05 r0x06 r0x07 ] = @[iTemp0 [k2 lr3:14 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* generic* fixed}{ sir@ ___stream_putchar_stream_1_16}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
;	.line	46; stdio/strmputchar.c	*(*(char **) stream) = c;
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget3
	MOVWF	r0x05
	MOVFF	PRODL, r0x06
	MOVFF	PRODH, r0x07
; ;ic:11: 	*(iTemp8 [k13 lr10:11 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x05 r0x06 r0x07 ]) := iTemp1 [k4 lr4:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ ___stream_putchar_c_1_16}[r0x03 ]
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, PRODL
	MOVF	r0x07, W
	CALL	__gptrput1
; ;ic:12: 	iTemp11 [k16 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x05 r0x06 r0x07 ] = @[iTemp0 [k2 lr3:14 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* generic* fixed}{ sir@ ___stream_putchar_stream_1_16}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
;	.line	47; stdio/strmputchar.c	*(char **) stream += 1;
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget3
	MOVWF	r0x05
	MOVFF	PRODL, r0x06
	MOVFF	PRODH, r0x07
; ;ic:13: 	iTemp12 [k17 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x05 r0x06 r0x07 ] = iTemp11 [k16 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x05 r0x06 r0x07 ] + 0x1 {const-unsigned-char literal}
	INCF	r0x05, F
	BNC	_00137_DS_
	INFSNZ	r0x06, F
	INCF	r0x07, F
; ;ic:14: 	*(iTemp0 [k2 lr3:14 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* generic* fixed}{ sir@ ___stream_putchar_stream_1_16}[r0x00 r0x01 r0x02 ]) := iTemp12 [k17 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x05 r0x06 r0x07 ]
_00137_DS_:
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, PRODH
	MOVFF	r0x07, TBLPTRL
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput3
; ;ic:15: 	 goto _return($17)
	BRA	_00121_DS_
; ;ic:16:  _iffalse_5($15) :
; ;ic:17: 	iTemp13 [k18 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} = iTemp2 [k6 lr7:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ ___stream_putchar_deref_1_17}[r0x04 ] & 0x20 {const-unsigned-char literal}
_00119_DS_:
;	.line	49; stdio/strmputchar.c	else if (deref & 0x20)
	BTFSS	r0x04, 5
	BRA	_00121_DS_
; ;ic:18: 	if iTemp13 [k18 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register} == 0 goto _return($17)
; ;ic:19: 	iTemp2 [k6 lr7:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ ___stream_putchar_deref_1_17}[r0x04 ] = iTemp2 [k6 lr7:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ ___stream_putchar_deref_1_17}[r0x04 ] ^ 0x20 {const-unsigned-char literal}
;	.line	51; stdio/strmputchar.c	deref ^= 0x20;
	BTG	r0x04, 5
; ;ic:20: 	if iTemp2 [k6 lr7:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ ___stream_putchar_deref_1_17}[r0x04 ] != 0 goto _iffalse_3($10)
;	.line	52; stdio/strmputchar.c	if (deref == USART_DEREF)
	MOVF	r0x04, W
	BNZ	_00114_DS_
; ;ic:21: 	send iTemp1 [k4 lr4:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ ___stream_putchar_c_1_16}[r0x03 ]{argreg = 1}
; ;ic:22: 	iTemp15 [k22 lr22:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call ___stream_usart_putchar [k20 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char fixed) fixed}
;	.line	53; stdio/strmputchar.c	__stream_usart_putchar (c);
	MOVF	r0x03, W
	CALL	___stream_usart_putchar
; ;ic:23: 	 goto _return($17)
	BRA	_00121_DS_
; ;ic:24:  _iffalse_3($10) :
; ;ic:25: 	iTemp16 [k23 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp2 [k6 lr7:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ ___stream_putchar_deref_1_17}[r0x04 ] == 0x1 {const-unsigned-char literal}
_00114_DS_:
;	.line	54; stdio/strmputchar.c	else if (deref == MSSP_DEREF)
	MOVF	r0x04, W
	XORLW	0x01
	BNZ	_00111_DS_
; ;ic:26: 	if iTemp16 [k23 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_2($7)
; ;ic:27: 	send iTemp1 [k4 lr4:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ ___stream_putchar_c_1_16}[r0x03 ]{argreg = 1}
; ;ic:28: 	iTemp17 [k26 lr28:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call ___stream_mssp_putchar [k24 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char fixed) fixed}
;	.line	55; stdio/strmputchar.c	__stream_mssp_putchar (c);
	MOVF	r0x03, W
	CALL	___stream_mssp_putchar
; ;ic:29: 	 goto _return($17)
	BRA	_00121_DS_
; ;ic:30:  _iffalse_2($7) :
; ;ic:31: 	iTemp18 [k27 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp2 [k6 lr7:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ ___stream_putchar_deref_1_17}[r0x04 ] == 0xf {const-unsigned-char literal}
_00111_DS_:
;	.line	56; stdio/strmputchar.c	else if (deref == USER_DEREF)
	MOVF	r0x04, W
	XORLW	0x0f
	BNZ	_00108_DS_
; ;ic:32: 	if iTemp18 [k27 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_1($4)
; ;ic:33: 	send iTemp1 [k4 lr4:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ ___stream_putchar_c_1_16}[r0x03 ]{argreg = 1}
; ;ic:34: 	iTemp19 [k30 lr34:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _putchar [k28 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char fixed) fixed}
;	.line	57; stdio/strmputchar.c	putchar (c);
	MOVF	r0x03, W
	CALL	_putchar
; ;ic:35: 	 goto _return($17)
	BRA	_00121_DS_
; ;ic:36:  _iffalse_1($4) :
; ;ic:37: 	iTemp20 [k31 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp2 [k6 lr7:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ ___stream_putchar_deref_1_17}[r0x04 ] == 0xe {const-unsigned-char literal}
_00108_DS_:
;	.line	58; stdio/strmputchar.c	else if (deref == GPSIM_DEREF)    /* see stdio.h for info on this */
	MOVF	r0x04, W
	XORLW	0x0e
	BNZ	_00121_DS_
; ;ic:38: 	if iTemp20 [k31 lr37:38 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _return($17)
; ;ic:39: 	send iTemp1 [k4 lr4:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ ___stream_putchar_c_1_16}[r0x03 ]{argreg = 1}
; ;ic:40: 	iTemp21 [k34 lr40:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call ___stream_gpsim_putchar [k32 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char fixed) fixed}
;	.line	59; stdio/strmputchar.c	__stream_gpsim_putchar (c);     /* feature */
	MOVF	r0x03, W
	CALL	___stream_gpsim_putchar
; ;ic:41:  _return($17) :
; ;ic:42: 	eproc ___stream_putchar [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( char generic* generic* fixed, char fixed) fixed}
_00121_DS_:
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
; code size:	  274 (0x0112) bytes ( 0.21%)
;           	  137 (0x0089) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    8 (0x0008) bytes


	end

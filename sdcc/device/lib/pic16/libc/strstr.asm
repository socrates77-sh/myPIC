;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:28 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_strstr

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
; ;ic:1:  _entry($14) :
; ;ic:2: 	proc _strstr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
S_strstr__strstr	code
_strstr:
;	.line	32; string/strstr.c	strstr (char *str1, char *str2) 
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
; ;ic:3: iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_str1_1_28}[r0x00 r0x01 r0x02 ] = recv _strstr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_str2_1_28}[r0x03 r0x04 r0x05 ] = recv _strstr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: 	iTemp2 [k6 lr5:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_cp_1_29}[r0x06 r0x07 r0x08 ] := iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_str1_1_28}[r0x00 r0x01 r0x02 ]
;	.line	34; string/strstr.c	char *cp = str1;
	MOVFF	r0x00, r0x06
	MOVFF	r0x01, r0x07
	MOVFF	r0x02, r0x08
; ;ic:6: 	iTemp4 [k9 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] = @[iTemp1 [k4 lr4:37 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_str2_1_28}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
;	.line	39; string/strstr.c	if (!*str2)
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x09
; ;ic:7: 	if iTemp4 [k9 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] != 0 goto preHeaderLbl1($22)
	MOVF	r0x09, W
	BNZ	_00114_DS_
; ;ic:8: 	ret iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_str1_1_28}[r0x00 r0x01 r0x02 ]
;	.line	40; string/strstr.c	return str1;
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00117_DS_
; ;ic:9:  preHeaderLbl1($22) :
; ;ic:10: 	iTemp26 [k33 lr10:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_s1_1_29}[r0x00 r0x01 r0x02 ] := iTemp0 [k2 lr3:10 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_str1_1_28}[r0x00 r0x01 r0x02 ]
; ;ic:12:  _whilecontinue_0($10) :
; ;ic:13: 	iTemp6 [k11 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] = @[iTemp26 [k33 lr10:37 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_s1_1_29}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
_00114_DS_:
;	.line	42; string/strstr.c	while (*cp)
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x09
; ;ic:14: 	if iTemp6 [k11 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] == 0 goto _whilebreak_0($12)
	MOVF	r0x09, W
	BTFSC	STATUS, 2
	BRA	_00116_DS_
; ;ic:15: 	iTemp21 [k28 lr15:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x09 r0x0a r0x0b ] := iTemp26 [k33 lr10:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_s1_1_29}[r0x00 r0x01 r0x02 ]
;	.line	47; string/strstr.c	while (*s1 && *s2 && !(*s1-*s2))
	MOVFF	r0x00, r0x09
	MOVFF	r0x01, r0x0a
	MOVFF	r0x02, r0x0b
; ;ic:16: 	iTemp23 [k30 lr16:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_s2_1_29}[r0x0c r0x0d r0x0e ] := iTemp1 [k4 lr4:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_str2_1_28}[r0x03 r0x04 r0x05 ]
	MOVFF	r0x03, r0x0c
	MOVFF	r0x04, r0x0d
	MOVFF	r0x05, r0x0e
; ;ic:18:  _whilecontinue_1($5) :
; ;ic:19: 	iTemp10 [k17 lr19:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0f ] = @[iTemp21 [k28 lr15:29 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x09 r0x0a r0x0b ] + 0x0 {const-unsigned-char literal}]
_00109_DS_:
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0a, PRODL
	MOVF	r0x0b, W
	CALL	__gptrget1
	MOVWF	r0x0f
; ;ic:20: 	if iTemp10 [k17 lr19:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0f ] == 0 goto _whilebreak_1($7)
	MOVF	r0x0f, W
	BZ	_00111_DS_
; ;ic:21: 	iTemp12 [k19 lr21:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x10 ] = @[iTemp23 [k30 lr16:31 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_s2_1_29}[r0x0c r0x0d r0x0e ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x0c, FSR0L
	MOVFF	r0x0d, PRODL
	MOVF	r0x0e, W
	CALL	__gptrget1
	MOVWF	r0x10
; ;ic:22: 	if iTemp12 [k19 lr21:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x10 ] == 0 goto _whilebreak_1($7)
	MOVF	r0x10, W
	BZ	_00111_DS_
; ;ic:23: 	iTemp15 [k22 lr23:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x0f r0x11 ] = (int fixed)iTemp10 [k17 lr19:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0f ]
	CLRF	r0x11
	BTFSC	r0x0f, 7
	SETF	r0x11
; ;ic:24: 	iTemp18 [k25 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x10 r0x12 ] = (int fixed)iTemp12 [k19 lr21:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x10 ]
	CLRF	r0x12
	BTFSC	r0x10, 7
	SETF	r0x12
; ;ic:25: 	iTemp19 [k26 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x0f r0x11 ] = iTemp15 [k22 lr23:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x0f r0x11 ] - iTemp18 [k25 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x10 r0x12 ]
	MOVF	r0x10, W
	SUBWF	r0x0f, F
	MOVF	r0x12, W
	SUBWFB	r0x11, F
; ;ic:26: 	if iTemp19 [k26 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x0f r0x11 ] != 0 goto _whilebreak_1($7)
	MOVF	r0x0f, W
	IORWF	r0x11, W
	BNZ	_00111_DS_
; ;ic:27: 	iTemp21 [k28 lr15:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x09 r0x0a r0x0b ] = iTemp21 [k28 lr15:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x09 r0x0a r0x0b ] + 0x1 {const-unsigned-char literal}
;	.line	48; string/strstr.c	s1++, s2++;
	INCF	r0x09, F
	BNC	_00136_DS_
	INFSNZ	r0x0a, F
	INCF	r0x0b, F
; ;ic:28: 	iTemp23 [k30 lr16:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_s2_1_29}[r0x0c r0x0d r0x0e ] = iTemp23 [k30 lr16:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_s2_1_29}[r0x0c r0x0d r0x0e ] + 0x1 {const-unsigned-char literal}
_00136_DS_:
	INCF	r0x0c, F
	BNC	_00109_DS_
	INFSNZ	r0x0d, F
	INCF	r0x0e, F
; ;ic:29: 	 goto _whilecontinue_1($5)
_00137_DS_:
	BRA	_00109_DS_
; ;ic:30:  _whilebreak_1($7) :
; ;ic:31: 	iTemp25 [k32 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0c ] = @[iTemp23 [k30 lr16:31 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_s2_1_29}[r0x0c r0x0d r0x0e ] + 0x0 {const-unsigned-char literal}]
_00111_DS_:
;	.line	50; string/strstr.c	if (!*s2)
	MOVFF	r0x0c, FSR0L
	MOVFF	r0x0d, PRODL
	MOVF	r0x0e, W
	CALL	__gptrget1
	MOVWF	r0x0c
; ;ic:32: 	if iTemp25 [k32 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0c ] != 0 goto _iffalse_1($9)
	MOVF	r0x0c, W
	BNZ	_00113_DS_
; ;ic:33: 	ret iTemp2 [k6 lr5:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_cp_1_29}[r0x06 r0x07 r0x08 ]
;	.line	51; string/strstr.c	return cp;
	MOVFF	r0x08, PRODH
	MOVFF	r0x07, PRODL
	MOVF	r0x06, W
	BRA	_00117_DS_
; ;ic:34:  _iffalse_1($9) :
; ;ic:35: 	iTemp26 [k33 lr10:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_s1_1_29}[r0x00 r0x01 r0x02 ] = iTemp26 [k33 lr10:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_s1_1_29}[r0x00 r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
_00113_DS_:
;	.line	53; string/strstr.c	++cp;
	INCF	r0x00, F
	BNC	_00138_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:36: 	iTemp2 [k6 lr5:37 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_cp_1_29}[r0x06 r0x07 r0x08 ] := iTemp26 [k33 lr10:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _strstr_s1_1_29}[r0x00 r0x01 r0x02 ]
_00138_DS_:
	MOVFF	r0x00, r0x06
	MOVFF	r0x01, r0x07
	MOVFF	r0x02, r0x08
; ;ic:37: 	 goto _whilecontinue_0($10)
	BRA	_00114_DS_
; ;ic:38:  _whilebreak_0($12) :
; ;ic:39: 	ret 0x0 {char generic* literal}
_00116_DS_:
;	.line	56; string/strstr.c	return NULL;
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
; ;ic:40:  _return($13) :
; ;ic:41: 	eproc _strstr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* function ( char generic* fixed, char generic* fixed) fixed}
_00117_DS_:
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
; code size:	  436 (0x01b4) bytes ( 0.33%)
;           	  218 (0x00da) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   19 (0x0013) bytes


	end

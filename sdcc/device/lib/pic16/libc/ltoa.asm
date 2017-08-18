;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:21:54 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_ultoa
	global	_ltoa

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__modulong
	extern	__divulong

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
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
r0x0f	res	1

udata_ltoa_0	udata
_ultoa_buffer_1_2	res	32

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($5) :
; ;ic:2: 	proc _ltoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( long-int fixed, char near* fixed, unsigned-char fixed) fixed}
S_ltoa__ltoa	code
_ltoa:
;	.line	72; stdlib/ltoa.c	void ltoa(long value, __data char* str, unsigned char radix)
	MOVFF	FSR2L, POSTDEC1
	MOVFF	FSR1L, FSR2L
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
; ;ic:3: iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _ltoa_value_1_5}[r0x00 r0x01 r0x02 r0x03 ] = recv _ltoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( long-int fixed, char near* fixed, unsigned-char fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* fixed}{ sir@ _ltoa_str_1_5}[r0x04 r0x05 ] = recv _ltoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( long-int fixed, char near* fixed, unsigned-char fixed) fixed}
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ltoa_radix_1_5}[r0x06 ] = recv _ltoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( long-int fixed, char near* fixed, unsigned-char fixed) fixed}
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
; ;ic:6: 	iTemp3 [k8 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _ltoa_value_1_5}[r0x00 r0x01 r0x02 r0x03 ] < 0x0 {long-int literal}
;	.line	79; stdlib/ltoa.c	if (value < 0 && radix == 10) {
	BSF	STATUS, 0
	BTFSS	r0x03, 7
	BCF	STATUS, 0
	BNC	_00133_DS_
; ;ic:7: 	if iTemp3 [k8 lr6:7 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_1($2)
; ;ic:8: 	iTemp4 [k9 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp2 [k6 lr5:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ltoa_radix_1_5}[r0x06 ] == 0xa {const-unsigned-char literal}
	MOVF	r0x06, W
	XORLW	0x0a
	BNZ	_00133_DS_
; ;ic:9: 	if iTemp4 [k9 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_1($2)
; ;ic:10: 	*(iTemp1 [k4 lr4:17 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{char near* fixed}{ sir@ _ltoa_str_1_5}[r0x04 r0x05 ]) := 0x2d {const-char literal}
;	.line	80; stdlib/ltoa.c	*str++ = '-';
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVLW	0x2d
	MOVWF	INDF0
; ;ic:11: 	iTemp1 [k4 lr4:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* fixed}{ sir@ _ltoa_str_1_5}[r0x04 r0x05 ] = iTemp1 [k4 lr4:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* fixed}{ sir@ _ltoa_str_1_5}[r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:12: 	iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _ltoa_value_1_5}[r0x00 r0x01 r0x02 r0x03 ] = - iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _ltoa_value_1_5}[r0x00 r0x01 r0x02 r0x03 ]
;	.line	81; stdlib/ltoa.c	value = -value;
	COMF	r0x03, F
	COMF	r0x02, F
	COMF	r0x01, F
	NEGF	r0x00
	BNZ	_00133_DS_
	INCF	r0x01, F
	BNZ	_00133_DS_
	INCF	r0x02, F
	BTFSC	STATUS, 2
	INCF	r0x03, F
; ;ic:13:  _iffalse_1($2) :
; ;ic:14: 	iTemp8 [k14 lr14:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x00 r0x01 r0x02 r0x03 ] = (unsigned-long-int fixed)iTemp0 [k2 lr3:14 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{long-int fixed}{ sir@ _ltoa_value_1_5}[r0x00 r0x01 r0x02 r0x03 ]
; ;ic:15: 	send iTemp8 [k14 lr14:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:16: 	send iTemp1 [k4 lr4:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* fixed}{ sir@ _ltoa_str_1_5}[r0x04 r0x05 ]{argreg = 2}
; ;ic:17: 	send iTemp2 [k6 lr5:17 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ltoa_radix_1_5}[r0x06 ]{argreg = 3}
; ;ic:18: 	iTemp9 [k18 lr18:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _ultoa [k13 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-long-int fixed, char near* fixed, unsigned-char fixed) fixed}
_00133_DS_:
;	.line	86; stdlib/ltoa.c	ultoa((unsigned long)value, str, radix);
	MOVF	r0x06, W
	MOVWF	POSTDEC1
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_ultoa
	MOVLW	0x07
	ADDWF	FSR1L, F
; ;ic:19:  _return($4) :
; ;ic:20: 	eproc _ltoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( long-int fixed, char near* fixed, unsigned-char fixed) fixed}
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
; ;ic:1:  _entry($10) :
; ;ic:2: 	proc _ultoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-long-int fixed, char near* fixed, unsigned-char fixed) fixed}
S_ltoa__ultoa	code
_ultoa:
;	.line	43; stdlib/ltoa.c	void ultoa(unsigned long value, __data char* str, unsigned char radix)
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
; ;ic:3: iTemp0 [k2 lr3:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _ultoa_value_1_1}[r0x00 r0x01 r0x02 r0x03 ] = recv _ultoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-long-int fixed, char near* fixed, unsigned-char fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:4: iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* fixed}{ sir@ _ultoa_str_1_1}[r0x04 r0x05 ] = recv _ultoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-long-int fixed, char near* fixed, unsigned-char fixed) fixed}
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ultoa_radix_1_1}[r0x06 ] = recv _ultoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-long-int fixed, char near* fixed, unsigned-char fixed) fixed}
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
; ;ic:6: 	iTemp13 [k21 lr6:40 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-char near* fixed}[remat] = &[_ultoa_buffer_1_2 [k20 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char [32d] fixed}]
; ;ic:7: 	iTemp14 [k22 lr7:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _ultoa_index_1_2}[r0x07 r0x08 ] := 0x20 {unsigned-int literal}
;	.line	51; stdlib/ltoa.c	do {
	MOVLW	0x20
	MOVWF	r0x07
	CLRF	r0x08
; ;ic:9:  _dobody_0($3) :
; ;ic:10: 	iTemp5 [k12 lr10:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x09 r0x0a r0x0b r0x0c ] = (unsigned-long-int fixed)iTemp2 [k6 lr5:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ultoa_radix_1_1}[r0x06 ]
_00107_DS_:
;	.line	52; stdlib/ltoa.c	ch = '0' + (value % radix);
	MOVFF	r0x06, r0x09
	CLRF	r0x0a
	CLRF	r0x0b
	CLRF	r0x0c
; ;ic:11: 	send iTemp0 [k2 lr3:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _ultoa_value_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:12: 	send iTemp5 [k12 lr10:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x09 r0x0a r0x0b r0x0c ]{argreg = 2}
; ;ic:13: 	iTemp6 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x0d r0x0e r0x0f r0x10 ] = call __modulong [k35 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function ( unsigned-long-int fixed, unsigned-long-int fixed) fixed}
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	CLRF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	__modulong
	MOVWF	r0x0d
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:14: 	iTemp7 [k14 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x0d ] = (unsigned-char fixed)iTemp6 [k13 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x0d r0x0e r0x0f r0x10 ]
; ;ic:15: 	iTemp8 [k15 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0d ] = (char register)iTemp7 [k14 lr14:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x0d ]
; ;ic:16: 	iTemp4 [k10 lr16:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ultoa_ch_1_2}[r0x0d ] = iTemp8 [k15 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0d ] + 0x30 {const-char literal}
	MOVLW	0x30
	ADDWF	r0x0d, F
; ;ic:17: 	iTemp10 [k17 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp4 [k10 lr16:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ultoa_ch_1_2}[r0x0d ] > 0x39 {unsigned-char literal}
;	.line	53; stdlib/ltoa.c	if ( ch > (unsigned char)'9') ch += 'a' - '9' - 1;
	MOVLW	0x3a
	SUBWF	r0x0d, W
	BNC	_00106_DS_
; ;ic:18: 	if iTemp10 [k17 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_0($2)
; ;ic:19: 	iTemp11 [k18 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ] = (char register)iTemp4 [k10 lr16:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ultoa_ch_1_2}[r0x0d ]
	MOVF	r0x0d, W
	MOVWF	r0x0e
; ;ic:20: 	iTemp4 [k10 lr16:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ultoa_ch_1_2}[r0x0d ] = iTemp11 [k18 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0e ] + 0x27 {char literal}
	MOVLW	0x27
	ADDWF	r0x0e, W
	MOVWF	r0x0d
; ;ic:21:  _iffalse_0($2) :
; ;ic:22: 	iTemp14 [k22 lr7:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _ultoa_index_1_2}[r0x07 r0x08 ] = iTemp14 [k22 lr7:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _ultoa_index_1_2}[r0x07 r0x08 ] - 0x1 {const-unsigned-char literal}
_00106_DS_:
;	.line	61; stdlib/ltoa.c	buffer[ --index ] = ch;
	MOVLW	0xff
	ADDWF	r0x07, F
	ADDWFC	r0x08, F
; ;ic:23: 	iTemp15 [k23 lr23:24 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}[r0x0e r0x0f ] = iTemp13 [k21 lr6:40 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-char near* fixed}[remat] + iTemp14 [k22 lr7:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _ultoa_index_1_2}[r0x07 r0x08 ]
	MOVLW	LOW(_ultoa_buffer_1_2)
	ADDWF	r0x07, W
	MOVWF	r0x0e
	MOVLW	HIGH(_ultoa_buffer_1_2)
	ADDWFC	r0x08, W
	MOVWF	r0x0f
; ;ic:24: 	*(iTemp15 [k23 lr23:24 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}[r0x0e r0x0f ]) := iTemp4 [k10 lr16:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _ultoa_ch_1_2}[r0x0d ]
	MOVFF	r0x0e, FSR0L
	MOVFF	r0x0f, FSR0H
	MOVFF	r0x0d, INDF0
; ;ic:25: 	send iTemp0 [k2 lr3:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _ultoa_value_1_1}[r0x00 r0x01 r0x02 r0x03 ]{argreg = 1}
; ;ic:26: 	send iTemp5 [k12 lr10:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}[r0x09 r0x0a r0x0b r0x0c ]{argreg = 2}
; ;ic:27: 	iTemp0 [k2 lr3:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _ultoa_value_1_1}[r0x00 r0x01 r0x02 r0x03 ] = call __divulong [k36 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-long-int function ( unsigned-long-int fixed, unsigned-long-int fixed) fixed}
;	.line	62; stdlib/ltoa.c	value /= radix;
	MOVF	r0x0c, W
	MOVWF	POSTDEC1
	MOVF	r0x0b, W
	MOVWF	POSTDEC1
	MOVF	r0x0a, W
	MOVWF	POSTDEC1
	MOVF	r0x09, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	__divulong
	MOVWF	r0x00
	MOVFF	PRODL, r0x01
	MOVFF	PRODH, r0x02
	MOVFF	FSR0L, r0x03
	MOVLW	0x08
	ADDWF	FSR1L, F
; ;ic:28: 	if iTemp0 [k2 lr3:28 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-long-int fixed}{ sir@ _ultoa_value_1_1}[r0x00 r0x01 r0x02 r0x03 ] != 0 goto _dobody_0($3)
;	.line	63; stdlib/ltoa.c	} while (value != 0);
	MOVF	r0x00, W
	IORWF	r0x01, W
	IORWF	r0x02, W
	IORWF	r0x03, W
	BTFSS	STATUS, 2
	BRA	_00107_DS_
; ;ic:29: 	iTemp22 [k30 lr29:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _ultoa_index_1_2}[r0x00 r0x01 ] := iTemp14 [k22 lr7:29 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _ultoa_index_1_2}[r0x07 r0x08 ]
;	.line	65; stdlib/ltoa.c	do {
	MOVFF	r0x07, r0x00
	MOVFF	r0x08, r0x01
; ;ic:30: 	iTemp19 [k27 lr30:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x02 r0x03 ] := iTemp1 [k4 lr4:30 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char near* fixed}{ sir@ _ultoa_str_1_1}[r0x04 r0x05 ]
	MOVFF	r0x04, r0x02
	MOVFF	r0x05, r0x03
; ;ic:32:  _dobody_1($6) :
; ;ic:33: 	iTemp21 [k29 lr33:35 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] := iTemp22 [k30 lr29:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _ultoa_index_1_2}[r0x00 r0x01 ]
_00110_DS_:
;	.line	66; stdlib/ltoa.c	*str++ = buffer[index++];
	MOVFF	r0x00, r0x04
	MOVFF	r0x01, r0x05
; ;ic:34: 	iTemp22 [k30 lr29:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _ultoa_index_1_2}[r0x00 r0x01 ] = iTemp22 [k30 lr29:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _ultoa_index_1_2}[r0x00 r0x01 ] + 0x1 {const-unsigned-char literal}
	INFSNZ	r0x00, F
	INCF	r0x01, F
; ;ic:35: 	iTemp23 [k31 lr35:36 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}[r0x04 r0x05 ] = iTemp13 [k21 lr6:40 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-char near* fixed}[remat] + iTemp21 [k29 lr33:35 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ]
	MOVLW	LOW(_ultoa_buffer_1_2)
	ADDWF	r0x04, F
	MOVLW	HIGH(_ultoa_buffer_1_2)
	ADDWFC	r0x05, F
; ;ic:36: 	iTemp24 [k32 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x04 ] = @[iTemp23 [k31 lr35:36 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}[r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	INDF0, r0x04
; ;ic:37: 	*(iTemp19 [k27 lr30:41 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x02 r0x03 ]) := iTemp24 [k32 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x04 ]
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	r0x04, INDF0
; ;ic:38: 	iTemp19 [k27 lr30:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x02 r0x03 ] = iTemp19 [k27 lr30:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x02 r0x03 ] + 0x1 {const-unsigned-char literal}
	INFSNZ	r0x02, F
	INCF	r0x03, F
; ;ic:39: 	iTemp25 [k33 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp22 [k30 lr29:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _ultoa_index_1_2}[r0x00 r0x01 ] < 0x20 {unsigned-int literal}
;	.line	67; stdlib/ltoa.c	} while ( index < NUMBER_OF_DIGITS );
	MOVLW	0x00
	SUBWF	r0x01, W
	BNZ	_00127_DS_
	MOVLW	0x20
	SUBWF	r0x00, W
_00127_DS_:
	BNC	_00110_DS_
; ;ic:40: 	if iTemp25 [k33 lr39:40 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _dobody_1($6)
; ;ic:41: 	*(iTemp19 [k27 lr30:41 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x02 r0x03 ]) := 0x0 {const-unsigned-char literal}
;	.line	69; stdlib/ltoa.c	*str = 0;  /* string terminator */
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVLW	0x00
	CLRF	INDF0
; ;ic:42:  _return($9) :
; ;ic:43: 	eproc _ultoa [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-long-int fixed, char near* fixed, unsigned-char fixed) fixed}
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
; code size:	  638 (0x027e) bytes ( 0.49%)
;           	  319 (0x013f) words
; udata size:	   32 (0x0020) bytes ( 2.50%)
; access size:	   16 (0x0010) bytes


	end

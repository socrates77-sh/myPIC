;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:05 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_memcmp

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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($8) :
; ;ic:2: 	proc _memcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( void generic* fixed, void generic* fixed, unsigned-int fixed) fixed}
S_memcmp__memcmp	code
_memcmp:
;	.line	32; string/memcmp.c	memcmp (void * buf1, void * buf2, size_t count) 
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
; ;ic:3: iTemp0 [k2 lr3:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memcmp_buf1_1_28}[r0x00 r0x01 r0x02 ] = recv _memcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( void generic* fixed, void generic* fixed, unsigned-int fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memcmp_buf2_1_28}[r0x03 r0x04 r0x05 ] = recv _memcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( void generic* fixed, void generic* fixed, unsigned-int fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memcmp_count_1_28}[r0x06 r0x07 ] = recv _memcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( void generic* fixed, void generic* fixed, unsigned-int fixed) fixed}
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:6: 	if iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memcmp_count_1_28}[r0x06 r0x07 ] != 0 goto preHeaderLbl0($12)
;	.line	34; string/memcmp.c	if (!count)
	MOVF	r0x06, W
	IORWF	r0x07, W
	BNZ	_00108_DS_
; ;ic:7: 	ret 0x0 {int literal}
;	.line	35; string/memcmp.c	return 0;
	CLRF	PRODL
	CLRF	WREG
	BRA	_00111_DS_
; ;ic:8:  preHeaderLbl0($12) :
; ;ic:9: 	iTemp3 [k8 lr9:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] := iTemp2 [k6 lr5:9 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memcmp_count_1_28}[r0x06 r0x07 ]
; ;ic:11:  _whilecontinue_0($4) :
; ;ic:12: 	iTemp3 [k8 lr9:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] = iTemp3 [k8 lr9:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] - 0x1 {const-unsigned-char literal}
_00108_DS_:
;	.line	37; string/memcmp.c	while (--count && (*((char *)buf1) == *((char *)buf2)))
	MOVLW	0xff
	ADDWF	r0x06, F
	ADDWFC	r0x07, F
; ;ic:13: 	if iTemp3 [k8 lr9:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] == 0 goto _whilebreak_0($6)
	MOVF	r0x06, W
	IORWF	r0x07, W
	BZ	_00110_DS_
; ;ic:14: 	iTemp4 [k9 lr14:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] = (char generic* fixed)iTemp0 [k2 lr3:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memcmp_buf1_1_28}[r0x00 r0x01 r0x02 ]
	MOVF	r0x02, W
	MOVWF	r0x0a
	MOVF	r0x01, W
	MOVWF	r0x09
	MOVF	r0x00, W
	MOVWF	r0x08
; ;ic:15: 	iTemp5 [k10 lr15:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0b ] = @[iTemp4 [k9 lr14:20 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, PRODL
	MOVF	r0x0a, W
	CALL	__gptrget1
	MOVWF	r0x0b
; ;ic:16: 	iTemp6 [k11 lr16:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0c r0x0d r0x0e ] = (char generic* fixed)iTemp1 [k4 lr4:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memcmp_buf2_1_28}[r0x03 r0x04 r0x05 ]
	MOVF	r0x05, W
	MOVWF	r0x0e
	MOVF	r0x04, W
	MOVWF	r0x0d
	MOVF	r0x03, W
	MOVWF	r0x0c
; ;ic:17: 	iTemp7 [k12 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0f ] = @[iTemp6 [k11 lr16:22 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0c r0x0d r0x0e ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x0c, FSR0L
	MOVFF	r0x0d, PRODL
	MOVF	r0x0e, W
	CALL	__gptrget1
; #	MOVWF	r0x0f
; #;;ic:18: 	iTemp8 [k13 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp5 [k10 lr15:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0b ] == iTemp7 [k12 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0f ]
; #	MOVF	r0x0b, W
; #	XORWF	r0x0f, W
	XORWF	r0x0b, W
	BNZ	_00110_DS_
; ;ic:19: 	if iTemp8 [k13 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _whilebreak_0($6)
; ;ic:20: 	iTemp10 [k15 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] = iTemp4 [k9 lr14:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] + 0x1 {const-unsigned-char literal}
;	.line	39; string/memcmp.c	buf1 = (char *)buf1 + 1;
	INCF	r0x08, F
	BNC	_00124_DS_
	INFSNZ	r0x09, F
	INCF	r0x0a, F
; ;ic:21: 	iTemp0 [k2 lr3:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memcmp_buf1_1_28}[r0x00 r0x01 r0x02 ] = (void generic* fixed)iTemp10 [k15 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ]
_00124_DS_:
	MOVF	r0x0a, W
	MOVWF	r0x02
	MOVF	r0x09, W
	MOVWF	r0x01
	MOVF	r0x08, W
	MOVWF	r0x00
; ;ic:22: 	iTemp13 [k18 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0c r0x0d r0x0e ] = iTemp6 [k11 lr16:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0c r0x0d r0x0e ] + 0x1 {const-unsigned-char literal}
;	.line	40; string/memcmp.c	buf2 = (char *)buf2 + 1;
	INCF	r0x0c, F
	BNC	_00125_DS_
	INFSNZ	r0x0d, F
	INCF	r0x0e, F
; ;ic:23: 	iTemp1 [k4 lr4:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memcmp_buf2_1_28}[r0x03 r0x04 r0x05 ] = (void generic* fixed)iTemp13 [k18 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x0c r0x0d r0x0e ]
_00125_DS_:
	MOVF	r0x0e, W
	MOVWF	r0x05
	MOVF	r0x0d, W
	MOVWF	r0x04
	MOVF	r0x0c, W
	MOVWF	r0x03
; ;ic:24: 	 goto _whilecontinue_0($4)
	BRA	_00108_DS_
; ;ic:25:  _whilebreak_0($6) :
; ;ic:26: 	iTemp15 [k20 lr26:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x00 r0x01 r0x02 ] = (unsigned-char generic* fixed)iTemp0 [k2 lr3:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memcmp_buf1_1_28}[r0x00 r0x01 r0x02 ]
_00110_DS_:
;	.line	43; string/memcmp.c	return *((unsigned char *)buf1) - *((unsigned char *)buf2);
	MOVF	r0x02, W
	MOVWF	r0x02
; #	MOVF	r0x01, W
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
; #	MOVF	r0x00, W
; #	MOVF	r0x00, W
; #	MOVWF	r0x00
; #;;ic:27: 	iTemp16 [k21 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x00 ] = @[iTemp15 [k20 lr26:27 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrget1
	MOVWF	r0x00
; ;ic:28: 	iTemp17 [k22 lr28:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x00 r0x01 ] = (int fixed)iTemp16 [k21 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x00 ]
	CLRF	r0x01
; ;ic:29: 	iTemp18 [k23 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x03 r0x04 r0x05 ] = (unsigned-char generic* fixed)iTemp1 [k4 lr4:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memcmp_buf2_1_28}[r0x03 r0x04 r0x05 ]
; #	MOVF	r0x05, W
; #	MOVWF	r0x05
; #	MOVF	r0x05, W
; #	MOVF	r0x04, W
; #	MOVF	r0x04, W
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
; #	MOVF	r0x03, W
; #	MOVF	r0x03, W
; #	MOVWF	r0x03
; #;;ic:30: 	iTemp19 [k24 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x03 ] = @[iTemp18 [k23 lr29:30 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
; ;ic:31: 	iTemp20 [k25 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x03 r0x02 ] = (int fixed)iTemp19 [k24 lr30:31 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x03 ]
	CLRF	r0x02
; ;ic:32: 	iTemp21 [k26 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x00 r0x01 ] = iTemp17 [k22 lr28:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x00 r0x01 ] - iTemp20 [k25 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x03 r0x02 ]
	SUBWF	r0x00, F
	MOVF	r0x02, W
	SUBWFB	r0x01, F
; ;ic:33: 	ret iTemp21 [k26 lr32:33 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x00 r0x01 ]
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:34:  _return($7) :
; ;ic:35: 	eproc _memcmp [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( void generic* fixed, void generic* fixed, unsigned-int fixed) fixed}
_00111_DS_:
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
; code size:	  356 (0x0164) bytes ( 0.27%)
;           	  178 (0x00b2) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   15 (0x000f) bytes


	end

;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:10 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_memrchr

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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($11) :
; ;ic:2: 	proc _memrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, char fixed, unsigned-int fixed) fixed}
S_memrchr__memrchr	code
_memrchr:
;	.line	33; string/memrchr.c	memrchr (void *s, char c, size_t count)
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
; ;ic:3: iTemp0 [k2 lr3:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memrchr_s_1_28}[r0x00 r0x01 r0x02 ] = recv _memrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, char fixed, unsigned-int fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _memrchr_c_1_28}[r0x03 ] = recv _memrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, char fixed, unsigned-int fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:5: iTemp2 [k6 lr5:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memrchr_count_1_28}[r0x04 r0x05 ] = recv _memrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, char fixed, unsigned-int fixed) fixed}
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:6: 	if iTemp2 [k6 lr5:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memrchr_count_1_28}[r0x04 r0x05 ] != 0 goto _iffalse_0($2)
;	.line	35; string/memrchr.c	if (!count)
	MOVF	r0x04, W
	IORWF	r0x05, W
	BNZ	_00106_DS_
; ;ic:7: 	ret 0x0 {void generic* literal}
;	.line	36; string/memrchr.c	return NULL;
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
	BRA	_00114_DS_
; ;ic:8:  _iffalse_0($2) :
; ;ic:9: 	iTemp3 [k8 lr9:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ] = (char generic* fixed)iTemp0 [k2 lr3:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memrchr_s_1_28}[r0x00 r0x01 r0x02 ]
_00106_DS_:
;	.line	38; string/memrchr.c	s = (char *)s + sizeof (char *) * count;
	MOVF	r0x02, W
	MOVWF	r0x08
	MOVF	r0x01, W
	MOVWF	r0x07
	MOVF	r0x00, W
	MOVWF	r0x06
; ;ic:10: 	send 0x3 {unsigned-int literal}{argreg = 1}
; ;ic:11: 	send iTemp2 [k6 lr5:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memrchr_count_1_28}[r0x04 r0x05 ]{argreg = 2}
; ;ic:12: 	iTemp4 [k9 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x09 r0x0a ] = call __mulint [k19 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int function ( int fixed, int fixed) fixed}
	MOVF	r0x05, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	CLRF	POSTDEC1
	MOVLW	0x03
	MOVWF	POSTDEC1
	CALL	__mulint
	MOVWF	r0x09
	MOVFF	PRODL, r0x0a
	MOVLW	0x04
	ADDWF	FSR1L, F
; ;ic:13: 	iTemp5 [k10 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ] = iTemp3 [k8 lr9:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ] + iTemp4 [k9 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x09 r0x0a ]
	MOVF	r0x09, W
	ADDWF	r0x06, F
	MOVF	r0x0a, W
	ADDWFC	r0x07, F
	CLRF	WREG
	ADDWFC	r0x08, F
; ;ic:14: 	iTemp0 [k2 lr3:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memrchr_s_1_28}[r0x00 r0x01 r0x02 ] = (void generic* fixed)iTemp5 [k10 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ]
	MOVF	r0x08, W
	MOVWF	r0x02
	MOVF	r0x07, W
	MOVWF	r0x01
	MOVF	r0x06, W
	MOVWF	r0x00
; ;ic:15: 	iTemp13 [k18 lr15:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] := iTemp2 [k6 lr5:15 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memrchr_count_1_28}[r0x04 r0x05 ]
; ;ic:17:  _whilecontinue_0($4) :
; ;ic:18: 	iTemp7 [k12 lr18:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ] = (char generic* fixed)iTemp0 [k2 lr3:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memrchr_s_1_28}[r0x00 r0x01 r0x02 ]
_00108_DS_:
;	.line	40; string/memrchr.c	while (*(char *)s != c && count)
	MOVF	r0x02, W
	MOVWF	r0x08
	MOVF	r0x01, W
	MOVWF	r0x07
	MOVF	r0x00, W
	MOVWF	r0x06
; ;ic:19: 	iTemp8 [k13 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] = @[iTemp7 [k12 lr18:23 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, PRODL
	MOVF	r0x08, W
	CALL	__gptrget1
; #	MOVWF	r0x09
; #;;ic:20: 	iTemp9 [k14 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp8 [k13 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x09 ] == iTemp1 [k4 lr4:26 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _memrchr_c_1_28}[r0x03 ]
; #	MOVF	r0x09, W
	XORWF	r0x03, W
	BZ	_00110_DS_
; ;ic:21: 	if iTemp9 [k14 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _whilebreak_0($6)
; ;ic:22: 	if iTemp13 [k18 lr15:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] == 0 goto _whilebreak_0($6)
	MOVF	r0x04, W
	IORWF	r0x05, W
	BZ	_00110_DS_
; ;ic:23: 	iTemp11 [k16 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ] = iTemp7 [k12 lr18:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ] - 0x3 {unsigned-char literal}
;	.line	42; string/memrchr.c	s = (char *)s - sizeof(char *);
	MOVLW	0xfd
	ADDWF	r0x06, F
	MOVLW	0xff
	ADDWFC	r0x07, F
	ADDWFC	r0x08, F
; ;ic:24: 	iTemp0 [k2 lr3:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memrchr_s_1_28}[r0x00 r0x01 r0x02 ] = (void generic* fixed)iTemp11 [k16 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x06 r0x07 r0x08 ]
	MOVF	r0x08, W
	MOVWF	r0x02
	MOVF	r0x07, W
	MOVWF	r0x01
	MOVF	r0x06, W
	MOVWF	r0x00
; ;ic:25: 	iTemp13 [k18 lr15:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] = iTemp13 [k18 lr15:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] - 0x1 {const-unsigned-char literal}
;	.line	43; string/memrchr.c	--count;
	MOVLW	0xff
	ADDWF	r0x04, F
	ADDWFC	r0x05, F
; ;ic:26: 	 goto _whilecontinue_0($4)
	BRA	_00108_DS_
; ;ic:27:  _whilebreak_0($6) :
; ;ic:28: 	if iTemp13 [k18 lr15:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] == 0 goto _iffalse_1($8)
_00110_DS_:
;	.line	46; string/memrchr.c	if (count)
	MOVF	r0x04, W
	IORWF	r0x05, W
	BZ	_00112_DS_
; ;ic:29: 	ret iTemp0 [k2 lr3:29 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memrchr_s_1_28}[r0x00 r0x01 r0x02 ]
;	.line	47; string/memrchr.c	return s;
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
	BRA	_00114_DS_
; ;ic:30:  _iffalse_1($8) :
; ;ic:31: 	ret 0x0 {void generic* literal}
_00112_DS_:
;	.line	49; string/memrchr.c	return NULL;
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
; ;ic:32:  _return($10) :
; ;ic:33: 	eproc _memrchr [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, char fixed, unsigned-int fixed) fixed}
_00114_DS_:
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
; code size:	  306 (0x0132) bytes ( 0.23%)
;           	  153 (0x0099) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   11 (0x000b) bytes


	end

;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:02 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_memccpy

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	__gptrget1
	extern	__gptrput1

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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($7) :
; ;ic:2: 	proc _memccpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, void generic* fixed, char fixed, unsigned-int fixed) fixed}
S_memccpy__memccpy	code
_memccpy:
;	.line	33; string/memccpy.c	memccpy (void *dst, void *src, char c, size_t acount) 
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
; ;ic:3: iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memccpy_dst_1_28}[r0x00 r0x01 r0x02 ] = recv _memccpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, void generic* fixed, char fixed, unsigned-int fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memccpy_src_1_28}[r0x03 r0x04 r0x05 ] = recv _memccpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, void generic* fixed, char fixed, unsigned-int fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp2 [k6 lr5:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _memccpy_c_1_28}[r0x06 ] = recv _memccpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, void generic* fixed, char fixed, unsigned-int fixed) fixed}
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
; ;ic:6: iTemp9 [k17 lr6:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x07 r0x08 ] = recv _memccpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, void generic* fixed, char fixed, unsigned-int fixed) fixed}
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
	MOVLW	0x0a
;	.line	35; string/memccpy.c	char *d = dst;
	MOVFF	PLUSW2, r0x08
; ;ic:7: 	iTemp16 [k24 lr7:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] = (char generic* fixed)iTemp0 [k2 lr3:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memccpy_dst_1_28}[r0x00 r0x01 r0x02 ]
; #	MOVF	r0x02, W
; #	MOVWF	r0x02
; #	MOVF	r0x02, W
; #	MOVF	r0x01, W
; #	MOVF	r0x01, W
; #	MOVWF	r0x01
; #	MOVF	r0x01, W
; #	MOVF	r0x00, W
; #	MOVF	r0x00, W
; #	MOVWF	r0x00
; #;;ic:8: 	iTemp6 [k13 lr8:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _memccpy_s_1_29}[r0x03 r0x04 r0x05 ] = (char generic* fixed)iTemp1 [k4 lr4:8 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memccpy_src_1_28}[r0x03 r0x04 r0x05 ]
; #	MOVF	r0x00, W
; #	MOVF	r0x05, W
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
; #;;ic:9: 	iTemp18 [k26 lr9:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x09 r0x0a r0x0b ] := iTemp6 [k13 lr8:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _memccpy_s_1_29}[r0x03 r0x04 r0x05 ]
;	.line	36; string/memccpy.c	char *s = src;
	MOVFF	r0x03, r0x09
	MOVFF	r0x04, r0x0a
	MOVFF	r0x05, r0x0b
; ;ic:11:  _whilecontinue_0($3) :
; ;ic:12: 	iTemp8 [k16 lr12:14 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x0c r0x0d ] := iTemp9 [k17 lr6:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x07 r0x08 ]
_00107_DS_:
	MOVFF	r0x07, r0x0c
	MOVFF	r0x08, r0x0d
; ;ic:13: 	iTemp9 [k17 lr6:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x07 r0x08 ] = iTemp9 [k17 lr6:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x07 r0x08 ] - 0x1 {const-unsigned-char literal}
	MOVLW	0xff
	ADDWF	r0x07, F
	ADDWFC	r0x08, F
; ;ic:14: 	if iTemp8 [k16 lr12:14 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x0c r0x0d ] == 0 goto _whilebreak_0($5)
	MOVF	r0x0c, W
	IORWF	r0x0d, W
	BZ	_00109_DS_
; ;ic:15: 	iTemp11 [k19 lr15:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0c ] = @[iTemp18 [k26 lr9:27 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x09 r0x0a r0x0b ] + 0x0 {const-unsigned-char literal}]
;	.line	43; string/memccpy.c	if (*s == c)
	MOVFF	r0x09, FSR0L
	MOVFF	r0x0a, PRODL
	MOVF	r0x0b, W
	CALL	__gptrget1
; #	MOVWF	r0x0c
; #;;ic:16: 	iTemp12 [k20 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp11 [k19 lr15:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0c ] == iTemp2 [k6 lr5:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char fixed}{ sir@ _memccpy_c_1_28}[r0x06 ]
; #	MOVF	r0x0c, W
	MOVWF	r0x0c
	XORWF	r0x06, W
	BNZ	_00106_DS_
; ;ic:17: 	if iTemp12 [k20 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_0($2)
; ;ic:18: 	iTemp6 [k13 lr8:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _memccpy_s_1_29}[r0x03 r0x04 r0x05 ] = iTemp6 [k13 lr8:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _memccpy_s_1_29}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
;	.line	44; string/memccpy.c	return ++s;
	INCF	r0x03, F
	BNC	_00120_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:19: 	iTemp14 [k22 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* fixed}[r0x0d r0x0e r0x0f ] = (void generic* fixed)iTemp6 [k13 lr8:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _memccpy_s_1_29}[r0x03 r0x04 r0x05 ]
_00120_DS_:
	MOVF	r0x05, W
	MOVWF	r0x0f
	MOVF	r0x04, W
	MOVWF	r0x0e
	MOVF	r0x03, W
; ;ic:20: 	ret iTemp14 [k22 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* fixed}[r0x0d r0x0e r0x0f ]
	MOVFF	r0x0f, PRODH
	MOVFF	r0x0e, PRODL
	BRA	_00110_DS_
; ;ic:21:  _iffalse_0($2) :
; ;ic:22: 	iTemp19 [k27 lr22:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0c ] := iTemp11 [k19 lr15:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0c ]
; ;ic:23: 	iTemp18 [k26 lr9:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x09 r0x0a r0x0b ] = iTemp18 [k26 lr9:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x09 r0x0a r0x0b ] + 0x1 {const-unsigned-char literal}
_00106_DS_:
;	.line	46; string/memccpy.c	*d++ = *s++;
	INCF	r0x09, F
	BNC	_00121_DS_
	INFSNZ	r0x0a, F
	INCF	r0x0b, F
; ;ic:24: 	iTemp6 [k13 lr8:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{char generic* fixed}{ sir@ _memccpy_s_1_29}[r0x03 r0x04 r0x05 ] := iTemp18 [k26 lr9:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x09 r0x0a r0x0b ]
_00121_DS_:
	MOVFF	r0x09, r0x03
	MOVFF	r0x0a, r0x04
	MOVFF	r0x0b, r0x05
; ;ic:25: 	*(iTemp16 [k24 lr7:27 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ]) := iTemp19 [k27 lr22:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0c ]
	MOVFF	r0x0c, POSTDEC1
	MOVFF	r0x00, FSR0L
	MOVFF	r0x01, PRODL
	MOVF	r0x02, W
	CALL	__gptrput1
; ;ic:26: 	iTemp16 [k24 lr7:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] = iTemp16 [k24 lr7:27 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x00 r0x01 r0x02 ] + 0x1 {const-unsigned-char literal}
	INCF	r0x00, F
	BNC	_00122_DS_
	INFSNZ	r0x01, F
	INCF	r0x02, F
; ;ic:27: 	 goto _whilecontinue_0($3)
_00122_DS_:
	BRA	_00107_DS_
; ;ic:28:  _whilebreak_0($5) :
; ;ic:29: 	ret 0x0 {void generic* literal}
_00109_DS_:
;	.line	49; string/memccpy.c	return NULL;
	CLRF	PRODH
	CLRF	PRODL
	CLRF	WREG
; ;ic:30:  _return($6) :
; ;ic:31: 	eproc _memccpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, void generic* fixed, char fixed, unsigned-int fixed) fixed}
_00110_DS_:
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
; code size:	  330 (0x014a) bytes ( 0.25%)
;           	  165 (0x00a5) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   16 (0x0010) bytes


	end

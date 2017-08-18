;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:06 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_memcpy

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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($5) :
; ;ic:2: 	proc _memcpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, void generic* fixed, unsigned-int fixed) fixed}
S_memcpy__memcpy	code
_memcpy:
;	.line	32; string/memcpy.c	memcpy (void *dst, void *src, size_t acount) 
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
; ;ic:3: iTemp0 [k2 lr3:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memcpy_dst_1_28}[r0x00 r0x01 r0x02 ] = recv _memcpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, void generic* fixed, unsigned-int fixed) fixed}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:4: iTemp1 [k4 lr4:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memcpy_src_1_28}[r0x03 r0x04 r0x05 ] = recv _memcpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, void generic* fixed, unsigned-int fixed) fixed}
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:5: iTemp8 [k15 lr5:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] = recv _memcpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, void generic* fixed, unsigned-int fixed) fixed}
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
	MOVLW	0x09
	MOVFF	PLUSW2, r0x07
; ;ic:6: 	iTemp10 [k17 lr6:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] = (char generic* fixed)iTemp0 [k2 lr3:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memcpy_dst_1_28}[r0x00 r0x01 r0x02 ]
;	.line	34; string/memcpy.c	char *d = dst;
	MOVF	r0x02, W
	MOVWF	r0x0a
	MOVF	r0x01, W
	MOVWF	r0x09
	MOVF	r0x00, W
;	.line	35; string/memcpy.c	char *s = src;
	MOVWF	r0x08
; ;ic:7: 	iTemp12 [k19 lr7:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] = (char generic* fixed)iTemp1 [k4 lr4:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memcpy_src_1_28}[r0x03 r0x04 r0x05 ]
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
; #;;ic:9:  _whilecontinue_0($1) :
; #;;ic:10: 	iTemp7 [k14 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x0b r0x0c ] := iTemp8 [k15 lr5:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ]
_00105_DS_:
;	.line	40; string/memcpy.c	while (acount--)
	MOVFF	r0x06, r0x0b
	MOVFF	r0x07, r0x0c
; ;ic:11: 	iTemp8 [k15 lr5:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] = iTemp8 [k15 lr5:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x06 r0x07 ] - 0x1 {const-unsigned-char literal}
	MOVLW	0xff
	ADDWF	r0x06, F
	ADDWFC	r0x07, F
; ;ic:12: 	if iTemp7 [k14 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x0b r0x0c ] == 0 goto _whilebreak_0($3)
	MOVF	r0x0b, W
	IORWF	r0x0c, W
	BZ	_00107_DS_
; ;ic:13: 	iTemp13 [k20 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0b ] = @[iTemp12 [k19 lr7:17 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
;	.line	41; string/memcpy.c	*d++ = *s++;
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, PRODL
	MOVF	r0x05, W
	CALL	__gptrget1
	MOVWF	r0x0b
; ;ic:14: 	iTemp12 [k19 lr7:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] = iTemp12 [k19 lr7:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x03 r0x04 r0x05 ] + 0x1 {const-unsigned-char literal}
	INCF	r0x03, F
	BNC	_00115_DS_
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:15: 	*(iTemp10 [k17 lr6:17 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ]) := iTemp13 [k20 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x0b ]
_00115_DS_:
	MOVFF	r0x0b, POSTDEC1
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, PRODL
	MOVF	r0x0a, W
	CALL	__gptrput1
; ;ic:16: 	iTemp10 [k17 lr6:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] = iTemp10 [k17 lr6:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char generic* fixed}[r0x08 r0x09 r0x0a ] + 0x1 {const-unsigned-char literal}
	INCF	r0x08, F
	BNC	_00105_DS_
	INFSNZ	r0x09, F
	INCF	r0x0a, F
; ;ic:17: 	 goto _whilecontinue_0($1)
_00116_DS_:
	BRA	_00105_DS_
; ;ic:18:  _whilebreak_0($3) :
; ;ic:19: 	ret iTemp0 [k2 lr3:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void generic* fixed}{ sir@ _memcpy_dst_1_28}[r0x00 r0x01 r0x02 ]
_00107_DS_:
;	.line	43; string/memcpy.c	return dst;
	MOVFF	r0x02, PRODH
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:20:  _return($4) :
; ;ic:21: 	eproc _memcpy [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void generic* function ( void generic* fixed, void generic* fixed, unsigned-int fixed) fixed}
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
; code size:	  260 (0x0104) bytes ( 0.20%)
;           	  130 (0x0082) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   13 (0x000d) bytes


	end

;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:07 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_memcpypgm2ram

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
TBLPTRL	equ	0xff6
TBLPTRH	equ	0xff7
TBLPTRU	equ	0xff8
TABLAT	equ	0xff5
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
FSR1L	equ	0xfe1
FSR2L	equ	0xfd9
INDF0	equ	0xfef
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($5) :
; ;ic:2: 	proc _memcpypgm2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near* function ( void near* fixed, const-void code* fixed, unsigned-int fixed) data}
S_memcpypgm2ram__memcpypgm2ram	code
_memcpypgm2ram:
;	.line	32; string/memcpypgm2ram.c	memcpypgm2ram (__data void *dst, __code void *src, size_t acount)
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
; ;ic:3: iTemp0 [k2 lr3:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* fixed}{ sir@ _memcpypgm2ram_dst_1_28}[r0x00 r0x01 ] = recv _memcpypgm2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near* function ( void near* fixed, const-void code* fixed, unsigned-int fixed) data}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-void code* fixed}{ sir@ _memcpypgm2ram_src_1_28}[r0x02 r0x03 r0x04 ] = recv _memcpypgm2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near* function ( void near* fixed, const-void code* fixed, unsigned-int fixed) data}
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
; ;ic:5: iTemp8 [k15 lr5:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x05 r0x06 ] = recv _memcpypgm2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near* function ( void near* fixed, const-void code* fixed, unsigned-int fixed) data}
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
	MOVLW	0x08
	MOVFF	PLUSW2, r0x06
; ;ic:6: 	iTemp10 [k17 lr6:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x07 r0x08 ] = (char near* fixed)iTemp0 [k2 lr3:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* fixed}{ sir@ _memcpypgm2ram_dst_1_28}[r0x00 r0x01 ]
;	.line	34; string/memcpypgm2ram.c	char __data *d = dst;
	MOVF	r0x00, W
	MOVWF	r0x07
	MOVF	r0x01, W
;	.line	35; string/memcpypgm2ram.c	char __code *s = src;
	MOVWF	r0x08
; ;ic:7: 	iTemp12 [k19 lr7:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char code* fixed}[r0x02 r0x03 r0x04 ] = (const-char code* fixed)iTemp1 [k4 lr4:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{const-void code* fixed}{ sir@ _memcpypgm2ram_src_1_28}[r0x02 r0x03 r0x04 ]
; #	MOVF	r0x04, W
; #	MOVWF	r0x04
; #	MOVF	r0x04, W
; #	MOVF	r0x03, W
; #	MOVF	r0x03, W
; #	MOVWF	r0x03
; #	MOVF	r0x03, W
; #	MOVF	r0x02, W
; #	MOVF	r0x02, W
; #	MOVWF	r0x02
; #;;ic:9:  _whilecontinue_0($1) :
; #;;ic:10: 	iTemp7 [k14 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x09 r0x0a ] := iTemp8 [k15 lr5:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x05 r0x06 ]
_00105_DS_:
;	.line	40; string/memcpypgm2ram.c	while (acount--)
	MOVFF	r0x05, r0x09
	MOVFF	r0x06, r0x0a
; ;ic:11: 	iTemp8 [k15 lr5:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x05 r0x06 ] = iTemp8 [k15 lr5:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x05 r0x06 ] - 0x1 {const-unsigned-char literal}
	MOVLW	0xff
	ADDWF	r0x05, F
	ADDWFC	r0x06, F
; ;ic:12: 	if iTemp7 [k14 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x09 r0x0a ] == 0 goto _whilebreak_0($3)
	MOVF	r0x09, W
	IORWF	r0x0a, W
	BZ	_00107_DS_
; ;ic:13: 	iTemp13 [k20 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x09 ] = @[iTemp12 [k19 lr7:17 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{const-char code* fixed}[r0x02 r0x03 r0x04 ] + 0x0 {const-unsigned-char literal}]
;	.line	41; string/memcpypgm2ram.c	*d++ = *s++;
	MOVFF	r0x02, TBLPTRL
	MOVFF	r0x03, TBLPTRH
	MOVFF	r0x04, TBLPTRU
	TBLRD*+	
	MOVFF	TABLAT, r0x09
; ;ic:14: 	iTemp12 [k19 lr7:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char code* fixed}[r0x02 r0x03 r0x04 ] = iTemp12 [k19 lr7:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char code* fixed}[r0x02 r0x03 r0x04 ] + 0x1 {const-unsigned-char literal}
	INCF	r0x02, F
	BNC	_00115_DS_
	INFSNZ	r0x03, F
	INCF	r0x04, F
; ;ic:15: 	*(iTemp10 [k17 lr6:17 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x07 r0x08 ]) := iTemp13 [k20 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{const-char register}[r0x09 ]
_00115_DS_:
	MOVFF	r0x07, FSR0L
	MOVFF	r0x08, FSR0H
	MOVFF	r0x09, INDF0
; ;ic:16: 	iTemp10 [k17 lr6:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x07 r0x08 ] = iTemp10 [k17 lr6:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x07 r0x08 ] + 0x1 {const-unsigned-char literal}
	INFSNZ	r0x07, F
	INCF	r0x08, F
; ;ic:17: 	 goto _whilecontinue_0($1)
	BRA	_00105_DS_
; ;ic:18:  _whilebreak_0($3) :
; ;ic:19: 	ret iTemp0 [k2 lr3:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* fixed}{ sir@ _memcpypgm2ram_dst_1_28}[r0x00 r0x01 ]
_00107_DS_:
;	.line	43; string/memcpypgm2ram.c	return dst;
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:20:  _return($4) :
; ;ic:21: 	eproc _memcpypgm2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near* function ( void near* fixed, const-void code* fixed, unsigned-int fixed) data}
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
; code size:	  222 (0x00de) bytes ( 0.17%)
;           	  111 (0x006f) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   11 (0x000b) bytes


	end

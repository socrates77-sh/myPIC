;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:08 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_memcpyram2ram

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($5) :
; ;ic:2: 	proc _memcpyram2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near* function ( void near* fixed, void near* fixed, unsigned-int fixed) data}
S_memcpyram2ram__memcpyram2ram	code
_memcpyram2ram:
;	.line	32; string/memcpyram2ram.c	memcpyram2ram (__data void *dst, __data void *src, size_t acount)
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
; ;ic:3: iTemp0 [k2 lr3:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* fixed}{ sir@ _memcpyram2ram_dst_1_28}[r0x00 r0x01 ] = recv _memcpyram2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near* function ( void near* fixed, void near* fixed, unsigned-int fixed) data}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* fixed}{ sir@ _memcpyram2ram_src_1_28}[r0x02 r0x03 ] = recv _memcpyram2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near* function ( void near* fixed, void near* fixed, unsigned-int fixed) data}
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
	MOVLW	0x05
	MOVFF	PLUSW2, r0x03
; ;ic:5: iTemp8 [k15 lr5:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] = recv _memcpyram2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near* function ( void near* fixed, void near* fixed, unsigned-int fixed) data}
	MOVLW	0x06
	MOVFF	PLUSW2, r0x04
	MOVLW	0x07
	MOVFF	PLUSW2, r0x05
; ;ic:6: 	iTemp10 [k17 lr6:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x06 r0x07 ] = (char near* fixed)iTemp0 [k2 lr3:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* fixed}{ sir@ _memcpyram2ram_dst_1_28}[r0x00 r0x01 ]
;	.line	34; string/memcpyram2ram.c	char __data *d = dst;
	MOVF	r0x00, W
	MOVWF	r0x06
	MOVF	r0x01, W
	MOVWF	r0x07
; ;ic:7: 	iTemp12 [k19 lr7:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x02 r0x03 ] = (char near* fixed)iTemp1 [k4 lr4:7 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* fixed}{ sir@ _memcpyram2ram_src_1_28}[r0x02 r0x03 ]
; ;ic:9:  _whilecontinue_0($1) :
; ;ic:10: 	iTemp7 [k14 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x08 r0x09 ] := iTemp8 [k15 lr5:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ]
_00105_DS_:
;	.line	40; string/memcpyram2ram.c	while (acount--)
	MOVFF	r0x04, r0x08
	MOVFF	r0x05, r0x09
; ;ic:11: 	iTemp8 [k15 lr5:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] = iTemp8 [k15 lr5:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] - 0x1 {const-unsigned-char literal}
	MOVLW	0xff
	ADDWF	r0x04, F
	ADDWFC	r0x05, F
; ;ic:12: 	if iTemp7 [k14 lr10:12 so:0]{ ia0 a2p0 re0 rm0 nos1 ru0 dp0}{unsigned-int fixed}[r0x08 r0x09 ] == 0 goto _whilebreak_0($3)
	MOVF	r0x08, W
	IORWF	r0x09, W
	BZ	_00107_DS_
; ;ic:13: 	iTemp13 [k20 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x08 ] = @[iTemp12 [k19 lr7:17 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x02 r0x03 ] + 0x0 {const-unsigned-char literal}]
;	.line	41; string/memcpyram2ram.c	*d++ = *s++;
	MOVFF	r0x02, FSR0L
	MOVFF	r0x03, FSR0H
	MOVFF	INDF0, r0x08
; ;ic:14: 	iTemp12 [k19 lr7:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x02 r0x03 ] = iTemp12 [k19 lr7:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x02 r0x03 ] + 0x1 {const-unsigned-char literal}
	INFSNZ	r0x02, F
	INCF	r0x03, F
; ;ic:15: 	*(iTemp10 [k17 lr6:17 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x06 r0x07 ]) := iTemp13 [k20 lr13:15 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char register}[r0x08 ]
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVFF	r0x08, INDF0
; ;ic:16: 	iTemp10 [k17 lr6:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x06 r0x07 ] = iTemp10 [k17 lr6:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char near* fixed}[r0x06 r0x07 ] + 0x1 {const-unsigned-char literal}
	INFSNZ	r0x06, F
	INCF	r0x07, F
; ;ic:17: 	 goto _whilecontinue_0($1)
	BRA	_00105_DS_
; ;ic:18:  _whilebreak_0($3) :
; ;ic:19: 	ret iTemp0 [k2 lr3:19 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{void near* fixed}{ sir@ _memcpyram2ram_dst_1_28}[r0x00 r0x01 ]
_00107_DS_:
;	.line	43; string/memcpyram2ram.c	return dst;
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:20:  _return($4) :
; ;ic:21: 	eproc _memcpyram2ram [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void near* function ( void near* fixed, void near* fixed, unsigned-int fixed) data}
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
; code size:	  198 (0x00c6) bytes ( 0.15%)
;           	   99 (0x0063) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   10 (0x000a) bytes


	end

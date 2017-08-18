;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:21:57 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_memfreemax

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	_heap

;--------------------------------------------------------
;	Equates to used internal registers
;--------------------------------------------------------
STATUS	equ	0xfd8
WREG	equ	0xfe8
FSR0L	equ	0xfe9
FSR0H	equ	0xfea
INDF0	equ	0xfef
POSTDEC1	equ	0xfe5
PREINC1	equ	0xfe4
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($8) :
; ;ic:2: 	proc _memfreemax [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function ( ) fixed}
S_memfreemax__memfreemax	code
_memfreemax:
;	.line	33; stdlib/memfreemax.c	unsigned int memfreemax(void)
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
; ;ic:3: 	iTemp0 [k2 lr3:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _memfreemax_maxSize_1_10}[r0x00 ] := 0x1 {const-unsigned-char literal}
;	.line	36; stdlib/memfreemax.c	unsigned char maxSize = 1;
	MOVLW	0x01
	MOVWF	r0x00
; ;ic:4: 	iTemp2 [k7 lr4:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-char near* near* fixed}[remat] = &[_heap [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}]
; ;ic:5: 	iTemp1 [k4 lr5:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _memfreemax_pHeap_1_10}[r0x01 r0x02 ] = (struct __00000000 near* fixed)iTemp2 [k7 lr4:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-char near* near* fixed}[remat]
;	.line	39; stdlib/memfreemax.c	pHeap = (_malloc_rec _MALLOC_SPEC *)&heap;
	MOVLW	LOW(_heap)
	MOVWF	r0x01
	MOVLW	HIGH(_heap)
	MOVWF	r0x02
; ;ic:7:  _whilecontinue_0($4) :
; ;ic:8: 	iTemp7 [k15 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x03 r0x04 ] := iTemp1 [k4 lr5:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _memfreemax_pHeap_1_10}[r0x01 r0x02 ]
_00108_DS_:
;	.line	41; stdlib/memfreemax.c	while ((bLen = pHeap->bits.count)) {
	MOVFF	r0x01, r0x03
	MOVFF	r0x02, r0x04
; ;ic:9: 	iTemp8 [k16 lr9:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}[r0x03 ] = @[iTemp7 [k15 lr8:9 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x03 r0x04 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	MOVF	INDF0, W
	ANDLW	0x7f
	MOVWF	r0x03
; ;ic:10: 	iTemp4 [k9 lr10:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _memfreemax_bLen_1_10}[r0x04 ] := iTemp8 [k16 lr9:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}[r0x03 ]
	MOVFF	r0x03, r0x04
; ;ic:11: 	if iTemp8 [k16 lr9:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}[r0x03 ] == 0 goto _whilebreak_0($6)
	MOVF	r0x03, W
	BZ	_00110_DS_
; ;ic:12: 	iTemp11 [k21 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[r0x03 r0x05 ] := iTemp1 [k4 lr5:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _memfreemax_pHeap_1_10}[r0x01 r0x02 ]
;	.line	42; stdlib/memfreemax.c	if(!pHeap->bits.alloc && (bLen > maxSize))
	MOVFF	r0x01, r0x03
	MOVFF	r0x02, r0x05
; ;ic:13: 	iTemp12 [k22 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} fixed}[r0x03 ] = @[iTemp11 [k21 lr12:13 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[r0x03 r0x05 ] + 0x0 {const-unsigned-char literal}]
	CLRF	WREG
	MOVFF	r0x03, FSR0L
	MOVFF	r0x05, FSR0H
	BTFSC	INDF0, 7
	INCF	WREG, F
	MOVWF	r0x03
; ;ic:14: 	if iTemp12 [k22 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} fixed}[r0x03 ] != 0 goto _iffalse_0($2)
	MOVF	r0x03, W
	BNZ	_00106_DS_
; ;ic:15: 	iTemp13 [k23 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp4 [k9 lr10:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _memfreemax_bLen_1_10}[r0x04 ] > iTemp0 [k2 lr3:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _memfreemax_maxSize_1_10}[r0x00 ]
	MOVF	r0x04, W
; #	SUBWF	r0x00, W
; #	BTFSC	STATUS, 0
; #	GOTO	_00106_DS_
; #;;ic:16: 	if iTemp13 [k23 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_0($2)
; #;;ic:17: 	iTemp0 [k2 lr3:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _memfreemax_maxSize_1_10}[r0x00 ] := iTemp4 [k9 lr10:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _memfreemax_bLen_1_10}[r0x04 ]
; #	MOVFF	r0x04, r0x00
; #;;ic:18:  _iffalse_0($2) :
; #;;ic:19: 	iTemp14 [k24 lr19:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x03 r0x05 ] = (unsigned-int fixed)iTemp1 [k4 lr5:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _memfreemax_pHeap_1_10}[r0x01 r0x02 ]
; #	MOVF	r0x01, W
;	.line	43; stdlib/memfreemax.c	maxSize = bLen;
	SUBWF	r0x00, W
;	.line	45; stdlib/memfreemax.c	pHeap = (_malloc_rec _MALLOC_SPEC *)((unsigned int)pHeap + bLen);
	BTFSS	STATUS, 0
	MOVFF	r0x04, r0x00
_00106_DS_:
	MOVF	r0x01, W
	MOVWF	r0x03
	MOVF	r0x02, W
	MOVWF	r0x05
; ;ic:20: 	iTemp15 [k25 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x04 r0x06 ] = (int fixed)iTemp4 [k9 lr10:20 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _memfreemax_bLen_1_10}[r0x04 ]
	CLRF	r0x06
; ;ic:21: 	iTemp16 [k26 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x06 ] = (unsigned-int fixed)iTemp15 [k25 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x04 r0x06 ]
; ;ic:22: 	iTemp17 [k27 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x03 r0x05 ] = iTemp14 [k24 lr19:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x03 r0x05 ] + iTemp16 [k26 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x06 ]
	MOVF	r0x04, W
	ADDWF	r0x03, F
	MOVF	r0x06, W
	ADDWFC	r0x05, F
; ;ic:23: 	iTemp1 [k4 lr5:24 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _memfreemax_pHeap_1_10}[r0x01 r0x02 ] = (struct __00000000 near* fixed)iTemp17 [k27 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x03 r0x05 ]
	MOVF	r0x03, W
	MOVWF	r0x01
	MOVF	r0x05, W
	MOVWF	r0x02
; ;ic:24: 	 goto _whilecontinue_0($4)
	BRA	_00108_DS_
; ;ic:25:  _whilebreak_0($6) :
; ;ic:26: 	iTemp0 [k2 lr3:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _memfreemax_maxSize_1_10}[r0x00 ] = iTemp0 [k2 lr3:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _memfreemax_maxSize_1_10}[r0x00 ] - 0x1 {const-unsigned-char literal}
_00110_DS_:
;	.line	49; stdlib/memfreemax.c	--maxSize;
	DECF	r0x00, F
; ;ic:27: 	iTemp20 [k30 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x00 r0x01 ] = (unsigned-int fixed)iTemp0 [k2 lr3:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _memfreemax_maxSize_1_10}[r0x00 ]
; ;ic:28: 	ret iTemp20 [k30 lr27:28 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x00 r0x01 ]
; =DF= MOVFF: replaced by CRLF/SETF
;	.line	51; stdlib/memfreemax.c	return (maxSize);
	CLRF	PRODL
	MOVF	r0x00, W
; ;ic:29:  _return($7) :
; ;ic:30: 	eproc _memfreemax [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function ( ) fixed}
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	



; Statistics:
; code size:	  172 (0x00ac) bytes ( 0.13%)
;           	   86 (0x0056) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    7 (0x0007) bytes


	end

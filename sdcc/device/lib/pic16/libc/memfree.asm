;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:21:56 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_memfree

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
r0x07	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($7) :
; ;ic:2: 	proc _memfree [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function ( ) fixed}
S_memfree__memfree	code
_memfree:
;	.line	33; stdlib/memfree.c	unsigned int memfree(void)
	MOVFF	r0x00, POSTDEC1
	MOVFF	r0x01, POSTDEC1
	MOVFF	r0x02, POSTDEC1
	MOVFF	r0x03, POSTDEC1
	MOVFF	r0x04, POSTDEC1
	MOVFF	r0x05, POSTDEC1
	MOVFF	r0x06, POSTDEC1
	MOVFF	r0x07, POSTDEC1
; ;ic:3: 	iTemp0 [k2 lr3:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memfree_hsize_1_10}[r0x00 r0x01 ] := 0x0 {unsigned-int literal}
;	.line	36; stdlib/memfree.c	unsigned int hsize=0;
	CLRF	r0x00
	CLRF	r0x01
; ;ic:4: 	iTemp2 [k7 lr4:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-char near* near* fixed}[remat] = &[_heap [k6 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}]
; ;ic:5: 	iTemp1 [k4 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _memfree_pHeap_1_10}[r0x02 r0x03 ] = (struct __00000000 near* fixed)iTemp2 [k7 lr4:5 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-char near* near* fixed}[remat]
;	.line	39; stdlib/memfree.c	pHeap = (_malloc_rec _MALLOC_SPEC *)&heap;
	MOVLW	LOW(_heap)
	MOVWF	r0x02
	MOVLW	HIGH(_heap)
	MOVWF	r0x03
; ;ic:7:  _whilecontinue_0($3) :
; ;ic:8: 	iTemp7 [k15 lr8:9 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x04 r0x05 ] := iTemp1 [k4 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _memfree_pHeap_1_10}[r0x02 r0x03 ]
_00107_DS_:
;	.line	41; stdlib/memfree.c	while ((bLen = pHeap->bits.count)) {
	MOVFF	r0x02, r0x04
	MOVFF	r0x03, r0x05
; ;ic:9: 	iTemp8 [k16 lr9:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}{ sir@ _memfree_bLen_1_10}[r0x04 ] = @[iTemp7 [k15 lr8:9 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVF	INDF0, W
	ANDLW	0x7f
	MOVWF	r0x04
; ;ic:10: 	iTemp4 [k9 lr10:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x05 ] := iTemp8 [k16 lr9:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}{ sir@ _memfree_bLen_1_10}[r0x04 ]
	MOVFF	r0x04, r0x05
; ;ic:11: 	if iTemp8 [k16 lr9:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}{ sir@ _memfree_bLen_1_10}[r0x04 ] == 0 goto _whilebreak_0($5)
	MOVF	r0x04, W
	BZ	_00109_DS_
; ;ic:12: 	iTemp11 [k21 lr12:13 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[r0x04 r0x06 ] := iTemp1 [k4 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _memfree_pHeap_1_10}[r0x02 r0x03 ]
;	.line	42; stdlib/memfree.c	if(!pHeap->bits.alloc)
	MOVFF	r0x02, r0x04
	MOVFF	r0x03, r0x06
; ;ic:13: 	iTemp12 [k22 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} fixed}[r0x04 ] = @[iTemp11 [k21 lr12:13 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[r0x04 r0x06 ] + 0x0 {const-unsigned-char literal}]
	CLRF	WREG
	MOVFF	r0x04, FSR0L
	MOVFF	r0x06, FSR0H
	BTFSC	INDF0, 7
	INCF	WREG, F
	MOVWF	r0x04
; ;ic:14: 	if iTemp12 [k22 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} fixed}[r0x04 ] != 0 goto _iffalse_0($2)
	MOVF	r0x04, W
	BNZ	_00106_DS_
; ;ic:15: 	iTemp13 [k23 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x04 r0x06 ] = (int fixed)iTemp4 [k9 lr10:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x05 ]
;	.line	43; stdlib/memfree.c	hsize += bLen - 1;
	MOVFF	r0x05, r0x04
	CLRF	r0x06
; ;ic:16: 	iTemp14 [k24 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x04 r0x06 ] = iTemp13 [k23 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x04 r0x06 ] - 0x1 {int literal}
	MOVLW	0xff
	ADDWF	r0x04, F
	ADDWFC	r0x06, F
; ;ic:17: 	iTemp15 [k25 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int register}[r0x04 r0x06 ] = (unsigned-int register)iTemp14 [k24 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int register}[r0x04 r0x06 ]
; ;ic:18: 	iTemp0 [k2 lr3:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memfree_hsize_1_10}[r0x00 r0x01 ] = iTemp0 [k2 lr3:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memfree_hsize_1_10}[r0x00 r0x01 ] + iTemp15 [k25 lr17:18 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int register}[r0x04 r0x06 ]
	MOVF	r0x04, W
	ADDWF	r0x00, F
	MOVF	r0x06, W
	ADDWFC	r0x01, F
; ;ic:19:  _iffalse_0($2) :
; ;ic:20: 	iTemp17 [k27 lr20:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x06 ] = (unsigned-int fixed)iTemp1 [k4 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _memfree_pHeap_1_10}[r0x02 r0x03 ]
_00106_DS_:
;	.line	45; stdlib/memfree.c	pHeap = (_malloc_rec _MALLOC_SPEC *)((unsigned int)pHeap + bLen);
	MOVF	r0x02, W
	MOVWF	r0x04
	MOVF	r0x03, W
	MOVWF	r0x06
; ;ic:21: 	iTemp18 [k28 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x05 r0x07 ] = (int fixed)iTemp4 [k9 lr10:21 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x05 ]
	CLRF	r0x07
; ;ic:22: 	iTemp19 [k29 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x05 r0x07 ] = (unsigned-int fixed)iTemp18 [k28 lr21:22 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x05 r0x07 ]
; ;ic:23: 	iTemp20 [k30 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x06 ] = iTemp17 [k27 lr20:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x06 ] + iTemp19 [k29 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x05 r0x07 ]
	MOVF	r0x05, W
	ADDWF	r0x04, F
	MOVF	r0x07, W
	ADDWFC	r0x06, F
; ;ic:24: 	iTemp1 [k4 lr5:25 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _memfree_pHeap_1_10}[r0x02 r0x03 ] = (struct __00000000 near* fixed)iTemp20 [k30 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x06 ]
	MOVF	r0x04, W
	MOVWF	r0x02
	MOVF	r0x06, W
	MOVWF	r0x03
; ;ic:25: 	 goto _whilecontinue_0($3)
	BRA	_00107_DS_
; ;ic:26:  _whilebreak_0($5) :
; ;ic:27: 	ret iTemp0 [k2 lr3:27 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-int fixed}{ sir@ _memfree_hsize_1_10}[r0x00 r0x01 ]
_00109_DS_:
;	.line	48; stdlib/memfree.c	return (hsize);
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:28:  _return($6) :
; ;ic:29: 	eproc _memfree [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int function ( ) fixed}
	MOVFF	PREINC1, r0x07
	MOVFF	PREINC1, r0x06
	MOVFF	PREINC1, r0x05
	MOVFF	PREINC1, r0x04
	MOVFF	PREINC1, r0x03
	MOVFF	PREINC1, r0x02
	MOVFF	PREINC1, r0x01
	MOVFF	PREINC1, r0x00
	RETURN	



; Statistics:
; code size:	  190 (0x00be) bytes ( 0.14%)
;           	   95 (0x005f) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	    8 (0x0008) bytes


	end

;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:22:00 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_realloc

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	_heap
	extern	__mergeHeapBlock
	extern	_malloc
	extern	_free

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
POSTINC1	equ	0xfe6
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

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($14) :
; ;ic:2: 	proc _realloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* function ( unsigned-char near* fixed, unsigned-char fixed) data}
S_realloc__realloc	code
_realloc:
;	.line	33; stdlib/realloc.c	unsigned char _MALLOC_SPEC *realloc(unsigned char _MALLOC_SPEC *mblock, unsigned char len)
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
; ;ic:3: iTemp0 [k2 lr3:53 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}{ sir@ _realloc_mblock_1_9}[r0x00 r0x01 ] = recv _realloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* function ( unsigned-char near* fixed, unsigned-char fixed) data}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
	MOVLW	0x03
	MOVFF	PLUSW2, r0x01
; ;ic:4: iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _realloc_len_1_9}[r0x02 ] = recv _realloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* function ( unsigned-char near* fixed, unsigned-char fixed) data}
	MOVLW	0x04
	MOVFF	PLUSW2, r0x02
; ;ic:5: 	iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _realloc_len_1_9}[r0x02 ] < 0x7f {const-unsigned-char literal}
;	.line	39; stdlib/realloc.c	if(len >= MAX_BLOCK_SIZE)
	MOVLW	0x7f
	SUBWF	r0x02, W
	BNC	_00106_DS_
; ;ic:6: 	if iTemp2 [k6 lr5:6 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _iffalse_0($2)
; ;ic:7: 	ret 0x0 {unsigned-char near* literal}
;	.line	40; stdlib/realloc.c	return ((unsigned char _MALLOC_SPEC *)0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00117_DS_
; ;ic:8:  _iffalse_0($2) :
; ;ic:9: 	if iTemp0 [k2 lr3:53 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}{ sir@ _realloc_mblock_1_9}[r0x00 r0x01 ] != 0 goto _iffalse_1($4)
_00106_DS_:
;	.line	43; stdlib/realloc.c	if(!mblock)
	MOVF	r0x00, W
	IORWF	r0x01, W
	BNZ	_00108_DS_
; ;ic:10: 	send iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _realloc_len_1_9}[r0x02 ]{argreg = 1}
; ;ic:11: 	iTemp3 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}[r0x03 r0x04 ] = call _malloc [k7 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* function ( unsigned-char fixed) fixed}
;	.line	44; stdlib/realloc.c	return (malloc(len));
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	CALL	_malloc
	MOVFF	PRODL, r0x04
	MOVF	POSTINC1, F
; ;ic:12: 	ret iTemp3 [k9 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}[r0x03 r0x04 ]
	MOVFF	r0x04, PRODL
	BRA	_00117_DS_
; ;ic:13:  _iffalse_1($4) :
; ;ic:14: 	if iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _realloc_len_1_9}[r0x02 ] != 0 goto _iffalse_2($6)
_00108_DS_:
;	.line	47; stdlib/realloc.c	if(len == 0) {
	MOVF	r0x02, W
	BNZ	_00110_DS_
; ;ic:15: 	send iTemp0 [k2 lr3:53 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}{ sir@ _realloc_mblock_1_9}[r0x00 r0x01 ]{argreg = 1}
; ;ic:16: 	iTemp4 [k12 lr16:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void fixed} = call _free [k10 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{void function ( unsigned-char near* fixed) fixed}
;	.line	48; stdlib/realloc.c	free(mblock);
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	CALL	_free
	MOVF	POSTINC1, F
	MOVF	POSTINC1, F
; ;ic:17: 	ret 0x0 {unsigned-char near* literal}
;	.line	49; stdlib/realloc.c	return ((unsigned char _MALLOC_SPEC *)0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00117_DS_
; ;ic:18:  _iffalse_2($6) :
; ;ic:19: 	iTemp6 [k15 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x03 r0x04 ] = (unsigned-int fixed)iTemp0 [k2 lr3:53 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}{ sir@ _realloc_mblock_1_9}[r0x00 r0x01 ]
_00110_DS_:
;	.line	52; stdlib/realloc.c	pHeap = (_malloc_rec _MALLOC_SPEC *)((unsigned int)mblock - 1);
	MOVF	r0x00, W
	MOVWF	r0x03
	MOVF	r0x01, W
	MOVWF	r0x04
; ;ic:20: 	iTemp7 [k16 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int register}[r0x03 r0x04 ] = iTemp6 [k15 lr19:20 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x03 r0x04 ] - 0x1 {unsigned-int literal}
	MOVLW	0xff
	ADDWF	r0x03, F
	ADDWFC	r0x04, F
; ;ic:21: 	iTemp5 [k13 lr21:42 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _realloc_pHeap_1_10}[r0x03 r0x04 ] = (struct __00000000 near* fixed)iTemp7 [k16 lr20:21 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int register}[r0x03 r0x04 ]
; ;ic:22: 	iTemp12 [k24 lr22:23 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x05 r0x06 ] := iTemp5 [k13 lr21:42 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _realloc_pHeap_1_10}[r0x03 r0x04 ]
;	.line	53; stdlib/realloc.c	bLen = pHeap->bits.count;
	MOVFF	r0x03, r0x05
	MOVFF	r0x04, r0x06
; ;ic:23: 	iTemp13 [k25 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}{ sir@ _realloc_bLen_1_10}[r0x05 ] = @[iTemp12 [k24 lr22:23 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x05 r0x06 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x05, FSR0L
	MOVFF	r0x06, FSR0H
	MOVF	INDF0, W
	ANDLW	0x7f
; #	MOVWF	r0x05
; #;;ic:24: 	iTemp9 [k18 lr24:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _realloc_bLen_1_10}[r0x05 ] := iTemp13 [k25 lr23:24 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}{ sir@ _realloc_bLen_1_10}[r0x05 ]
; #;;ic:25: 	iTemp14 [k26 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp9 [k18 lr24:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _realloc_bLen_1_10}[r0x05 ] > iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _realloc_len_1_9}[r0x02 ]
; #	MOVF	r0x05, W
;	.line	56; stdlib/realloc.c	if (bLen <= len) {
	MOVWF	r0x05
	SUBWF	r0x02, W
	BNC	_00114_DS_
; ;ic:26: 	if iTemp14 [k26 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _iffalse_4($10)
; ;ic:27: 	send iTemp5 [k13 lr21:42 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _realloc_pHeap_1_10}[r0x03 r0x04 ]{argreg = 1}
; ;ic:28: 	send iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _realloc_len_1_9}[r0x02 ]{argreg = 2}
; ;ic:29: 	iTemp15 [k27 lr29:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _realloc_temp_1_10}[r0x06 r0x07 ] = call __mergeHeapBlock [k29 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __00000000 near* function ( struct __00000000 near* fixed, unsigned-char fixed) fixed}
;	.line	61; stdlib/realloc.c	temp = _mergeHeapBlock(pHeap, len);
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x04, W
	MOVWF	POSTDEC1
	MOVF	r0x03, W
	MOVWF	POSTDEC1
	CALL	__mergeHeapBlock
	MOVWF	r0x06
	MOVFF	PRODL, r0x07
	MOVLW	0x03
	ADDWF	FSR1L, F
; ;ic:30: 	if iTemp15 [k27 lr29:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _realloc_temp_1_10}[r0x06 r0x07 ] != 0 goto _iffalse_3($8)
;	.line	63; stdlib/realloc.c	if(!temp) {
	MOVF	r0x06, W
	IORWF	r0x07, W
	BNZ	_00112_DS_
; ;ic:31: 	ret 0x0 {unsigned-char near* literal}
;	.line	65; stdlib/realloc.c	return ((unsigned char _MALLOC_SPEC *)0);
	CLRF	PRODL
	CLRF	WREG
	BRA	_00117_DS_
; ;ic:32:  _iffalse_3($8) :
; ;ic:33: 	iTemp19 [k37 lr33:34 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x08 r0x09 ] := iTemp5 [k13 lr21:42 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _realloc_pHeap_1_10}[r0x03 r0x04 ]
_00112_DS_:
;	.line	69; stdlib/realloc.c	bLen = pHeap->bits.count;
	MOVFF	r0x03, r0x08
	MOVFF	r0x04, r0x09
; ;ic:34: 	iTemp20 [k38 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}[r0x08 ] = @[iTemp19 [k37 lr33:34 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x08 r0x09 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	MOVF	INDF0, W
	ANDLW	0x7f
	MOVWF	r0x08
; ;ic:35: 	iTemp9 [k18 lr24:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _realloc_bLen_1_10}[r0x05 ] := iTemp20 [k38 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}[r0x08 ]
	MOVFF	r0x08, r0x05
; ;ic:36:  _iffalse_4($10) :
; ;ic:37: 	iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _realloc_len_1_9}[r0x02 ] = iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _realloc_len_1_9}[r0x02 ] + 0x1 {const-unsigned-char literal}
_00114_DS_:
;	.line	72; stdlib/realloc.c	len++; /* increase to also count the header */
	INCF	r0x02, F
; ;ic:38: 	iTemp23 [k41 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp9 [k18 lr24:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _realloc_bLen_1_10}[r0x05 ] > iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _realloc_len_1_9}[r0x02 ]
;	.line	74; stdlib/realloc.c	if(bLen > len) {
	MOVF	r0x05, W
	SUBWF	r0x02, W
	BC	_00116_DS_
; ;ic:39: 	if iTemp23 [k41 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_5($12)
; ;ic:40: 	iTemp26 [k46 lr40:41 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x08 r0x09 ] := iTemp5 [k13 lr21:42 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _realloc_pHeap_1_10}[r0x03 r0x04 ]
;	.line	76; stdlib/realloc.c	pHeap->bits.count = len;
	MOVFF	r0x03, r0x08
	MOVFF	r0x04, r0x09
; ;ic:41: 	*(iTemp26 [k46 lr40:41 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x08 r0x09 ]) := iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _realloc_len_1_9}[r0x02 ]
	MOVF	r0x02, W
	ANDLW	0x7f
	MOVWF	PRODH
	MOVFF	r0x08, FSR0L
	MOVFF	r0x09, FSR0H
	MOVF	INDF0, W
	ANDLW	0x80
	IORWF	PRODH, W
	MOVWF	INDF0
; ;ic:42: 	iTemp27 [k47 lr42:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x03 r0x04 ] = (unsigned-int fixed)iTemp5 [k13 lr21:42 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _realloc_pHeap_1_10}[r0x03 r0x04 ]
; ;ic:43: 	iTemp28 [k48 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x08 r0x09 ] = (int fixed)iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _realloc_len_1_9}[r0x02 ]
;	.line	77; stdlib/realloc.c	temp = (_malloc_rec _MALLOC_SPEC *)((unsigned int)pHeap + len);
	MOVFF	r0x02, r0x08
	CLRF	r0x09
; ;ic:44: 	iTemp29 [k49 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x08 r0x09 ] = (unsigned-int fixed)iTemp28 [k48 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x08 r0x09 ]
; ;ic:45: 	iTemp30 [k50 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x03 r0x04 ] = iTemp27 [k47 lr42:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x03 r0x04 ] + iTemp29 [k49 lr44:45 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x08 r0x09 ]
	MOVF	r0x08, W
	ADDWF	r0x03, F
	MOVF	r0x09, W
	ADDWFC	r0x04, F
; ;ic:46: 	iTemp15 [k27 lr29:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _realloc_temp_1_10}[r0x06 r0x07 ] = (struct __00000000 near* fixed)iTemp30 [k50 lr45:46 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x03 r0x04 ]
	MOVF	r0x03, W
	MOVWF	r0x06
	MOVF	r0x04, W
	MOVWF	r0x07
; ;ic:47: 	iTemp34 [k56 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[r0x03 r0x04 ] := iTemp15 [k27 lr29:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _realloc_temp_1_10}[r0x06 r0x07 ]
;	.line	78; stdlib/realloc.c	temp->bits.alloc = 0;
	MOVFF	r0x06, r0x03
	MOVFF	r0x07, r0x04
; ;ic:48: 	*(iTemp34 [k56 lr47:48 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[r0x03 r0x04 ]) := 0x0 {const-unsigned-char literal}
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	BCF	INDF0, 7
; ;ic:49: 	iTemp37 [k61 lr49:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x06 r0x07 ] := iTemp15 [k27 lr29:49 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _realloc_temp_1_10}[r0x06 r0x07 ]
; ;ic:50: 	iTemp38 [k62 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x02 ] = iTemp9 [k18 lr24:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _realloc_bLen_1_10}[r0x05 ] - iTemp1 [k4 lr4:50 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _realloc_len_1_9}[r0x02 ]
;	.line	79; stdlib/realloc.c	temp->bits.count = bLen - len;
	MOVF	r0x02, W
	SUBWF	r0x05, W
; #	MOVWF	r0x02
; #;;ic:51: 	*(iTemp37 [k61 lr49:51 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x06 r0x07 ]) := iTemp38 [k62 lr50:51 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x02 ]
; #	MOVF	r0x02, W
	ANDLW	0x7f
	MOVWF	PRODH
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVF	INDF0, W
	ANDLW	0x80
	IORWF	PRODH, W
	MOVWF	INDF0
; ;ic:52:  _iffalse_5($12) :
; ;ic:53: 	ret iTemp0 [k2 lr3:53 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}{ sir@ _realloc_mblock_1_9}[r0x00 r0x01 ]
_00116_DS_:
;	.line	82; stdlib/realloc.c	return (mblock);
	MOVFF	r0x01, PRODL
	MOVF	r0x00, W
; ;ic:54:  _return($13) :
; ;ic:55: 	eproc _realloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* function ( unsigned-char near* fixed, unsigned-char fixed) data}
_00117_DS_:
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
; code size:	  388 (0x0184) bytes ( 0.30%)
;           	  194 (0x00c2) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   10 (0x000a) bytes


	end

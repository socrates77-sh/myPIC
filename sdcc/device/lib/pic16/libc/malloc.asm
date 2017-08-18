;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.2.0 #8004 (Aug 18 2017) (MINGW32)
; This file was generated Fri Aug 18 19:21:55 2017
;--------------------------------------------------------
; PIC16 port for the Microchip 16-bit core micros
;--------------------------------------------------------
	list	p=18f452

	radix dec

;--------------------------------------------------------
; public variables in this module
;--------------------------------------------------------
	global	_malloc

;--------------------------------------------------------
; extern variables in this module
;--------------------------------------------------------
	extern	_heap
	extern	__mergeHeapBlock

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
r0x0a	res	1

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
; I code from now on!
; ; Starting pCode block
; ;ic:1:  _entry($19) :
; ;ic:2: 	proc _malloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* function ( unsigned-char fixed) data}
S_malloc__malloc	code
_malloc:
;	.line	35; stdlib/malloc.c	unsigned char _MALLOC_SPEC *malloc(unsigned char len)
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
; ;ic:3: iTemp0 [k2 lr3:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _malloc_len_1_9}[r0x00 ] = recv _malloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* function ( unsigned-char fixed) data}
	MOVLW	0x02
	MOVFF	PLUSW2, r0x00
; ;ic:4: 	iTemp1 [k4 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp0 [k2 lr3:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _malloc_len_1_9}[r0x00 ] < 0x7f {const-unsigned-char literal}
;	.line	44; stdlib/malloc.c	if(len >= MAX_BLOCK_SIZE)
	MOVLW	0x7f
	SUBWF	r0x00, W
	BTFSC	STATUS, 0
	BRA	_00121_DS_
; ;ic:5: 	if iTemp1 [k4 lr4:5 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto do_end($17)
; ;ic:6: 	iTemp3 [k8 lr6:7 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-char near* near* fixed}[remat] = &[_heap [k7 lr0:0 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}]
; ;ic:7: 	iTemp2 [k5 lr7:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _malloc_pHeap_1_10}[r0x01 r0x02 ] = (struct __00000000 near* fixed)iTemp3 [k8 lr6:7 so:0]{ ia0 a2p0 re0 rm1 nos0 ru0 dp0}{unsigned-char near* near* fixed}[remat]
;	.line	47; stdlib/malloc.c	pHeap = (_malloc_rec _MALLOC_SPEC *)&heap;
	MOVLW	LOW(_heap)
	MOVWF	r0x01
	MOVLW	HIGH(_heap)
	MOVWF	r0x02
; ;ic:9:  _whilebody_0($15) :
; ;ic:10: 	iTemp8 [k16 lr10:11 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x03 r0x04 ] := iTemp2 [k5 lr7:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _malloc_pHeap_1_10}[r0x01 r0x02 ]
_00119_DS_:
;	.line	50; stdlib/malloc.c	bLen = pHeap->bits.count;
	MOVFF	r0x01, r0x03
	MOVFF	r0x02, r0x04
; ;ic:11: 	iTemp9 [k17 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}{ sir@ _malloc_bLen_1_10}[r0x03 ] = @[iTemp8 [k16 lr10:11 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x03 r0x04 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x03, FSR0L
	MOVFF	r0x04, FSR0H
	MOVF	INDF0, W
	ANDLW	0x7f
	MOVWF	r0x03
; ;ic:12: 	iTemp5 [k10 lr12:47 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _malloc_bLen_1_10}[r0x03 ] := iTemp9 [k17 lr11:12 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}{ sir@ _malloc_bLen_1_10}[r0x03 ]
; ;ic:13: 	iTemp12 [k21 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char fixed}[r0x04 ] = @[iTemp2 [k5 lr7:51 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _malloc_pHeap_1_10}[r0x01 r0x02 ] + 0x0 {const-unsigned-char literal}]
;	.line	53; stdlib/malloc.c	if(pHeap->datum == 0) {
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	INDF0, r0x04
; ;ic:14: 	if iTemp12 [k21 lr13:14 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-char fixed}[r0x04 ] == 0 goto do_end($17)
	MOVF	r0x04, W
	BTFSC	STATUS, 2
	BRA	_00121_DS_
; ;ic:15: 	iTemp15 [k26 lr15:16 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[r0x04 r0x05 ] := iTemp2 [k5 lr7:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _malloc_pHeap_1_10}[r0x01 r0x02 ]
;	.line	70; stdlib/malloc.c	if(pHeap->bits.alloc)
	MOVFF	r0x01, r0x04
	MOVFF	r0x02, r0x05
; ;ic:16: 	iTemp16 [k27 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} fixed}[r0x04 ] = @[iTemp15 [k26 lr15:16 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} near* fixed}[r0x04 r0x05 ] + 0x0 {const-unsigned-char literal}]
	CLRF	WREG
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	BTFSC	INDF0, 7
	INCF	WREG, F
	MOVWF	r0x04
; ;ic:17: 	if iTemp16 [k27 lr16:17 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {7,1} fixed}[r0x04 ] != 0 goto do_continue($13)
	MOVF	r0x04, W
	BTFSS	STATUS, 2
	BRA	_00117_DS_
; ;ic:18: 	iTemp17 [k28 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp5 [k10 lr12:47 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _malloc_bLen_1_10}[r0x03 ] > iTemp0 [k2 lr3:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _malloc_len_1_9}[r0x00 ]
;	.line	77; stdlib/malloc.c	if(bLen <= len) {
	MOVF	r0x03, W
	SUBWF	r0x00, W
	BNC	_00114_DS_
; ;ic:19: 	if iTemp17 [k28 lr18:19 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} != 0 goto _iffalse_4($10)
; ;ic:20: 	send iTemp2 [k5 lr7:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _malloc_pHeap_1_10}[r0x01 r0x02 ]{argreg = 1}
; ;ic:21: 	send iTemp0 [k2 lr3:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _malloc_len_1_9}[r0x00 ]{argreg = 2}
; ;ic:22: 	iTemp18 [k29 lr22:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _malloc_temp_1_10}[r0x04 r0x05 ] = call __mergeHeapBlock [k31 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{struct __00000000 near* function ( struct __00000000 near* fixed, unsigned-char fixed) fixed}
;	.line	87; stdlib/malloc.c	temp = _mergeHeapBlock(pHeap, len);
	MOVF	r0x00, W
	MOVWF	POSTDEC1
	MOVF	r0x02, W
	MOVWF	POSTDEC1
	MOVF	r0x01, W
	MOVWF	POSTDEC1
	CALL	__mergeHeapBlock
	MOVWF	r0x04
	MOVFF	PRODL, r0x05
	MOVLW	0x03
	ADDWF	FSR1L, F
; ;ic:23: 	if iTemp18 [k29 lr22:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _malloc_temp_1_10}[r0x04 r0x05 ] == 0 goto do_continue($13)
;	.line	89; stdlib/malloc.c	if(!temp)
	MOVF	r0x04, W
	IORWF	r0x05, W
	BTFSC	STATUS, 2
	BRA	_00117_DS_
; ;ic:24: 	iTemp22 [k39 lr24:25 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x06 r0x07 ] := iTemp2 [k5 lr7:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _malloc_pHeap_1_10}[r0x01 r0x02 ]
;	.line	94; stdlib/malloc.c	bLen = pHeap->bits.count;
	MOVFF	r0x01, r0x06
	MOVFF	r0x02, r0x07
; ;ic:25: 	iTemp23 [k40 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}[r0x06 ] = @[iTemp22 [k39 lr24:25 so:0]{ ia1 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} near* fixed}[r0x06 r0x07 ] + 0x0 {const-unsigned-char literal}]
	MOVFF	r0x06, FSR0L
	MOVFF	r0x07, FSR0H
	MOVF	INDF0, W
	ANDLW	0x7f
	MOVWF	r0x06
; ;ic:26: 	iTemp5 [k10 lr12:47 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _malloc_bLen_1_10}[r0x03 ] := iTemp23 [k40 lr25:26 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{volatile-unsigned-bitfield {0,7} fixed}[r0x06 ]
	MOVFF	r0x06, r0x03
; ;ic:27:  _iffalse_4($10) :
; ;ic:28: 	iTemp24 [k41 lr28:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _malloc_eLen_1_10}[r0x06 ] = iTemp0 [k2 lr3:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _malloc_len_1_9}[r0x00 ] + 0x1 {const-unsigned-char literal}
_00114_DS_:
;	.line	100; stdlib/malloc.c	eLen = (len+1);
	INCF	r0x00, W
	MOVWF	r0x06
; ;ic:29: 	iTemp28 [k47 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x07 ] = iTemp24 [k41 lr28:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _malloc_eLen_1_10}[r0x06 ] | 0x80 {const-unsigned-char literal}
;	.line	101; stdlib/malloc.c	pHeap->datum = 0x80 | eLen;
	MOVLW	0x80
	IORWF	r0x06, W
	MOVWF	r0x07
; ;ic:30: 	*(iTemp2 [k5 lr7:51 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _malloc_pHeap_1_10}[r0x01 r0x02 ]) := iTemp28 [k47 lr29:30 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char register}[r0x07 ]
	MOVFF	r0x01, FSR0L
	MOVFF	r0x02, FSR0H
	MOVFF	r0x07, INDF0
; ;ic:31: 	iTemp29 [k48 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} = iTemp5 [k10 lr12:47 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _malloc_bLen_1_10}[r0x03 ] > iTemp24 [k41 lr28:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _malloc_eLen_1_10}[r0x06 ]
;	.line	103; stdlib/malloc.c	if(bLen > eLen) {
	MOVF	r0x03, W
	SUBWF	r0x06, W
	BC	_00116_DS_
; ;ic:32: 	if iTemp29 [k48 lr31:32 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{char fixed} == 0 goto _iffalse_5($12)
; ;ic:33: 	iTemp30 [k49 lr33:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x07 r0x08 ] = (unsigned-int fixed)iTemp2 [k5 lr7:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _malloc_pHeap_1_10}[r0x01 r0x02 ]
;	.line	106; stdlib/malloc.c	temp = (_malloc_rec _MALLOC_SPEC *)((unsigned int)pHeap + eLen);
	MOVF	r0x01, W
	MOVWF	r0x07
	MOVF	r0x02, W
	MOVWF	r0x08
; ;ic:34: 	iTemp31 [k50 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ] = (int fixed)iTemp24 [k41 lr28:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _malloc_eLen_1_10}[r0x06 ]
	MOVFF	r0x06, r0x09
	CLRF	r0x0a
; ;ic:35: 	iTemp32 [k51 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x09 r0x0a ] = (unsigned-int fixed)iTemp31 [k50 lr34:35 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x09 r0x0a ]
; ;ic:36: 	iTemp33 [k52 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x07 r0x08 ] = iTemp30 [k49 lr33:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x07 r0x08 ] + iTemp32 [k51 lr35:36 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x09 r0x0a ]
	MOVF	r0x09, W
	ADDWF	r0x07, F
	MOVF	r0x0a, W
	ADDWFC	r0x08, F
; ;ic:37: 	iTemp18 [k29 lr22:39 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _malloc_temp_1_10}[r0x04 r0x05 ] = (struct __00000000 near* fixed)iTemp33 [k52 lr36:37 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x07 r0x08 ]
	MOVF	r0x07, W
	MOVWF	r0x04
	MOVF	r0x08, W
	MOVWF	r0x05
; ;ic:38: 	iTemp37 [k57 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x06 ] = iTemp5 [k10 lr12:47 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _malloc_bLen_1_10}[r0x03 ] - iTemp24 [k41 lr28:38 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _malloc_eLen_1_10}[r0x06 ]
;	.line	107; stdlib/malloc.c	temp->datum = (bLen - eLen);
	MOVF	r0x06, W
	SUBWF	r0x03, W
	MOVWF	r0x06
; ;ic:39: 	*(iTemp18 [k29 lr22:39 so:0]{ ia1 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _malloc_temp_1_10}[r0x04 r0x05 ]) := iTemp37 [k57 lr38:39 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char fixed}[r0x06 ]
	MOVFF	r0x04, FSR0L
	MOVFF	r0x05, FSR0H
	MOVFF	r0x06, INDF0
; ;ic:40:  _iffalse_5($12) :
; ;ic:41: 	iTemp38 [k58 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] = (unsigned-int fixed)iTemp2 [k5 lr7:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _malloc_pHeap_1_10}[r0x01 r0x02 ]
_00116_DS_:
;	.line	110; stdlib/malloc.c	return ((unsigned char _MALLOC_SPEC *)((unsigned int)pHeap + 1));
	MOVF	r0x01, W
	MOVWF	r0x04
	MOVF	r0x02, W
	MOVWF	r0x05
; ;ic:42: 	iTemp39 [k59 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int register}[r0x04 r0x05 ] = iTemp38 [k58 lr41:42 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] + 0x1 {unsigned-int literal}
	INFSNZ	r0x04, F
	INCF	r0x05, F
; ;ic:43: 	iTemp40 [k60 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}[r0x04 r0x05 ] = (unsigned-char near* fixed)iTemp39 [k59 lr42:43 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int register}[r0x04 r0x05 ]
; ;ic:44: 	ret iTemp40 [k60 lr43:44 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* fixed}[r0x04 r0x05 ]
	MOVFF	r0x05, PRODL
	MOVF	r0x04, W
	BRA	_00122_DS_
; ;ic:45:  do_continue($13) :
; ;ic:46: 	iTemp41 [k61 lr46:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] = (unsigned-int fixed)iTemp2 [k5 lr7:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _malloc_pHeap_1_10}[r0x01 r0x02 ]
_00117_DS_:
;	.line	113; stdlib/malloc.c	pHeap = (_malloc_rec _MALLOC_SPEC *)((unsigned int)pHeap + bLen);
	MOVF	r0x01, W
	MOVWF	r0x04
	MOVF	r0x02, W
	MOVWF	r0x05
; ;ic:47: 	iTemp42 [k62 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x03 r0x06 ] = (int fixed)iTemp5 [k10 lr12:47 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{unsigned-char fixed}{ sir@ _malloc_bLen_1_10}[r0x03 ]
	CLRF	r0x06
; ;ic:48: 	iTemp43 [k63 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x03 r0x06 ] = (unsigned-int fixed)iTemp42 [k62 lr47:48 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{int fixed}[r0x03 r0x06 ]
; ;ic:49: 	iTemp44 [k64 lr49:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] = iTemp41 [k61 lr46:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ] + iTemp43 [k63 lr48:49 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x03 r0x06 ]
	MOVF	r0x03, W
	ADDWF	r0x04, F
	MOVF	r0x06, W
	ADDWFC	r0x05, F
; ;ic:50: 	iTemp2 [k5 lr7:51 so:0]{ ia0 a2p0 re1 rm0 nos0 ru0 dp0}{struct __00000000 near* fixed}{ sir@ _malloc_pHeap_1_10}[r0x01 r0x02 ] = (struct __00000000 near* fixed)iTemp44 [k64 lr49:50 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-int fixed}[r0x04 r0x05 ]
	MOVF	r0x04, W
	MOVWF	r0x01
	MOVF	r0x05, W
	MOVWF	r0x02
; ;ic:51: 	 goto _whilebody_0($15)
	BRA	_00119_DS_
; ;ic:52:  do_end($17) :
; ;ic:53: 	ret 0x0 {unsigned-char near* literal}
_00121_DS_:
;	.line	117; stdlib/malloc.c	return ((unsigned char _MALLOC_SPEC *)0);
	CLRF	PRODL
	CLRF	WREG
; ;ic:54:  _return($18) :
; ;ic:55: 	eproc _malloc [k1 lr0:0 so:0]{ ia0 a2p0 re0 rm0 nos0 ru0 dp0}{unsigned-char near* function ( unsigned-char fixed) data}
_00122_DS_:
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
; code size:	  388 (0x0184) bytes ( 0.30%)
;           	  194 (0x00c2) words
; udata size:	    0 (0x0000) bytes ( 0.00%)
; access size:	   11 (0x000b) bytes


	end

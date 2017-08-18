#include <mc30p011.h>

__sfr __at (INDF_ADDR)     	INDF;
__sfr __at (T0CNT_ADDR)    	T0CNT;
__sfr __at (PCL_ADDR)      	PCL;
__sfr __at (STATUS_ADDR)   	STATUS;
__sfr __at (FSR_ADDR)      	FSR;
__sfr __at (P0_ADDR)       	P0;
__sfr __at (P1_ADDR)       	P1;
__sfr __at (MCR_ADDR)      	MCR;
__sfr __at (KBIM_ADDR)     	KBIM;
__sfr __at (PCLATH_ADDR)   	PCLATH;
__sfr __at (PDCON_ADDR)    	PDCON;
__sfr __at (ODCON_ADDR)    	ODCON;
__sfr __at (PUCON_ADDR)    	PUCON;
__sfr __at (INTECON_ADDR)  	INTECON;
__sfr __at (INTFLAG_ADDR)  	INTFLAG;
__sfr __at (T0CR_ADDR)     	T0CR;
__sfr __at (DDR0_ADDR)     	DDR0;
__sfr __at (DDR1_ADDR)     	DDR1;
__sfr __at (TMCR_ADDR)     	TMCR;
__sfr __at (T1CR_ADDR)     	T1CR;
__sfr __at (T1CNT_ADDR)    	T1CNT;
__sfr __at (T1LOAD_ADDR)   	T1LOAD;
__sfr __at (T1DATA_ADDR)   	T1DATA;

volatile __STATUSbits_t __at(STATUS_ADDR) STATUSbits;
volatile __P0bits_t __at(P0_ADDR) P0bits;
volatile __P1bits_t __at(P1_ADDR) P1bits;
volatile __MCRbits_t __at(MCR_ADDR) MCRbits;
volatile __KBIMbits_t __at(KBIM_ADDR) KBIMbits;
volatile __PDCONbits_t __at(PDCON_ADDR) PDCONbits;
volatile __ODCONbits_t __at(ODCON_ADDR) ODCONbits;
volatile __PUCONbits_t __at(PUCON_ADDR) PUCONbits;
volatile __INTECONbits_t __at(INTECON_ADDR) INTECONbits;
volatile __INTFLAGbits_t __at(INTFLAG_ADDR) INTFLAGbits;
volatile __T0CRbits_t __at(T0CR_ADDR) T0CRbits;
volatile __DDR0bits_t __at(DDR0_ADDR) DDR0bits;
volatile __DDR1bits_t __at(DDR1_ADDR) DDR1bits;
volatile __TMCRbits_t __at(TMCR_ADDR) TMCRbits;
volatile __T1CRbits_t __at(T1CR_ADDR) T1CRbits;

#include <mc32p5312.h>

__sfr __at (INDF_ADDR)          INDF;
__sfr __at (INDF0_ADDR)     	INDF0;
__sfr __at (INDF1_ADDR)    	INDF1;
__sfr __at (INDF2_ADDR)         INDF2;
__sfr __at (HIBYTE_ADDR)        HIBYTE;
__sfr __at (FSR_ADDR)           FSR;
__sfr __at (FSR0_ADDR)          FSR0;
__sfr __at (FSR1_ADDR)          FSR1;
__sfr __at (PCL_ADDR)      	PCL;
__sfr __at (STATUS_ADDR)   	STATUS;
__sfr __at (MCR_ADDR)           MCR;
__sfr __at (INDF3_ADDR)         INDF3;
__sfr __at (INTE_ADDR)          INTE;
__sfr __at (INTF_ADDR)          INTF;
__sfr __at (OSCM_ADDR)          OSCM;
__sfr __at (LVDCR_ADDR)         LVDCR;
__sfr __at (LXTCR_ADDR)         LXTCR;
__sfr __at (IOP0_ADDR)          IOP0;
__sfr __at (OEP0_ADDR)          OEP0;
__sfr __at (PUP0_ADDR)          PUP0;
__sfr __at (DKWP0_ADDR)         DKWP0;
__sfr __at (IOP1_ADDR)          IOP1;
__sfr __at (OEP1_ADDR)          OEP1;
__sfr __at (PUP1_ADDR)          PUP1;
__sfr __at (DKWP1_ADDR)         DKWP1;
__sfr __at (T0CR_ADDR)          T0CR;
__sfr __at (T0CNT_ADDR)         T0CNT;
__sfr __at (T0LOAD_ADDR)        T0LOAD;
__sfr __at (T0DATA_ADDR)        T0DATA;
__sfr __at (T1CR_ADDR)          T1CR;
__sfr __at (T1CNT_ADDR)         T1CNT;
__sfr __at (T1LOAD_ADDR)        T1LOAD;
__sfr __at (T1DATA_ADDR)        T1DATA;
__sfr __at (LCDCR0_ADDR)        LCDCR0;
__sfr __at (LCDCR1_ADDR)        LCDCR1;
__sfr __at (LCDSP0_ADDR)        LCDSP0;
__sfr __at (LCDSP1_ADDR)        LCDSP1;
__sfr __at (DKW_ADDR)           DKW;

volatile __INDF0bits_t __at(INDF0_ADDR) INDF0bits;
volatile __INDF1bits_t __at(INDF1_ADDR) INDF1bits;
volatile __INDF2bits_t __at(INDF2_ADDR) INDF2bits;
volatile __HIBYTEbits_t __at(HIBYTE_ADDR) HIBYTEbits;
volatile __FSR0bits_t __at(FSR0_ADDR) FSR0bits;
volatile __FSR1bits_t __at(FSR1_ADDR) FSR1bits;
volatile __PCLbits_t __at(PCL_ADDR) PCLbits;
volatile __STATUSbits_t __at(STATUS_ADDR) STATUSbits;
volatile __MCRbits_t __at(MCR_ADDR) MCRbits;
volatile __INDF3bits_t __at(INDF3_ADDR) INDF3bits;
volatile __INTEbits_t __at(INTE_ADDR) INTEbits;
volatile __INTFbits_t __at(INTF_ADDR) INTFbits;
volatile __OSCMbits_t __at(OSCM_ADDR) OSCMbits;
volatile __LVDCRbits_t __at(LVDCR_ADDR) LVDCRbits;
volatile __LXTCRbits_t __at(LXTCR_ADDR) LXTCRbits;
volatile __IOP0bits_t __at(IOP0_ADDR) IOP0bits;
volatile __OEP0bits_t __at(OEP0_ADDR) OEP0bits;
volatile __PUP0bits_t __at(PUP0_ADDR) PUP0bits;
volatile __DKWP0bits_t __at(DKWP0_ADDR) DKWP0bits;
volatile __IOP1bits_t __at(IOP1_ADDR) IOP1bits;
volatile __OEP1bits_t __at(OEP1_ADDR) OEP1bits;
volatile __PUP1bits_t __at(PUP1_ADDR) PUP1bits;
volatile __DKWP1bits_t __at(DKWP1_ADDR) DKWP1bits;
volatile __T0CRbits_t __at(T0CR_ADDR) T0CRbits;
volatile __T0CNTbits_t __at(T0CNT_ADDR) T0CNTbits;
volatile __T0LOADbits_t __at(T0LOAD_ADDR) T0LOADbits;
volatile __T0DATAbits_t __at(T0DATA_ADDR) T0DATAbits;
volatile __T1CRbits_t __at(T1CR_ADDR) T1CRbits;
volatile __T1CNTbits_t __at(T1CNT_ADDR) T1CNTbits;
volatile __T1LOADbits_t __at(T1LOAD_ADDR) T1LOADbits;
volatile __T1DATAbits_t __at(T1DATA_ADDR) T1DATAbits;
volatile __LCDCR0bits_t __at(LCDCR0_ADDR) LCDCR0bits;
volatile __LCDCR1bits_t __at(LCDCR1_ADDR) LCDCR1bits;
volatile __LCDSP0bits_t __at(LCDSP0_ADDR) LCDSP0bits;
volatile __LCDSP1bits_t __at(LCDSP1_ADDR) LCDSP1bits;
volatile __DKWbits_t __at(DKW_ADDR) DKWbits;

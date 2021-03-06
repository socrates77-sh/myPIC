#include <mc33p78.h>

__sfr __at (INDF_ADDR)     	      INDF;
__sfr __at (INDF0_ADDR)     	    INDF0;
__sfr __at (INDF1_ADDR)    	      INDF1;
__sfr __at (INDF2_ADDR)           INDF2;
__sfr __at (HIBYTE_ADDR)          HIBYTE;
__sfr __at (FSR_ADDR)             FSR;
__sfr __at (FSR0_ADDR)            FSR0;
__sfr __at (FSR1_ADDR)            FSR1;
__sfr __at (PCL_ADDR)      	      PCL;
__sfr __at (STATUS_ADDR)   	      STATUS;
__sfr __at (MCR_ADDR)      	      MCR;
__sfr __at (INDF3_ADDR)       	  INDF3;
__sfr __at (INTE_ADDR)       	    INTE;
__sfr __at (INTF_ADDR)      	    INTF;
__sfr __at (OSCM_ADDR)     	      OSCM;
__sfr __at (IOP1_ADDR)     	      IOP1;
__sfr __at (OEP1_ADDR)     	      OEP1;
__sfr __at (PUP1_ADDR)     	      PUP1;
__sfr __at (DKWP1_ADDR)     	    DKWP1;
__sfr __at (IOP2_ADDR)    	      IOP2;
__sfr __at (OEP2_ADDR)    	      OEP2;
__sfr __at (PUP2_ADDR)  	        PUP2;
__sfr __at (DKWP2_ADDR)  	        DKWP2;
__sfr __at (T0CR_ADDR)     	      T0CR;
__sfr __at (T0LOADH_ADDR)    	    T0LOADH;
__sfr __at (T0LOADL_ADDR)   	    T0LOADL;
__sfr __at (T0LATRH_ADDR)   	    T0LATRH;
__sfr __at (T0LATRL_ADDR)   	    T0LATRL;
__sfr __at (T0LATFH_ADDR)   	    T0LATFH;
__sfr __at (T0LATFL_ADDR)   	    T0LATFL;
__sfr __at (T1CR_ADDR)            T1CR;
__sfr __at (T1DATA_ADDR)          T1DATA;
__sfr __at (T1LOAD_ADDR)          T1LOAD;
__sfr __at (OPCR0_ADDR)           OPCR0;
__sfr __at (OPCR1_ADDR)           OPCR1;
__sfr __at (DKW0_ADDR)            DKW0;
__sfr __at (DKW1_ADDR)            DKW1;

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
volatile __IOP1bits_t __at(IOP1_ADDR) IOP1bits;
volatile __OEP1bits_t __at(OEP1_ADDR) OEP1bits;
volatile __PUP1bits_t __at(PUP1_ADDR) PUP1bits;
volatile __DKWP1bits_t __at(DKWP1_ADDR) DKWP1bits;
volatile __IOP2bits_t __at(IOP2_ADDR) IOP2bits;
volatile __OEP2bits_t __at(OEP2_ADDR) OEP2bits;
volatile __PUP2bits_t __at(PUP2_ADDR) PUP2bits;
volatile __DKWP2bits_t __at(DKWP2_ADDR) DKWP2bits;
volatile __T0CRbits_t __at(T0CR_ADDR) T0CRbits;
volatile __T0LOADHbits_t __at(T0LOADH_ADDR) T0LOADHbits;
volatile __T0LOADLbits_t __at(T0LOADL_ADDR) T0LOADLbits;
volatile __T0LATRHbits_t __at(T0LATRH_ADDR) T0LATRHbits;
volatile __T0LATRLbits_t __at(T0LATRL_ADDR) T0LATRLbits;
volatile __T0LATFHbits_t __at(T0LATFH_ADDR) T0LATFHbits;
volatile __T0LATFLbits_t __at(T0LATFL_ADDR) T0LATFLbits;
volatile __T1CRbits_t __at(T1CR_ADDR) T1CRbits;
volatile __T1DATAbits_t __at(T1DATA_ADDR) T1DATAbits;
volatile __T1LOADbits_t __at(T1LOAD_ADDR) T1LOADbits;
volatile __OPCR0bits_t __at(OPCR0_ADDR) OPCR0bits;
volatile __OPCR1bits_t __at(OPCR1_ADDR) OPCR1bits;
volatile __DKW0bits_t __at(DKW0_ADDR) DKW0bits;
volatile __DKW1bits_t __at(DKW1_ADDR) DKW1bits;

#include "pic16f87.h"

const char rom[0xf3]={1,2};



void main()
{
	unsigned char i=1;

	switch(i)
   	{
   	   	case 0:
   	   	   	PORTA=1;
   	   	   	break;  	   	
   	   	case 1:  	 
   	   	   	PORTA=0;  	
   	   	   	break;   	
   	   	case 2:
   	   	   	i=9;
   	   	   	break;
   	   	case 3:
   	   	   	i=10;
   	   	   	break;
   	   	default:
   	   	   	break;
   	}
}


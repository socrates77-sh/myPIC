#include <mc32p21.h>

const char rom[0xf3]={1,2};



void main()
{
	unsigned char i=1;

	switch(i)
   	{
   	   	case 0:
   	   	   	IOP0=1;
   	   	   	break;  	   	
   	   	case 1:  	 
   	   	   	IOP0=0;  	
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


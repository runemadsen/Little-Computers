#include <stdio.h>

/* Constants
________________________________________ */

#define	LOWER 0
#define UPPER 300
#define STEP 20

/* Main
 ________________________________________ */

int main (int argc, const char * argv[]) 
{
    float fahr, celcius;
	
	fahr = LOWER;
	
	while (fahr <= UPPER) 
	{
		celcius = 5.0 * (fahr-32.0) / 9.0;
		
		// each %d means to insert an integer
		//printf("%f\t%f\n", fahr, celcius);
		
		// You can also do %3d or %6d which means the width of the output 
		// This will right align the outputted temperatures and choose number of fractions
		printf("%3.0f\t%6.1f\n", fahr, celcius);
		
		fahr = fahr + STEP;
	}
	
    return 0;
}

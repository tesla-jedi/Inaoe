#include <stdio.h>
#include <conio.h>
int main() {   
    int number[5];
   	int menorimp;
   	int flag=0;
   	int modulo=0;
    printf("F ");  
	scanf("%d", &number[0]);
	printf("G ");  
	scanf("%d", &number[1]);
	printf("H ");  
	scanf("%d", &number[2]);
	printf("I ");  
	scanf("%d", &number[3]);
	printf("J ");  
	scanf("%d", &number[4]);
    // displays output
    
for(int i=0;i<5;i++){
		modulo=number[i]/2;
		modulo=modulo*2;
		modulo=number[i]-modulo;
		
	    if ( modulo == 1) {
	    	
	    	if(!flag){
	    		menorimp=number[i];
	    		flag=1;
			}
	    	else if(number[i]<menorimp) menorimp=number[i];
	    	
	    	
		}
}
    printf("the minimum odd number is: %d", menorimp);
    return 0;
}
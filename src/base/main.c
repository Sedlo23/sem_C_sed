
#include <stdio.h>

#include <ctype.h>

#include <string.h>
#include "list.h"



struct list* lips;

int procces(char input[])
{

	int size=0;
	
	char enter[1];
	
	strcpy(enter, "\n");



	printf("%s",input);


	
	while(strcmp(enter[0], &input[size])==1)
	{
		printf("%s", &input[0]);
		size++;
	
	}



printf(size);


return 0; 



}




int noInput()
{

	char q[200];

	char inp[200];

	strcpy(q, "quit");


	while(strcmp(q, inp))
		{  
 			 gets(inp);
 			 
 			 procces(inp); 
 			
		}

}



int Input()
{




}




int main(int argc, char *argv[]) 
{
      
   if(argc==1)
   	return noInput();
   else
   return Input();
   
}




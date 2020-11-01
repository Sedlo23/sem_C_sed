//
// Created by jfs on 07.11.19.
//

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "list.h"

struct list* make_list(int size) {
    
    struct list* tmp_list = malloc(sizeof(struct list));
   
    tmp_list->size=size;
    
    tmp_list->iterator=0;
    
    *tmp_list->data = malloc(sizeof(char*)*size);
    
    return tmp_list;
}

void list_enlarge(struct list* list)
        {
    size_t newSize = list->size +1;
    
    char* newArr[newSize];
    
    *newArr = malloc(sizeof(char*)*newSize);

    memcpy( newArr, list->data, list->size * sizeof(char*) );

    list->size = newSize;

    memcpy(list->data,newArr, list->size * sizeof(char*) );
}

void list_add_item(struct list* list, char* a)
{

      list->data[list->iterator]=malloc(sizeof(char[16]));
     
      strncpy( list->data[list->iterator], a, 16);
      
      printf("Final copied string : %s\n", a);
       
      printf("Final copied string : %s\n",  list->data[list->iterator]);
      
   
    list->iterator++;

    if(list->iterator>=list->size)
    {
        list_enlarge(list);
    }
}

void list_print(struct list* list)
{
    for (int i = 0; i < list->iterator; ++i)
    {
 
        
       printf("Final copied string : %s\n",  list_get_item(list,i));
  

    }
    
    printf("\n");

}

char* list_get_item(struct list* list,int index)
{

    return list->data[index];

}



char* pop(struct list* list)
{
         list->iterator-=1;
    
    	return list->data[list->iterator-1];

}


int isEmpty(struct list* list)
{
    if(list->iterator==0)
    { return 1;}
    else
        return 0;

}

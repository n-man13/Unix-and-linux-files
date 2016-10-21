#include <stdlib.h>
#include <stdio.h>
#include <string.h>

//reads input from standard input till finalChar is reached, then returns a pointer to the data
char * readInput(char finalChar){
  
  char *str = malloc(sizeof(char));
  *str = getchar();
  char *pwork = str;
  
  while (*pwork != finalChar){
    str = realloc(str,strlen(str)+1);
    *pwork = getchar();
    pwork++;
  }
  
  str = realloc(str, strlen(str) + 1);
  pwork++;
  pwork = '\0';
  return str;
}

#include <stdio.h>
#include <string.h>



int main(int argc, char *argv[]){
  int i;
  int n = atoi(*(argv+1));
  printf("%d\n", n);
  for(i = 0; i < n; i++){
    printf("%d : ", i);
   if( i % 3 == 0) {
      printf("fizz");
     }
    if (i % 5 == 0) {
      printf("buzz");
    }
    printf("\n");
  }

  return 0;
}

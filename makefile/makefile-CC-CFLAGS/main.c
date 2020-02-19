#include<stdio.h>
#include "calcH.h"
int main()
{
  double a=2.3, b=1.8;
  printf("\nAddition %lf+%lf = %lf\n\n", a,b,add(a,b));
  printf("Subtraction %lf-%lf = %lf\n\n", a,b,sub(a,b));
  return 0;
}

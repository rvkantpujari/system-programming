#include<stdio.h>

int add(int a, int b) { return a+b; }
int sub(int a, int b) { return a-b; }
int mul(int a, int b) { return a*b; }
int div(int a, int b) { return a/b; }

int (*ptr[4])(int a,int b) = {add,sub,mul,div};

void main()
{
  int n1=10, n2=30;
  printf("Addition (%d,%d) = %d\n", n1,n2,ptr[0](n1,n2));
  printf("Subtraction (%d,%d) = %d\n", n1,n2,ptr[1](n1,n2));
  printf("Multiplication (%d,%d) = %d\n", n1,n2,ptr[2](n1,n2));
  printf("Division (%d,%d) = %d\n", n1,n2,ptr[3](n1,n2));
}

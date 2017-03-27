// fib.c
#include <stdio.h>

int main() {
  printf("%d", fib(40));
}

int fib(int n) {
  if(n == 0) {
    return 0;
  } else if(n == 1) {
    return 1;
  }
  return fib(n - 2) + fib(n - 1);
}

// 1.07s user 0.01s system 96% cpu 1.113 total

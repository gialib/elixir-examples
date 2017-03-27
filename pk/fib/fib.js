var fib = function(n) {
  if(n == 0) {
    return 0;
  } else if(n == 1) {
    return 1;
  } else {
    return fib(n - 1) + fib(n - 2);
  }
}

console.log(fib(40));

// node fib.js  1.83s user 0.09s system 96% cpu 1.999 total

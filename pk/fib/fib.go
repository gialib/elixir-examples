package main

import "fmt"

func fibonacci(n int) int {
	if n == 0 {
		return 0
	} else if n == 1 {
		return 1
	}
	return fibonacci(n-2) + fibonacci(n-1)
}

func main() {
	fmt.Println(fibonacci(40))
}

// go run fib.go  1.19s user 0.17s system 99% cpu 1.369 total

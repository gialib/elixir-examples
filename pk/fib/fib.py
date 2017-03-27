def fib(n):
    if n == 0: return 0
    elif n == 1: return 1
    else: return fib(n-1) + fib(n-2)

print fib(40)

# python fib.py  48.47s user 0.54s system 96% cpu 50.954 total

// Fib.java
public class Fib {
  public static void main(String[] args) {
    System.out.println(fibonacci(40));
  }
  public static int fibonacci(int n) {
    if(n == 0) {
      return 0;
    } else if(n == 1) {
      return 1;
    }
    return fibonacci(n - 2) + fibonacci(n - 1);
  }
}

// java Fib  0.76s user 0.05s system 91% cpu 0.880 total

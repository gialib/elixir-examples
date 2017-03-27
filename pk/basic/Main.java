public class Main {
  public static void main(String[] args) {
    long t1 = System.currentTimeMillis();

    for(int i=0; i < 100000; i++){
      perform((float)i);
    }

    long t2 = System.currentTimeMillis();

    System.out.println("java time: " + String.valueOf(t2 - t1) + "ms");
  }

  static void perform(float i) {
    float a = i + 1;
    float b = 2.3f;
    String s = "helloworldhappynice Good Man";

    if(a > b) { 
      ++a;
    } else {
      b = b + 1;
    }

    if(a == b) {
      b = b + 1;
    }

    float c = (float)(a * b  + a / b - Math.pow(a, 2));

    String d = s.substring(0, s.indexOf("happy")) + String.valueOf(c);
  }
}

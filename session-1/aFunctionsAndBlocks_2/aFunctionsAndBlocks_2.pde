/* Functions, arguments and return */

void setup() {
  size(960,540,P3D);
  hello();
  say("Hello");
  int n = addTwoNumbers(9,33);
  whichNumber(n);
}

void draw() {
  background(220);
}

void hello() {
  println("hello world");
}

void say(String theValue) {
  println(theValue);
}

int addTwoNumbers(int a, int b) {
  return a+b;
}

void whichNumber(int theNumber) {
  println("the number is", theNumber);
}


/* Follow-up
 * 
 */
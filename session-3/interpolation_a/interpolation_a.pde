float x,nx;

void setup() {
  size(400,400);
  
}

void draw() {
   background(0);
   fill(255);
   rect(x,x,20,20);
   x += (nx-x)*0.02;
}

void mousePressed() {
  nx = random(0,400);
}
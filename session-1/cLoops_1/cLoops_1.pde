/* Loops 1 */




void setup() {
  size(960, 540, P3D);
}

void draw() {
  background(50);
  for(int i=0;i<1000;i++) {
    rect(random(0,width), random(0,height), 10, 10);
  }
}

/* Follow-up
 * 1. look up the for documentation
 */
 
 
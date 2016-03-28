/* 
 * how to use bitwise operations to control and display 
 * different types of visuals.
 */

/* define a set of modes represented by an int (power of 2) */
int CUBE = 1;
int CIRCLE = 2;
int FLICKER = 4;
int DIOMAND = 8;

int mode = CUBE;

void setup() {
  size(600, 600, P3D);
  for (int i=0; i<32; i++) {
    println("two to the power of", i, "=", int(pow(2, i)));
  }
}


void draw() {
  background(0);
  lights();
  noStroke();

  if (isModeActive(FLICKER)) {
    background(random(255));
  }

  if (isModeActive(CIRCLE)) {
    pushMatrix();
    translate(width/2, height/2);
    fill(255);
    ellipse(0, 0, 200, 200);
    popMatrix();
  }

  if (isModeActive(CUBE)) {
    fill(255);
    pushMatrix();
    translate(width/2, height/2);
    rotateY(frameCount*0.01);
    box(100);
    popMatrix();
  }

  int duration = 30;
  if (frameCount%duration == 0) {
    mode ^= DIOMAND;
  }
  
  if (isModeActive(DIOMAND)) {
    int a = int(map(frameCount%duration, 0, duration, 255,0));
    fill(0, 0, 255, a);
    pushMatrix();
    translate(width/2, height/2, 100);
    translate(cos(frameCount%duration * TWO_PI/duration)* 100, 0, 0);
    rotate(PI/4);
    rect(-50, -50, 100, 100);
    popMatrix();
  }

  
}


/* a helper function to check if a particular mode is active */
boolean isModeActive(int theMode) {
  return (mode & theMode)>0;
}


void keyPressed() {
  switch(key) {
    /* use the bitwise XOR operator to toggle a particular mode */
    case('1'):
    mode ^= CUBE;
    break;
    case('2'):
    mode ^= CIRCLE;
    break;
    case('3'):
    mode ^= FLICKER;
    break;
  }
}
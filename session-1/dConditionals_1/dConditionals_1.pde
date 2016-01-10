/* Conditionals 1 */




void setup() {
  size(960, 540, P3D);
}

void draw() {
  background(50);
  if(mousePressed) {
    fill(255,0,0);
    rect(100,100,200,200);
  } else if(keyPressed) {
    fill(0,255,0);
    rect(300,100,200,200);
  } else {
    fill(0,0,255);
    rect(500,100,200,200);
  }
 
}

/* Follow-up
 * 1. look up conditionals, if, else if, else
 * 2. loop up switch which works like an if else structure but operates slightly different 
 */
 
 
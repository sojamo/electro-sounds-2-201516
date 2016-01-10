/* Variables and Data Structures 1 */

int n = 0; /* a variable of type int with name n and initial value 0 */

/* the initialization routine */
void setup() {
  size(960,540,P3D); /* the size of the render window and the render engine*/
}


/* the draeing routine, which continuously runs at a give frameRate */
void draw() {
  background(220);
  
  n += 1; /* change value of variable n */
  
  noStroke();
  fill(255,128,0);
  rect(n,0,100,100); /* use variable n as the first argument with function rect() */
  
  
  /* Processing provides you with some default variables that store 
   * different kinds of values, for example the mouse position or
   * a counter that increments by 1 for each cycle. */
  fill(0,128,255);
  rect(mouseX, mouseY, frameCount%100, frameCount%100);
}
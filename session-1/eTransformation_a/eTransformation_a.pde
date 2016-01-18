/* Transformations: pushMatrix, popMatrix, translate 
 * Do follow up on transformations in this tutorial https://processing.org/tutorials/transform2d
 * which explains the core principles of translate, rotate, pushMatrix and popMatrix
 */

void setup() {
  size(960,540,P3D);
}

void draw() {
  background(220);
  // pushMatrix() is a built-in function that saves the current 
  // position of the coordinate system
  pushMatrix();
  // The translate(width/2, height/2) moves the coordinate system  
  // width/2 units right and height/2 units down
  translate(width/2, height/2);
  fill(40); // define a color for the box we draw in the following line
  box(100);
  // popMatrix() restores the coordinate system to the way 
  // it was before you did the translate.
  popMatrix();
}
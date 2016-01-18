/* This sketch demos some of the primitive shapes you can draw in Processing
 * before a shape is drawn, a transformation is used to position the shape.
 */

void setup() {
  size(960, 540, P3D);
}

void draw() {
  background(240);
  noStroke();
  
  
  pushMatrix();
  translate(width*0.125, height*0.25);
  fill(0, 255, 0);
  rect(0, 0, 100, 100);
  popMatrix();


  pushMatrix();
  translate(width*0.5, height*0.25);
  rotateY(frameCount*0.01);
  fill(0, 0, 255);
  ellipse(0, 0, 200, 200);
  popMatrix();


  pushMatrix();
  translate(width*0.75, height*0.25);
  fill(255, 0, 255);
  triangle(-100, 100, 0, 0, 100, 100);
  popMatrix();


  pushMatrix();
  translate(width*0.125, height*0.5);
  noStroke();
  fill(255, 0, 0);
  beginShape();
  vertex(0, 0);
  vertex(100, 0);
  vertex(100, 100);
  vertex(0, frameCount%100);
  endShape();
  popMatrix();


  pushMatrix();
  translate(width*0.3, height*0.5);
  noStroke();
  stroke(255, 128, 0);
  strokeWeight(2);
  for (int i=0; i<10; i++) {
    line(0, 0, 200, 10+i*10);
    translate(0, 5);
  }
  popMatrix();
  
  
  pushMatrix();
  translate(width*0.75, height*0.5);
  noStroke();
  fill(255, 0, 0);
  beginShape();
  curveVertex(0, 0);
  curveVertex(100, 0);
  curveVertex(100, 100);
  curveVertex(0, frameCount%100);
  curveVertex(0, 0);
  endShape();
  popMatrix();

}
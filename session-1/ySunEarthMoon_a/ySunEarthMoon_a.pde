void setup() {
  size(960, 540, P3D);
}

void draw() {
  background(0);
  fill(255);
  
  pushMatrix();
    translate(width/2,height/2);
    rotateY(frameCount*0.01);
    ellipse(0,0,100,100); /* Sun */
  
    pushMatrix();
    translate(200,0);
    rotateY(frameCount*0.1);
    ellipse(0,0,40,40); /* Earth */
      pushMatrix();
        translate(40,0);
        rotateY(frameCount*0.1);
        ellipse(0,0,10,10); /* Moon */
      popMatrix();
    popMatrix();
  
  popMatrix();
}
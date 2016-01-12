/* the initialization routine */
void setup() {
  size(960,540,P3D); /* the size of the render window and the render engine*/
}

/* the drawing routine, which continuously runs at a give frameRate */
float angle;

void draw() {
  background(220);
  fill(255,0,0);
  translate(width/2, height/2);
  println(angle);
  if(mousePressed) {
    angle += 0.1;
  }
  rotateY(angle);
  //rotateY(mouseX*0.01);
  //rotateX(mouseY*0.01);
  //box(100);
  
  // rect(0,0,100,100);
  triangle(0, 0, 58, 20, 86, 75);
}
PImage img;

void setup() {
  size(960,540);
  img = loadImage("image1.jpg");
}

void draw() {
  background(220);
  if(keyPressed) {
    float r = height/float(img.height);
    image(img,0,0, img.width*r, img.height*r);
  }
  fill(0);
  rect(62,198,5,281);
  for(int i=0;i<29;i++) {
    rect(65,197+i*10,140,5); 
  }
  
  
  /* alternative code using transformations */
  /* https://processing.org/tutorials/transform2d */
  
  //pushMatrix();
  //translate(62,198);
  //fill(0);
  //rect(0,0,5,281);
  //for(int i=0;i<29;i++) {
  //  pushMatrix();
  //  translate(0,i*10);
  //  rect(0,0,140,5);
  //  popMatrix();
  //}
  //popMatrix();
}

void mousePressed() {
  println(mouseX,mouseY);
}
SoundInput sound;

void setup() {
  size(960,540,P3D);
  sound = new SoundInput();
}


void draw() {
  background(0);
  sound.update();
  fill(255);
  pushMatrix();
  translate(100,height/2);
  float scl = 10;
  float x = 0;
  
  beginShape();
  for(float y:sound.spectrum) {
    vertex(x,-y*scl);
    x += 1;
  }
  endShape();
  popMatrix();
  
  noStroke();
  pushMatrix();
  translate(100,400);
  for(float f:sound.average) {
    fill(255,120);
    rect(0,0,48,100);
    fill(255);
    rect(0,0,48,f*scl);
    translate(50,0);
  }
  popMatrix();
}
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
  translate(0,height/2);
  float scl = 10;
  float x = 0;
  
  beginShape();
  for(float y:sound.spectrum) {
    vertex(x,y*scl);
    x += 1;
  }
  endShape();
  popMatrix();
}
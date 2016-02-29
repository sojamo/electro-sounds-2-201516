
void setup() {
  size(960, 540, P3D);
  loadPixels();
}


void draw() {
  float scl = map(mouseX, 0, width, 0.001, 0.1);
  int steps = 1;
  noStroke();
  for (int x=0; x<width; x+=steps) {
    int col = 0;
    if(mousePressed) {
      col = int(random(0,255));
    } else {
      double v = SimplexNoise.noise(x*scl, frameCount*scl);
      col = color(abs((int)(v * 255)));
    }
    fill(col);
    rect(x,0,steps,height);
    
  }
  updatePixels();
}
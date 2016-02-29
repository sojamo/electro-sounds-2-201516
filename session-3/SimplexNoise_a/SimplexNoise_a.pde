
void setup() {
  size(960,540,P3D);
  loadPixels();
}


void draw() {
  float scl = map(mouseX,0,width,0.001, 0.4);
  int steps = 1;
  for(int x=0;x<width;x+=steps) {
    for(int y=0;y<height;y+=steps) {
      double v = SimplexNoise.noise(x*scl,y*scl);
      pixels[x+y*width] = color(abs((int)(v * 255)));
    }
  }
  updatePixels();
}
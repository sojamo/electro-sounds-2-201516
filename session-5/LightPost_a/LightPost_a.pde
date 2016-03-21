ArrayList<LightPost> lights;

void setup() {
  size(800, 600, P3D);
  lights = new ArrayList();
  for (int x = 0; x<5; x++) {
    for (int y = 0; y<5; y++) {
      lights.add(new LightPost(x*100, 0, y*100));
    }
  }
}


void draw() {
  background(0);
  pushMatrix();
  translate(width/2 - 200, height/2, 200);
  rotateX(-0.5);
  if (mousePressed) {
    rotateY(-0.5);
  }
  translate(0, 0, -200);
  for (LightPost light : lights) {
    light.update();
    light.draw();
    if (frameCount%30==0) {
      light.trigger(1);
    }
  }
  popMatrix();
}

void keyPressed() {
  int type = 0;
  switch(key) {
    case('1'):
    type=1;
    break;
    case('2'):
    type=2;
    break;
  }
  for (LightPost light : lights) {
    light.trigger(type);
  }
}

class LightPost {

  float x, y, z;
  float w, h, nw, nh;
  boolean showTriangle;
  LightPost(float theX, float theY, float theZ ) {
    x = theX;
    y = theY;
    z = theZ;
    w = 10;
    h = 200;
  }

  void update() {
    h += (nh-h)*0.1;
  }

  void draw() {
    pushMatrix();
    translate(x, y, z);
    fill(255);
    rect(0, 0, w, -h);
    translate(0, 0, 1);
    if (showTriangle) {
      fill(0);
      triangle(0, 0, w/2, -h, w, 0);
    }
    popMatrix();
  }

  void trigger(int theType) {
    switch(theType) {
      case(1):
      h = 0;
      nh = 100;
      break;
      case(2):
      showTriangle = !showTriangle;
      break;
    }
  }
}
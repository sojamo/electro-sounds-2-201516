
ArrayList<WalkPoint> walkers = new ArrayList();

void setup() {
  size(960, 540, P3D);
  for (int i=0; i<50000; i++) {
    walkers.add(new WalkPoint());
  }
}


void draw() {
  //background(255);
  fill(255,40);
  rect(0,0,width,height);
  for (WalkPoint w : walkers) {
    w.update();
    w.draw();
  }
}

void keyPressed() {
  for (WalkPoint w : walkers) {
    w.trigger();
  }
}


class WalkPoint {
  float x, y;
  float nx, ny;
  float speed;

  WalkPoint() {
    x = random(width);
    y = 0;
    speed = random(0.04, 0.2);
  }

  void update() {
    y += (ny-y)*speed;
  }

  void trigger() {
    y = random(0,1)<0.5 ? 0:height; 
    ny = height/2;
  }

  void draw() {
    fill(0);
    pushMatrix();
    translate(x, y);
    line(0, 0,1,10);
    popMatrix();
  }
}
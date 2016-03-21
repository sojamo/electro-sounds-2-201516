ArrayList<FlyingRectangle> fr;

void setup() {
  size(400, 400);
  fr = new ArrayList<FlyingRectangle>();
  for(int i=0;i<100;i++) {
    fr.add(new FlyingRectangle());
  }
}

void draw() {
  background(0);
  for(FlyingRectangle f:fr) {
    f.draw();
  }
}

void mousePressed() {
  for(FlyingRectangle f:fr) {
    f.trigger(1);
  }
}

void keyPressed() {
  for(FlyingRectangle f:fr) {
    f.trigger(0);
  }
}

class FlyingRectangle {
  float x, nx, speedx;
  float y, ny, speedy;
  
  FlyingRectangle() {
   x = nx = random(0,400);
   y = ny = random(0,400);
   speedx = random(0.01,0.2);
   speedy = random(0.01,0.2);
  }
  
  void draw() {
    fill(255);
    rect(x, y, 20, 20);
    // interpolating x
    x += (nx-x)*speedx;
    y += (ny-y)*speedy;
  }
  
  void trigger(int state) {
    if(state==1) {
      nx = random(0, 400);
      ny = random(0, 400);
    } else if(state==0) {
      nx = width/2;
      ny = height/2;
    }
  }
}
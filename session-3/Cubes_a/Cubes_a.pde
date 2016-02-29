
ArrayList<Box> boxes;
void setup( ) {
  size(960, 540, P3D);

  boxes = new ArrayList();
  for (int x=0; x<10; x++) {
    for (int y=0; y<10; y++) {
      for (int z=0; z<10; z++) {
        boxes.add(new Box(x-5, y-5, z-5));
      }
    }
  }
}


void draw() {
  background(255);
  noStroke();
  lights();
  translate(width/2, height/2);
  rotateY(frameCount*0.01);
  for (Box box : boxes) {
    box.draw();
    box.update();
  }
}

void keyPressed() {
  if (key==' ') {
    for (Box box : boxes) {
      box.change(0,0.2);
    }
  } else if (key=='r') {
    for (Box box : boxes) {
      box.change(random(4, 20), 0.01);
    }
  }
}
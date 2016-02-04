
ArrayList<MyFlyingObject> os = new ArrayList();
PImage colors;

void setup() {
  size(960, 540, P3D);
  colors = loadImage("o-COLOR-570.jpg");
  noStroke();
  for (int i=0; i<400; i++) {
    os.add(new MyFlyingObject(i));
  }
  background(255);
}


void draw() {
  translate(width/2, height/2, 200);
  for (MyFlyingObject o : os) {
    o.move();
    o.draw();
  }
}


void keyPressed() {
  switch(key) {
    case('1'):
    colors = loadImage("o-COLOR-570.jpg"); 
    break;
    case('2'):
    colors = loadImage("False_colors_palette_color_test_chart.png"); 
    break;
    case('3'):
    colors = loadImage("images.jpg"); 
    break;
  }
}



class MyFlyingObject {

  float x = 0;
  float y = 200;
  float z = 0;
  float s = 10;

  float speed = 0;

  int col = 0;
  int colX = int(random(colors.width));
  int colY = 150;


  MyFlyingObject(float theY) {
    y = theY;
    z = random(-400, 400);
    s = 10;
    speed = random(0.5, 4.0);
  }

  void move() {

    colY+=1;
    colY %= colors.height;

    x = x + speed;
    if (x<0 || x>width) {
      speed *= -1;
    }
  }

  void draw() {
    col = colors.get(colX, colY);
    float alpha = 200;//abs(sin(frameCount*speed*0.01)*30); 
    fill(col, alpha);
    pushMatrix();
    rotateZ(frameCount*0.01);
    translate(0, y, z);
    box(1, 100, 1);
    popMatrix();
  }
}
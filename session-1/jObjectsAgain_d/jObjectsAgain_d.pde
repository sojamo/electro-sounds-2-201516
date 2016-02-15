
import codeanticode.syphon.SyphonServer;




ArrayList<MyFlyingObject> os = new ArrayList();

PImage colors;
SyphonServer syphon;

void settings() {
  size(960, 540, P3D);
  PJOGL.profile=1;
  smooth(8);
}


void setup() {
  
  syphon = new SyphonServer( this , "p5-to-syphon" );
  
  colors = loadImage("o-COLOR-570.jpg");
  noStroke();
  
  for(int i=0;i<height;i++) {
    os.add(new MyFlyingObject(i));
  }
  hint(DISABLE_DEPTH_TEST);
}


void draw() {
  // background(0);
  
  fill(0,10);
  rect(0,0,width,height);
  
  translate(width/2, height/2);
  rotate(frameCount*0.01);
  translate(-width/2, -height/2);
  
  for(MyFlyingObject o:os) {
    o.move();
    o.draw();
  }
  syphon.sendScreen( );
}



void keyPressed() {
  switch(key) {
    case('1'):colors = loadImage("o-COLOR-570.jpg"); break;
    case('2'):colors = loadImage("False_colors_palette_color_test_chart.png"); break;
    case('3'):colors = loadImage("images.jpg"); break;
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
  
  ArrayList<Integer> others = new ArrayList();
  
  MyFlyingObject(float theY) {
    y = theY;
    z = random(-400,400);
    s = 10;
    speed = random(0.5, 4.0);
    
    int n = int(random(1,20));
    for(int i=0;i<n;i++) {
      others.add(int(random(os.size())));
    }
  }

  void move() {
    
    colY+=1;
    colY %= colors.height;
    
    x = x + speed;
    if(x<0 || x>width) {
      speed *= -1;
    }
  }

  void draw() {
    col = colors.get(colX,colY); 
    pushMatrix();
    stroke(255,20);
    for(Integer i:others) {
      MyFlyingObject t = os.get(i);
      line(x,y,z,t.x,t.y,t.z);
    }
    popMatrix();
  }
}
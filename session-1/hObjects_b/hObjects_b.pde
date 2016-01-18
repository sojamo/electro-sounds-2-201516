/* This sketch show you how to create a custom class
 * With a keyPressed (key 1) you can add instances of this class (an object) to an arraylist
 * and display them inside the sketch-window. with another keyPressed (key 2) you
 * can remove objects from the arraylist.
 *
 * A variation of sketch hObjects_a
 *
 */

ArrayList<MyObject> objects;

void setup() {
  size(960, 540, P3D);
  noStroke();
  objects = new ArrayList<MyObject>();
  objects.add(new MyObject());
}

void draw() {
  // background(240);
  for(MyObject o:objects) {
    o.update();
    o.draw();
  }
}


void keyPressed() {
  switch(key) {
    case('1'):
    for(int i=0;i<100;i++) {
    objects.add(new MyObject());
    }
    break;
    case('2'):
    if(objects.isEmpty()==false) {
      objects.remove(0);
    }
    break;
  }
  println("Currently active objects:", objects.size());
}

class MyObject {
  float x,y;
  float d;
  float angle, speed;
  int col;
  
  MyObject() {
    x = random(0,width);
    y = random(0,height);
    d = random(4,40);
    speed = random(-0.1,0.01);
    col = color(random(255),random(255),random(255),10);
    col = random(0,1) >0.5 ? color(255,20):color(0,20); // uncomment this line to switch to b/w
    
  }
  
  void draw() {
    pushMatrix();
    translate(((x+frameCount)*speed*100)%width,y);
    rotate(angle);
    fill(col);
    rect(0,0,4,d);
    popMatrix();
  }
  
  void update() {
    angle += speed;
  }
  
}
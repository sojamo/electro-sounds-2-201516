
class Box {

  float x, y, z, s;
  float nx, ny, nz, ns;
  int col;
  float dist = random(4,10);
  float scl = 0.05;
  
  Box(float theX, float theY, float theZ) {
    x = theX*dist;
    y = theY*dist;
    z = theZ*dist;
    s = random(10, 20);
    col = int(random(255));
  }
  void draw() {
    // pushMatrix();
    
    translate(x, y, z);
    rotate(PI/3);
    fill(col);
    box(s);
    stroke(0);
    for(int i=0;i<1;i++) {
      float rx = random(-120,120);
      float ry = random(-120,120);
      float rz = random(-120,120);
      line(0,0,0,width*10,i*10,0);
    }
    noStroke();
    // popMatrix();
  }

  void update() {
    x += (nx-x)*scl;
    y += (ny-y)*scl;
    z += (nz-z)*scl;
  }

  void change(float theDist, float theScl) {
    scl = theScl;
    nx = random(-5,5)*theDist;
    ny = random(-5,5)*theDist;
    nz = random(-5,5)*theDist;
  }
}
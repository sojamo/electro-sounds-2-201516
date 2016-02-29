float x,y,z;
float nx,ny,nz;

float cx,cy,cz;
float ncx,ncy,ncz;

void setup() {
  size(960,540,P3D);
}


void draw() {
  background(0);
  translate(width/2, height/2);
  float scl = 0.01;
  
  x += (nx-x)*scl;
  y += (ny-y)*scl;
  z += (nz-z)*scl;
  
  cx += (ncx-cx)*scl;
  cy += (ncy-cy)*scl;
  cz += (ncz-cz)*scl;
  
  camera(x, y, z, cx,cy,cz, 0.0, 1.0, 0.0);
  box(100);
}

void mousePressed() {
  nx = random(-200,200);
  ny = random(-200,200);
  nz = random(-200,200);
}

void keyPressed() {
  if(key==' ') {
    ncx = 0;
    ncy = 0;
    ncz = 0;
  } else {
    ncx = random(-200,200);
    ncy = random(-200,200);
    ncz = random(-200,200);
  }
}
// bitwise operations

int CUBE = 1;
int CIRCLE = 2;
int FLICKER = 4;
// int SOMETHING = 8;

int mode = 1;

void setup() {
  size(600,600,P3D);
  for(int i=0;i<32;i++) {
    println("two to the power of",i,"=",int(pow(2,i)));
  }
}


void draw() {
  background(0);
  
  if((mode & FLICKER)>0) {
    background(random(255));
  }
  
  
  if((mode & CIRCLE)>0) {
    pushMatrix();
    translate(width/2, height/2);
    fill(255);
    ellipse(0,0,200,200);
    popMatrix();
  }
  
  if((mode & CUBE)>0) {
    fill(255);
    pushMatrix();
    translate(width/2, height/2);
    rotateY(frameCount*0.01);
    box(100);
    popMatrix();
  }
}

void keyPressed() {
  switch(key) {
    case('1'):mode ^= 1;break;
    case('2'):mode ^= 2;break;
    case('3'):mode ^= 4;break;
  }
}

int state = 0;

void setup() {
  size(800,600,P3D);
  noStroke(); 
}


void draw() {
  background(0);
  if(state==0) {
    background(0,0,255);
  }  else if(state==1) {
    rect(100,100,200,200);
  } else if(state == 2) {
    fill(255,0,0);
    ellipse(200,200,200,200);
  } else if(state == 3) {
    fill(255,255,0);
    translate(width/2, height/2);
    rotateX(frameCount*0.01);
    box(200);
  }
  
  if(frameCount%30 == 0) {
    state = int(random(0,4));
  }
}

void keyPressed() {
  if (key=='1') {
    state = 1;
  } else if (key=='2') {
    state = 2;
  } else if (key=='3') {
    state = 3;
  }
}
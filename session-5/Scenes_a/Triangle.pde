
class Triangle extends AScene { 
  
  
  int col = color(255,0,255);
  
  void setup(){
     
  }
  
  void draw() {
    background(0,255,255);
    noStroke();
    translate(width/2,height/2);
    fill(col);
    rotateX(frameCount*0.01);
    rotateY(frameCount*0.1);
    triangle(-100,0,0,100,100,0);
  }
  
  void keyPressed() {
    switch(key) {
      case('c'):col = color(random(255),0,random(255));break;
    }
  }
  
}
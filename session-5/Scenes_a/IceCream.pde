
class IceCream extends AScene {
  
  void setup(){
     
  }
  
  void draw() {
    background(255,255,0);
    noStroke();
    translate(width/2,height/2);
    fill(255,0,0);
    rotateX(frameCount*0.01);
    rotateY(frameCount*0.1);
    box(100);
  }

}
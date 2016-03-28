
HashMap<String,IScene> scenes;
String scene = "ice-cream";

void setup() {
  size(960,540,P3D);
  scenes = new HashMap();
  scenes.put("ice-cream", new IceCream());
  scenes.put("triangle", new Triangle());
}


void draw() {
  scenes.get(scene).draw();
}

void keyPressed() {
  
  // general key pressed events to change scenes
  switch(key) {
    case('1'):scene = "ice-cream";break;
    case('2'):scene = "triangle";break;
  }
  
  // keep this line to forward key pressed events to a scene
  scenes.get(scene).keyPressed();
}
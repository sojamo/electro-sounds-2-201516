
/* load the contributed library ControlP5 */
import controlP5.*;

/* Shader applies to shapes drawn into the framebuffer but not background() */
PShader shader;
float speed;
ControlP5 cp5;

void setup() {
  size(960,540, P2D);
  /* load a shader from a file */
  shader = loadShader("shader.glsl");
  /* set the resolution variable of the shader */
  shader.set("resolution", float(width), float(height));
  
  /* add a slider to the sketch which will the control the value of variable speed */
  cp5 = new ControlP5(this);
  cp5.addSlider("speed")
     .setSize(200,20)
     .setPosition(40,440)
     .setRange(0.001,0.8)
     .setValue(0.01);
     
}


void draw() {
  background(0);
  /* set the mouse variable of the shader */
  shader.set("mouse", float(mouseX), float(mouseY));
  shader.set("time", frameCount*speed);
  shader(shader);
  /* apply the shader to the shapes rendered afterwards */
  fill(255,0,0);
  rect(20,20,width-40,height-40);
  /* reset the shader so that it wont affect the controllers which are rendered afterwards */
  resetShader();
}
/* Shader applies to shapes drawn into the framebuffer but not background() */
PShader shader;

void setup() {
  size(960,540, P2D);
  /* load a shader from a file */
  shader = loadShader("shader.glsl");
  /* set the resolution variable of the shader */
  shader.set("resolution", float(width), float(height));
}


void draw() {
  background(0);
  /* set the mouse variable of the shader */
  shader.set("mouse", float(mouseX), float(mouseY));
  // shader.set("time", frameCount*0.1);
  
  /* apply the shader to the shapes rendered afterwards */
  fill(255,0,0);
  rect(20,20,width-40,height-40);
  shader(shader);
}
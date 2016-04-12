PGraphics buffer;

void setup() {
  size(1280, 512, P3D);
  buffer = createGraphics(width,height,P3D);
  buffer.smooth(8);
}

void draw() {
  noStroke();
  lights();
  background(20);
  pushMatrix();
  fill(120);
  translate(width/2, height/2);
  rotateX(HALF_PI);
  int col = mouseX;
  directionalLight(col, col, col, 0, -1, 0);
  sphere(width);
  popMatrix();
  drawBuffer();
  image(buffer,0,0);
}

void drawBuffer() {
  buffer.beginDraw();
  buffer.background(0,0);
  buffer.noStroke();
  // buffer.lights();
  buffer.pushMatrix();
  buffer.fill(255);
  buffer.translate(width/2,height/2,-frameCount%1000);
  buffer.rotateY(frameCount*0.01);
  buffer.box(100);
  buffer.popMatrix();
  buffer.endDraw();
}
import codeanticode.syphon.SyphonServer;

SyphonServer syphon;
PGraphics buffer;

void settings() {
  size(1024, 768, P3D);
  PJOGL.profile=1;
  smooth(8);
  
}


void setup() {
  background(0);
  syphon = new SyphonServer( this , "p5-to-syphon" );
  buffer = createGraphics(width,height,P3D);
}

void draw() {
  buffer.beginDraw();
  buffer.background(frameCount%255);
  buffer.endDraw();
  syphon.sendImage( buffer );
  image(buffer,0,0);
}
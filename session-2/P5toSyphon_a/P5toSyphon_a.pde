import codeanticode.syphon.SyphonServer;

SyphonServer syphon;

void settings() {
  size(1024, 768, P3D);
  PJOGL.profile=1;
  smooth(8);
}


void setup() {
  syphon = new SyphonServer( this , "p5-to-syphon" );
}

void draw() {
  background(frameCount%255);
  syphon.sendScreen( );
}
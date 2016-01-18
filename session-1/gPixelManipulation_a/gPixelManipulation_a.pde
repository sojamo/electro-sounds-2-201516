/* This sketch shows how to manipulate a sketch's individual pixels */

void setup() {
  size(960, 540, P3D);
  loadPixels(); /* to access pixels, we need to load the first */
}

void draw() {
  background(240);
  int w = 200;
  int h = 100;
  int offsetX = 300; // try to use mouseX instead of 300
  int offsetY = 200; // try to use mouseY instead of 200
  
  /* we use a 2D loop to access individual pixels */
  for(int x=0; x<w; x++) {
    for(int y=0; y<h; y++) {
      /* pixels are stored within an array called pixels.
       * in the following we access a pixel based on the 
       * some parameters whe have set previously and change
       * the color of the pixel to a random grey value.
       */
      pixels[(offsetY+y)*width + (offsetX+x)] = color(random(255));
    }
  }
  updatePixels();
  
}

/* caution: you might encounter an ArrayIndexOutOfBounds Exception
 * which is caused when trying to access a pixel that does not exist
 * within the current scope of the sketch.
 */
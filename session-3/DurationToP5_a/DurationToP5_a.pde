import oscP5.*;
import java.util.concurrent.*;

OscP5 osc;


int col;
boolean show = false;
CopyOnWriteArrayList<Float> audio;


void setup() {
  size(500,300);
  // create an OscP5 instance and listen on
  // port 12345, the default remote port 
  // used by duration 
  osc = new OscP5(this, 12345);
  // ArrayList audio will be used to store fft 
  // data received from duration
  audio = new CopyOnWriteArrayList();
}

void draw() {
  background(col);
  if(show==true) {
    rect(0,0,20,20);
  }
  noStroke();
  
  pushMatrix();
  translate(0,50);
  // to use and display the fft data we iterate the
  // audio List one by one and render it to the canvas.
  for(float f:audio) {
    rect(0,0,2,f*50);
    translate(3,0);
  }
  popMatrix();
}


void oscEvent(OscMessage m) {
  
  // we receive messages from duration.cc
  // there are 3 layers: audio, bangs, /c/1
  // each of these layer correspond to the 
  // address pattern of an OscMessage
  
  if (m.getAddress().equals("/bangs")) {
    // a bang is just a signal without data
    col = int(random(255));
    show = !show;
    println("got a bang", m);
  } 
  else if (m.getAddress().equals("/c/1")) {
    // a color message contains 3 int values: r,g,b
    // extract data using the get(theIndex) function
    int r = m.get(0).intValue();
    int g = m.get(1).intValue();
    int b = m.get(2).intValue();
    col = color(r,g,b);
    println("got a color", m);
  }
  else if (m.getAddress().equals("/audio")) {
    // here the OscMessage contains fft data
    // we transfer the data from the OscMessage into
    // an ArrayList which we can then later use 
    // inside draw for example. 
    audio.clear();
    for(Object o:m.getArguments()) {
      audio.add(((Float)o).floatValue());
    }
  }
}
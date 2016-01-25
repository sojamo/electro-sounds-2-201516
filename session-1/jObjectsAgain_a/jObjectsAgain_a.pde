
ArrayList<Particle> particles = new ArrayList();

void setup() {
  size(960, 540);
  for (int i=0; i<1000; i++) {
    particles.add(new Particle());
  }
}


void draw() {
  background(0);
  for (Particle particle : particles) {
    particle.draw();
  }
}

class Particle {
  float x, y;
  int col;
  float speed;
  float r;

  Particle() {
    col = color(int(random(255)), int(random(255)), int(random(255)));
    x = int(random(960));
    y = int(random(540));
    speed = random(-1, 1);
  }

  void draw() {
    r += speed;
    pushMatrix();
    translate(x, y);
    rotate(r);
    fill(col);
    rect(0, 0, 10, 10);
    popMatrix();
  }
}
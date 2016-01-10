
ArrayList<Particle> particles;
Lines lines;

void setup() {
  size(960, 540, P3D);
  hint(DISABLE_DEPTH_TEST);
  particles = new ArrayList();
  for (int i=0; i<400; i++) {
    particles.add(new Particle());
  }

  lines = new Lines();
  strokeWeight(2);
  background(0);
}


void draw() {
  noStroke();
  fill(0, 10);
  rect(0, 0, width, height);

  translate(width/2, height/2);
  rotateX(frameCount*0.01);
  noStroke();
  fill(255);
  for (Particle particle : particles) {
    particle.update();
  }
  stroke(255, 32);
  lines.update(particles);
}

class Particle {

  PVector position = new PVector(0, 0, random(-200, 200));
  float speed = random(1, 5);
  float distance = 0;
  float radius = random(100, 200);

  void update() {
    distance += speed*0.25;
    position.x = sin(distance*0.01)*radius;
    position.y = cos(distance*0.01)*radius;

    pushMatrix();
    translate(position.x, position.y, position.z );
    //ellipse(0, 0, 4, 4);
    popMatrix();
  }
}


class Lines {

  void update(ArrayList<Particle> theParticles) {
    for (int i=0; i<theParticles.size(); i++) {
      for (int j=i; j<theParticles.size(); j++) {
        float x0 =theParticles.get(i).position.x;
        float y0 =theParticles.get(i).position.y;
        float z0 =theParticles.get(i).position.z;
        float x1 =theParticles.get(j).position.x;
        float y1 =theParticles.get(j).position.y;
        float z1 =theParticles.get(j).position.z;
        float d = dist(x0, y0, z0, x1, y1, z1);
        if (d<100) {
          line(x0, y0, z0, x1, y1, z1);
        }
      }
    }
  }
}
Particle[] particles = new Particle[(int)(Math.random() * 100) + 100];
float gravity = 0.15;
int baseR;
int baseG;
int baseB; 
void setup() {
  size(600, 400);
  background(0);
  noStroke();
  baseR = (int)(Math.random() * 256);
  baseG = (int)(Math.random() * 256);
  baseB = (int)(Math.random() * 256);
  for (int i = 0; i < particles.length; i++) {
    if (i % 4 == 0) {
      particles[i] = new Oddball(width/2, height, baseR, baseG, baseB);
    } else {
      particles[i] = new Particle(width/2, height, baseR, baseG, baseB);
    }
  }
}

void draw() {
  fill(0, 10);
  rect(0, 0, width, height);
  for (int i = 0; i < particles.length; i++) {
    particles[i].move();
    particles[i].show();
  }
}
void mouseClicked(){
  baseR = (int)(Math.random() * 256);
  baseG = (int)(Math.random() * 256);
  baseB = (int)(Math.random() * 256);
  particles = new Particle[(int)(Math.random() * 100) + 50];
  for (int i = 0; i < particles.length; i++) {
    if (i % 4 == 0) {
      particles[i] = new Oddball(mouseX, height, baseR, baseG, baseB);
    } else {
      particles[i] = new Particle(mouseX, height, baseR, baseG, baseB);
    }
  }
}

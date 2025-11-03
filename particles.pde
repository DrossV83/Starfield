public class Particle {
  private float x, y;
  private float speed;
  private float gravity = 0.05;
  private int r, g, b;
  public Particle(int startX, int startY, int baseR, int baseG, int baseB) {
    x = startX;
    y = startY;
    speed = (float)(Math.random() * 2) + 1; 
    angle = (float)(Math.random() * TWO_PI);
    r = baseR + (int)(Math.random() * 40 - 20);
    g = baseG + (int)(Math.random() * 40 - 20);
    b = baseB + (int)(Math.random() * 40 - 20);
  }
  public void move() {
    y -= speed;  // move upward
    x += (float)(Math.random() * 2 - 1); // side to side
    speed -= gravity * 0.1; // decelerate
  }
  public void show() {
    fill(r, g, b);
    ellipse(x, y, 8, 8);
  }
}


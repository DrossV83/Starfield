public class Oddball extends Particle {
private float x, y, speed, angle, gravity;
  private int r, g, b;
  public Oddball(int startX, int startY, int baseR, int baseG, int baseB) {
    super(startX, startY, baseR, baseG, baseB);
    x = startX;
    y = startY;
    speed = (float)(Math.random() * 5 + 1);
    angle = (float)(Math.random() * TWO_PI);
    gravity = 0.05f;
    r = baseR + (int)(Math.random() * 60 - 10);
    g = baseG + (int)(Math.random() * 40);
    b = baseB - (int)(Math.random() * 40);
  }

  public void move() {
    x += Math.cos(angle) * speed;
    y += Math.sin(angle) * speed;
    speed *= 0.97;
    y += gravity; 
  }

  public void show() {
    fill(r, g, b);
    ellipse(x, y, 5, 5);
  }
}

public class Projectile {
  float xPos, yPos;
  float xSpeed, ySpeed;
  int xDir, yDir;

  float radius;

  public Projectile(int x1, int y1, int x2, int y2) {
    xPos = x1;
    yPos = y1;

    xSpeed = x1 - x2;
    ySpeed = y1 - y2;

    // if (xSpeed < 1) xSpeed = 3;
    // if (ySpeed < 1) ySpeed = 3;

    // if (xSpeed > 20) xSpeed = 20;
    // if (ySpeed > 20) ySpeed = 20;

    xDir = 1;
    yDir = 1;

    radius = 10;
  }

  public void render() {
    updatePos();

    ellipse(xPos, yPos, radius, radius);
  }

  public void updatePos() {
    xPos += xSpeed * xDir;
    yPos += ySpeed * yDir;
  }
}
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

    modifyProjectileSpeed();

    // if (xSpeed < 1) xSpeed = 3;
    // if (ySpeed < 1) ySpeed = 3;

    // if (xSpeed > 20) xSpeed = 20;
    // if (ySpeed > 20) ySpeed = 20;

    xDir = 1;
    yDir = 1;

    radius = 15;
  }

  public void modifyProjectileSpeed() {
    if (abs(xSpeed) > 10) {
      float factor = xSpeed / 10;
      xSpeed = factor;
      ySpeed = ySpeed / abs(factor);
    }
    else if (abs(xSpeed) > 5) {
      float factor = xSpeed / 5;
      xSpeed = factor;
      ySpeed = ySpeed / abs(factor);
    }
    else if (abs(xSpeed) > 3) {
      float factor = xSpeed / 3;
      xSpeed = factor;
      ySpeed = ySpeed / abs(factor);
    }
    else {
      // remove the projectile from the screen if it is too slow
      xPos = -100;
      yPos = -100;
    }
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
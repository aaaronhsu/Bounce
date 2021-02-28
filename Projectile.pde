public class Projectile {
  float xPos, yPos;
  float xSpeed, ySpeed;
  int xDir, yDir;

  int numCollisions = 0;
  int nextCollision = 0;

  float radius;

  public Projectile(int x1, int y1, int x2, int y2) {
    xPos = x2;
    yPos = y2;

    xSpeed = x1 - x2;
    ySpeed = y1 - y2;

    modifyProjectileSpeed();

    xDir = 1;
    yDir = 1;

    radius = 15;
  }

  public void modifyProjectileSpeed() {

    if (abs(xSpeed) > abs(ySpeed)) {
      if (abs(xSpeed) > 10) {
        float factor = xSpeed / 10;
        xSpeed = xSpeed > 0 ? 10 : -10;
        ySpeed = ySpeed / abs(factor);
      }
      else if (abs(xSpeed) > 5) {
        float factor = xSpeed / 5;
        xSpeed = xSpeed > 0 ? 5 : -5;
        ySpeed = ySpeed / abs(factor);
      }
      else if (abs(xSpeed) > 3) {
        float factor = xSpeed / 3;
        xSpeed = xSpeed > 0 ? 3 : -3;
        ySpeed = ySpeed / abs(factor);
      }
      else {
        // remove the projectile from the screen if it is too slow
        xPos = -100;
        yPos = -100;
      }
    }
    else {
      if (abs(ySpeed) > 10) {
        float factor = ySpeed / 10;
        ySpeed = ySpeed > 0 ? 10 : -10;
        xSpeed = xSpeed / abs(factor);
      }
      else if (abs(ySpeed) > 5) {
        float factor = ySpeed / 5;
        ySpeed = ySpeed > 0 ? 5 : -5;
        xSpeed = xSpeed / abs(factor);
      }
      else if (abs(ySpeed) > 3) {
        float factor = ySpeed / 3;
        ySpeed = ySpeed > 0 ? 3 : -3;
        xSpeed = xSpeed / abs(factor);
      }
      else {
        // remove the projectile from the screen if it is too slow
        xPos = -100;
        yPos = -100;
      }
    }
  }

  public void render() {
    updatePos();

    if (nextCollision > 0) nextCollision--;

    fill(color(255, 0, 0));
    ellipse(xPos, yPos, radius, radius);
  }

  public void updatePos() {
    xPos += xSpeed * xDir;
    yPos += ySpeed * yDir;
  }
}
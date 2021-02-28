public class Wall {
  int x, y, width, height;

  public Wall(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.width = w;
    this.height = h;
  }

  public void render() {
    fill(color(0, 0, 0));
    rect(x, y, width, height);
  }

  public void detectCollision(Projectile projectile) {
    if (x <= projectile.xPos - projectile.radius && projectile.xPos - projectile.radius <= x + width &&
        y <= projectile.yPos && projectile.yPos <= y + height) {

      handleCollision(projectile);
    }
    else if (x <= projectile.xPos + projectile.radius && projectile.xPos + projectile.radius <= x + width &&
        y <= projectile.yPos && projectile.yPos <= y + height) {
      
      handleCollision(projectile);      
    }
    else if (x <= projectile.xPos && projectile.xPos <= x + width &&
        y <= projectile.yPos - projectile.radius && projectile.yPos - projectile.radius <= y + height) {
      
      handleCollision(projectile);
    }
    else if (x <= projectile.xPos && projectile.xPos <= x + width &&
        y <= projectile.yPos + projectile.radius && projectile.yPos + projectile.radius <= y + height) {
      
      handleCollision(projectile);
    }
  }

  public void handleCollision(Projectile projectile) {
    if (projectile.nextCollision != 0) return;

    if (x < projectile.xPos && projectile.xPos < x + width) {
      projectile.yDir *= -1;
    }
    else {
      projectile.xDir *= -1;
    }

    projectile.numCollisions++;
    projectile.nextCollision += 5;
  }
}
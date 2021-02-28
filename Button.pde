public class Button {
  private int x, y;
  private int status; // 0- unclicked, 1- clicked
  private boolean clickable;

  private int timeOn;

  private int width, height;

  private int timer = 0;

  public Button(int x, int y, int seconds, boolean clickable) {
    this.x = x;
    this.y = y;
    this.clickable = clickable;

    this.width = 50;
    this.height = 50;

    status = 0;

    timeOn = seconds * 30;
  }

  public void render() {
    color c = color(255, 0, 0);

    if (timer > 0) timer -= 1;

    if (timer == 0) status = 0;
    else status = 1;

    if (status == 0) {
      c = color(255, 0, 0);
    }
    if (!clickable) {
      c = color(0, 0, 255);
    }
    if (status == 1) {
      c = color(0, 255, 0);
    }

    fill(c);
    noStroke();

    rect(x, y, width, height);
  }

  public void detectClick(int x, int y) {
    if (!clickable) return;
    if ((this.x - 50) <= x && x <= (this.x + 50) && (this.y - 50) <= y && y <= (this.y + 50)) {
      timer = timeOn;
    }
  }

  public void detectCollision(Projectile projectile) {
    if (x <= projectile.xPos && projectile.xPos <= x + width &&
        y <= projectile.yPos && projectile.yPos <= y + height) {

      timer = timeOn;
    }
  }
}
public class Button {
  private int x, y;
  private int status; // 0- unclicked, 1- clicked
  private int timeOn;

  private int width, height;

  private int timer = 0;

  public Button(int x, int y, int seconds) {
    this.x = x;
    this.y = y;

    this.width = 50;
    this.height = 50;

    status = 0;

    timeOn = seconds * 30;
  }

  public void render() {
    color c;

    if (timer > 0) timer -= 1;

    if (timer == 0) status = 0;
    else status = 1;

    if (status == 0) {
      c = color(0, 0, 0);
    }
    else {
      c = color(100, 100, 100);
    }

    fill(c);
    noStroke();

    rect(x, y, width, height);
  }

  public void update(int x, int y) {
    println(x, y);
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
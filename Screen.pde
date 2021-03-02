public class Screen {
  ArrayList<Button> buttonList = new ArrayList();
  int curButtons = 0;
  int totalButtons = 0;

  ArrayList<Projectile> projectileList = new ArrayList();
  ArrayList<Wall> wallList = new ArrayList();

  public void render() {
    renderClicks();

    for (Projectile projectile : projectileList) {
      for (Button button : buttonList) {
        button.detectCollision(projectile);
      }

      for (Wall wall : wallList) {
        wall.detectCollision(projectile);
      }
      projectile.render();
    }

    removeOutOfBoundsObjects();
  }

  public void renderClicks() {
    for (Button i : buttonList) {
      i.render();
    }

    for (Wall i : wallList) {
      i.render();
    }
  }

  public void detectButtonClick(int x, int y) {
    // updates the button that gets clicked
    for (Button i : buttonList) {
      i.detectClick(x, y);
    }
  }

  public void addButton(int x, int y, int seconds, boolean clickable) {
    buttonList.add(new Button(x, y, seconds, clickable));
    totalButtons++;
  }

  public void addWall(int x, int y, int h, int w) {
    wallList.add(new Wall(x, y, h, w));
  }

  // for some reason, the line isn't being drawn even though the parameters are correct
  public void drawProjectileLine(int x1, int y1, int x2, int y2) {
    stroke(0, 0, 0);
    strokeWeight(10);
    line(x1, y1, x2, y2);
    // println(x1, y1, x2, y2);
  }

  public void createProjectile(int x1, int y1, int x2, int y2, int projectileSpeed) {
    projectileList.add(new Projectile(x1, y1, x2, y2, projectileSpeed));
  }

  public void removeOutOfBoundsObjects() {
    ArrayList<Projectile> removedProjectiles = new ArrayList();
    for (Projectile i : projectileList) {
      if (i.xPos < 0 || i.xPos > width ||
          i.yPos < 0 || i.yPos > height) removedProjectiles.add(i);
    }

    for (Projectile i : removedProjectiles) projectileList.remove(i);
  }

  public boolean levelComplete() {
    return curButtons == totalButtons && totalButtons != 0;
  }
}
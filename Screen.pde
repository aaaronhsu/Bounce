public class Screen {
  ArrayList<Button> buttonList = new ArrayList();
  int curButtons = 0;
  int totalButtons = 0;

  ArrayList<Projectile> projectileList = new ArrayList();

  public void render() {
    renderClicks();

    for (Projectile i : projectileList) {
      i.render();
    }

    removeOutOfBoundsObjects();
  }

  public void renderClicks() {
    for (Button i : buttonList) {
      i.render();
    }
  }

  public void update(int x, int y) {
    for (Button i : buttonList) {
      i.update(x, y);
    }
  }

  public void addButton(int x, int y, int seconds) {
    buttonList.add(new Button(x, y, seconds));
    totalButtons++;
  }

  public void createProjectile(int x1, int y1, int x2, int y2) {
    projectileList.add(new Projectile(x1, y1, x2, y2));
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
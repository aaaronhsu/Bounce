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

  public boolean levelComplete() {
    return curButtons == totalButtons && totalButtons != 0;
  }
}
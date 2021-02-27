public class Screen {
  ArrayList<Button> buttonList = new ArrayList();

  public void render() {
    renderClicks();
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
}
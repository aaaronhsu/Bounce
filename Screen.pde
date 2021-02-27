public class Screen {
  ArrayList<Button> clickList = new ArrayList();

  public void render() {
    renderClicks();
  }

  public void renderClicks() {
    for (Button i : clickList) {
      i.render();
    }
  }

  public void update(int x, int y) {
    for (Button i : clickList) {
      i.update(x, y);
    }
  }
}
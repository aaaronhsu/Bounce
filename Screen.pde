public class Screen {
  ArrayList<Button> buttonList = new ArrayList();
  int curButtons = 0;
  int totalButtons = 0;

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

  public void addButton(int x, int y, int seconds) {
    buttonList.add(new Button(x, y, seconds));
    totalButtons++;
  }

  public boolean levelComplete() {
    return curButtons == totalButtons && totalButtons != 0;
  }
}
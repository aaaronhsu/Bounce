public class Screen2 extends Screen {

  public Screen2() {
    super.addButton(100, 100, 2, true);
    super.addButton(800, 300, 2, true);

    totalButtons = super.buttonList.size();
  }

  public void render() {
    background(255, 255, 255, 10);

    super.render();

    curButtons = 0;
    for (Button i : super.buttonList) {
      if (i.status == 1) curButtons++;
    }

    String screenStatus = super.curButtons + "/" + super.totalButtons + " buttons clicked! 2";

    fill(color(0, 0, 0));
    text(screenStatus, 10, 10, 10);
  }

  public void update(int x, int y) {
    super.update(x, y);
  }

  public boolean levelComplete() {
    return super.levelComplete();
  }
}
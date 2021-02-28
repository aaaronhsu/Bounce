public class Screen1 extends Screen {

  public Screen1() {
    super.addButton(100, 100, 2);
    super.addButton(800, 300, 2);
  }

  public void render() {
    background(255, 255, 255, 10);

    super.render();

    curButtons = 0;
    for (Button i : super.buttonList) {
      if (i.status == 1) curButtons++;
    }

    String screenStatus = super.curButtons + "/" + super.totalButtons + " buttons clicked! 1";

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
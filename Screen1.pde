public class Screen1 extends Screen {

  int curButtons = 0;
  int totalButtons;

  public Screen1() {
    super.buttonList.add(new Button(100, 100, 2));
    super.buttonList.add(new Button(800, 700, 2));

    totalButtons = super.buttonList.size();
  }

  public void render() {
    background(255, 255, 255, 10);

    super.render();

    curButtons = 0;
    for (Button i : super.buttonList) {
      if (i.status == 1) curButtons++;
    }

    String screenStatus = curButtons + "/" + totalButtons + " buttons clicked!";

    text(screenStatus, 10, 10, 10);
  }

  public void update(int x, int y) {
    super.update(x, y);
  }
}
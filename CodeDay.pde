int level = 0;
Screen screen = new Screen1();

void setup() {
  size(1000, 1000);
  frameRate(60);
}

void draw() {

  if (screen.levelComplete()) {
    level++;

    if (level == 0) {
      screen = new Screen1();
    }
    if (level == 1) {
      screen = new Screen2();
    }
  }

  screen.render();
}

void mouseClicked() {
  screen.update(mouseX, mouseY);
}
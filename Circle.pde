public class Circle {

  private float x, y, radius;

  public Circle(int x, int y, int rad) {
    this.x = x;
    this.y = y;
    this.radius = rad;
  }

  public void display() {
    ellipse(x, y, radius, radius);
  }
}
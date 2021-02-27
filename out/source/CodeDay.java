import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class CodeDay extends PApplet {

public void setup() {
  Circle a = new Circle(10, 10, 15);  
}

public void draw() {

  a.display();
  rect(10, 10, 10, 10);
  rect(20, 20, 20, 20);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "CodeDay" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

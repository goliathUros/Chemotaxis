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

public class Chemotaxis extends PApplet {

Bacteria [] what;

public void setup()   
{     
	size(500,500);
	what = new Bacteria[100];
	for (int i = 1; i <= what.length; i++) {
		what[i] = new Bacteria();
		i = i+1;
	}
}  
public void draw()   
{
	background(252, 224, 166);
	for (int i = 1; i <= what.length; i++) {
		what[i].move();
		what[i].show();
		i = i+1;
	}
}
class Bacteria    
{
	int posX, posY, bacFill;
	Bacteria() {
		posX = ((int)(Math.random()*501));
		posY = ((int)(Math.random()*501));
		bacFill = color(((int)(Math.random()*256)), ((int)(Math.random()*256)), ((int)(Math.random()*256)));
	}

	public void move() {
		posX = posX + ((int) ((Math.random()*8)-4));
		posY = posY + ((int) ((Math.random()*8)-4));
	}

	public void show() {
		fill(bacFill);
		ellipse(posX, posY, 10,10);
	}
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}

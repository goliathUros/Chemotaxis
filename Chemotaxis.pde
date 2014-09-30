Bacteria [] what;

void setup()   
{     
	size(500,500);
	what = new Bacteria[100];
	for (int i = 1; i <= what.length; i++) {
		what[i] = new Bacteria();
		i = i+1;
	}
}  
void draw()   
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

	void move() {
		posX = posX + ((int) ((Math.random()*8)-4));
		posY = posY + ((int) ((Math.random()*8)-4));
	}

	void show() {
		fill(bacFill);
		ellipse(posX, posY, 10,10);
	}
}
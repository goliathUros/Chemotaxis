mrSaturn[] dakota = new mrSaturn[100];

void setup() {
  smooth();
  size(500,500);
  for (int i = 0; i <dakota.length; i++) {
    dakota[i] = new mrSaturn();
  }
}

void draw() {
  background(178,232,86);
  for (int i = 0; i <dakota.length; i++) {
    dakota[i].display();
    dakota[i].boing();
  }
}

class mrSaturn {
  float noseX, noseY;
  mrSaturn() {
    noseX = ((int)(Math.random()*500));
    noseY = ((int)(Math.random()*500));
  }
  void display() {
    fill(255, 232, 167);
    ellipse(noseX-8, noseY+2.5, 13, 10); //feet
    ellipse(noseX+8, noseY+2.5, 13, 10);
    ellipse(noseX, noseY-7.5, 27, 27); //body
  
    fill(0);
    rectMode(CENTER);
    rect(noseX-7, noseY-14.5, 8, 2, 3);//left eye
    float lPupilX = map(mouseX, 0, width, noseX-7, noseX-3);
    float lPupilY = map(mouseY, 0, height, noseY-11.5, noseY-7.5);
    ellipse(lPupilX, lPupilY, 5, 5);
    //ellipse(20, 23, 5, 5);
    rect(noseX+7, noseY-14.5, 8, 2, 3);//right eye
    float rPupilX = map(mouseX, 0, width, noseX+3, noseX+7);
    float rPupilY = map(mouseY, 0, height, noseY-11.5, noseY-7.5);
    ellipse(rPupilX, rPupilY, 5, 5);
    //ellipse(30, 23, 5, 5);
    rect(noseX, noseY-24.5, 2, 9);//hairs
    line(noseX-17, noseY-7.5, noseX-11, noseY-8.5);
    line(noseX-17, noseY-4.5, noseX-11, noseY-3.5);
    line(noseX+11, noseY-6.5, noseX+17, noseY-7.5);
    line(noseX+11, noseY-3.5, noseX+17, noseY-4.5);
  
    fill(255, 232, 167);
    ellipse(noseX, noseY, 18, 16);//nose
  
    fill(255, 0, 0);
    quad(noseX-5, noseY-27.5, noseX+5, noseY-23.5, noseX+5, noseY-27.5, noseX-5, noseY-23.5);//ribbon
  }
  
  void boing() {
    noseX = noseX + ((int)(Math.random()*7)-3);
    noseY = noseY + ((int)(Math.random()*7)-3);
  }
}

//Old Work
/*Bacteria [] what;

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
}*/
int numDots = 0;
void setup()
{
	noLoop();
	size(500 ,600);
}
void draw(){
	background(0);
	for(int y = 0; y <= 450; y += 50){
		for(int x = 0; x <= 500; x += 50){
			Die bob = new Die(x,y);
			bob.show();
		}
	}
	text("number of Dotes = " + numDots, 185, 550);
}
void mousePressed()
{
	numDots = 0;
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, rollNum;
	
	Die(int x, int y) //constructor
	{
		 myX = x;
		 myY = y;
		 roll();
	}
	void roll()
	{
		rollNum = (int) (Math.random()* 6) + 1;
	}
	void show()
	{
		rect(myX,myY, 50, 50);
		if(rollNum == 1){
		ellipse(myX + 25, myY + 25 , 5, 5);
		numDots = numDots + 1;
		}
		if(rollNum == 2){
		ellipse(myX + 20, myY + 25 , 5, 5);
		ellipse(myX + 30, myY +  25, 5, 5);
		numDots = numDots + 2;
		}
		if(rollNum == 3){
		ellipse(myX + 15, myY + 15 , 5, 5);
		ellipse(myX + 25, myY + 25 , 5, 5);
		ellipse(myX + 35, myY + 35, 5, 5);
		numDots = numDots + 3;
		}
		if(rollNum == 4){
		ellipse(myX + 15, myY + 15 , 5, 5);
		ellipse(myX + 35, myY + 15 , 5, 5);
		ellipse(myX + 15, myY + 35, 5, 5);
		ellipse(myX + 35, myY + 35, 5, 5);
		numDots = numDots + 4;
		}
		if(rollNum == 5){
		ellipse(myX + 15, myY + 15 , 5, 5);
		ellipse(myX + 35, myY + 15 , 5, 5);
		ellipse(myX + 25, myY + 25 , 5, 5);
		ellipse(myX + 15, myY + 35, 5, 5);
		ellipse(myX + 35, myY + 35, 5, 5);
		numDots = numDots + 5;
		}
		if(rollNum == 6){
		ellipse(myX + 15, myY + 15 , 5, 5);
		ellipse(myX + 15, myY + 25 , 5, 5);
		ellipse(myX + 15, myY + 35 , 5, 5);
		ellipse(myX + 35, myY + 15, 5, 5);
		ellipse(myX + 35, myY + 25, 5, 5);
		ellipse(myX + 35, myY + 35, 5, 5);
		numDots = numDots + 6;
		}
	}
}

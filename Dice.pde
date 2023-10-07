
Die one;
Die two;
Die three;
Die four;
Die five;
Die six;
Die seven;
Die eight;
Die nine;
void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  //your code here
  background (#EDDFDF);

  
  
  int sum=0;
  for (int i=100; i<301; i+=100)
  {
    for (int j=100; j<301; j+=100)
    { 
      one = new Die (i, j);
      one.show();
      one.roll();
     
     sum= (int)((int)(Math.random ()*6)+1+Math.random ()*6)+1+ (int)(Math.random ()*6)+1+(int)(Math.random ()*6)+1+(int)(Math.random ()*6)+1+(int)(Math.random ()*6)+1;
    }
    text("Total:"+ sum, 50,50);
  }
    
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int numDots, myX, myY;

  Die(int x, int y) //constructor
  {
    //variable initializations here
    numDots= (int)(Math.random ()*6)+1;
    myX=x;
    myY=y;
  }
  void roll()
  {
    //your code here
    translate(-55, -55);
    if (numDots== 6)
    {
       fill (255, 0, 0);
      ellipse (65 + myX, 60+ myY, 7, 7);
      ellipse (65+ myX, 75 + myY, 7, 7);
      ellipse (65+ myX, 90+myY, 7, 7);
      ellipse (85+ myX, 60+myY, 7, 7);
      ellipse (85+ myX, 75+myY, 7, 7);
      ellipse (85+ myX, 90+myY, 7, 7);
    }

    if (numDots == 5)
    {
      fill (255, 0, 0);
      ellipse (65+ myX, 60+myY, 7, 7);
      ellipse (65+ myX, 75+myY, 7, 7);
      ellipse (65+ myX, 90+myY, 7, 7);
      ellipse (85+ myX, 60+myY, 7, 7);
      ellipse (85+ myX, 75+myY, 7, 7);
    }

    if (numDots == 4)
    {
      fill (255, 0, 0);
      ellipse (65+ myX, 60+myY, 7, 7);
      ellipse (65+ myX, 75+myY, 7, 7);
      ellipse (65+ myX, 90+myY, 7, 7);
      ellipse (85+ myX, 60+myY, 7, 7);
    }

    if (numDots== 3)
    {
      fill (255, 0, 0);
      ellipse (65+ myX, 60+myY, 7, 7);
      ellipse (65+ myX, 75+myY, 7, 7);
      ellipse (65+ myX, 90+myY, 7, 7);
    }

    if (numDots == 2)
    {
      fill (255, 0, 0);
      ellipse (65+ myX, 60+myY, 7, 7);
      ellipse (65+ myX, 75+myY, 7, 7);
    }

    if (numDots== 1)
    {
      fill (255, 0, 0);
      ellipse (65 + myX, 60+myY, 7, 7);
    }
    resetMatrix();
    noFill();
  }

    void show()
    {
      fill (0, 255, 0);
      rect (myX, myY, 50, 50,10);
      fill (255, 0, 0);
      
    }
  }

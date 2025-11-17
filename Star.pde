class Star //note that this class does NOT extend Floater
{
  protected double myX, myY;
  protected int myColor; 
  public Star(){
    myX = Math.random()*500;
    myY = Math.random()*500;
    myColor = 255;
  }
  
  public void show(){
  ellipse((float)myX, (float)myY, (float)5,(float)5);
  }
  public double getX(){
  return myX;
  }
  public double getY(){
  return myY;
}
}

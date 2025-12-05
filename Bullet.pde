class Bullet extends Floater
{
  public Bullet(Spaceship bro){
        myCenterX = bro.getmyCenterX();
        myCenterY = bro.getmyCenterY();
        myXspeed = bro.getmyXspeed();
        myYspeed = bro.getmyYspeed();
        myPointDirection = bro.getPointDirection();
        myColor = color(255,0,0);
    
    
  }
    public void move ()   
  {      
    myCenterX += myXspeed;    
    myCenterY += myYspeed;   
  }
  public void show(){
  fill(myColor);   
  stroke(myColor);
  ellipse((float)(myCenterX), (float)(myCenterY), 5, 5);
  }
}

class Asteroid extends Floater
{
   protected double rotSpeed; //randomly + or -
   protected Asteroid(){ 
         corners = 6;
        xCorners = new int[corners];
        yCorners = new int[corners];
        xCorners[0] = -7+(int)(Math.random()*8);
        yCorners[0] = -4+(int)(Math.random()*8);
        xCorners[1] = 3+(int)(Math.random()*8);
        yCorners[1] = -4+(int)(Math.random()*8);
        xCorners[2] = 9+(int)(Math.random()*8);
        yCorners[2] = -3+(int)(Math.random()*8);
        xCorners[3] = 2+(int)(Math.random()*8);
        yCorners[3] = 6+(int)(Math.random()*8);
        xCorners[4] = -4+(int)(Math.random()*8);
        yCorners[4] = 4+(int)(Math.random()*8);
        xCorners[5] = -1+(int)(Math.random()*8);
        yCorners[5] = -4+(int)(Math.random()*8);
        rotSpeed = -1 + Math.random()*2;}
   public void move(){ 
     turn(rotSpeed);
   //setPointDirection(getPointDirection()+rotSpeed);
   super.move();
   
   
}
}

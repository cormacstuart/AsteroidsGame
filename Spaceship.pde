class Spaceship extends Floater  
{   
   public Spaceship(){
   corners = 3;
   xCorners = new int[corners];
   yCorners = new int[corners];
   xCorners[0] = -8;
   yCorners[0] = -8;
   xCorners[1] = 16;
   yCorners[1] = 0;
   xCorners[2] = -8;
   yCorners[2] = 8;
   myXspeed = 0;
   myYspeed = 0;
   myCenterX = 250;
   myCenterY = 250;
   myPointDirection = 0;
   myColor = 255;
   }
   public double getmyXspeed(){
   return myXspeed;
   }
   public void setmyXspeed(double n){
   myXspeed = n;
   }
   
   public double getmyYspeed(){
   return myYspeed;
   }
   public void setmyYspeed(double n){
   myYspeed = n;
   }
   
   
}

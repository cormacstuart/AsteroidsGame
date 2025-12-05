class Asteroid extends Floater
{
   protected double rotSpeed; //randomly + or -
   protected Asteroid(){ 
         corners = 6;
        xCorners = new int[corners];
        yCorners = new int[corners];
        xCorners[0] = -14+(int)(Math.random()*16);
        yCorners[0] = -8+(int)(Math.random()*16);
        xCorners[1] = 6+(int)(Math.random()*16);
        yCorners[1] = -8+(int)(Math.random()*16);
        xCorners[2] = 18+(int)(Math.random()*16);
        yCorners[2] = -6+(int)(Math.random()*16);
        xCorners[3] = 4+(int)(Math.random()*16);
        yCorners[3] = 12+(int)(Math.random()*16);
        xCorners[4] = -8+(int)(Math.random()*16);
        yCorners[4] = 8+(int)(Math.random()*16);
        xCorners[5] = -2+(int)(Math.random()*16);
        yCorners[5] = -8+(int)(Math.random()*16);
        rotSpeed = -1 + Math.random()*2;
        myColor = 255;
        myCenterX = Math.random()*500;
        myCenterY = Math.random()*500;
        myXspeed = Math.random();
        myYspeed =Math.random();
        myPointDirection = (int)(Math.random()*10);
    
  }
   public void move(){ 
     turn(rotSpeed);
   //setPointDirection(getPointDirection()+rotSpeed);
   super.move();
}

   public void show(){ 

   super.show();
}
}

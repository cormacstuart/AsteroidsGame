//your variable declarations here
Spaceship bro = new Spaceship();
public void setup() 
{
  size(500,500);
  //your code here
}
public void draw() 
{
  
background(0);
bro.move();
bro.show();

}

public void keyPressed(){
 if(key == 'h'){
 bro.setmyXspeed(0);
 bro.setmyYspeed(0);
 }
 
  if(key == 'w'){
    bro.accelerate(0.2);
  }
  if(key == 'd'){
  bro.turn(4);
  }
  if(key == 'a'){
  bro.turn(-4);  
  }
}

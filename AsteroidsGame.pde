//your variable declarations here
Spaceship bro = new Spaceship();
Star[] nightSky = new Star[200];
public void setup() 
{
  size(500,500);
  for (int i = 0; i < nightSky.length; i++){
  nightSky[i] = new Star();
  }
}
public void draw() 
{
  
background(0);
bro.move();
bro.show();
 for (int i = 0; i < nightSky.length; i++){
 nightSky[i].show();
 }
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

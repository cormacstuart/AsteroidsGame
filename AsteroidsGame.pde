//your variable declarations here
Spaceship bro = new Spaceship();
Star[] nightSky = new Star[200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();




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
 
 
 for (int i = 0; i < rocks.size(); i++)
    {
        rocks.get(i).move();
        rocks.get(i).show();
        float d = dist((float)bro.getmyCenterX(), (float)bro.getmyCenterY(), (float)rocks.get(i).getmyCenterX(), (float)rocks.get(i).getmyCenterY());
        if (d < 10)
            rocks.remove(i);
    }
}

public void keyPressed(){
  //hyperspace function
 if(key == 'h'){
 bro.setmyXspeed(0);
 bro.setmyYspeed(0);
 bro.setPointDirection(Math.random()*100*Math.PI);
 bro.setmyCenterX(100+Math.random()*300);
 bro.setmyCenterY(100+Math.random()*300);
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

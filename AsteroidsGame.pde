//your variable declarations here
Spaceship bro = new Spaceship();
Star[] nightSky = new Star[200];
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> dawgs = new ArrayList <Bullet>();

public void setup() 
{
  size(500,500);
  for (int i = 0; i < nightSky.length; i++){
  nightSky[i] = new Star();
  }
  
  for(int i = 0; i < 10; i++){
  rocks.add(new Asteroid());
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
        if (d < 15){
            rocks.remove(i);
          bro.hyperspace();  
        }
            for (int j = 0; j < dawgs.size(); j++)
    {
      float e = dist((float)dawgs.get(j).getmyCenterX(), (float)dawgs.get(j).getmyCenterY(), (float)rocks.get(i).getmyCenterX(), (float)rocks.get(i).getmyCenterY());
        if (e < 15)
            rocks.remove(i);
    }
      
    }
    
    for (int i = 0; i < dawgs.size(); i++)
    {
    dawgs.get(i).show();
    dawgs.get(i).move();
    }
}

public void keyPressed(){
  //hyperspace function
 if(key == 'h'){
bro.hyperspace();
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
  if(key == ' '){
    dawgs.add(new Bullet(bro));
    dawgs.get(dawgs.size()-1).accelerate(6.0);
  }
}

//declare class
class Raindrop {
  
  //declare vectors
  PVector vel, loc, acc;
  
  //declare variables
  float diam;
  color c;
  
  Raindrop(){ //construct the raindrop object
    diam = 30;
    loc = new PVector(random(width),0); //define initial starting location of raindrops
    vel = new PVector(0,random(-10,10)); //define initial speed of raindrops
    acc = new PVector(0,.1); //define acceleration of raindrops' speed
    
    c = color(255); //define color of raindrops
  }
  
  void display(){
    //color the raindrops
    fill(c);
    stroke(c);
    ellipse(loc.x,loc.y,diam,diam);
    triangle(loc.x - diam/2, loc.y, loc.x + diam/2, loc.y, loc.x, loc.y - diam);
  }
  
  void reset() {
    vel = new PVector(0, random(-10,10));
    loc = new PVector(random(width), 0);
  }

  void fall(){
    vel.add(acc);
    loc.add(vel);
  }

  boolean isInContactWith(PVector mouse) {
    if (loc.dist(mouse) < diam/2) {
      return true;
    }else{
      return false;
    }
  }
}
class Person {
  
  //declare vectors
  PVector loc, acc, vel;
  
  //declare variables
  float diam;
  color c;
  
  Person(){
    diam = 50;
    loc = new PVector(600,800 - diam / 2);
    vel = new PVector(0,0);
    acc = new PVector(random(-0.1,0.1),0);
    
    c = color(25,255,125);
  }
  
  void display(){
    fill(c);
    stroke(c);
    ellipse(loc.x,loc.y, diam, diam);
  }
  
  void move(){
    //create method to move the person based on their random acceleration
    vel.add(acc); //add acceleration to the velocity
    loc.add(vel); //add velocity to the position
  }
}
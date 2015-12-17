class Person {
  
  //declare vectors
  PVector loc, acc, vel;
  
  //declare variables
  float diam;
  color c;
  
  Person(){
    diam = 90;
    loc = new PVector(width/2,height-diam);
    vel = new PVector(0,0);
    acc = new PVector(random(0.1),0);
    
    c = color(25,255,125);
  }
  
  void display(){
    fill(c);
    stroke(c);
    ellipse(loc.x,loc.y, diam, diam);
  }
  
  void move(){
    vel.add(acc);
    loc.add(vel);
  }
}
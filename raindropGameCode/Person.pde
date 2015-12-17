class Person {
  
  //declare vectors
  PVector pos, acc, vel;
  
  //declare variables
  float diam;
  color c;
  
  Person(){
    diam = 90;
    pos = new PVector(width/2,height-diam);
    vel = new PVector(0,0);
    acc = new PVector(random(0.1),0);
    
    c = color(25,255,125);
  }
  
  void display(){
    fill(c);
    stroke(c);
    ellipse(pos.x,pos.y, diam, diam);
  }
  
  void move(){
    vel.add(acc);
    pos.add(vel);
  }
}
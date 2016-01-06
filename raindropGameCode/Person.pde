class Person {

  //declare vectors
  PVector loc, acc, vel;

  //declare variables
  float diam;
  color c;

  //define Person class
  Person() {
    //define diameter of ellipse
    diam = 50;

    //define variables for movement: location, velocity and acceleration
    loc = new PVector(600, 800 - diam / 2);
    vel = new PVector(0, 0);
    acc = new PVector(.1, 0);

    //color the person
    c = color(25, 255, 125);
  }

  void display() {
    //create method to draw the person
    fill(c);
    stroke(c);
    ellipse(loc.x, loc.y, diam, diam);
  }

  void move() {
    //create method to move the person based on their random acceleration
    vel.add(acc); //add acceleration to the velocity
    loc.add(vel); //add velocity to the position
  }
}
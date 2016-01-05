//declare class
class Raindrop {

  //declare vectors
  PVector vel, loc, acc;

  //declare variables
  float diam;
  color c;

  Raindrop() { //construct the raindrop object
    diam = 30;
    loc = new PVector(random(width), -20); //define initial starting location of raindrops
    vel = new PVector(0, random(-10, 10)); //define initial speed of raindrops
    acc = new PVector(0, .1); //define acceleration of raindrops' speed

    c = color(255); //define color of raindrops
  }

  void display() {
    //color the raindrops
    fill(c);
    stroke(c);

    //draw the ellipse that composes the raindrops
    ellipse(loc.x, loc.y, diam, diam);
  }

  void reset() {
    //create method to reset the raindrops' position and speed
    vel = new PVector(0, random(-10, 10));
    loc = new PVector(random(width), -20);
    //increase acceleration of raindrops every time they are reset
    acc.mult(1.5);
  }

  void fall() {
    //create method to cause the raindrops to fall
    vel.add(acc);
    loc.add(vel);
  }

  boolean isInContactWith(float x1, float x2, float y1, float y2) {
    //create boolean to return "true" if the raindrop's location lies within the four given points.
    if (loc.x >= x1 && loc.x <= x2 && loc.y >= y1 && loc.y <= y2) {
      return true;
    } else {
      return false;
    }
  }

  boolean onGround() {
    if (loc.y >= height) {
      return true;
    } else {
      return false;
    }
  }
}
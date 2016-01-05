//declare integers for the person's health, what menu is open, and what score is seen
int menu, health, score;

ArrayList<Raindrop> r = new ArrayList<Raindrop>();

Bucket b = new Bucket();

Person p = new Person();


void setup() {
  size(1200, 800);
  r.add(new Raindrop());
  health = 10;
}

void draw() {
  //mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY

  background(0, 200, 255);

  r.add(new Raindrop());
  //draw a number of raindrops equal to the count interger
  for (int i = r.size() - 1; i >= 0; i--) {
    Raindrop rain = r.get(i);
    rain.display();
    rain.fall();
    if (rain.onGround()) {
      r.remove(i);
    }
    if (rain.isInContactWith(mouseX - (b.wd / 2), mouseX + (b.wd / 2), mouseY - (b.ht / 2), mouseY + (b.wd / 2))) {
      r.remove(i);
    }
    if (rain.isInContactWith(p.loc.x - (p.diam / 2), p.loc.x + (p.diam / 2), p.loc.x - (p.diam / 2), p.loc.x + (p.diam / 2))) {
      r.remove(i);
      health --;
    }
  }

  //draw the bucket at the given location
  b.display();

  //draw the 
  p.display();
  p. move();
}
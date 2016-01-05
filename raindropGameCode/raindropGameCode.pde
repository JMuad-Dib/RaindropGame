//define the number of raindrops the code will produce
int count = 1;

PVector mouse;   //declare a vector at the mouse

//Raindrop [] r = new Raindrop[count];      //declare a new Raindrop called r

ArrayList<Raindrop> r = new ArrayList<Raindrop>();

Bucket b = new Bucket();

Person p = new Person();

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  r.add(new Raindrop());
}

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY

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
  }

  b.display();

  p.display();  
  p. move();
}
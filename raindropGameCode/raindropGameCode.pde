//define the number of raindrops the code will produce
int count = 900;

PVector mouse, posP;   //declare a vector at the mouse and another for the person's position

//Raindrop [] r = new Raindrop[count];      //declare a new Raindrop called r

ArrayList<Raindrop> r = new ArrayList<Raindrop>();

Bucket b = new Bucket();

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test


void setup() {
  size(1200, 800);
  mouse = new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  r.add(new Raindrop());
  ////draw a number of raindrops equal to the count interger
  //for(int i = r.size() - 1; i >= 0; i--){
  //  //r[i] = new Raindrop();   //Initialize r. The parameters used are the initial x and y positions
  //  Raindrop rain = r.get();
  //  rain.display();
  //  rain.fall();
  //  if(rain.onGround()){
  //    rain.remove(i);
  //  }
  //}
}

void draw() {
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY
  
  background(0, 200, 255);
  
  r.add(new Raindrop());
  //draw a number of raindrops equal to the count interger
  for(int i = r.size() - 1; i >= 0; i--){
    //r[i] = new Raindrop();   //Initialize r. The parameters used are the initial x and y positions
    Raindrop rain = r.get();
    rain.display();
    rain.fall();
    if(rain.onGround()){
      rain.remove(i);
    }
  }
  
  //for(int i = 0; i < count; i++){
  //  r[i].fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
  //  r[i].display();      //display the raindrop
  //  if (r[i].isInContactWith(mouse) == true) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
  //    r[i].reset();                         //if it is, reset the raindrop
  //  }
  //  if (r[i].loc.y > height) {     //check to see if the raindrop goes below the bottom of the screen
  //    r[i].reset();                           //if it does, reset the raindrop
  //  }
  //}
  
  b.display();
}
class Bucket{
 
  //declare vector and variables
  PVector loc;
  float diam;
  float c;
  float wd;
  float ht;
  
 Bucket(){
    diam = 80;
    loc = new PVector(mouseX,mouseY);
    
    wd = 50;
    ht = 60;
    
    c = color(25,165,165);
  }
  
  void display(){
    fill(c);
    stroke(c);
    quad(loc.x - wd/2, loc.y - ht/2, loc.x + wd/2, loc.y - ht/2, loc.x - wd/2 + 5, loc.y + ht/2, loc.x + wd/2 - 5, loc.y + ht/2);
  }
}
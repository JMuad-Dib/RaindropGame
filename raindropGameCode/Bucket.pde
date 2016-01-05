class Bucket {

  //declare vector and variables
  PVector loc;
  float diam;
  float c;
  float wd;
  float ht;

  Bucket() {
    diam = 80;
    loc = new PVector(mouseX, mouseY);

    wd = 100;
    ht = 20;

    c = color(25, 165, 165);
  }

  void display() {
    //color the bucket interior and background as determined by the floated variable "c"
    fill(c);
    stroke(c);
    //display the bucket centered at the mouse
    quad(mouseX - wd/2, mouseY - ht/2, mouseX + wd/2, mouseY - ht/2, mouseX + wd/2 - 5, mouseY + ht/2, mouseX - wd/2 + 5, mouseY + ht/2);
  }
}
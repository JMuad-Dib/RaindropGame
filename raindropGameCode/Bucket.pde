class Bucket {

  //declare vector and variables
  PVector loc;
  float c;
  float wd;
  float ht;

  //declare Bucket class
  Bucket() {
    //define location of bucket
    loc = new PVector(mouseX, mouseY);

    //define dimensions of bucket
    wd = 100;
    ht = 20;

    //define color of bucket
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
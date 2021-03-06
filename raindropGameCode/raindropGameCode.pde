//declare integers for the person's health, what menu is open, and what score is seen
int menu, health, score;

//create arraylist of raindrops to create many raindrops on-screen
ArrayList<Raindrop> r = new ArrayList<Raindrop>();

Bucket b = new Bucket();

Person p = new Person();


void setup() {
  //set canvas size
  size(1200, 800);  

  //color background
  background(0, 200, 255);

  //set initial score and health
  health = 10;
  score = 0;

  //set initial menu to the start menu.
  menu = 0;
}

void draw() {

  if (menu == 0) { //create the start menu
    //draw background every frame
    background(0, 200, 255);

    //write start menu text
    textSize(120);
    fill(255);
    textAlign(CENTER);
    text("RAINDROP BULWARK", width/2, 300);
    textSize(40);
    text("USE THE MOUSE TO SHIELD THE PERSON FROM THE RAIN!", width/2, 500);
    text("PRESS 'R' TO START", width/2, 700);
    
  } else if (menu == 1) { //create space for the game itself
    //draw background every frame
    background(0, 200, 255);

    r.add(new Raindrop());
    //draw a number of raindrops equal to the count interger
    for (int i = r.size() - 1; i >= 0; i--) {
      Raindrop rain = r.get(i); //retrieve a raindrop object
      rain.display(); //display the raindrops
      rain.fall(); //cause the raindrops to fall

      //if the raindrops hit the ground, remove them from the canvas
      if (rain.onGround()) {
        r.remove(i);
      }

      //if the raindrops hit the bucket, remove them and increase the score by 1
      if (rain.isInContactWith(mouseX - (b.wd / 2), mouseX + (b.wd / 2), mouseY - (b.ht / 2), mouseY + (b.wd / 2))) {
        r.remove(i);
        score ++;
      }

      //if the raindrops hit the person, remove them and decrease health by 1
      if (rain.isInContactWith(p.loc.x - (p.diam / 2), p.loc.x + (p.diam / 2), p.loc.y - (p.diam / 2), p.loc.y + (p.diam / 2))) {
        r.remove(i);
        health --;
      }
    }

    //draw the bucket at the given location
    b.display();

    //draw the person at the given location
    p.display();

    //change acceleration of Person class every frame
    p.acc.mult(random(-2, 2));

    //if the person hits the edge of the canvas, change direction
    if (p.loc.x > width) {
      p.vel.mult(-1);
      p.loc.x = width;
    } else if (p.loc.x < 0) {
      p.vel.mult(-1);
      p.loc.x = 0;
    }

    //cause the person to move
    p. move();

    //Create scoreboard at top of screen
    fill(255);
    rectMode(CENTER);
    noStroke();
    rect(width/2, 29, 240, 60);

    //write text on scoreboard
    textSize(20);
    fill(0, 200, 255);
    textAlign(CENTER);
    text("HEALTH: " + health, width/2, 15);
    text("DROPS CAUGHT: " + score, width/2, 45);
    
  } else if (menu == 2) { //create the game over menu
    //draw background every frame
    background(0, 200, 255);
    
    //write GAME OVER text
    textAlign(CENTER);
    fill(255);
    textSize(120);
    text("GAME OVER", width/2, 300);
    text("YOUR SCORE: " + score, width/2, 500);
    text("PRESS 'R' TO START", width/2, 700);
  }




  //if the r-key is pressed, restart the game
  if (keyPressed == true) {
    if (key == 'r' || key == 'R') {
      menu = 1;
      health = 10;
      score = 0;
    }
  }
  
  if(health == 0){
    menu = 2;
  }
}
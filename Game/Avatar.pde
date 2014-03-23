class Avatar {
  
  //attributes
  color black;
  float x,y,w,h;
  float xSpeed, ySpeed;
  boolean collided;
  
  //constructor
  Avatar() {
    black = color(0,0,0);
    x = width/2;
    y = height/2;
    w = 15;
    h = 15;
    xSpeed = 0;
    ySpeed = 0;
    collided = false;
  }
  
  //methods
  
  void display() {
    fill(black);
    ellipse(x,y,w,h);
  }
  
  void jump() {
    x = constrain(x, 150 + w, 350 - w/2);
    xSpeed = 1;
    x = x + xSpeed;
    ySpeed = 1;
    //y = y + ySpeed;
  }
  
  void keyPressed() {
  if (key == ' ') {
    myAvatar.jump();
  }
}
    
}


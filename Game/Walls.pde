class Walls {

  //attributes
  color black;
  float x; //xPos of first column
  float x2; //xPos of second column
  float y = 0; //yPos of first column
  float y2 = 60; //yPos of second column
  float w; //width of walls
  float h; //height of walls
  float speed = 0; //speed of first column
  float speed2 = 0; //speed of second column
  float gravity = 0.1; //gravity of first column
  float gravity2 = 0.1; //gravity of second column


  //constructor
  Walls(float spacing) {
    black = color(0, 0, 0);
    x = 150;
    x2 = x + 200;
    y =  y + spacing;
    y2 = y2 + spacing;
    w = 10;
    h = 50;
  }
  //methods

  void display() {
    fill(black);
    rect(x, y, w, h);
    rect(x2, y2, w, h);
  }

  void fall() {
    speed = speed + gravity;
    y = y + speed;
    speed2 = speed2 + gravity2;
    y2 = y2 + speed2;
  }

  void goBack() {
    if (y >= height + h) {
      y = -50;
      speed = 3;
    }
    else {
      speed = 3;
      //y = y;
    }
    
    if (y2 >= height + h) {
      y2 = -50;
      speed2 = 3;
    }
    else {
      speed2 = 3;
      //y2 = y2;
    }
  }
}


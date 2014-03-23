import ddf.minim.*;

Minim minim;
AudioPlayer player;
WallGroup myWalls;
Avatar myAvatar;
PImage bg;

void setup() {
  size(500,500);
  myWalls = new WallGroup(4);
  myAvatar = new Avatar();
  bg = loadImage("FinalDest.jpg");
  
  minim = new Minim(this);
  player = minim.loadFile("235-multi-man-melee-2.mp3");
  player.play();
  player.loop();
}
        
void draw() {
  
  background(bg);
  myWalls.display();
  myAvatar.display();
  myAvatar.keyPressed();
}


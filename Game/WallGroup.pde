class WallGroup {
  
  //attributes
  Walls[] myWalls;
  int numOfWalls;
  int spacing = 0;
  
  //constructor
  WallGroup(int numOfWalls_) {
    numOfWalls = numOfWalls_;
    myWalls = new Walls[numOfWalls];
    for (int i = 0; i < myWalls.length; i++) {
      myWalls[i] = new Walls(20 + spacing);
      spacing = spacing + 150;
    }
  }
  
  //methods
  void display() {
    for (int i = 0; i < myWalls.length; i++) {
      myWalls[i].fall();
      myWalls[i].display();
      myWalls[i].goBack();
    }
  }
}

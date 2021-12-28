class RadioWave extends GameObject {

  String message;

  RadioWave(float x, float y, int rx, int ry) {
    loc = new PVector(x, y);
    size = 75;
    hp = 1;
    roomX = rx;
    roomY = ry;
  }

  void show() {
    stroke(white);
    noFill();
    circle(loc.x, loc.y, size);
  }

  void act() {
    size+=3;
    if (hackingRange < size) hackingRange = size;

    //disappear when going off the screen
    if (size > 495) {
      hp = 0;
      hackingRange-=30; //hacking range is now the size of the next biggest circle
    }
  }
}

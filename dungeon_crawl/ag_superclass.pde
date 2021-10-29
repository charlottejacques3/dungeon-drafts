class GameObject {
  PVector loc, v;
  int hp, size;

  GameObject() {
    loc = new PVector(width/2, height/2);
    v = new PVector(0, 0);
    hp = 1;
  }

  void show() {
  }

  void act() {
    loc.add(v);

    //when going off the screen
    if (loc.x <= 70) loc.x = 70;
    if (loc.x >= width-70) loc.x = width-70;
    if (loc.y <= 52.5) loc.y = 52.5;
    if (loc.y >= height-52.5) loc.y = height-52.5;
  }
}

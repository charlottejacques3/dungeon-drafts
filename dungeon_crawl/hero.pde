class Hero extends GameObject {
  
  float speed;
  int roomX, roomY;
 
  Hero() {
    super();
    size = 50;
    speed = 1;
    roomX = 1;
    roomY = 1;
  }
  
  void show() {
    fill(38, 100, 81);
    circle(loc.x, loc.y, size);
  }
  
  void act() {
    super.act();
    
    //move with keyboard
    if (downKey) v.add(0, speed);
    if (upKey) v.sub(0, speed);
    if (rightKey) v.add(speed, 0);
    if (leftKey) v.sub(speed, 0);
    
    if (!upKey && !downKey && !leftKey && !rightKey) v.mult(0.75); //slow down
    if (v.mag() > 8) v.setMag(8); //limit speed
    
    //move rooms
    //north
    if (north != mapBkgd && loc.y == 52.5 && loc.x >= width/2-50 && loc.x <= width/2+50) {
      roomY--;
      loc = new PVector(width/2, height-52.5);
    }
    //east
    else if (east != mapBkgd && loc.x == width-70 && loc.y >= height/2-50 && loc.y <= height/2+50) {
      roomX++;
      loc = new PVector(70, height/2);
    }
    //south
    else if (south != mapBkgd && loc.y == height-52.5 && loc.x >= width/2-50 && loc.x <= width/2+50) {
      roomY++;
      loc = new PVector(width/2, 52.5);
    }
    //west
    else if (west != mapBkgd && loc.x == 70 && loc.y >= height/2-50 && loc.y <= height/2+50) {
      roomX--;
      loc = new PVector(width-70, height/2);
    }
  }
}

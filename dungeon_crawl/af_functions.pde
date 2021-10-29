void drawRoom() {

  //walls
  background(brown);
  strokeWeight(3);
  stroke(gold);
  line(width, 0, 0, height);
  line(0, 0, width, height);
  rect(width/2, height/2, width-140, height-105); //floor border

  //find which directions have exits
  north = map.get(myHero.roomX, myHero.roomY-1);
  east = map.get(myHero.roomX+1, myHero.roomY);
  south = map.get(myHero.roomX, myHero.roomY+1);
  west = map.get(myHero.roomX-1, myHero.roomY);

  //draw exits
  fill(0);
  if (north != mapBkgd) circle(width/2, 52.5, 100);
  if (east != mapBkgd) circle(width-70, height/2, 100);
  if (south != mapBkgd) circle(width/2, height-52.5, 100);
  if (west != mapBkgd) circle(70, height/2, 100);


  //floor
  image(ground, width/2+1, height/2, width-143, height-108);
  tint(100); //make it match the gif bricks
}

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

void introText() {
  pushMatrix();
  textSize(initDungeon);
  if (initDungeon <= dungeonSize) initDungeon = dungeonSize;
  initDungeon-=10;
  translate(width/2, height/2-50);
  rotate(radians(-20));
  text("DUNGEON", 0, 0);
  popMatrix();

  if (initDungeon <= dungeonSize) {
    textSize(initCrawl);
    initCrawl-=4;
    pushMatrix();
    if (initCrawl <= crawlSize) initCrawl = crawlSize;
    textSize(crawlSize);
    translate(width/2, height/2+50);
    rotate(radians(30));
    text("CRAWL", 0, 0);
    popMatrix();
  }
}

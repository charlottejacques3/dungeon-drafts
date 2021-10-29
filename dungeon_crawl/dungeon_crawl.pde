//Charlotte Jacques
//Dungeon Crawl Project

//mode variables
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
int mode = GAME;

//interaction variables
boolean mouseReleased, hadPressed;
boolean upKey, downKey, rightKey, leftKey;

//font variables
PFont font;
int initDungeon = 100;
int initCrawl = 90;
int dungeonSize = 50;
int crawlSize = 40;

//theme
color brown = #6C4545;
color gold = #C68812;
PImage ground;
boolean startingGame;
int circleSize = 50;

//gif variables
Gif hallway;

//objects
ArrayList<GameObject> myObjects;
Hero myHero;

//darkness variables
ArrayList<Darkness> darkness;
float darknessSize = 5;
float x = darknessSize/2;
float y = darknessSize/2;

//map variables
PImage scroll, map;
color mapBkgd = #D3BA86;
color north, east, south, west;

//button variables
Button introButton;

void setup() { //-------------------------------------------------------------------------------------------------------

  //setup
  size(800, 600);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  imageMode(CENTER);

  //font variables
  font = createFont("BodyHunterBold-M3Yx.otf", 75);

  //theme variables
  ground = loadImage("new brick ground.jpeg");

  //gif variables
  hallway = new Gif(55, "frame_", "_delay-0.07s.gif");

  //objects
  myObjects = new ArrayList<GameObject>();
  myHero = new Hero();
  myObjects.add(myHero);

  //darkness variables
  darkness = new ArrayList<Darkness>();
  int i = 0;
  while (i < (width*height)/(darknessSize*darknessSize)) {
    darkness.add(new Darkness(x, y, darknessSize));
    x+=darknessSize;
    if (x > width-(darknessSize/2)) {
      y+=darknessSize;
      x = darknessSize/2;
    }
    i++;
  }

  //map variables
  scroll = loadImage("map background.png");
  map = loadImage("map.png");

  //button variables
  introButton = new Button("open", 503, 426, 50);
}

void draw() { //---------------------------------------------------------------------------------------------------------

  //go to modes
  if (mode == INTRO) intro();
  else if (mode == GAME) game();
  else if (mode == PAUSE) pause();
  else if (mode == GAMEOVER) gameover();
  else println("error - mode = " + mode);

  //set up mouseReleased variable
  if (mousePressed) hadPressed = true;
  if (hadPressed && !mousePressed) {
    mouseReleased = true;
    hadPressed = false;
  } else mouseReleased = false;
}

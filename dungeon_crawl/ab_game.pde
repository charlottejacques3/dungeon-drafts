void game() {
  
  drawRoom();
  
  //show hero
  myHero.show();
  myHero.act();
  int i = 0;
  while (i < darkness.size()) {
  darkness.get(i).show();
  i++;
  }
  
  //mini map
  image(scroll, 125, 100, 200, 150);
  image(map, 125, 100, 125, 125);
  
  //pause
  if(mouseReleased) mode = PAUSE;
}

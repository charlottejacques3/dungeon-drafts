void pause() {
  fill(255);
  textFont(font);
  text("game paused", width/2, height/2);
  
  //go back to game
  if (mouseReleased) mode = GAME;
}

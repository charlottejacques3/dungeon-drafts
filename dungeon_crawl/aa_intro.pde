void intro() {
  //show gif
  hallway.show();

  //title
  fill(0, 0, 0);
  textFont(font);

  if (hallway.frame >= 54) {
    introText();

    //button to start game
    noFill();
    noStroke();
    introButton.show();
    if (introButton.mouseOver && mouseReleased) startingGame = true;
    if (startingGame == true) {
      fill(0);
      circle(503, 426, circleSize);
      circleSize+=70;
      if (circleSize > 1350) mode = GAME;
      //rect(545, 377.5, rectW, rectH);
      //rectW+=70;
      //rectH+=30;
      //if (rectW > 1350) mode = GAME;
    }
  }
}

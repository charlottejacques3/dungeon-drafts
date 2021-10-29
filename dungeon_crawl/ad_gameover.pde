void gameover() {
  //background(0);
  tint(100);
  image(ground, width/2, height/2, width, height);
  fill(gold);
  textFont(font);
  text("y o u   l o s e", width/2, height/2-75);
  textSize(20);
  text("c l i c k   t o   t r y   a g a i n", width/2, height/2+50);
  text("i f   y o u   d a r e", width/2, height/2+100);
  
  //start again
  if (mouseReleased) mode = INTRO;
}

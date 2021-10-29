class Button {
  boolean clicked, pressed, mouseOver;
  float x, y, s;
  String text;

  Button(String _text, float _x, float _y, float _s) {
    text = _text;
    x = _x;
    y = _y;
    s = _s;
  }

  void show() {
    rectMode(CENTER);
    textAlign(CENTER, CENTER);

    //see if mouse is over
    if (dist(x, y, mouseX, mouseY) <= s) mouseOver = true;
    else mouseOver = false;

    //tactile
    //if (mouseOver) stroke(3);
    //else stroke(1);
    if (mouseOver) fill(gold);
    else fill(0);

    //text
    textSize(s/4);
    text(text, x, y);

    //button
    noFill();
    circle(x, y, s);
  }
}

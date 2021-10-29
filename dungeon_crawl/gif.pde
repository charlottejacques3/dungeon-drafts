class Gif {
  
  int gifLength, frame;
  PImage[] gif;
  float x, y, w, h;
  
  //basic full-screen gif
  Gif(int nf, String fileStart, String fileEnd) {
    x = width/2;
    y = height/2;
    w = width;
    h = height;
    gifLength = nf;
    gif = new PImage[gifLength];
    int i = 0;
    while (i < gifLength) {
      if (i > 9) gif[i] = loadImage(fileStart + i + fileEnd);
      else gif[i] = loadImage(fileStart + "0" + i + fileEnd);
      i++;
    }
    frame = 0;
  }
  
  //gif with custom size and location
  Gif(int nf, String fileStart, String fileEnd, float _x, float _y, float _w, float _h) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    gifLength = nf;
    gif = new PImage[gifLength];
    int i = 0;
    while (i < gifLength) {
      if (i > 9) gif[i] = loadImage(fileStart + i + fileEnd);
      else gif[i] = loadImage(fileStart + "0" + i + fileEnd);
      i++;
    }
    frame = 0;
  }
  
  void show() {
    image(gif[frame], x, y, w, h);
    frame++;
    if (frame >= gifLength) frame = 54;
  }
}

class THWOMP {
  int x;
  int y;
  int yMax;
  int tState;
  THWOMP(int _x, int _y, int _yMax) {
    x=_x;
    y=_y;
    yMax=_yMax;
  }

  void update() {
    if (tState == 0  && gx + 5 > x && gx - 5 < x + 50) {
      tState = 1;
    }
    if (tState == 1) {
      y += 20;
    }
    if (y > yMax) {
      y = yMax;
      tState = 2;
    }
    if (tState == 2) {
      y-=5;
      if (y < 50 ) {
        y = 50 ;
        tState = 0;
      }
    }
    if(gx + 5 > x && gx - 5 < x + 50 && gy - 30 < y + 60){
      gx=0;
      gy=0;
      cameraX=0;
    }


    fill(#C67A32);
    rect(x-cameraX, y, 50, 60);

    fill(0);
    ellipse(x + 10-cameraX, y + 10, 10, 10);
    ellipse(x + 40-cameraX, y + 10, 10, 10);

    if (tState == 1) {
      fill(#FF0000);
      ellipse(x + 25-cameraX, y + 40, 20, 10);
    }
  }
}
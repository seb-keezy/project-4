class BOO {
  float bx, by, bvx, bvy, bv, bt;
  BOO(float _bx, float _by, float _bv) {
    bx = _bx;
    by = _by;
    bv = _bv;
  }
  void update() {
    fill(#ffffff, 150);
    ellipse(bx-cameraX, by, 30, 30);
    fill(0);
    ellipse(bx-5-cameraX, by-5, 5, 10);
    ellipse(bx+5-cameraX, by-5, 5, 10);

    if (dist(bx, by, gx, gy)<150) {
      bt = atan2(gy-by, gx-bx);
      bvx = bv*cos(bt);
      bvy = bv*sin(bt);
      bx+=bvx;
      by+=bvy;
    }
    if (dist(bx, by, gx, gy)<10) {
      gx=0;
      gy=0;
      cameraX=0;
    }
  }
}
class Boo {
  float bx, by, bvx, bvy, bv, bt;
  Boo(float _bx, float _by, float _bv) {
    bx = _bx;
    by = _by;
    bv = _bv;
  }
  void bupdate() {
    fill(#ffffff, 100);
    ellipse(bx, by, 30, 30);

    bt = atan2(gy-by, gx-bx);
    bvx = bv*cos(bt);
    bvy = bv*sin(bt);
    bx+=bvx;
    by+=bvy;
  }
}
void desert() {
  background(#77C8FA);
  dunes(150-cameraX*.4, 200, 300, #E5B83A);
  dunes(450-cameraX*.4, 180, 280, #e5b83a);
  
  dunes(50-cameraX*.6,150,250,#B48D0B);
  dunes(430-cameraX*.6,200,220,#B48D0B);


  bordersAndCamera();
  jump = 1;//1 line of code. falling jump fix
  cB.update();
  cB1.update();
  c1.update();
  c2.update();
  motion();
}

void dunes(float x, float w, float h, color c) {
  fill(c);
  ellipse(x, 500, w*2, h*2);
}
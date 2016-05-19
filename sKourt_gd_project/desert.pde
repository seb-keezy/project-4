CLOUD a1 = new CLOUD(250,300,500);
CLOUD a2 = new CLOUD(850,350,100);
CLOUD a3 = new CLOUD(1000,300,300);
CLOUD a4 = new CLOUD(1350,215,100);

THWOMP u1 = new THWOMP(300,100,240);
THWOMP u2 = new THWOMP(400,100,240);
THWOMP u3 = new THWOMP(500,100,240);
THWOMP u4 = new THWOMP(600,100,240);
THWOMP u5 = new THWOMP(700,100,240);

BOO z1 = new BOO(1100,200,5);

void desert() {
  background(#77C8FA);
  dunes(150-cameraX*.4, 200, 300, #E5B83A);
  dunes(450-cameraX*.4, 180, 280, #e5b83a);
  
  dunes(50-cameraX*.6,150,250,#B48D0B);
  dunes(430-cameraX*.6,200,220,#B48D0B);


  bordersAndCamera();
  jump = 1;//1 line of code. falling jump fix
  cB.update();
  
  a1.update();
  a2.update();
  a3.update();
  a4.update();
  
  u1.update();
  u2.update();
  u3.update();
  u4.update();
  u5.update();
  motion();
}

void dunes(float x, float w, float h, color c) {
  fill(c);
  ellipse(x, 500, w*2, h*2);
}
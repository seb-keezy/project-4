CLOUD bB = new CLOUD(0,350,400);
CLOUD bB2 = new CLOUD(1200,350,400);

CLOUD b1 = new CLOUD(500,300,100);
CLOUD b2 = new CLOUD(650,220,200);
CLOUD b3 = new CLOUD(1000,300,100);

THWOMP t1 = new THWOMP(280,100,300);
THWOMP t2 = new THWOMP(700,50,160);

BOO y1 = new BOO (950,350,5);

PORTAL p2 = new PORTAL(1400,350,3);

void city() {
  background(240);
  
  building(100- cameraX*.2, 100, 150, 1,1);
  building(300- cameraX*.2,85,150,1,1);
 
  building(50- cameraX*.4, 120,180,1.5,2);
  building(350-cameraX*.6,200,170,2,2);
  
  bordersAndCamera();
  jump = 1;//1 line of code. falling jump fix
  bB.update();
  bB2.update();
  
  b1.update();
  b2.update();
  b3.update();
  
  t1.update();
  t2.update();
  
  y1.update();
  
  p2.update();
  motion();
}

void building(float x, float y, float c, float s, float q) {
  fill(c);
  rect(x, y, 100*s, 400*s);
  if (q==2) {
    fill(255);
    rect(x+10*s, y+20*s, 80*s, 10*s);
    rect(x+10*s, y+50*s,80*s,10*s);
    rect(x+10*s, y+80*s,80*s,10*s);
    rect(x+10*s, y+110*s,80*s,10*s);
    rect(x+10*s, y+140*s,80*s,10*s);
  }
}
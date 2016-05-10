CLOUD bB = new CLOUD(0,350,400);

CLOUD b1 = new CLOUD(500,300,100);

PORTAL p2= new PORTAL(650,350,3);

void city() {
  background(240);
  
  building(100- cameraX*.2, 100, 150, 1,1);
  building(300- cameraX*.2,85,150,1,1);
 
  building(50- cameraX*.4, 120,180,1.5,2);
  building(350-cameraX*.6,200,170,2,2);
  
  bordersAndCamera();
  jump = 1;//1 line of code. falling jump fix
  bB.update();
  motion();
  
  p2.update();
  
  
  
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
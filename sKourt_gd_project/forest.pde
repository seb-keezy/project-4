CLOUD cB = new CLOUD(0, 350, 200);
CLOUD cB1 = new CLOUD(500, 350, 200);
CLOUD cB2 = new CLOUD(1250,350,200);

CLOUD c1 = new CLOUD(150, 300, 100);
CLOUD c2 = new CLOUD(300, 250, 100);
CLOUD c3 = new CLOUD(700,280,100);
CLOUD c4 = new CLOUD(900,250,100);
CLOUD c5 = new CLOUD(1050,300,100);

PORTAL p1= new PORTAL(650,350,2);

void forest() {
  background(#52CAFF);
  mountain(100-cameraX*.2,100,#34B933,2);
  mountain(300-cameraX*.2,120,#2B9829,1);
  tree(300-cameraX*.4, 262, #00aa00, #c6aa90, 2);
  tree(200-cameraX*.4, 262, #00aa00, #c6aa90, 2);
  tree(140-cameraX*.4, 270, #189817, #c6aa90, 2);

  tree(350-cameraX*.6, 290, #046203, #7C3F0A, 2.5);
  tree(50-cameraX*.6, 290, #046203, #7C3F0A, 2.5);

  bordersAndCamera();
  jump = 1;//1 line of code. falling jump fix
  
  cB.update();
  cB1.update();
  cB2.update();
  
  c1.update();
  c2.update();
  c3.update();
  c4.update();
  c5.update();
  
  motion();

  //p1.update();
}

void tree(float x, float y, color c1, color c2, float s) {
  fill(c2);
  rect(x-10*s, y, 20*s, 90*s);
  fill(c1);
  ellipse(x, y, 50*s, 50*s);
}

void mountain(float x, float y, color c, float s){
  fill(c);
  triangle(x,y,x-200*s,y+300*s,x+150*s,y+300*s);
  
  
  
  
}
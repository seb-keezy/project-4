// sebastian and blas
float gx, gy, gvy;
int goRight, goLeft, jump;
int page;

void setup() {
  size(400, 400);
  frameRate(30);
  noStroke();
}

void draw() {
  background(255);
  if (page==0){
    titlePage();
  }
  if (page==1) {
    forest();
    mapWidth=1500;
  }
  if (page==2) {
    city();
    mapWidth=1500;
  }
  if (page==3) {
    desert();
    mapWidth=2000;
  }
  if (page==4){
    endPage();
  }
}

void motion() {
  if (goRight == 1) {
    gx += 5;
  }

  if (goLeft == 1) {
    gx -=5;
  }


  gvy+=1;
  gy+=gvy;


  //guy
  fill(#FF0000);
  rect(gx-5-cameraX, gy, 10, -30);

  if (gy>500) {
    gx=0;
    gy=0;
    cameraX=0;
    
  }
}

void keyPressed() {
  if (jump == 0 && keyCode == UP) {
    jump = 1;
    gvy = -14;
  }
  if (keyCode == RIGHT) {
    goRight = 1;
  }
  if (keyCode == LEFT) {
    goLeft= 1;
  }


  if (key == '1') {
    page=1;
  }
  if (key == '2') {
    page=2;
  }
  if (key == '3') {
    page=3;
  }
  if (key == '4'){
    page=4;
  }
}


void keyReleased() {
  if (keyCode == RIGHT) {
    goRight = 0;
  }
  if (keyCode == LEFT) {
    goLeft= 0;
  }
}
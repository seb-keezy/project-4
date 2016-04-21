// sebastian and blas
float gx, gy, gvy;
int goRight, goLeft, jump;
int page=1;

CLOUD cB = new CLOUD(0, 350, 400);
CLOUD cB1=new CLOUD(500, 350, 400);

CLOUD c1 = new CLOUD(50, 300, 100);
CLOUD c2 = new CLOUD(200, 250, 70);


PORTAL p1= new PORTAL(650,350,2);
PORTAL p2= new PORTAL(650,350,3);

void setup() {
  size(400, 400);
  frameRate(30);
  noStroke();
}

void draw() {
  background(255);
  if (page==1) {
    forest();
  }
  if(page==2){
    city();
  }
  if(page==3){
    desert();
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
  
  
  if(key == '1'){
    page=1;
  }
  if(key == '2'){
    page=2;
  }
  if(key == '3'){
    page=3;
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
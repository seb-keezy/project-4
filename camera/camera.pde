int mapWidth = 800;
float cameraX = 0;

void bordersAndCamera() {


  //left
  if (gx < 0) {
    gx = 0;
  }
  //right       
  if (gx > mapWidth - 5) {
    gx = mapWidth - 5;
  }


  //camera code for a 300 by 300 canvas and a 37.5 pixel velocity
  //horizontal camera 
  if (gx > cameraX + 150 && cameraX < (mapWidth - width)) {
    cameraX = gx - 150;
  }

  if (gx < cameraX + 112.5 && cameraX > 0) {
    cameraX = gx - 112.5;
  }
}
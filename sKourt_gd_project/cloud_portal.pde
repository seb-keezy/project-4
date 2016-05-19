class CLOUD {
  int x, y, w;
  CLOUD(int _x, int _y, int _w) {
    x = _x;
    y = _y;
    w = _w; 
  }

  void update() {

    if (gx+5 > x && gx - 5 < x + w   && gy > y && gy<=y + gvy) {
      gy = y;
      jump = 0;
      gvy = 0;
    }


    fill(100);
    rect(x-cameraX, y, w, 5);
  }
}

class PORTAL {
  int x, y;
  int nextMap; //1 map1, 2 map2


  PORTAL(int _x, int _y, int _nextMap) {
    x=_x;
    y=_y;
    nextMap=_nextMap;
  }

  void update() {
    if(gx>x-20 && gx<x+20 && gy+30>y-20 && gy<y+10){
      page=nextMap;
      cameraX=0;
      gx=0;
      gy=0;
    }
    if(page==3){
      mapWidth=2000;
    }
    
    fill(128);
    ellipse(x-cameraX, y, 60, 30);
    
    for(int i=0; i<20; i++){
      fill(#ffff00,255-20*i);
      ellipse(x-cameraX,y-3-7*i,50,20);
      
    }
  }
}
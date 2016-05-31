CLOUD ayy = new CLOUD(0,350,500);

PORTAL p0 = new PORTAL(250,350,1);

void titlePage(){
  fill(#0000ff);
  textSize(40);
  text("Meme Game 1.0", 50,200);
  motion();
  ayy.update();
  p0.update();
  
  
  
}

void endPage(){
  fill(#0000ff);
  textSize(40);
  text("Good Job! You Won!",50,200);
  
  
  
  
  
}
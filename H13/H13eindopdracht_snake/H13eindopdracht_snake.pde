import controlP5.*;
ControlP5 cp;

int tileSize = 40;
int xHoofd;
int yHoofd;
boolean notLeft = true;
boolean notUp = true;
boolean notRight = true;
boolean notDown = true;

void setup(){
  fullScreen();
  frameRate(40);
  xHoofd = 940;
  yHoofd = 520;
}

void draw(){
    background(170, 150, 220);
    int xWaarde = 700;
    int yWaarde = 280;
fill(100, 250, 100);
for(int i = 0; i < 13; i++){
  for(int j = 0; j < 13; j++){
    strokeWeight(0);
    rect(xWaarde, yWaarde, 40,40);
    if((i+j) % 2 == 0){fill(80, 230, 100);}
    else{fill(100, 250, 100);}
 yWaarde += 40;
}
 yWaarde = 280;
 xWaarde += 40;
}
    strokeWeight(1);
    fill(60, 170, 70);
    rect(xHoofd, yHoofd, tileSize, tileSize);
  if(keyCode == 37 && xHoofd > 700 && notRight == true){ //left
  for(int i = 0; i < 40; i++){
  xHoofd -= 1;
  }
  notLeft = false;
  notUp = true;
  notDown = true;
  }
  
  if(keyCode == 38 && yHoofd > 280 && notDown == true){ //up
  for(int i = 0; i < 40; i++){
  yHoofd -= 1;
  }
  notUp = false;
  notRight = true;
  notLeft = true;
  }
  
  if(keyCode == 39 && xHoofd < 1180 && notLeft == true){ //right
  for(int i = 0; i < 40; i++){
  xHoofd += 1;
  }
  notRight = false;
  notUp = true;
  notDown = true;
  }
  
  if(keyCode == 40 && yHoofd < 760 && notUp == true){ //down
  for(int i = 0; i < 40; i++){ 
  yHoofd += 1;
  }
  notDown = false;
  notRight = true;
  notLeft = true;
  }



  if(keyCode == 37 && xHoofd > 700 && xHoofd < 1180 && notRight == false){ //left
  for(int i = 0; i < 40; i++){
  xHoofd += 1;
  }
  notRight = false;
  }
  if(keyCode == 38 && yHoofd > 280 && yHoofd < 760 && notDown == false){ //up
  for(int i = 0; i < 40; i++){ 
  yHoofd += 1;
  }
  notDown = false;
  }
  if(keyCode == 39 && xHoofd < 1180 && xHoofd > 700 && notLeft == false){ //right
  for(int i = 0; i < 40; i++){
  xHoofd -= 1;
  }
  notLeft = false;
  }
  if(keyCode == 40 && yHoofd < 760 && yHoofd > 280 && notUp == false){ //down
  for(int i = 0; i < 40; i++){
  yHoofd -= 1;
  }
  notUp = false;
  }
}

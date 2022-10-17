import controlP5.*;
ControlP5 cp;

int tileSize = 40;
int xHoofd;
int yHoofd;
int direction = 0;
int leftOffset = 700;
int topOffset = 280;
int xMax = 13;
int yMax = 13;
int appelSize = 30;
int xRandom;
int yRandom;
int tailLengthCounter = 3;
int[] tailLength;
int score;
int xAppel;
int yAppel;

void setup(){
  size(1920, 1080);
  frameRate(10);
  xHoofd = 6;
  yHoofd = 6;
  tailLength = new int[tailLengthCounter];
}

void draw(){
    background(170, 150, 220);
    int xWaarde = 0;
    int yWaarde = 0;
fill(100, 240, 100);
for(int i = 0; i < xMax; i++){
  for(int j = 0; j < yMax; j++){
    strokeWeight(0);
    if((i+j) % 2 == 0){fill(100, 230, 100);}
    else{fill(100, 240, 100);}
    rect(leftOffset + xWaarde * tileSize, topOffset + yWaarde * tileSize, tileSize, tileSize);
 yWaarde ++;
}
 yWaarde = 0;
 xWaarde ++;
}

    fill(60, 170, 70);
    rect(leftOffset + xHoofd * tileSize, topOffset + yHoofd * tileSize, tileSize, tileSize);
  if(direction == 3 && xHoofd > 0){ //left
  xHoofd -= 1;
  }
  if(direction == 4 && yHoofd > 0){ //up
  yHoofd -= 1;
  }
  if(direction == 1 && xHoofd < xMax - 1){ //right
  xHoofd += 1;
  }
  if(direction == 2 && yHoofd < yMax - 1){ //down
  yHoofd += 1;
  }
  
  if(xHoofd == xAppel && yHoofd == yAppel){
    score++;
  }
  fill(0);
  text(score, leftOffset, topOffset - 20);
}

void keyPressed(){
  if(keyCode == 37 && direction != 1){ //left
    direction = 3;
  }
  
  if(keyCode == 38 && direction != 2){ //up
    direction = 4;
  }
  
  if(keyCode == 39 && direction != 3){ //right
    direction = 1;
  }
  
  if(keyCode == 40 && direction != 4){ //down
    direction = 2;
  }

}

void Appel(){
  xRandom = round(random(1, 13));
  yRandom = round(random(1, 13));
  fill(255, 0, 0);
  xAppel = leftOffset - (tileSize / 2) + (xRandom * tileSize);
  yAppel = topOffset - (tileSize / 2) + (yRandom * tileSize);
  ellipse(xAppel, yAppel, appelSize, appelSize);
}

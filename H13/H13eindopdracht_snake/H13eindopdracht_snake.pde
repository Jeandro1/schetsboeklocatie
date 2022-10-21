//x, y
int xHead = 3, yHead = 6;

int xMax = 13, yMax = 13;

int xApple, yApple;

int xRandom = 10, yRandom = 7;

int leftOffset = 700, topOffset = 280;

int dir = 0;

//size
int tileSize = 40;
int appleSize = 30;

//More
ArrayList<Integer> xTail = new ArrayList<Integer>(), yTail = new ArrayList<Integer>();
int score;
boolean gameOver = false;
boolean youWon = false;



void setup(){
  fullScreen();
  frameRate(7);
  xTail.add(xHead);
  yTail.add(yHead);
}



void draw() {
 background(170, 150, 220);
 textAlign(CENTER);
 textSize(100);
 fill(0);
 text("Snake", leftOffset + 260, topOffset - 100);
 
 Field();
 YouWon();
 GameOver();

if(gameOver == false && youWon == false){
  
 if(dir == 1 && xHead < xMax - 1) {xHead += 1;} //Right
 if(dir == 2 && yHead < yMax - 1) {yHead += 1;} //Down
 if(dir == 3 && xHead > 0) {xHead -= 1;} //Left
 if(dir == 4 && yHead > 0) {yHead -= 1;} //Up
 
 Apple();
 AppleEaten();
 Score();
 Tail();
 Head();

}
}



void keyPressed(){
 if(keyCode == 39 && dir != 3) {dir = 1;}
 if(keyCode == 40 && dir != 4) {dir = 2;}
 if(keyCode == 37 && dir != 1) {dir = 3;}
 if(keyCode == 38 && dir != 2) {dir = 4;}
 if(key == ' ' && (youWon == true || gameOver == true)){Reset();}
}



void Field(){
 int xWaarde = 0;
 int yWaarde = 0;
 fill(100, 240, 100);
 for(int i = 0; i < xMax; i++){
 for(int j = 0; j < yMax; j++){
 strokeWeight(0);
 if((i+j) % 2 == 0) {fill(100, 230, 100);} 
 else {fill(100, 240, 100);}
 rect(leftOffset + xWaarde * tileSize, topOffset + yWaarde * tileSize, tileSize, tileSize);
 yWaarde ++;
}
 yWaarde = 0;
 xWaarde ++;
 }
}



void Head(){
 fill(60, 170, 70);
 rect(leftOffset + xHead * tileSize, topOffset + yHead * tileSize, tileSize, tileSize);
}



void Tail(){
  for (int i = (xTail.size() - 1); i >= 0; i--) {
      if (i == 0) {
        xTail.set(i, xHead);
        yTail.set(i, yHead);
      } else {
        xTail.set(i, xTail.get(i-1));
        yTail.set(i, yTail.get(i-1));
      }

      fill(60, 170, 70);
      rect(leftOffset + xTail.get(i) * tileSize, topOffset + yTail.get(i) * tileSize, tileSize, tileSize);
      fill(60, 170, 70);
      rect(leftOffset + xTail.get(i) * tileSize, topOffset + yTail.get(i) * tileSize, tileSize, tileSize);
    }
}



void Apple() {
 xApple = leftOffset - (tileSize / 2) + (xRandom * tileSize);
 yApple = topOffset - (tileSize / 2) + (yRandom * tileSize);
 fill(255, 0, 0);
 ellipse(xApple, yApple, appleSize, appleSize);
}



void AppleEaten(){
 if(xHead == xRandom - 1 && yHead == yRandom - 1){
  score++;
  xRandom = round(random(1, 13));
  yRandom = round(random(1, 13));
      for(int i = 0; i < xTail.size(); i++){
      if((xHead == xRandom || xTail.get(i) == xRandom) && (yHead == yRandom || yTail.get(i) == yRandom)){
          xRandom = round(random(1, 13));
          yRandom = round(random(1, 13));
      }
    }
  xTail.add(xHead);
  yTail.add(yHead);
 }
 }



void Score(){
 fill(0);
 textSize(70);
 text(score, leftOffset + 260, topOffset - 20);
}



void Reset(){
  score = 0;
  youWon = false;
  gameOver = false;
  xHead = 3;
  yHead = 6;
  xRandom = 10;
  yRandom = 7;
  dir = 0;
   for(int j = xTail.size()-1; j>= 0; j--) {
    xTail.remove(j);
     yTail.remove(j);
   }
  xTail.add(xHead);
  yTail.add(yHead);
}



void YouWon(){
   if(score == 168){
   youWon = true;
   fill(120, 240, 220);
   stroke(0);
   strokeWeight(2);
   rect(leftOffset + 60, topOffset + 60, 400, 400);
   fill(0);
   textAlign(CENTER);
   textSize(50);
   text("You won!", leftOffset + 260, topOffset + 200);
   textSize(30);
   text("Press spacebar to play again!", leftOffset + 260, topOffset + 350);
 }
}



void GameOver(){
    for(int i = 1; i < xTail.size(); i++){
      if(xHead == xTail.get(i) && yHead == yTail.get(i)){
        gameOver = true;
      }
    }
    if(gameOver == true){
      fill(120, 240, 220);
      stroke(0);
      strokeWeight(2);
      rect(leftOffset + 60, topOffset + 60, 400, 400);
      fill(0);
      textAlign(CENTER);
      textSize(50);
      text("Game over!", leftOffset + 260, topOffset + 200);
      textSize(20);
      text("score: " + score, leftOffset + 260, topOffset + 250);
      textSize(30);
      text("Press spacebar to play again!", leftOffset + 260, topOffset + 350);
}
}

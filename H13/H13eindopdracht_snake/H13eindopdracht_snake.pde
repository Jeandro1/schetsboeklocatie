import controlP5.*;
ControlP5 cp;

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
Button restart;

void setup(){
  size(1920, 1080);
  frameRate(8);
  xTail.add(xHead);
  yTail.add(yHead);
  xTail.add(xHead);
  yTail.add(yHead);
  xTail.add(xHead);
  yTail.add(yHead);
}

void draw() {
 background(170, 150, 220);
 
 Field();
 
 if(score == 166){
   youWon = true;
   fill(120, 240, 220);
   stroke(0);
   strokeWeight(2);
   rect(leftOffset + 60, topOffset + 60, 400, 400);
   fill(0);
   textAlign(CENTER);
   textSize(50);
   text("You won!", leftOffset + 260, topOffset + 200);
   cp = new ControlP5(this);
   restart = cp.addButton("Restart")
      .setPosition(leftOffset + 160, topOffset + 350)
      .setColorValueLabel(color(0,0,0))
      .setColorLabel(color(0,0,0))
      .setColorActive(color(230,230,230))
      .setColorForeground(color(140,140,140))
      .setColorBackground(color(230,230,230))
      .setSize(200,40);
 }

if(gameOver == false && youWon == false){

 if(dir == 1 && xHead < xMax - 1) {xHead += 1;} //Right
 if(dir == 2 && yHead < yMax - 1) {yHead += 1;} //Down
 if(dir == 3 && xHead > 0) {xHead -= 1;} //Left
 if(dir == 4 && yHead > 0) {yHead -= 1;} //Up

 Head();
 Apple();
 AppleEaten();
 Score();

for(int i = 0; i < xTail.size(); i++){
  xTail.add(xHead);
  yTail.add(yHead);
  xTail.set(i + 1, xTail.get(i));
  yTail.set(i + 1, yTail.get(i));
  fill(60, 170, 70);
  rect(leftOffset + xTail.get(i) * tileSize, topOffset + yTail.get(i) * tileSize, tileSize, tileSize);
  xTail.remove(0);
  yTail.remove(0);
  fill(60, 170, 70);
  rect(leftOffset + xTail.get(i) * tileSize, topOffset + yTail.get(i) * tileSize, tileSize, tileSize);
}
}
}

void keyPressed(){
 if(keyCode == 39 && dir != 3) {dir = 1;}
 if(keyCode == 40 && dir != 4) {dir = 2;}
 if(keyCode == 37 && dir != 1) {dir = 3;}
 if(keyCode == 38 && dir != 2) {dir = 4;}
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
  xTail.add(xHead);
  yTail.add(yHead);
 }
 }


void Score(){
 fill(0);
 text(score, leftOffset, topOffset - 20);
}

void Restart(){
  score = 0;
  youWon = false;
  xHead = 3;
  yHead = 6;
  xRandom = 10;
  yRandom = 7;
  dir = 0;
}

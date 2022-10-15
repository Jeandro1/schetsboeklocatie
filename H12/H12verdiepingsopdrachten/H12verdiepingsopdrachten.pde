import controlP5.*;
ControlP5 cp;

//opdracht 12.4
int milliSeconden;
int seconden;
int minuten;
boolean start = false;
boolean starter;

//opdracht 12.5
float xOud = 960;
float yOud = 540;
float xNieuw;
float yNieuw;
boolean lijnKlik = false;

//opdracht 12.6
int tileSize = 10;
int xPos = 400;
int yPos = 150;

void setup(){
  fullScreen();
  background(255, 255, 255);
}

void draw(){
//opdracht 12.4
  fill(255);
  rect(50, 50, 200, 200);
  fill(0);
  if(start){
  if (int(millis()/100)  % 10 != milliSeconden){
    milliSeconden++;
    
  }
  if (milliSeconden >= 10){
    milliSeconden -= 10;
    seconden++;
  }
  if (seconden >= 60){
    seconden -= 60;
    minuten++;
  }
  }

  textAlign(CENTER);
  textSize(30);
  text(nf(minuten, 2) + ":" + nf(seconden, 2) + "." + nf(milliSeconden, 1) , 150, 150);
  textSize(17);
  text("klik spatie om te starten", 150, 110);
  text("klik (r) om te resetten", 150, 180);
  
//opdracht 12.5
if(lijnKlik == true){
xNieuw = mouseX;
yNieuw = mouseY;
line(xOud, yOud, xNieuw, yNieuw);
xOud = xNieuw;
yOud = yNieuw;
lijnKlik = false;
}

//opdracht 12.6
fill(255);
rect(300, 50, 200, 200);
fill(0);
rect(xPos, yPos, tileSize, tileSize);
}

void keyPressed(){
  if(key == 'r'){
    milliSeconden = 0;
    seconden = 0;
    minuten = 0;
  }
  if(key == ' ' && start == false){
      starter = true;
    }
    if(start == true){
      starter = false;
    }
  start = starter;
  
  if(keyCode == 37 && xPos > 300){ //left
  xPos -= 10;
  }
  if(keyCode == 38 && yPos > 50){ //up
  yPos -= 10;
  }
  if(keyCode == 39 && xPos < 490){ //right
  xPos += 10;
  }
  if(keyCode == 40 && yPos < 240){ //down
  yPos += 10;
  }
}

void mouseClicked(){
lijnKlik = true;
}

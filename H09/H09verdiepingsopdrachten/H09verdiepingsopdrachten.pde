void setup(){
  fullScreen();
}

void draw(){
  background(230, 230, 230);
  muur(100, 100, 1);
  muur(100, 100, 2);
  muur(100, 100, 3);
  muur(100, 100, 4);
  
  driehoek(700, 100, 730, 125, 670, 125);
  
  boom(1000, 600);
  boom(1350, 610);
  boom(1200, 620);
}


//opdracht 9.7
void muur(int x, int y, int laag){
  
  fill(210, 50, 50);
  stroke(255, 255, 255);
  
  for(int i = 0; i < 10; i++){
  for(int j = 0; j < 1; j++){
    rect(x, y + (laag * 50), 50, 25);
    rect(x + 25, y + 25 + (laag * 50), 50, 25);
  y += 100;
}
y = 100;
x += 50;
}
}



//opdracht 9.8
void driehoek(int x1, int y1, int x2, int y2, int x3, int y3) {
    stroke(0, 0, 0);
    line(x1, y1, x2, y2);
    line(x2, y2, x3, y3);
    line(x3, y3, x1, y1);
}



//opdracht 9.9 / 9.10
void boom(int x, int y){
  fill(130, 100, 60);
  rect(x - 50, y - 150, 100, 300);
  fill(60, 120, 60);
  ellipse(x, y - 120, 250, 250);
}

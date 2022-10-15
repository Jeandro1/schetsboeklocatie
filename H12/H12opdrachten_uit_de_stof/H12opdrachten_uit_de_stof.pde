int klikCount;
int seconden;
boolean klikken = true;
float r;
float g;
float b;

void setup(){
fullScreen();
}

void draw(){
//opdracht 12.2
fill(255, 255, 255);
rect (100, 100, 100, 100);
  seconden = millis()/1000;
  if(seconden >= 10){
    klikken = false;
  }
  fill(0,0,0);
  stroke(0,0,0);
  text(klikCount + " Spaties", 125, 150);
  
//opdracht 12.3
r = random(20, 235);
g = random(20, 235);
b = random(20, 235);
fill(r,g,b);

  rect(mouseX - 10, mouseY - 10, 20, 20);
}

void keyReleased(){
//opdracht 12.1
 if(keyCode == 40){
  println("Gevonden");
  }
//opdracht 12.2
 if(keyCode == 32 && klikken){
   klikCount++;
}
}

  

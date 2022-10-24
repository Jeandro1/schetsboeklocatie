import controlP5.*;
import processing.sound.*;
ControlP5 cp;

//opdracht 14.4
Button knop1;
Button knop2;
Button knop3;
SoundFile Augh;
SoundFile Hahaha;
SoundFile Shock;

//opdracht 14.5
PImage Naruto;

void setup(){
 fullScreen();
//opdracht 14.4
 Augh = new SoundFile(this, "sounds/Augh.mp3");
 Hahaha = new SoundFile(this, "sounds/Hahaha.mp3");
 Shock = new SoundFile(this, "sounds/Shock.mp3");
//opdracht 14.5
 Naruto = loadImage("images/Naruto.png");
}

void draw(){
  background(255);
   cp = new ControlP5(this);

//opdracht 14.4
knop1 = cp.addButton("Knop1")
        .setSize(200, 50)
        .setPosition(width - (width/4) * 3, 100)
        .setCaptionLabel("Augh");
        
knop2 = cp.addButton("Knop2")
        .setSize(200, 50)
        .setPosition(width - (width/4) * 2, 100)
        .setCaptionLabel("Hahaha");
        
knop3 = cp.addButton("Knop3")
        .setSize(200, 50)
        .setPosition(width - (width/4) * 1, 100)
        .setCaptionLabel("Shock");
        

//opdracht 14.5
 imageMode(CENTER);
int xWaarde = 100;
int yWaarde = 800;

for(int i = 0; i < 20; i++){
  for(int j = 0; j < 1; j++){
    image(Naruto, xWaarde, yWaarde, (width/21), 300);
  yWaarde += 100;
}
yWaarde = 800;
xWaarde += (width/21);
}
}

//opdracht 14.4
void Knop1(){
 Augh.stop();
 Augh.play();
}

void Knop2(){
 Hahaha.stop();
 Hahaha.play();
}

void Knop3(){
 Shock.stop();
 Shock.play();
}

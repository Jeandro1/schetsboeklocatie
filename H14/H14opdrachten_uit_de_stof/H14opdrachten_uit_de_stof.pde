//opdracht 14.3
import processing.sound.*;
SoundFile Augh;

//opdracht 14.1
PImage Naruto;
PImage Sasuke;
PImage Kakashi;

//opdracht 14.2
PImage Background;

void setup(){
 fullScreen();
//opdracht 14.1
 Naruto = loadImage("images/Naruto.png");
 Sasuke = loadImage("images/Sasuke.png");
 Kakashi = loadImage("images/Kakashi.png");
//opdracht 14.2
 Background = loadImage("images/Background.jpg");
//opdracht 14.3
 Augh = new SoundFile(this, "sounds/Augh.mp3");
 Augh.play();
}

void draw(){
 imageMode(CENTER);
//opdracht 14.2
 image(Background, width - width/2, height - height/2, width, height);
//opdracht 14.1
 image(Naruto, width - (width/4)*3, height/2);
 image(Sasuke, width - (width/4)*2, height/2);
 image(Kakashi, width - (width/4)*1, height/2);
}

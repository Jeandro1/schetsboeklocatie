import controlP5.*;
ControlP5 cp;

Button knop1;
Button knop2;
Button knop3;

Textfield tekstveld1;

void setup(){
  size(800, 800);
cp = new ControlP5(this); 
 
//opdracht 10.1 
knop1 = cp.addButton("Knop1");
  knop1.setCaptionLabel("Klik mij");
knop2 = cp.addButton("Knop2");
  knop2.setCaptionLabel("Klik mij");

//opdracht 10.2
knop3 = cp.addButton("Knop3");
tekstveld1 = cp
  .addTextfield("TextInput1")
  .setPosition(100,100)
  .setText(" ")
  .setCaptionLabel("Typ hier je naam")
  .setColorLabel(color(255,0,0));

}

void draw(){
}

void Knop1(){
  println("Goed gedaan!");
}

void Knop2(){
  println("Helaas fout!");
}

void Knop3(){
  println("Hoi mijn naam is: " + tekstveld1.getText());
}
 

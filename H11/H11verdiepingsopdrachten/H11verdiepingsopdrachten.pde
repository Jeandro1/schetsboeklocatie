import controlP5.*;
ControlP5 cp;

//opdracht 11.6
int[] pakjes = new int[10];
int pakjesHoeveelheid;

//opdracht 11.7
String[] namen = new String[10];
int naamCount;
int textmovement = 100;
Button naam;
Textfield naamInvoer;

void setup(){
size(1920, 1080);
cp = new ControlP5(this);

//opdracht 11.6
pakjes[0] = 2;
pakjes[1] = 4;
pakjes[2] = 3;
pakjes[3] = 4;
pakjes[4] = 4;
pakjes[5] = 2;
pakjes[6] = 3;
pakjes[7] = 2;
pakjes[8] = 2;
pakjes[9] = 3;

  for(int i = 0; i < pakjes.length; i++){
    if(pakjes[i] == 4){
      pakjesHoeveelheid++;
    }
    }
   println(pakjesHoeveelheid);
   
//opdracht 11.7
naam = cp.addButton("Naam")
      .setPosition(155,50)
      .setColorValueLabel(color(0,0,0))
      .setColorLabel(color(0,0,0))
      .setColorActive(color(230,230,230))
      .setColorForeground(color(140,140,140))
      .setColorBackground(color(230,230,230))
      .setSize(100,20)
      .setCaptionLabel("toevoegen");
      
naamInvoer = cp
   .addTextfield(" ")
   .setSize(100,20)
   .setPosition(50, 50)
   .setColorValueLabel(color(0,0,0))
   .setColorLabel(color(0,0,0))
   .setColorActive(color(0,0,0))
   .setColorForeground(color(140,140,140))
   .setColorBackground(color(230,230,230))
   .setText("");
}

void draw(){

}

void Naam(){
  namen[naamCount] = (naamInvoer.getText());
  if(naamCount < namen.length){
  naamCount++;
    if(naamCount == 10){
  fill(0, 0, 0);
  textSize(10);
  for(int i = 0; i < namen.length; i++){
  text(namen[i], 100, textmovement);
  textmovement+=20;
}
}
}
}

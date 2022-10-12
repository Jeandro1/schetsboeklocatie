import controlP5.*;
ControlP5 cp;

Button knop1;

Button ouder;
Button student;

Button vermenigvuldigen;
Button delen;
Button optellen;
Button aftrekken;
Button is;

Textfield tekstveld1;

Textfield nummer1;
Textfield nummer2;

float prijsExclusief;
float prijsInclusief;
int ouderCount;
int studentCount;
int totaalCount;
int nummerEen;
int nummerTwee;
int nummerDrie;

void setup(){
  
size(1920, 1080);
cp = new ControlP5(this); 

//opdracht 10.3
knop1 = cp.addButton("Knop1")
  .setPosition(220,10);
tekstveld1 = cp
  .addTextfield("TextInput1")
  .setPosition(10,10)
  .setText("")
  .setCaptionLabel("Zet hier de prijs exclusief btw in €")
  .setColorLabel(color(255,0,0));
  
//opdracht 10.4
ouder = cp.addButton("ouder")
  .setPosition(30,100);
student = cp.addButton("student")
  .setPosition(110,100);
  
//opdracht 10.5
nummer1 = cp
   .addTextfield(" ")
   .setSize(100,20)
   .setPosition(500, 15)
   .setColorValueLabel(color(0,0,0))
   .setColorLabel(color(0,0,0))
   .setColorActive(color(0,0,0))
   .setColorForeground(color(140,140,140))
   .setColorBackground(color(230,230,230))
   .setText("");
nummer2 = cp
   .addTextfield("")
   .setSize(100,20)
   .setPosition(705, 15)
   .setColorValueLabel(color(0,0,0))
   .setColorLabel(color(0,0,0))
   .setColorActive(color(0,0,0))
   .setColorForeground(color(140,140,140))
   .setColorBackground(color(230,230,230))
   .setText("");
   
vermenigvuldigen = cp.addButton("Vermenigvuldigen")
   .setPosition(605,15)
   .setColorValueLabel(color(0,0,0))
   .setColorLabel(color(0,0,0))
   .setColorActive(color(230,230,230))
   .setColorForeground(color(140,140,140))
   .setColorBackground(color(230,230,230))
   .setSize(20,20)
   .setCaptionLabel("x");
delen = cp.addButton("Delen")
   .setPosition(630,15)
   .setColorValueLabel(color(0,0,0))
   .setColorLabel(color(0,0,0))
   .setColorActive(color(230,230,230))
   .setColorForeground(color(140,140,140))
   .setColorBackground(color(230,230,230))
   .setSize(20,20)
   .setCaptionLabel(":");
optellen = cp.addButton("Optellen")
   .setPosition(655,15)
   .setColorValueLabel(color(0,0,0))
   .setColorLabel(color(0,0,0))
   .setColorActive(color(230,230,230))
   .setColorForeground(color(140,140,140))
   .setColorBackground(color(230,230,230))
   .setSize(20,20)
   .setCaptionLabel("+");
aftrekken = cp.addButton("Aftrekken")
   .setPosition(680,15)
   .setColorValueLabel(color(0,0,0))
   .setColorLabel(color(0,0,0))
   .setColorActive(color(230,230,230))
   .setColorForeground(color(140,140,140))
   .setColorBackground(color(230,230,230))
   .setSize(20,20)
   .setCaptionLabel("-");
is = cp.addButton("=")
   .setPosition(810,15)
   .setColorValueLabel(color(0,0,0))
   .setColorLabel(color(0,0,0))
   .setColorActive(color(230,230,230))
   .setColorForeground(color(230,230,230))
   .setColorBackground(color(230,230,230))
   .setSize(20,20);
}

void draw(){
//opdracht 10.4 / 10.5
  background(170, 250, 250);
  fill(255, 255, 255);
  rect(495, 10, 450, 30);
  fill(230, 230, 230);
  stroke(140,140,140);
  rect(835, 15, 105, 20);
  stroke(0, 0, 0);
  fill(0, 0, 0);
    text(ouderCount, 62, 130);
    text(studentCount, 142, 130);
    text(totaalCount, 102, 170);
    totaalCount = ouderCount + studentCount;
    text("Totaal", 88, 155);
    text(nummerDrie, 840, 30);
}

//opdracht 10.3
void Knop1(){
  prijsExclusief = Float.valueOf(tekstveld1.getText());
  prijsInclusief = prijsExclusief * 1.21;
  round(prijsInclusief);
  println("De prijs inclusief btw is €" + prijsInclusief);
}

//opdracht 10.4
void ouder(){
  ouderCount++;
}

void student(){
  studentCount++;
}

//opdracht 10.5
void Vermenigvuldigen(){
  nummerEen = Integer.valueOf(nummer1.getText());
  nummerTwee = Integer.valueOf(nummer2.getText());
  nummerDrie = nummerEen * nummerTwee;
  round(nummerDrie);
}

void Delen(){
  nummerEen = Integer.valueOf(nummer1.getText());
  nummerTwee = Integer.valueOf(nummer2.getText());
  nummerDrie = nummerEen / nummerTwee;
  round(nummerDrie);
}

void Optellen(){
  nummerEen = Integer.valueOf(nummer1.getText());
  nummerTwee = Integer.valueOf(nummer2.getText());
  nummerDrie = nummerEen + nummerTwee;
  round(nummerDrie);
}

void Aftrekken(){
  nummerEen = Integer.valueOf(nummer1.getText());
  nummerTwee = Integer.valueOf(nummer2.getText());
  nummerDrie = nummerEen - nummerTwee;
  round(nummerDrie);
}


 
 

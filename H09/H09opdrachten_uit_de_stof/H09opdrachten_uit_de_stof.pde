//opdracht 9.1 / 9.2 / 9.3
float mijnGetal;
String zin;

void setup(){
  size(350, 200);
  mijnGetal = mijnMethode(6, 8);
  println(mijnGetal);
  zin = langeZin("Hoi ik", "ben Jeandro", "en ik", "woon in Lelystad");
  println(zin);
}

float mijnMethode(float cijferEen, float cijferTwee){

float gemiddelde = (cijferEen + cijferTwee) / 2;

return gemiddelde;
}



//opdracht 9.4
void vierkant(int x, int y, int w, int h){
  line(x, y, x + w, y); //bovenste horizontale lijn
  line(x, y, x, y + h); //linker verticale lijn
  line(x + w, y, x + w, y + h); //rechter verticale lijn
  line(x, y + h, x + w, y + h); //onderste horizontale lijn
}

void draw(){
  background (255, 255, 255);
  vierkant(50, 50, 100, 100);
  cirkel();
}



//opdracht 9.5
String langeZin(String a, String b, String c, String d){
  String antwoord;
  antwoord = a + " " + b + " " + c + " " + d;
  return antwoord;
}



//opdracht 9.6
void cirkel(){
  int wh = 100;

for(int i = 0; i < 5; i++){
  ellipse(300 - wh/2, 100, wh, wh);
  wh-=10;
}
}

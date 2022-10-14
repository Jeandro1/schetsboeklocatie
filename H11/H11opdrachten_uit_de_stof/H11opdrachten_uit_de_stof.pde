//opdracht 11.1
String[] score1 = new String[26];

//opdracht 11.2
int[] score2 = {2, 4, 6, 8, 10, 12, 14};

//opdracht 11.3
int[] score3 = new int[10];

//opdracht 11.4
int[] score4 = new int[10];

int tafel = 12;
int antwoord;

//opdracht 11.5
boolean gevonden;

String[] namen = {"Harry", "Jan", "Piet", "Koen", "Jaquayveontavious"};

void setup(){
//opdracht 11.1
println(score1);
println("------");

//opdracht 11.2
println(score2);
println("------");

//opdracht 11.3
score3[0] = 2;
score3[1] = 4;
score3[2] = 6;
score3[3] = 8;
score3[4] = 10;
score3[5] = 12;
score3[6] = 14;
score3[7] = 16;
score3[8] = 18;
score3[9] = 20;
println(score3);
println("------");

//opdracht 11.4
for(int i = 0; i < score4.length; i++){
  score4[i] = 1+i*1;
}

for(int i = 0; i < score4.length; i++){
  antwoord = (i + 1) * tafel;
  println(score4[i] + " x " + tafel + " = " + antwoord);
  }
println("------");

//opdracht 11.5
gevonden = false;
  for(int i = 0; i < namen.length; i++){
    if(namen[i] == "Jan"){
      gevonden = true;
    }
    }
   println(gevonden);
}

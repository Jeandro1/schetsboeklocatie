//opdracht 8.9
size(1920, 1080);
int sizeC = 510;

for(int i = 0; i < 50; i++){
  ellipse(400, 300, sizeC, sizeC);
  sizeC-=10;
}



int sizeE = 510;

for(int i = 0; i < 50; i++){
  ellipse(700 + sizeE/2, 60 + sizeE/2, sizeE,sizeE);
  sizeE-=10;
}



//opdracht 8.10
int xWaarde = 100;

for(int i = 0; i < 5; i++){
    rect(1200 + xWaarde - 100, xWaarde, 100, 100);
xWaarde += 100;
}



//opdracht 8.11 / 8.12
int xWaarde2 = 20;
int yWaarde2 = 20;

for(int i = 0; i < 9; i++){
  for(int j = 0; j < 9; j++){
    rect(xWaarde2, yWaarde2, 10,10);
    if((i+j) % 2 == 0){fill(0, 0, 0);}
    else{fill(255, 255, 255);}
 yWaarde2 += 10;
}
 yWaarde2 = 20;
 xWaarde2 += 10;
}



//opdracht 8.13
int tafel = 7;
int antwoord = 0;
int textmovement = 100;
textSize(50);
for(int i = 1; i <= 10; i++){
 antwoord = i * tafel;
  text(i + "x" + tafel + "=" + antwoord, 1650, textmovement);
  textmovement+=40;
}

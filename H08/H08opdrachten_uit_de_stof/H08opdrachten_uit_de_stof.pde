//opdracht 8.1
int teller = 1;

while(teller <= 10){
 println(teller);
 teller++;
}
println("------");



//opdracht 8.2
for(int i = 1; i <= 10; i++){
 println(i);
}
println("------");



//opdracht 8.3
size(1920,1080);
background(255,255,255);

for(int i = 1; i <= 10; i++){
  line(i * 50, 100, i * 50, 600);
}



//opdracht 8.4
int xWaarde = 100;
int yWaarde = 700;

for(int i = 0; i < 10; i++){
  for(int j = 0; j < 1; j++){
    rect(xWaarde, yWaarde, 100, 100);
  yWaarde += 100;
}
yWaarde = 700;
xWaarde += 100;
}



//opdracht 8.5
int sizeC = 60;

for(int i = 0; i < 5; i++){
  ellipse(700, 300, sizeC, sizeC);
  sizeC-=10;
  println(sizeC);
}
println("------");



//opdracht 8.6
int sizeE = 100;

for(int i = 0; i < 5; i++){
  ellipse(1000 - sizeE/2, 300, sizeE, sizeE);
  sizeE-=10;
}



//opdracht 8.7
for(int i = 20; i >= 10; i--){
  println(i);
}
println("------");



//opdracht 8.8
int A = 0;
int B = 1;
int C = 0;

while(C < 100){
  if(C < 1){println(C); C++; println(C);}
  else{C = A + B; A = B; B = C; println(C); }
}

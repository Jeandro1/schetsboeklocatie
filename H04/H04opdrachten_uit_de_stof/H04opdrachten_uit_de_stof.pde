fullScreen();
background(#FFAA00);
int grijs = #7A7A7A;
int horizontaal = 200;
int verticaal = 200;
int rood = #FF0000;

stroke(rood);
fill(grijs);
rect(860, 440, horizontaal, verticaal);




int a = 15;
int b = 2;
int totaal = 0;
totaal = a % b;
println(totaal);

a = 31;
b = 3;
totaal = a % b;
println(totaal);

a = 10;
b = 5;
totaal = a % b;
println(totaal);

a = 38;
b = 4;
totaal = a % b;
println(totaal);

println("------");



int vermenigvuldigen = 10;
int delen = 20;
int aftrekken = 30;

vermenigvuldigen *= vermenigvuldigen;
println(vermenigvuldigen);

delen /= delen;
println(delen);

aftrekken -= aftrekken;
println(aftrekken);

println("------");




float gekGetal = 4.976142;
gekGetal *= 10;
gekGetal = (int) gekGetal;
gekGetal /= 10;
println(gekGetal);

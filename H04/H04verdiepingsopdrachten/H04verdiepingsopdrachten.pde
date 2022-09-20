float variabeleTijdSec = 100000000;
float jaarSec = 31536000;
float jaren = 0;
float dagSec = 86400;
float dagen = 0;
float uurSec = 3600;
float uren = 0;

jaren = variabeleTijdSec / jaarSec;
print(jaren);
println(" jaren");

dagen = variabeleTijdSec / dagSec;
print(dagen);
println(" dagen");

uren = variabeleTijdSec / uurSec;
print(uren);
println(" uren");

println("------");




float eersteCijfer = 7.6;
float tweedeCijfer = 4.7;
float derdeCijfer = 6.0;
float gemiddelde = 0;

println("student krijgt een 7.6, een 4.7 en een 6.0");

gemiddelde = (eersteCijfer + tweedeCijfer + derdeCijfer) / 3;
println(gemiddelde);

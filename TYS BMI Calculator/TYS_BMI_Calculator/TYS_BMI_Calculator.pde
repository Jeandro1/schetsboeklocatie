size(1920, 1080);
background(#79BDF0);

boolean kind = false;
boolean volwassene = false;
boolean bejaard = false;
int leeftijd = 54;
float lengte = 173;
int gewicht = 74;
float bmi = 0;

lengte = lengte / 100;
bmi = gewicht / (lengte * lengte);
bmi = bmi * 10;
bmi = round(bmi);
bmi = bmi / 10;

if(leeftijd < 19)
 {kind = true;}
  else if(leeftijd < 70)
 {volwassene = true;}
  else
 {bejaard = true;}




fill(#ffffff);
strokeWeight(30);
line(480, 270, 1440, 270);
line(480, 270, 480, 810);
line(1440, 270, 1440, 810);
line(480, 810, 1440, 810);
strokeWeight(0);
textSize(30);




if(kind == true && bmi < 13)
  {fill(#F0564D); rect(480, 270, 960, 540); fill( #000000); text("Ernstig ondergewicht", 835, 590);}
 else if(kind == true && bmi < 15)
  {fill(#F0CD4D); rect(480, 270, 960, 540); fill( #000000); text("Ondergewicht", 887, 590);}
 else if(kind == true && bmi < 20)
  {fill(#55F04D); rect(480, 270, 960, 540); fill( #000000); text("Gezond gewicht", 870, 590);}
 else if(kind == true && bmi < 24)
  {fill(#F0CD4D); rect(480, 270, 960, 540); fill( #000000); text("Overgewicht", 887, 590);}
 else if(kind == true && bmi >= 24)
  {fill(#F0564D); rect(480, 270, 960, 540); fill( #000000); text("Ernstig overgewicht", 855, 590);}
  
if(volwassene == true && bmi < 17.5)
  {fill(#F0564D); rect(480, 270, 960, 540); fill( #000000); text("Ernstig ondergewicht", 835, 590);}
 else if(volwassene == true && bmi < 18.5)
  {fill(#F0CD4D); rect(480, 270, 960, 540); fill( #000000); text("Ondergewicht", 887, 590);}
 else if(volwassene == true && bmi < 25)
  {fill(#55F04D); rect(480, 270, 960, 540); fill( #000000); text("Gezond gewicht", 870, 590);}
 else if(volwassene == true && bmi < 30)
  {fill(#F0CD4D); rect(480, 270, 960, 540); fill( #000000); text("Overgewicht", 887, 590);}
 else if(volwassene == true && bmi >= 30)
  {fill(#F0564D); rect(480, 270, 960, 540); fill( #000000); text("Ernstig overgewicht", 855, 590);}
  
if(bejaard == true && bmi < 19)
  {fill(#F0564D); rect(480, 270, 960, 540); fill( #000000); text("Ernstig ondergewicht", 835, 590);}
 else if(bejaard == true && bmi < 22)
  {fill(#F0CD4D); rect(480, 270, 960, 540); fill( #000000); text("Ondergewicht", 887, 590);}
 else if(bejaard == true && bmi < 28)
  {fill(#55F04D); rect(480, 270, 960, 540); fill( #000000); text("Gezond gewicht", 870, 590);}
 else if(bejaard == true && bmi < 30)
  {fill(#F0CD4D); rect(480, 270, 960, 540); fill( #000000); text("Overgewicht", 887, 590);}
 else if(bejaard == true && bmi >= 30)
  {fill(#F0564D); rect(480, 270, 960, 540); fill( #000000); text("Ernstig overgewicht", 855, 590);}




fill(#000000);
textSize(60);
text("BMI berekenen", 780, 340);
textSize(200);
text("" + bmi, 795, 540);
textSize(30);
text("" + leeftijd + " jaar", 605, 760);
text("" + lengte + "m", 929, 760);
text("" + gewicht + "KG", 1255, 760);
text("leeftijd", 602, 720);
text("lengte", 927, 720);
text("gewicht", 1237, 720);

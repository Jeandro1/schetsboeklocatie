float cijferEen = 7.1;
float cijferTwee = 9;
float cijferGemiddelde = 0;
boolean diploma = false;
Boolean vrijstelling = false;
Boolean cumlaude = false;

cijferGemiddelde= (cijferEen + cijferTwee) / 2;

if(cijferEen >= 5.5 && cijferTwee >= 5.5)
 {diploma = true;}
 
if(cijferGemiddelde > 8)
 {cumlaude = true;}

if(cijferGemiddelde > 8)
   {println("Geliciteerd met je diploma en cumlaude!");}
  else if(diploma == true || vrijstelling == true)
   {println("Gefeliciteerd met je diploma!");}
  

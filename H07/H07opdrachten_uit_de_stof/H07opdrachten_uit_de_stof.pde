int leeftijd = 18;

switch(leeftijd){
  case 1:
  println("Baby");
  break;
    case 2:
    case 3:
  println("Peuter");
  break;
    case 4:
    case 5:
  println("Kleuter");
  break;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
  println("Schoolkind");
  break;
    case 13:
  println("Tiener");
  break;
    case 14:
    case 15:
  println("Puber");
  break;
    case 16:
  println("Gefeliciteerd, je mag scooter rijden");
  break;
    case 17:
  println("Nog even en je mag alleen auto rijden");
  break;
    case 18:
  println("Gefeliciteerd, je mag alles zelf doen, inclusief belasting en verzekeringen betalen");
  break;
}




int koekjes = 0;
int mLBeslag = 4000;
int mLPerKoekje = 200;

koekjes = mLBeslag / mLPerKoekje;

println(koekjes + " koekjes");




Boolean fiets = false;
Boolean lopen = false;
Boolean auto = false;

if(!lopen && (fiets || auto)){
            println("Je gebruikt een voertuig met wielen");
}

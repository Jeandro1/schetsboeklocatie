int gewicht = 70;
float lengte = 187;
float bmi = 0;
String een = "Met een gewicht van ";
String twee = "kg en een lengte van ";
String drie = "m, is jouw BMI ";

lengte = lengte / 100;
bmi = gewicht / (lengte * lengte);
bmi = bmi * 10;
bmi = round(bmi);
bmi = bmi / 10;

println(een + gewicht + twee + lengte + drie + bmi);

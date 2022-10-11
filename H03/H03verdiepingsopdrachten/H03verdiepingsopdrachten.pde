fullScreen();

fill(255, 255, 255);
rect(0, 0, 960, 540);

fill(128, 128, 128);
rect(0, 540, 960, 540);

fill(255, 255, 255);
rect(960, 540, 960, 540);

fill(128, 128, 128);
rect(960, 0, 960, 540);

fill(0, 0, 0);
text("opdracht 3.6", 10, 10);
text("opdracht 3.7", 970, 10);
text("opdracht 3.8", 10, 550);
text("opdracht 3.9", 970, 550);

text("Lijn", 150, 40);
text("Rechthoek", 145, 265);
text("Gevulde rechthoek met ovaal", 405, 265);
text("Taartpunt met ovaal eromheen", 720, 265);
text("Afgeronde rechthoek", 110, 515);
text("Gevulde ovaal", 440, 515);
text("Cirkel", 785, 515);

line(15, 25, 315, 25);

noFill();
rect(15, 50, 300, 200);

fill(255, 0, 250);
rect(330, 50, 300, 200);
ellipse(480, 150, 300, 200);

noFill();
ellipse(795, 150, 300, 200);
fill(255, 0, 250);
arc(795, 150, 300, 200, PI*1.75, PI*2);

noFill();
line(30, 300, 300, 300);
line(315, 315, 315, 485);
line(30, 500, 300, 500);
line(15, 315, 15, 485);
arc(30, 315, 30, 30, PI*1, PI*1.5);
arc(300, 315, 30, 30, PI*1.5, PI*2);
arc(30, 485, 30, 30, PI*0.5, PI*1);
arc(300, 485, 30, 30, PI*0, PI*0.5);

fill(255, 0, 250);
noStroke();
ellipse(480, 400, 300, 200);

noFill();
stroke(0, 0, 0);
ellipse(795, 400, 200, 200);




strokeWeight(5);
fill(240, 240, 150);
rect(1290, 130, 300, 300);

fill(200, 40, 10);
rect(1410, 330, 60, 100);
ellipse(1420, 380, 5, 5);

fill(100, 220, 250);
rect(1310, 330, 60, 50);
rect(1510, 330, 60, 50);
arc(1340, 330, 60, 60, PI*1, PI*1.5);
arc(1340, 330, 60, 60, PI*1.5, PI*2);
arc(1540, 330, 60, 60, PI*1, PI*1.5);
arc(1540, 330, 60, 60, PI*1.5, PI*2);
line(1340, 380, 1340, 300);
line(1540, 380, 1540, 300);
line(1310, 330, 1370, 330);
line(1510, 330, 1570, 330);

ellipse(1440, 240, 60, 60);
line(1440, 210, 1440, 270);
line(1410, 240, 1470, 240);

fill(128, 128, 128);
stroke(128, 128, 128);
triangle(1290, 130, 1440, 130, 1290, 240);
triangle(1590, 130, 1440, 130, 1590, 240);

fill(240, 240, 150);
stroke(0, 0, 0);
rect(1520, 120, 50, 80);

strokeWeight(50);
stroke(0, 0, 0);
line(1440, 130, 1290, 240);
line(1440, 130, 1590, 240);
strokeWeight(25);
line(1520, 120, 1570, 120);
strokeWeight(40);
stroke(250, 70, 70);
line(1440, 130, 1290, 240);
line(1440, 130, 1590, 240);
strokeWeight(16);
line(1520, 120, 1570, 120);




strokeWeight(2);
stroke(0, 0, 0);
line(440, 650, 480, 620);
line(520, 650, 480, 620);
strokeWeight(16);
fill(240, 180, 50);
stroke(160, 120, 40);
rect(230, 650, 500, 300);

fill(240, 240, 40);
stroke(240, 240, 40);
ellipse(480, 820, 90, 90);

strokeWeight(1);

int colorMode = RGB;

color orange = color(255, 140, 20, 255);
color red = color(255, 0, 0, 255);

int left = 238;
int top = 820;
int right = 722;
int bottom = 880;

color currentStroke = orange;
float step = 0;

for (int i = top; i <= bottom; ++i) {

  step = map(i, top, bottom, 0.0, 1.0);

  currentStroke = lerpColor(orange, red, step, colorMode);
  stroke(currentStroke);

  line(left, i, right, i);
}

stroke(0, 0, 0);
fill(0, 0, 0);
rect(238, 880, 485, 70);

stroke(0, 0, 0);
strokeWeight(20);
line(350, 890, 360, 790);
line(650, 890, 630, 770);
ellipse(360, 790, 20, 20);
ellipse(630, 770, 20, 20);
strokeWeight(15);
line(360, 790, 300, 775);
line(360, 790, 300, 800);
line(360, 790, 420, 785);
line(360, 790, 420, 805);
line(630, 770, 690, 755);
line(630, 770, 690, 780);
line(630, 770, 570, 760);
line(630, 770, 570, 790);

line(300, 775, 280, 790);
line(300, 800, 285, 820);
line(420, 785, 440, 790);
line(420, 805, 445, 830);
line(690, 755, 710, 770);
line(690, 780, 715, 805);
line(570, 760, 550, 770);
line(570, 790, 545, 815);




fill(255, 255, 255);
strokeWeight(3);
stroke(0, 0, 0);
rect(1240, 700, 360, 240);
line(1280, 900, 1560, 900);
line(1280, 900, 1280, 740);
fill(0, 0, 0);
text("0", 1262, 908);
text("20", 1260, 876);
text("40", 1260, 844);
text("60", 1260, 812);
text("80", 1260, 780);
text("100", 1258, 748);
text("kg", 1275, 735);
text("Valerie", 1315, 915);
text("Jeroen", 1395, 915);
text("Hans", 1480, 915);
fill(255, 0, 0);
rect(1300, 836, 60, 64);
fill(0, 255, 0);
rect(1380, 740, 60, 160);
fill(0, 0, 255);
rect(1460, 772, 60, 128);

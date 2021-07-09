int cx, cy;
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;
float langit = 0;
int x=1;
int y=-1;
int t=1;
int xbulan;
int ybulan;
float bulan;
void setup()
{
  size(1280, 720);
  xbulan=200;
  ybulan=100;
  bulan=0;
  frameRate(5);
  int radius = min(width, height) / 9;
  secondsRadius = radius * 0.72;
  minutesRadius = radius * 0.60;
  hoursRadius = radius * 0.50;
  clockDiameter = radius * 1.8;

  cx = width / 2;
  cy = height / 2;
}

void draw ()
{
 if((t>0)&&(t<10)){
  scene1();
  }
  if((t>10)&&(t<20)){
  scene2();
  }
  if((t>20)&&(t<30)){
  scene3();
  }
  t=t+1;
}

void scene1(){
  pushMatrix();
  translate(x, y);
  float red = 150;
  rotate(radians(langit));
  langit=langit+0.3;
  float blue = 255.0;
  float green=255;
  for (int i = 0; i<500; i++) {
    stroke(red, 0, blue, 500);
    line(0, i, 800, i);
    blue= blue-(255/500.0);
    red=red+(255/500.0);
    green= green+(255/500);
  }
  popMatrix();
  int d, e, f;
  d=second();
  e=minute();
  f=hour();

  //gunung
  strokeWeight(0);
  fill(0, 94, 0);
  arc(130, 330, 400, 200, (180*PI)/180, (360*PI)/180);
  fill(0, 132, 0);
  arc(320, 330, 400, 230, (180*PI)/180, (360*PI)/180);


  //bulan
  pushMatrix();
  translate(xbulan, ybulan);
  rotate(radians(bulan));
  strokeWeight(4);
  stroke(1);
  fill(255, 255, 176);
  ellipse(40, 90, 60, 60);
  bulan=bulan+1.2;
  popMatrix();

  //lahan
  strokeWeight(2);
  stroke(1);
  fill(80, 49, 33);
  quad(0, 330, 380, 330, 380, 450, 0, 450);


  //dinding
  strokeWeight(0);
  noStroke();
  fill(187, 221, 255);
  //atas
  quad(0, 0, 1280, 0, 1280, 40, 0, 40);
  //kanan
  quad(370, 0, 1280, 0, 1280, 720, 370, 720);
  //kiri
  quad(0, 0, 20, 0, 20, 720, 0, 720);
  //bawah
  quad(0, 440, 1280, 440, 380, 1280, 0, 1280);


  //jendela
  strokeWeight(2);
  stroke(1);
  fill(185, 122, 87);
  quad(10, 40, 380, 40, 380, 70, 10, 70);
  line(10, 50, 380, 50);
  line(10, 60, 380, 60);
  noStroke();
  quad(10, 40, 20, 40, 20, 440, 10, 440);
  quad(370, 40, 380, 40, 380, 440, 370, 440);
  quad(190, 40, 200, 40, 200, 440, 190, 440);
  quad(10, 440, 380, 440, 380, 430, 10, 430);



  //JAAAAAAAMMMMMMMMM
  pushMatrix();
  translate(525, -250);
  // Latar Jam
  pushMatrix();
  fill(60);
  stroke(0);
  strokeWeight(10);
  translate(width/2, height/2);
  ellipse(0, 0, 125, 125);
  popMatrix();

  // Angles for sin() and cos() start at 3 o'clock;
  // subtract HALF_PI to make them start at the top
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;

  // Jarum Jam
  stroke(255);
  strokeWeight(2);
  line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
  strokeWeight(6);
  line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);
  strokeWeight(6);
  line(cx, cy, cx + cos(h) * hoursRadius, cy + sin(h) * hoursRadius);

  // Menit
  /*strokeWeight(2);
   beginShape(POINTS);
   for (int a = 0; a < 360; a+=6) {
   float angle = radians(a);
   float x = cx + cos(angle) * secondsRadius;
   float y = cy + sin(angle) * secondsRadius;
   vertex(x, y);
   }
   endShape();*/
  /*translate(width/2, height/2);
   fill(225, 225, 225);
   textSize(30);
   text("12", -15, -85);
   text("3", 97, 9);
   text("6", -8, 110);
   text("9", -100, 6);*/
  popMatrix();

  translate(width/2, height/2);

  //ARIIIFFFFF
  pushMatrix();
  translate(400, 0);
  pushMatrix(); 
  translate(-625, -350);


  //rambut
  pushMatrix();
  fill(155, 100, 10);
  noStroke();
  ellipse(440, 110, 100, 100);
  popMatrix();


  //leher
  pushMatrix();
  strokeWeight(1);
  stroke(1);
  fill(230, 210, 154);
  rect(430, 160, 25, 30);
  popMatrix();


  //kepala
  pushMatrix();
  strokeWeight(1);
  stroke(1);
  fill(255, 233, 170);
  ellipse(440, 120, 95, 100);
  popMatrix();


  //mata kiri
  pushMatrix();
  fill(0, 0, 0);
  noStroke();
  ellipse(410, 115, 10, 10);
  popMatrix();


  //mata kanan
  pushMatrix();
  fill(0, 0, 0);
  noStroke();
  ellipse(435, 115, 10, 10);
  popMatrix();


  //mulut
  pushMatrix();
  strokeWeight(1);
  stroke(1);
  translate(-22, 0);
  fill(255, 0, 0);
  arc(450, 137, 30, 30, 0, PI);
  popMatrix();


  //peci
  pushMatrix();
  fill(0, 0, 0);
  rect(390, 40, 100, 50);
  popMatrix();


  //badan  
  pushMatrix();
  strokeWeight(1);
  stroke(1);
  fill(8, 13, 132);
  rect(405, 190, 75, 150, 110);
  popMatrix();


  //kaki kiri
  pushMatrix();
  fill(255, 233, 170);
  rect(410, 370, 20, 60);
  popMatrix();


  //kaki kana
  pushMatrix();
  translate(-10, 0);
  fill(255, 233, 170);
  rect(460, 370, 20, 60);
  popMatrix();

  //sarung
  pushMatrix();
  fill(0, 0, 0);
  rect(405, 290, 75, 100);
  popMatrix();


  //kotak kotak sarung
  pushMatrix();
  fill(167, 34, 27);//warna tangan
  rect(405, 290, 75, 10);
  popMatrix();


  //tangan kanan
  pushMatrix();
  //rotate(radians(tanganapin));
  translate(425, 200);
  strokeWeight(1);
  stroke(0);
  fill(255, 233, 170);
  rect(0, 0, 30, 125, 25);
  //tanganapin=tanganapin+1;
  popMatrix();
  popMatrix();
  popMatrix();

  //BAPAAAAAAAAAAAAAAAAAAAAAAAAAAKKKKKKKKKKKKKKK

  pushMatrix();
  translate(-425, -400);
  //rambut
  fill(155, 100, 10);
  noStroke();
  ellipse(450, 110, 100, 100);

  //kepala
  fill(255, 233, 170);
  noStroke();
  ellipse(450, 120, 100, 100);

  //mata kiri
  fill(0, 0, 0);
  noStroke();
  ellipse(430, 115, 10, 10);

  //mata kanan
  fill(0, 0, 0);
  noStroke();
  ellipse(475, 115, 10, 10);

  //mulut
  fill(255, 0, 0);
  arc(450, 137, 30, 30, 0, PI);

  //leher
  fill(255, 233, 170);
  rect(438, 160, 25, 30);


  //kumis
  fill(0);
  arc(450, 157, 30, 60, 0, PI);

  //tangan kanan
  fill(255, 233, 170);
  rect(370, 210, 30, 90, 25);

  //badan  
  fill(250, 0, 0);
  rect(405, 190, 90, 200, 30);



  //tangan kiri
  fill(255, 233, 170);
  rect(500, 210, 30, 90, 25);


  //kaki kiri
  fill(255, 233, 170);
  rect(410, 390, 30, 60);

  //kaki kanan
  fill(255, 233, 170);
  rect(460, 390, 30, 60);


  //sarung
  fill(0, 0, 0);
  rect(405, 290, 90, 100);

  //kotak kotak sarung
  fill(25, 10, 255);
  rect(405, 390, 90, 10);

  //lambang PDI
  fill(0);
  ellipse(425, 215, 25, 25); 
  fill(255, 0, 0);
  ellipse(425, 215, 20, 20);
  fill(0);
  textSize(10);
  text("PDI", 417, 220);
  popMatrix();

  //MEJAAAAAAAAA
  //kaki meja
  pushMatrix();
  strokeWeight(2);
  stroke(0);
  fill(145, 63, 32);
  rect(-250, 25, 25, 250);
  fill(208, 145, 90);
  rect(-225, 75, 10, 200);

  fill(145, 63, 32);
  rect(225, 25, 25, 250);
  fill(208, 145, 90);
  rect(215, 75, 10, 200);

  fill(145, 63, 32);
  rect(-100, 0, 15, 100);
  fill(208, 145, 90);
  rect(-85, 0, 10, 100);

  fill(145, 63, 32);
  rect(100, 0, 15, 100);
  fill(208, 145, 90);
  rect(90, 0, 10, 100);

  //alas meja
  strokeWeight(2);
  stroke(1);
  fill(208, 145, 90);
  quad(-125, -100, -250, 25, 250, 25, 125, -100);
  fill(145, 63, 32);
  rect(-250, 25, 500, 50);
  popMatrix();


  //AYAAAAAAAMMMM
  //BADAN AYAM
  pushMatrix();
  translate(75, -120);
  strokeWeight(2.5);
  stroke(1);
  fill(243, 159, 37);
  ellipse(0, 0, 115, 85);

  pushMatrix();
  //tulang
  //rotate(radians(ayam));
  //yam = ayam+1;
  pushMatrix();
  fill(254, 233, 169);
  rotate(PI/4.0);
  rect(25, -80, 8, 70);
  popMatrix();
  ellipse(80, -40, 15, 15);


  //paha
  fill(243, 159, 37);
  ellipse(40, 0, 50, 50);
  ellipse(60, -15, 25, 25);
  popMatrix();

  //piring
  fill(71, 136, 200);
  rect(-80, 25, 160, 40, 30);
  popMatrix();

  //NASIIIII
  pushMatrix();
  translate(-75, -50);
  stroke(1);
  fill(237, 234, 218);
  ellipse(-50, -10, 20, 20);
  ellipse(-40, -20, 20, 20);
  ellipse(-30, -10, 20, 20);
  ellipse(-20, -20, 20, 20);
  ellipse(-10, -10, 20, 20);
  ellipse(0, -20, 20, 20);
  ellipse(10, -10, 20, 20);
  ellipse(20, -20, 20, 20);
  ellipse(30, -10, 20, 20);
  ellipse(40, -20, 20, 20);
  ellipse(50, -10, 20, 20);

  ellipse(-35, -30, 20, 20);
  ellipse(-30, -40, 20, 20);
  ellipse(-25, -30, 20, 20);
  ellipse(-20, -40, 20, 20);
  ellipse(-15, -30, 20, 20);
  ellipse(-10, -40, 20, 20);
  ellipse(-5, -30, 20, 20);
  ellipse(0, -40, 20, 20);
  ellipse(10, -30, 20, 20);
  ellipse(20, -40, 20, 20);
  ellipse(30, -30, 20, 20);
  ellipse(35, -40, 20, 20);
  stroke(1);
  fill(0, 214, 242);
  bezier(75, -10, -25, 100, -75, 0, -75, -10);
  popMatrix();

  //GELASSSS
  fill(178, 230, 249);
  rect(50, -75, 50, 80, 20);
  rect(50, -75, 50, 15, 20);
  
}
  void scene2(){
    pushMatrix();

  translate(x, y);
  float red = 150;
  rotate(radians(langit));
  langit=langit+0.3;
  float blue = 255.0;
  float green=255;
  for (int i = 0; i<500; i++) {
    stroke(red, 0, blue, 500);
    line(0, i, 800, i);
    blue= blue-(255/500.0);
    red=red+(255/500.0);
    green= green+(255/500);
  }
  popMatrix();
  int d, e, f;
  d=second();
  e=minute();
  f=hour();

  //gunung
  strokeWeight(0);
  fill(0, 94, 0);
  arc(130, 330, 400, 200, (180*PI)/180, (360*PI)/180);
  fill(0, 132, 0);
  arc(320, 330, 400, 230, (180*PI)/180, (360*PI)/180);


  //bulan
  pushMatrix();
  translate(xbulan, ybulan);
  rotate(radians(bulan));
  strokeWeight(4);
  stroke(1);
  fill(255, 255, 176);
  ellipse(40, 90, 60, 60);
  bulan=bulan+1.2;
  popMatrix();

  //lahan
  strokeWeight(2);
  stroke(1);
  fill(80, 49, 33);
  quad(0, 330, 380, 330, 380, 450, 0, 450);


  //dinding
  strokeWeight(0);
  noStroke();
  fill(187, 221, 255);
  //atas
  quad(0, 0, 1280, 0, 1280, 40, 0, 40);
  //kanan
  quad(370, 0, 1280, 0, 1280, 720, 370, 720);
  //kiri
  quad(0, 0, 20, 0, 20, 720, 0, 720);
  //bawah
  quad(0, 440, 1280, 440, 380, 1280, 0, 1280);


  //jendela
  strokeWeight(2);
  stroke(1);
  fill(185, 122, 87);
  quad(10, 40, 380, 40, 380, 70, 10, 70);
  line(10, 50, 380, 50);
  line(10, 60, 380, 60);
  noStroke();
  quad(10, 40, 20, 40, 20, 440, 10, 440);
  quad(370, 40, 380, 40, 380, 440, 370, 440);
  quad(190, 40, 200, 40, 200, 440, 190, 440);
  quad(10, 440, 380, 440, 380, 430, 10, 430);



  //JAAAAAAAMMMMMMMMM
  pushMatrix();
  translate(525, -250);
  // Latar Jam
  pushMatrix();
  fill(60);
  stroke(0);
  strokeWeight(10);
  translate(width/2, height/2);
  ellipse(0, 0, 125, 125);
  popMatrix();

  // Angles for sin() and cos() start at 3 o'clock;
  // subtract HALF_PI to make them start at the top
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;

  // Jarum Jam
  stroke(255);
  strokeWeight(2);
  line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
  strokeWeight(6);
  line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);
  strokeWeight(6);
  line(cx, cy, cx + cos(h) * hoursRadius, cy + sin(h) * hoursRadius);

  // Menit
  /*strokeWeight(2);
   beginShape(POINTS);
   for (int a = 0; a < 360; a+=6) {
   float angle = radians(a);
   float x = cx + cos(angle) * secondsRadius;
   float y = cy + sin(angle) * secondsRadius;
   vertex(x, y);
   }
   endShape();*/
  /*translate(width/2, height/2);
   fill(225, 225, 225);
   textSize(30);
   text("12", -15, -85);
   text("3", 97, 9);
   text("6", -8, 110);
   text("9", -100, 6);*/
  popMatrix();

  translate(width/2, height/2);

  //ARIIIFFFFF
  pushMatrix();
  translate(400, 0);
  pushMatrix(); 
  translate(-625, -350);


  //rambut
  pushMatrix();
  fill(155, 100, 10);
  noStroke();
  ellipse(440, 110, 100, 100);
  popMatrix();


  //leher
  pushMatrix();
  strokeWeight(1);
  stroke(1);
  fill(230, 210, 154);
  rect(430, 160, 25, 30);
  popMatrix();


  //kepala
  pushMatrix();
  strokeWeight(1);
  stroke(1);
  fill(255, 233, 170);
  ellipse(440, 120, 95, 100);
  popMatrix();


  //mata kiri
  pushMatrix();
  fill(0, 0, 0);
  noStroke();
  ellipse(410, 115, 10, 10);
  popMatrix();


  //mata kanan
  pushMatrix();
  fill(0, 0, 0);
  noStroke();
  ellipse(435, 115, 10, 10);
  popMatrix();


  //mulut
  pushMatrix();
  strokeWeight(1);
  stroke(1);
  translate(-22, 0);
  fill(255, 0, 0);
  arc(450, 137, 30, 30, 0, PI);
  popMatrix();


  //peci
  pushMatrix();
  fill(0, 0, 0);
  rect(390, 40, 100, 50);
  popMatrix();
  
  //tangan kanan
  pushMatrix();
  rotate(PI/3);
  translate(400,-300);
  strokeWeight(1);
  stroke(0);
  fill(255, 233, 170);
  rect(0, 0, 30, 125, 25);
  //tanganapin=tanganapin+1;
  popMatrix();

  //badan  
  pushMatrix();
  strokeWeight(1);
  stroke(1);
  fill(8, 13, 132);
  rect(405, 190, 75, 150, 110);
  popMatrix();


  //kaki kiri
  pushMatrix();
  fill(255, 233, 170);
  rect(410, 370, 20, 60);
  popMatrix();


  //kaki kana
  pushMatrix();
  translate(-10, 0);
  fill(255, 233, 170);
  rect(460, 370, 20, 60);
  popMatrix();

  //sarung
  pushMatrix();
  fill(0, 0, 0);
  rect(405, 290, 75, 100);
  popMatrix();


  //kotak kotak sarung
  pushMatrix();
  fill(167, 34, 27);//warna tangan
  rect(405, 290, 75, 10);
  popMatrix();


  //tangan kanan
  pushMatrix();
  //rotate(radians(tanganapin));
  translate(425, 200);
  strokeWeight(1);
  stroke(0);
  fill(255, 233, 170);
  rect(0, 0, 30, 125, 25);
  //tanganapin=tanganapin+1;
  popMatrix();
  popMatrix();
  popMatrix();

  //BAPAAAAAAAAAAAAAAAAAAAAAAAAAAKKKKKKKKKKKKKKK

  pushMatrix();
  translate(-425, -400);
  //rambut
  fill(155, 100, 10);
  noStroke();
  ellipse(450, 110, 100, 100);

  //kepala
  fill(255, 233, 170);
  noStroke();
  ellipse(450, 120, 100, 100);

  //mata kiri
  fill(0, 0, 0);
  noStroke();
  ellipse(430, 115, 10, 10);

  //mata kanan
  fill(0, 0, 0);
  noStroke();
  ellipse(475, 115, 10, 10);

  //mulut
  fill(255, 0, 0);
  arc(450, 137, 30, 30, 0, PI);

  //leher
  fill(255, 233, 170);
  rect(438, 160, 25, 30);


  //kumis
  fill(0);
  arc(450, 157, 30, 60, 0, PI);

  //tangan kanan
  fill(255, 233, 170);
  rect(370, 210, 30, 90, 25);

  //badan  
  fill(250, 0, 0);
  rect(405, 190, 90, 200, 30);



  //tangan kiri
  fill(255, 233, 170);
  rect(500, 210, 30, 90, 25);


  //kaki kiri
  fill(255, 233, 170);
  rect(410, 390, 30, 60);

  //kaki kanan
  fill(255, 233, 170);
  rect(460, 390, 30, 60);


  //sarung
  fill(0, 0, 0);
  rect(405, 290, 90, 100);

  //kotak kotak sarung
  fill(25, 10, 255);
  rect(405, 390, 90, 10);

  //lambang PDI
  fill(0);
  ellipse(425, 215, 25, 25); 
  fill(255, 0, 0);
  ellipse(425, 215, 20, 20);
  fill(0);
  textSize(10);
  text("PDI", 417, 220);
  popMatrix();

  //MEJAAAAAAAAA
  //kaki meja
  pushMatrix();
  strokeWeight(2);
  stroke(0);
  fill(145, 63, 32);
  rect(-250, 25, 25, 250);
  fill(208, 145, 90);
  rect(-225, 75, 10, 200);

  fill(145, 63, 32);
  rect(225, 25, 25, 250);
  fill(208, 145, 90);
  rect(215, 75, 10, 200);

  fill(145, 63, 32);
  rect(-100, 0, 15, 100);
  fill(208, 145, 90);
  rect(-85, 0, 10, 100);

  fill(145, 63, 32);
  rect(100, 0, 15, 100);
  fill(208, 145, 90);
  rect(90, 0, 10, 100);

  //alas meja
  strokeWeight(2);
  stroke(1);
  fill(208, 145, 90);
  quad(-125, -100, -250, 25, 250, 25, 125, -100);
  fill(145, 63, 32);
  rect(-250, 25, 500, 50);
  popMatrix();


  //AYAAAAAAAMMMM
  //BADAN AYAM
  pushMatrix();
  translate(75, -120);
  strokeWeight(2.5);
  stroke(1);
  fill(243, 159, 37);
  ellipse(0, 0, 115, 85);

  pushMatrix();
  //tulang
  //rotate(radians(ayam));
  //yam = ayam+1;
  pushMatrix();
  fill(254, 233, 169);
  rotate(PI/4.0);
  rect(25, -80, 8, 70);
  popMatrix();
  ellipse(80, -40, 15, 15);


  //paha
  fill(243, 159, 37);
  ellipse(40, 0, 50, 50);
  ellipse(60, -15, 25, 25);
  popMatrix();

  //piring
  fill(71, 136, 200);
  rect(-80, 25, 160, 40, 30);
  popMatrix();

  //NASIIIII
  pushMatrix();
  translate(-75, -50);
  stroke(1);
  fill(237, 234, 218);
  ellipse(-50, -10, 20, 20);
  ellipse(-40, -20, 20, 20);
  ellipse(-30, -10, 20, 20);
  ellipse(-20, -20, 20, 20);
  ellipse(-10, -10, 20, 20);
  ellipse(0, -20, 20, 20);
  ellipse(10, -10, 20, 20);
  ellipse(20, -20, 20, 20);
  ellipse(30, -10, 20, 20);
  ellipse(40, -20, 20, 20);
  ellipse(50, -10, 20, 20);

  ellipse(-35, -30, 20, 20);
  ellipse(-30, -40, 20, 20);
  ellipse(-25, -30, 20, 20);
  ellipse(-20, -40, 20, 20);
  ellipse(-15, -30, 20, 20);
  ellipse(-10, -40, 20, 20);
  ellipse(-5, -30, 20, 20);
  ellipse(0, -40, 20, 20);
  ellipse(10, -30, 20, 20);
  ellipse(20, -40, 20, 20);
  ellipse(30, -30, 20, 20);
  ellipse(35, -40, 20, 20);
  stroke(1);
  fill(0, 214, 242);
  bezier(75, -10, -25, 100, -75, 0, -75, -10);
  popMatrix();

  //GELASSSS
  fill(178, 230, 249);
  rect(50, -75, 50, 80, 20);
  rect(50, -75, 50, 15, 20);
  }
  void scene3(){
   pushMatrix();

  translate(x, y);
  float red = 150;
  rotate(radians(langit));
  langit=langit+0.3;
  float blue = 255.0;
  float green=255;
  for (int i = 0; i<500; i++) {
    stroke(red, 0, blue, 500);
    line(0, i, 800, i);
    blue= blue-(255/500.0);
    red=red+(255/500.0);
    green= green+(255/500);
  }
  popMatrix();
  int d, e, f;
  d=second();
  e=minute();
  f=hour();

  //gunung
  strokeWeight(0);
  fill(0, 94, 0);
  arc(130, 330, 400, 200, (180*PI)/180, (360*PI)/180);
  fill(0, 132, 0);
  arc(320, 330, 400, 230, (180*PI)/180, (360*PI)/180);


  //bulan
  pushMatrix();
  translate(xbulan, ybulan);
  rotate(radians(bulan));
  strokeWeight(4);
  stroke(1);
  fill(255, 255, 176);
  ellipse(40, 90, 60, 60);
  bulan=bulan+1.2;
  popMatrix();

  //lahan
  strokeWeight(2);
  stroke(1);
  fill(80, 49, 33);
  quad(0, 330, 380, 330, 380, 450, 0, 450);


  //dinding
  strokeWeight(0);
  noStroke();
  fill(187, 221, 255);
  //atas
  quad(0, 0, 1280, 0, 1280, 40, 0, 40);
  //kanan
  quad(370, 0, 1280, 0, 1280, 720, 370, 720);
  //kiri
  quad(0, 0, 20, 0, 20, 720, 0, 720);
  //bawah
  quad(0, 440, 1280, 440, 380, 1280, 0, 1280);


  //jendela
  strokeWeight(2);
  stroke(1);
  fill(185, 122, 87);
  quad(10, 40, 380, 40, 380, 70, 10, 70);
  line(10, 50, 380, 50);
  line(10, 60, 380, 60);
  noStroke();
  quad(10, 40, 20, 40, 20, 440, 10, 440);
  quad(370, 40, 380, 40, 380, 440, 370, 440);
  quad(190, 40, 200, 40, 200, 440, 190, 440);
  quad(10, 440, 380, 440, 380, 430, 10, 430);



  //JAAAAAAAMMMMMMMMM
  pushMatrix();
  translate(525, -250);
  // Latar Jam
  pushMatrix();
  fill(60);
  stroke(0);
  strokeWeight(10);
  translate(width/2, height/2);
  ellipse(0, 0, 125, 125);
  popMatrix();

  // Angles for sin() and cos() start at 3 o'clock;
  // subtract HALF_PI to make them start at the top
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;

  // Jarum Jam
  stroke(255);
  strokeWeight(2);
  line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
  strokeWeight(6);
  line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);
  strokeWeight(6);
  line(cx, cy, cx + cos(h) * hoursRadius, cy + sin(h) * hoursRadius);

  // Menit
  /*strokeWeight(2);
   beginShape(POINTS);
   for (int a = 0; a < 360; a+=6) {
   float angle = radians(a);
   float x = cx + cos(angle) * secondsRadius;
   float y = cy + sin(angle) * secondsRadius;
   vertex(x, y);
   }
   endShape();*/
  /*translate(width/2, height/2);
   fill(225, 225, 225);
   textSize(30);
   text("12", -15, -85);
   text("3", 97, 9);
   text("6", -8, 110);
   text("9", -100, 6);*/
  popMatrix();

  translate(width/2, height/2);

  //ARIIIFFFFF
  pushMatrix();
  translate(400, 0);
  pushMatrix(); 
  translate(-625, -350);


  //rambut
  pushMatrix();
  fill(155, 100, 10);
  noStroke();
  ellipse(440, 110, 100, 100);
  popMatrix();


  //leher
  pushMatrix();
  strokeWeight(1);
  stroke(1);
  fill(230, 210, 154);
  rect(430, 160, 25, 30);
  popMatrix();


  //kepala
  pushMatrix();
  strokeWeight(1);
  stroke(1);
  fill(255, 233, 170);
  ellipse(440, 120, 95, 100);
  popMatrix();


  //mata kiri
  pushMatrix();
  fill(0, 0, 0);
  noStroke();
  ellipse(410, 115, 10, 10);
  popMatrix();


  //mata kanan
  pushMatrix();
  fill(0, 0, 0);
  noStroke();
  ellipse(435, 115, 10, 10);
  popMatrix();


  //mulut
  pushMatrix();
  strokeWeight(1);
  stroke(1);
  translate(-22, 0);
  fill(255, 0, 0);
  arc(450, 137, 30, 30, 0, PI);
  popMatrix();


  //peci
  pushMatrix();
  fill(0, 0, 0);
  rect(390, 40, 100, 50);
  popMatrix();
  
  //tangan kanan
  pushMatrix();
  translate(320,50);
  stroke(255, 233, 170);
  strokeWeight(30);
  line(100, 200, 30, 125);
  //tanganapin=tanganapin+1;
  popMatrix();

  //badan  
  pushMatrix();
  strokeWeight(1);
  stroke(1);
  fill(8, 13, 132);
  rect(405, 190, 75, 150, 110);
  popMatrix();


  //kaki kiri
  pushMatrix();
  fill(255, 233, 170);
  rect(410, 370, 20, 60);
  popMatrix();


  //kaki kana
  pushMatrix();
  translate(-10, 0);
  fill(255, 233, 170);
  rect(460, 370, 20, 60);
  popMatrix();

  //sarung
  pushMatrix();
  fill(0, 0, 0);
  rect(405, 290, 75, 100);
  popMatrix();


  //kotak kotak sarung
  pushMatrix();
  fill(167, 34, 27);//warna tangan
  rect(405, 290, 75, 10);
  popMatrix();


  //tangan kanan
  pushMatrix();
  //rotate(radians(tanganapin));
  translate(425, 200);
  strokeWeight(1);
  stroke(0);
  fill(255, 233, 170);
  rect(0, 0, 30, 125, 25);
  //tanganapin=tanganapin+1;
  popMatrix();
  popMatrix();
  popMatrix();

  //BAPAAAAAAAAAAAAAAAAAAAAAAAAAAKKKKKKKKKKKKKKK

  pushMatrix();
  translate(-425, -400);
  //rambut
  fill(155, 100, 10);
  noStroke();
  ellipse(450, 110, 100, 100);

  //kepala
  fill(255, 233, 170);
  noStroke();
  ellipse(450, 120, 100, 100);

  //mata kiri
  fill(0, 0, 0);
  noStroke();
  ellipse(430, 115, 10, 10);

  //mata kanan
  fill(0, 0, 0);
  noStroke();
  ellipse(475, 115, 10, 10);

  //mulut
  fill(255, 0, 0);
  arc(450, 137, 30, 30, 0, PI);

  //leher
  fill(255, 233, 170);
  rect(438, 160, 25, 30);


  //kumis
  fill(0);
  arc(450, 157, 30, 60, 0, PI);

  //tangan kanan
  fill(255, 233, 170);
  rect(370, 210, 30, 90, 25);

  //badan  
  fill(250, 0, 0);
  rect(405, 190, 90, 200, 30);



  //tangan kiri
  fill(255, 233, 170);
  rect(500, 210, 30, 90, 25);


  //kaki kiri
  fill(255, 233, 170);
  rect(410, 390, 30, 60);

  //kaki kanan
  fill(255, 233, 170);
  rect(460, 390, 30, 60);


  //sarung
  fill(0, 0, 0);
  rect(405, 290, 90, 100);

  //kotak kotak sarung
  fill(25, 10, 255);
  rect(405, 390, 90, 10);

  //lambang PDI
  fill(0);
  ellipse(425, 215, 25, 25); 
  fill(255, 0, 0);
  ellipse(425, 215, 20, 20);
  fill(0);
  textSize(10);
  text("PDI", 417, 220);
  popMatrix();

  //MEJAAAAAAAAA
  //kaki meja
  pushMatrix();
  strokeWeight(2);
  stroke(0);
  fill(145, 63, 32);
  rect(-250, 25, 25, 250);
  fill(208, 145, 90);
  rect(-225, 75, 10, 200);

  fill(145, 63, 32);
  rect(225, 25, 25, 250);
  fill(208, 145, 90);
  rect(215, 75, 10, 200);

  fill(145, 63, 32);
  rect(-100, 0, 15, 100);
  fill(208, 145, 90);
  rect(-85, 0, 10, 100);

  fill(145, 63, 32);
  rect(100, 0, 15, 100);
  fill(208, 145, 90);
  rect(90, 0, 10, 100);

  //alas meja
  strokeWeight(2);
  stroke(1);
  fill(208, 145, 90);
  quad(-125, -100, -250, 25, 250, 25, 125, -100);
  fill(145, 63, 32);
  rect(-250, 25, 500, 50);
  popMatrix();


  //AYAAAAAAAMMMM
  //BADAN AYAM
  pushMatrix();
  translate(75, -120);
  strokeWeight(2.5);
  stroke(1);
  fill(243, 159, 37);
  ellipse(0, 0, 115, 85);

  pushMatrix();
  //tulang
  translate(35,-50);
  pushMatrix();
  fill(254, 233, 169);
  rotate(PI/4.0);
  rect(25, -80, 8, 70);
  popMatrix();
  ellipse(80, -40, 15, 15);


  //paha
  fill(243, 159, 37);
  ellipse(40, 0, 50, 50);
  ellipse(60, -15, 25, 25);
  popMatrix();

  //piring
  fill(71, 136, 200);
  rect(-80, 25, 160, 40, 30);
  popMatrix();

  //NASIIIII
  pushMatrix();
  translate(-75, -50);
  stroke(1);
  fill(237, 234, 218);
  ellipse(-50, -10, 20, 20);
  ellipse(-40, -20, 20, 20);
  ellipse(-30, -10, 20, 20);
  ellipse(-20, -20, 20, 20);
  ellipse(-10, -10, 20, 20);
  ellipse(0, -20, 20, 20);
  ellipse(10, -10, 20, 20);
  ellipse(20, -20, 20, 20);
  ellipse(30, -10, 20, 20);
  ellipse(40, -20, 20, 20);
  ellipse(50, -10, 20, 20);

  ellipse(-35, -30, 20, 20);
  ellipse(-30, -40, 20, 20);
  ellipse(-25, -30, 20, 20);
  ellipse(-20, -40, 20, 20);
  ellipse(-15, -30, 20, 20);
  ellipse(-10, -40, 20, 20);
  ellipse(-5, -30, 20, 20);
  ellipse(0, -40, 20, 20);
  ellipse(10, -30, 20, 20);
  ellipse(20, -40, 20, 20);
  ellipse(30, -30, 20, 20);
  ellipse(35, -40, 20, 20);
  stroke(1);
  fill(0, 214, 242);
  bezier(75, -10, -25, 100, -75, 0, -75, -10);
  popMatrix();

  //GELASSSS
  fill(178, 230, 249);
  rect(50, -75, 50, 80, 20);
  rect(50, -75, 50, 15, 20);
  }

int cx, cy;
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;
float langit = 90;
float x=1;
float y=-1;
float size=75;
float xbulan;
float ybulan;
float bulan;
int t = 0;
PFont tulisan;
float a,b,c;
import processing.sound.*;
SoundFile file;
void setup()
{
  size(1280, 720);
  xbulan=200;
  ybulan=100;
  bulan=0;
  frameRate(40);
  tulisan = createFont("SansSerifBldFLF.otf",30);

  file= new SoundFile(this,"audioGrafmull.wav");
  file.play();
  
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
  if ((t>0)&&(t<1770)) {
    pembuka();
  }
  if ((t>1770)&&(t<1850)) {
    transisi1();
  }
  
  if ((t>1850)&&(t<2277)) {
    scene1a();
  }
  if ((t>2277)&&(t<2744)) {
    scene1b();
  }
  if ((t>2744)&&(t<3131)) {
    scene1c();
  }
  if ((t>3131)&&(t<3411)) {
    transisi2();
  }
  
  
  
  if((t>3411)&&(t<3731)){
   scene2a();
   }
   if((t>3731)&&(t<4027)){
   scene2c();
   }
     if((t>4027)&&(t<4323)){
   scene2a();
   }
   if((t>4323)&&(t<4619)){
   scene2c();
   }
     if((t>4619)&&(t<4915)){
   scene2a();
   }
   if((t>4915)&&(t<5211)){
   scene2c();
   }

    if((t>5211)&&(t<6149)){
   scene3a();
   }
   if((t>6149)&&(t<6459)){
   scene3b();
   }
   
  if((t>6459)&&(t<7500)){
   penutup();
   }
   
  t++;
}
void pembuka() {
  background(30, 32, 72);

  //laut
  fill(0, 65, 130);
  rect(0, 400, 1270, 50);

  fill(0, 50, 100);
  rect(0, 450, 1270, 50);

  fill(0, 40, 80);
  rect(0, 500, 1270, 50);

  fill(0, 30, 60);
  rect(0, 550, 1270, 50);

  fill(0, 22, 45);
  rect(0, 600, 1270, 50);

  fill(0, 15, 30);
  rect(0, 650, 1270, 50);

  //bulan
  fill(255, 240, 0);
  noStroke();
  ellipse(180, 175, 150, 150);

  //hitam
  fill(30, 32, 72);
  ellipse(210, 175, 150, 150);


  //kalimat
  textSize(40);
  fill(72, 209, 204);
  noStroke();
  text("Amalan Sunnah di Bulan Ramadhan", 300, 120);
  textSize(20);
  text("Pada bulan Ramadan, nilai kebaikan dari setiap aktivitas yang bernilai ibadah ", 300, 180);
  text("menjadi lebih tinggi dari bulan-bulan lain. Bahkan, amal kebaikan dibalas ", 300, 200);
  text("dengan pahala yang berlipat ganda.", 300, 220);

  text("Barang siapa yang pada bulan itu mendekatkan diri kepada Allah dengan ", 300, 260);
  text("suatu kebaikan, nilainya seperti orang yang melakukan perbuatan yang", 300, 280);
  text("diwajibkan pada bulan lainnya. Dan, barang siapa yang melakukan suatu ", 300, 300);

  text("kewajiban pada bulan itu, nilainya sama dengan 70 kali lipat dari kewajiban", 300, 320);
  text("yang dilakukannya pada bulan lainnya. Keutamaan sedekah adalah sedekah ", 300, 340);
  text("pada bulan Ramadan.(HR. Bukhari-Muslim)", 300, 360);

  //Jalan Kapal
  x = x + 0.1;
  translate(x, height/2-10*size/2);

  y = y + 0.2;
  translate(y-200, height/2-5*size/2);

  //kapal
  fill(178, 123, 72);
  noStroke();
  rect(550, 285, 100, 105);

  fill(113, 38, 10);
  noStroke();
  quad(350, 350, 700, 350, 650, 400, 420, 400);

  //tiang
  fill(255);
  rect(410, 190, 6, 160);

  //layar
  fill(255, 10, 0);
  triangle(423, 190, 480, 320, 423, 320);
}

void transisi1() { 
  background(0);
}

void scene1a() {
  pushMatrix();
  background(4, 17, 51);
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
  bulan=bulan+0.04;
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
void scene1b() {
  pushMatrix();

  background(10, 26, 69);
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
bulan=bulan+0.04;
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
translate(400, -300);
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
void scene1c() {
  background(8, 29, 84);
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


  //bulan1
  pushMatrix();
  translate(xbulan, ybulan);
  rotate(radians(bulan));
  strokeWeight(4);
  stroke(1);
  fill(255, 255, 176);
  ellipse(40, 90, 60, 60);
  bulan=bulan+0.04;
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
  c = c + 0.3;
  if (c > 30) {
    c = 30;
  }
  strokeWeight(1);
  stroke(1);
  translate(-22, 0);
  fill(255, 0, 0);
  arc(450, 137, c, c, 0, PI);
  popMatrix();


  //peci
  pushMatrix();
  fill(0, 0, 0);
  rect(390, 40, 100, 50);
  popMatrix();

  //tangan kanan
  pushMatrix();
  translate(320, 50);
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
  translate(35, -50);
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

void scene2a() {
  background(67, 28, 94);
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
//rotate(radians(bulan));
strokeWeight(4);
stroke(1);
fill(255, 255, 176);
ellipse(40, 90, 60, 60);
bulan=bulan+0.2;
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

//GELASSSS BAPA
pushMatrix();
translate(-75, -75);
fill(178, 230, 249);
rect(25, -75, 80, 80, 30);
rect(25, -75, 80, 15, 20);
popMatrix();

//KURMAAAA
//kurma1
pushMatrix();
fill(85, 40, 46);
translate(-35, -75);
rotate(PI/4);
ellipse(0, 0, 25, 40);
popMatrix();
//kurma2
pushMatrix();
fill(85, 40, 46);
translate(-0, -75);
rotate(PI/2);
ellipse(0, 0, 25, 40);
popMatrix();
//kurma1
pushMatrix();
fill(85, 40, 46);
translate(-17, -90);
rotate(PI/4);
ellipse(0, 0, 25, 40);
popMatrix();
pushMatrix();
fill(71, 136, 200);
rect(-80, -70, 125, 25, 30);
popMatrix();

//GELASSSS
fill(178, 230, 249);
rect(50, -75, 50, 80, 20);
rect(50, -75, 50, 15, 20);

}

void scene2c() {
  pushMatrix();

  background(67, 28, 94);
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
  //rotate(radians(bulan));
  strokeWeight(4);
  stroke(1);
  fill(255, 255, 176);
  ellipse(40, 90, 60, 60);
  bulan=bulan+0.04;
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
  c = c + 0.1;
  if (c > 30) {
    c = 30;
  }
  strokeWeight(1);
  stroke(1);
  translate(-22, 0);
  fill(255, 0, 0);
  arc(450, 137, c, c, 0, PI);
  popMatrix();


  //peci
  pushMatrix();
  fill(0, 0, 0);
  rect(390, 40, 100, 50);
  popMatrix();

  //tangan kanan
  pushMatrix();
  translate(320, 50);
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


  //GELASSSS BAPA
  pushMatrix();
  translate(-75, -75);
  fill(178, 230, 249);
  rect(25, -75, 80, 80, 30);
  rect(25, -75, 80, 15, 20);
  popMatrix();

  //KURMAAAA
  //kurma1
  pushMatrix();
  fill(85, 40, 46);
  translate(-35, -75);
  rotate(PI/4);
  ellipse(0, 0, 25, 40);
  popMatrix();
  //kurma2
  pushMatrix();
  fill(85, 40, 46);
  translate(-0, -75);
  rotate(PI/2);
  ellipse(0, 0, 25, 40);
  popMatrix();
  //kurma3
  pushMatrix();
  fill(85, 40, 46);
  translate(175, -200);
  rotate(PI/4);
  ellipse(0, 0, 25, 40);
  popMatrix();
  pushMatrix();
  fill(71, 136, 200);
  rect(-80, -70, 125, 25, 30);
  popMatrix();

  //GELASSSS
  fill(178, 230, 249);
  rect(50, -75, 50, 80, 20);
  rect(50, -75, 50, 15, 20);
}
void transisi2() {
  background(0);
}

void scene3a(){
  translate(width/2, height/2);
  background(255);
  noStroke();

  //sajadah
  pushMatrix();

  translate(-600, -200);
  fill(184, 24, 24);
  rect(-200, 350, 2000, 500, 250, 500, 1000, 100);
  popMatrix();
  fill(250, 221, 115);
  rect(-1280, 150, 5000, 20);
  rect(-1280, 250, 5000, 20);



  //dinding masjid
  pushMatrix();
  fill(171, 158, 123);
  rect(-640, -375, 1280, 500);
  popMatrix();

  pushMatrix();
  fill(111, 96, 77);
  rect(-350, -375, 100, 500);
  rect(250, -375, 100, 500);
  popMatrix();


  pushMatrix();
  fill(0);
  ellipse(0, -200, 150, 150);
  rect(-100, -175, 200, 250);
  rect(-125, -125, 250, 250);
  popMatrix();

  pushMatrix();
  translate(-450, -250);

  //BAPANYA


  //leher
  fill(255, 233, 170);
  rect(438, 160, 25, 30);

  //kepala
  fill(255, 233, 170);
  noStroke();
  ellipse(450, 120, 100, 100);

  //rambut
  fill(155, 100, 10);
  noStroke();
  ellipse(450, 110, 100, 100);

  //tangan kanan
  fill(255, 233, 170);
  rect(370, 210, 30, 90, 25);

  //badan  
  fill(212, 179, 72);
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
  fill(115, 56, 45);
  rect(405, 290, 90, 100);

  //kotak kotak sarung
  fill(25, 10, 255);
  rect(405, 390, 90, 10);


  popMatrix();

  //ARIF
  pushMatrix();

  translate(-300, -175);
  //kepala
  fill(255, 233, 170);
  noStroke();
  ellipse(450, 120, 100, 100);

  pushMatrix();
  //rambut
  fill(155, 100, 10);
  noStroke();
  ellipse(450, 110, 100, 100);
  popMatrix();

  //peci
  pushMatrix();
  stroke(125);
  strokeWeight(1);
  fill(0, 0, 0);
  rect(400, 40, 100, 50);
  popMatrix();

  //leher
  noStroke();
  fill(255, 233, 170);
  rect(438, 160, 25, 30);

  //badan  
  noStroke();
  fill(8, 13, 132);
  rect(405, 190, 90, 180, 110);

  //kaki kiri
  noStroke();
  fill(255, 233, 170);
  rect(410, 370, 30, 60);

  //kaki kanan
  noStroke();
  fill(255, 233, 170);
  rect(460, 370, 30, 60);


  //sarung
  noStroke();
  fill(0, 0, 0);
  rect(405, 290, 90, 100);

  //kotak kotak sarung
  noStroke();
  fill(167, 34, 27);
  rect(405, 290, 90, 10);


  //tangan  
  noStroke();
  strokeWeight(25);   
  stroke(255, 233, 170);
  line(510, 225, 530, 300);
  line(390, 225, 370, 300);

  popMatrix();




  //makmum1
  pushMatrix();
  translate(-600, -200);


  //leher
  //leher
  fill(230, 210, 154);
  rect(438, 160, 25, 30);

  //kepala
  fill(255, 233, 170);
  noStroke();
  ellipse(450, 120, 100, 100);

  //rambut
  fill(150);
  noStroke();
  ellipse(450, 110, 100, 100);

  //tangan kanan
  fill(255, 233, 170);
  rect(370, 210, 30, 90, 25);

  //badan  
  fill(124, 82, 149);
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
  fill(21, 125, 56);
  rect(405, 290, 90, 100);

  //kotak kotak sarung
  fill(0, 255, 213);
  rect(405, 390, 90, 10);



  popMatrix();
  
   //makmum2
  pushMatrix();
  translate(-775, -200);


  //leher
  fill(230, 210, 154);
  rect(438, 160, 25, 30);

  //kepala
  fill(255, 233, 170);
  noStroke();
  ellipse(450, 120, 100, 100);

  //rambut
  fill(75);
  noStroke();
  ellipse(450, 110, 100, 100);

  //tangan kanan
  fill(255, 233, 170);
  rect(370, 210, 30, 90, 25);

  //badan  
  fill(252, 104, 220);
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
  fill(42, 19, 99);
  rect(405, 290, 90, 100);

  //kotak kotak sarung
  fill(34, 71, 39);
  rect(405, 390, 90, 10);



  
  
  popMatrix();
  
   //makmum2
  pushMatrix();
  translate(-125, -200);


  //leher
  fill(230, 210, 154);
  rect(438, 160, 25, 30);

  //kepala
  fill(255, 233, 170);
  noStroke();
  ellipse(450, 120, 100, 100);

  //rambut
  fill(20);
  noStroke();
  ellipse(450, 110, 100, 100);

  //tangan kanan
  fill(255, 233, 170);
  rect(370, 210, 30, 90, 25);

  //badan  
  fill(157,0,0);
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
  fill(235, 161, 96);
  rect(405, 290, 90, 100);

  //kotak kotak sarung
  fill(255);
  rect(405, 390, 90, 10);



  popMatrix();

}

void scene3b(){
  translate(width/2, height/2);
  background(255);
  noStroke();

  //sajadah
  pushMatrix();

  translate(-600, -200);
  fill(184, 24, 24);
  rect(-200, 350, 2000, 500, 250, 500, 1000, 100);
  popMatrix();
  fill(250, 221, 115);
  rect(-1280, 150, 5000, 20);
  rect(-1280, 250, 5000, 20);



  //dinding masjid
  pushMatrix();
  fill(171, 158, 123);
  rect(-640, -375, 1280, 500);
  popMatrix();

  pushMatrix();
  fill(111, 96, 77);
  rect(-350, -375, 100, 500);
  rect(250, -375, 100, 500);
  popMatrix();


  pushMatrix();
  fill(0);
  ellipse(0, -200, 150, 150);
  rect(-100, -175, 200, 250);
  rect(-125, -125, 250, 250);
  popMatrix();

  pushMatrix();
  translate(-450, -250);

  //BAPANYA


  //leher
  fill(255, 233, 170);
  rect(438, 160, 25, 30);

  //kepala
  fill(255, 233, 170);
  noStroke();
  ellipse(450, 120, 100, 100);

  //rambut
  fill(155, 100, 10);
  noStroke();
  ellipse(450, 110, 100, 100);
  
    //badan  
  fill(212, 179, 72);
  rect(405, 190, 90, 200, 30);

  //tangan kanan
  pushMatrix();
  translate(0,-50);
  fill(255, 233, 170);
  rect(370, 210, 30, 90, 25);

  //tangan kiri
  fill(255, 233, 170);
  rect(500, 210, 30, 90, 25);
  popMatrix();


  //kaki kiri
  fill(255, 233, 170);
  rect(410, 390, 30, 60);

  //kaki kanan
  fill(255, 233, 170);
  rect(460, 390, 30, 60);


  //sarung
  fill(115, 56, 45);
  rect(405, 290, 90, 100);

  //kotak kotak sarung
  fill(25, 10, 255);
  rect(405, 390, 90, 10);


  popMatrix();

  //ARIF
  pushMatrix();

  translate(-300, -175);
  //kepala
  fill(255, 233, 170);
  noStroke();
  ellipse(450, 120, 100, 100);

  pushMatrix();
  //rambut
  fill(155, 100, 10);
  noStroke();
  ellipse(450, 110, 100, 100);
  popMatrix();

  //peci
  pushMatrix();
  stroke(125);
  strokeWeight(1);
  fill(0, 0, 0);
  rect(400, 40, 100, 50);
  popMatrix();

  //leher
  noStroke();
  fill(255, 233, 170);
  rect(438, 160, 25, 30);

  //badan  
  noStroke();
  fill(8, 13, 132);
  rect(405, 190, 90, 180, 110);

  //kaki kiri
  noStroke();
  fill(255, 233, 170);
  rect(410, 370, 30, 60);

  //kaki kanan
  noStroke();
  fill(255, 233, 170);
  rect(460, 370, 30, 60);


  //sarung
  noStroke();
  fill(0, 0, 0);
  rect(405, 290, 90, 100);

  //kotak kotak sarung
  noStroke();
  fill(167, 34, 27);
  rect(405, 290, 90, 10);


  //tangan kanan
  pushMatrix();
  translate(0,-50);
  fill(255, 233, 170);
  rect(370, 210, 30, 90, 25);

  //tangan kiri
  fill(255, 233, 170);
  rect(500, 210, 30, 90, 25);
  popMatrix();

  popMatrix();




  //makmum1
  pushMatrix();
  translate(-600, -200);


  //leher
  //leher
  fill(230, 210, 154);
  rect(438, 160, 25, 30);

  //kepala
  fill(255, 233, 170);
  noStroke();
  ellipse(450, 120, 100, 100);

  //rambut
  fill(150);
  noStroke();
  ellipse(450, 110, 100, 100);

  //badan  
  fill(124, 82, 149);
  rect(405, 190, 90, 200, 30);

  //tangan kanan
  pushMatrix();
  translate(0,-50);
  fill(255, 233, 170);
  rect(370, 210, 30, 90, 25);

  //tangan kiri
  fill(255, 233, 170);
  rect(500, 210, 30, 90, 25);
  popMatrix();

  //kaki kiri
  fill(255, 233, 170);
  rect(410, 390, 30, 60);

  //kaki kanan
  fill(255, 233, 170);
  rect(460, 390, 30, 60);


  //sarung
  fill(21, 125, 56);
  rect(405, 290, 90, 100);

  //kotak kotak sarung
  fill(0, 255, 213);
  rect(405, 390, 90, 10);



  popMatrix();
  
   //makmum2
  pushMatrix();
  translate(-775, -200);


  //leher
  fill(230, 210, 154);
  rect(438, 160, 25, 30);

  //kepala
  fill(255, 233, 170);
  noStroke();
  ellipse(450, 120, 100, 100);

  //rambut
  fill(75);
  noStroke();
  ellipse(450, 110, 100, 100);

  //badan  
  fill(200,50,200);
  rect(405, 190, 90, 200, 30);

  //tangan kanan
  pushMatrix();
  translate(0,-50);
  fill(255, 233, 170);
  rect(370, 210, 30, 90, 25);

  //tangan kiri
  fill(255, 233, 170);
  rect(500, 210, 30, 90, 25);
  popMatrix();


  //kaki kiri
  fill(255, 233, 170);
  rect(410, 390, 30, 60);

  //kaki kanan
  fill(255, 233, 170);
  rect(460, 390, 30, 60);


  //sarung
  fill(42, 19, 99);
  rect(405, 290, 90, 100);

  //kotak kotak sarung
  fill(34, 71, 39);
  rect(405, 390, 90, 10);



  
  
  popMatrix();
  
   //makmum2
  pushMatrix();
  translate(-125, -200);


  //leher
  fill(230, 210, 154);
  rect(438, 160, 25, 30);

  //kepala
  fill(255, 233, 170);
  noStroke();
  ellipse(450, 120, 100, 100);

  //rambut
  fill(20);
  noStroke();
  ellipse(450, 110, 100, 100);


  //badan  
  fill(157,0,0);
  rect(405, 190, 90, 200, 30);

  //tangan kanan
  pushMatrix();
  translate(0,-50);
  fill(255, 233, 170);
  rect(370, 210, 30, 90, 25);

  //tangan kiri
  fill(255, 233, 170);
  rect(500, 210, 30, 90, 25);
  popMatrix();


  //kaki kiri
  fill(255, 233, 170);
  rect(410, 390, 30, 60);

  //kaki kanan
  fill(255, 233, 170);
  rect(460, 390, 30, 60);


  //sarung
  fill(235, 161, 96);
  rect(405, 290, 90, 100);

  //kotak kotak sarung
  fill(255);
  rect(405, 390, 90, 10);



  popMatrix();
}

void penutup(){
  background(0);
   fill(255, 189, 206);
  a = a + 2;
  if (a > 5000) {
    a = 5000;
  }
   b = b + 2;
  if (b > 5000) {
    b = 5000;
  }
  pushMatrix();
  pushMatrix();
  translate(140,-25);
  ellipse(520,285,a,b);
  popMatrix();
  textFont(tulisan);
  fill(255);
  text("Anisa Salsabila",520, 205);
  text("(19523186)", 550, 245);
  text("Sebagai Pengisi Suara, Membuat Scene dan membuat aset objek", 200, 285);
  popMatrix();
  
  pushMatrix();
  text("Muhammad Arif Pratama", 460, 355);
  text("(19523148)", 550, 395);
  text("Sebagai Pengisi Suara, Membuat Scene, membuat aset objek", 240, 435);
    popMatrix();

pushMatrix();
text("Naufal Fadhlurohman", 460, 505);
  text("(19523216)", 550, 545);
  text("Sebagai Pengisi Suara dan Membuat Scene,animasi dan audio", 240, 585);
popMatrix();
}

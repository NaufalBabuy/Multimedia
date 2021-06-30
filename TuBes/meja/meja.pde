int Y_AXIS = 1;
int X_AXIS = 2;
color b1, b2, c1, c2;

void setup() {
  size(1280, 720);
  int step=50;
  stroke(0);
  for (int i = 0; i < width/step; i++ ) {
    line(i*step, 0, i*step, height);
    line(0, i*step, width, i*step);
  }

  ///background(255);

  translate(width/2, height/2);
  scale(1.0, -1, 0);

  line(-width/2, 0, width/2, 0);
  fill(0, 0, 0);
  text("sumbu x", 500, 0);
  fill(255, 0, 0);
  line(0, height/2, 0, -height/2);
  fill(0, 0, 0);
  text("sumbu Y", 0, -500);
}

void draw() {
  translate(width/2, height/2);
  
  //orang
  pushMatrix();
  translate(-20, 0);

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
  fill(230, 210, 154);
  rect(430, 160, 25, 30);
  popMatrix();
  //kepala
  pushMatrix();
  fill(255, 233, 170);
  noStroke();
  ellipse(440, 120, 95, 100);
  popMatrix();
  //mata kiri
  pushMatrix();
  fill(0, 0, 0);
  noStroke();
  ellipse(440, 115, 10, 10);
  popMatrix();
  //mata kanan
  pushMatrix();
  fill(0, 0, 0);
  noStroke();
  ellipse(475, 115, 10, 10);
  popMatrix();
  //mulut
  pushMatrix();
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
  fill(255, 233, 170);
  rect(425,200,30,125,25);
  popMatrix();
  popMatrix();
  popMatrix();

  //kaki kaki
  pushMatrix();
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
  fill(208, 145, 90);
  quad(-125, -100, -250, 25, 250, 25, 125, -100);
  fill(145, 63, 32);
  rect(-250, 25, 500, 50);
  popMatrix();


  //ayam
  pushMatrix();
  translate(75, -120);
  stroke(1);
  fill(243, 159, 37);
  ellipse(0, 0, 115, 85);
  //tulang
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

  //piring

  fill(71, 136, 200);
  rect(-80, 25, 160, 40, 30);
  popMatrix();


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

  //gelas
  fill(178, 230, 249);
  rect(50, -75, 50, 80, 20);
  rect(50, -75, 50, 15, 20);



}

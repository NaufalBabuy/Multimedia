
float t=1;
void setup() {
  size(1280, 720);
  frameRate(5);
}
void draw() {
  if((t>0)&&(t<10)){
  scene1();
  }
  if((t>10)&&(t<20)){
  scene2();
  }
  t=t+1;
}
void scene1(){
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

void scene2(){
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

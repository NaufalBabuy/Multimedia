void setup() {
  size(1280, 720);
  background(255);
}

void draw() {
  translate(width/2, height/2);
  //sudut45derajat
  pushMatrix();
  translate(-250, 0);
  //tangan kanan
  pushMatrix();
  strokeWeight(25);   
  stroke(255, 233, 170);
  line(-150, -125, -75, -75);
  popMatrix();
  pushMatrix(); 
  translate(-625, -350);
  //rambut
  pushMatrix();
  fill(155, 100, 10);
  noStroke();
  ellipse(450, 110, 100, 100);
  popMatrix();
   //leher
  pushMatrix();
  fill(230, 210, 154);
  rect(438, 160, 25, 30);
  popMatrix();
  //kepala
  pushMatrix();
  fill(255, 233, 170);
  noStroke();
  ellipse(450, 120, 100, 100);
  popMatrix();
  //mata kiri
  pushMatrix();
  fill(0, 0, 0);
  noStroke();
  ellipse(430, 115, 10, 10);
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
  rect(400, 40, 100, 50);
  popMatrix();
 

  //badan  
  pushMatrix();
  fill(8, 13, 132);
  rect(405, 190, 90, 180, 110);
  popMatrix();
  //kaki kiri
  pushMatrix();
  fill(255, 233, 170);
  rect(410, 370, 30, 60);
  popMatrix();
  //kaki kana
  pushMatrix();
  fill(255, 233, 170);
  rect(460, 370, 30, 60);
  popMatrix();

  //sarung
  pushMatrix();
  fill(0, 0, 0);
  rect(405, 290, 90, 100);
  popMatrix();
  //kotak kotak sarung
  pushMatrix();
  fill(167, 34, 27);//warna tangan
  rect(405, 290, 90, 10);
  popMatrix();
  //tangan kanan
  pushMatrix();
  translate(width/2, height/2);
  strokeWeight(25);   
  stroke(255, 233, 170);
  line(-225, -125, -250, -50);
  popMatrix();
  popMatrix();
  popMatrix();


  //sudut90
  pushMatrix();
  translate(250, 0);

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
  translate(width/2, height/2);
  strokeWeight(25);   
  stroke(255, 233, 170);
  line(-210, -140, -200, -50);
  popMatrix();
  popMatrix();
  popMatrix();
}

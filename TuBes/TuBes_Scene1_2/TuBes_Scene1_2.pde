void setup() {
  fullScreen(P2D);
  int step=50;
  stroke(0);
  for (int i = 0; i < width/step; i++ ) {
    line(i*step, 0, i*step, height);
    line(0, i*step, width, i*step);
  }

  background(255);
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

  //ranjang
  translate(width/2, height/2);
  fill(207, 146, 72);
  rect(700, -250, 75, 600);
  rect(-225, 150, 1000, 50);
  rect(-225, 25, 50, 325);

  //kasur

  fill(156, 156, 156);
  rect(-175, 25, 875, 125);

  //orang
  
  //kaki1
  fill(214, 184, 139);
   rect(-365,100,35,250);
 
  //celana1
  fill(235, 109, 70);
 rect(-375,100,50,125);

  //leher
  fill(171, 150, 120);
  rotate(PI/2.5);
  rect(-300, 350, 100, 30);
  //kepala
fill(214, 184, 139);
  ellipse(-350,375,150,125);
  
  //kaki2
  rect(0,310,250,35);
   //celana2
   fill(235, 109, 70);
  rect(-0,300,115,50);

  //baju
  fill(24, 191, 242);
  rect(-250,300,300,100,20);
  
  //tangan
  fill(214, 184, 139);
   rect(-200,325,50,225,50);
  fill(28, 149, 186);
  rect(-200,325,70,50,35);
  

  
  
  

 
  
}

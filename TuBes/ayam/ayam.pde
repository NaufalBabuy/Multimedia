void setup() {
  size(1280,720);
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
  translate(width/2, height/2);

  //ayam

  //badan ayam
  pushMatrix();
  translate(100,100);
  stroke(1);
  fill(243, 159, 37);
  ellipse(0, 0, 115, 85);
  //tulang
  pushMatrix();
  fill(254,233,169);
  rotate(PI/4.0);
  rect(25, -80, 8, 70);
  popMatrix();
  ellipse(80,-40,15,15);
  //paha
  fill(243, 159, 37);
  ellipse(40, 0, 50, 50);
  ellipse(60, -15, 25, 25);
  
  //piring
  
  fill(71,136,200);
  rect(-80,25,160,40,30);
  popMatrix();
}

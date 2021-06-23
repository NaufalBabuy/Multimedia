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
  //kasur
  fill(156, 156, 156);
  translate(width/2, height/2);
  rect(-215, -400, 425, 750);

  //ranjang
  fill(207, 146, 72);
  rect(-225, -400, 15, 750);
  rect(210, -400, 15, 750);
  rect(-225, -450, 450, 100);
  rect(-225, 350, 450, 20);

  //orang

  //leher
  fill(171, 150, 120);
  rect(-25, -200, 45, 100);
  //kepala
  fill(214, 184, 139);
  ellipse(0, -250, 125, 150);

  //mata
  fill(255);
  ellipse(-25, -275, 20, 15);
  ellipse(25, -275, 20, 15);
  fill(0);
  ellipse(-25, -275, 8, 8);
  ellipse(25, -275, 8, 8);
  //selimut
  fill(76, 87, 122);
  rect(-125, -150, 250, 450);
}

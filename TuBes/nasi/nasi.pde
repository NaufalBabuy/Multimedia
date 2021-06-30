void setup() {
  size(1280, 720);
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
}

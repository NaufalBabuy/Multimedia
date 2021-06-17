void setup() {
  size(1920, 1080, P3D);
}
void draw() {
  background(255);
  translate(width/2, height/2, 0);

  rotateX(mouseY*0.01);
  rotateY(mouseX*0.01);


  line(0, 0, 0, 1000, 0, 0);
  fill(0, 0, 1000);
  text("SUMBU X", 200, 15, 0);

  line(0, 0, 0, 0, 1000, 0);
  fill(0, 0, 1000);
  rotate(radians(90));
  text("SUMBU Y", 190, 15, 0);
  rotate(radians(-90));

  line(0, 0, 0, 0, 0, 1000);
  fill(0, 0, 1000);
  rotateY(radians( 90));
  text("SUMBU Z", -240, 15, 0);
  rotateY(radians(-90));

  //body
pushMatrix();
  lights();
  directionalLight(90, 130, 32, 30, -10, 30);
  fill(91, 96, 100);
  box(45, 45, 400);
popMatrix();
  //body1.5
  int q = 13;
  int sisisbody1 = 50;
  float sudutbody1 = 360 / sisisbody1;
  fill(91, 96, 100);
  noStroke();
  beginShape();
  for (int i = 0; i < sisisbody1; i++) {
    float x = cos(radians( i* sudutbody1)) * q;
    float y = sin(radians( i* sudutbody1)) * q;
    vertex (x, y, 200);
    endShape(CLOSE);
  }
  beginShape();
  for (int i = 0; i < sisisbody1; i++) {
    float x = cos(radians( i* sudutbody1)) * q;
    float y = sin(radians( i* sudutbody1)) * q;
    vertex (x, y, 300);
    endShape(CLOSE);
  }
  beginShape(TRIANGLE_STRIP);
  for (int i = 0; i < sisisbody1+1; i++) {
    float x = cos(radians( i* sudutbody1)) * q;
    float y = sin(radians( i* sudutbody1)) * q;
    vertex (x, y, 200);
    vertex (x, y, 300);
    endShape(CLOSE);
  }

  //body2
  int r = 8;
  int sides = 50;
  float angle = 360 / sides;
  fill(91, 96, 100);
  noStroke();
  beginShape();
  for (int i = 0; i < sides; i++) {
    float x = cos(radians( i* angle)) * r;
    float y = sin(radians( i* angle)) * r;
    vertex (x, y, 300);
    endShape(CLOSE);
  }
  beginShape();
  for (int i = 0; i < sides; i++) {
    float x = cos(radians( i* angle)) * r;
    float y = sin(radians( i* angle)) * r;
    vertex (x, y, 425);
    endShape(CLOSE);
  }
  beginShape(TRIANGLE_STRIP);
  for (int i = 0; i < sides+1; i++) {
    float x = cos(radians( i* angle)) * r;
    float y = sin(radians( i* angle)) * r;
    vertex (x, y, 300);
    vertex (x, y, 425);
    endShape(CLOSE);
  }
  //silencer
  int b = 16;
  int sisisilent = 4;
  float sudutsilent = 360 / sisisilent;
  fill(91, 96, 100);
  directionalLight(250, 100, 32, 30, 20, 400);
  noStroke();
  beginShape();
  for (int i = 0; i < sisisilent; i++) {
    float x = cos(radians( i* sudutsilent)) *b;
    float y = sin(radians( i* sudutsilent)) *b;
    vertex (x, y, 400);
    endShape(CLOSE);
  }
  beginShape();
  for (int i = 0; i < sisisilent; i++) {
    float x = cos(radians( i* sudutsilent)) *b;
    float y = sin(radians( i* sudutsilent)) * b;
    vertex (x, y, 440);
    endShape(CLOSE);
  }
  beginShape(TRIANGLE_STRIP);
  for (int i = 0; i < sisisilent+1; i++) {
    float x = cos(radians( i* sudutsilent)) * b;
    float y = sin(radians( i* sudutsilent)) * b;
    vertex (x, y, 400);
    vertex (x, y, 440);
    endShape(CLOSE);
  }
  //isisilentcer
  int c = 9;
  int dalemsilent = 50;
  float sudutdalamsilent = 360 / dalemsilent;
  fill(0, 0, 0);
  noStroke();
  beginShape();
  for (int i = 0; i < dalemsilent; i++) {
    float x = cos(radians( i* sudutdalamsilent)) *c;
    float y = sin(radians( i* sudutdalamsilent)) *c;
    vertex (x, y, 410);
    endShape(CLOSE);
  }
  beginShape();
  for (int i = 0; i < dalemsilent; i++) {
    float x = cos(radians( i* sudutdalamsilent)) *c;
    float y = sin(radians( i* sudutdalamsilent)) * c;
    vertex (x, y, 440);
    endShape(CLOSE);
  }
  beginShape(TRIANGLE_STRIP);
  for (int i = 0; i < dalemsilent+1; i++) {
    float x = cos(radians( i* sudutdalamsilent)) * c;
    float y = sin(radians( i* sudutdalamsilent)) * c;
    vertex (x, y, 410);
    vertex (x, y, 440);
    endShape(CLOSE);
  }
  //dudukan
  pushMatrix();
  translate(15, -52, 270);
  rotateZ(60);
  noStroke();
  box(10, 140, 5);
  popMatrix();
  pushMatrix();
  translate(-15, -52, 270);
  rotateZ(-60);
  noStroke();
  box(10, 140, 5);
  popMatrix();
  //scope
 pushMatrix();
  fill(0, 0, 0);
  translate(0, 25, -40);
  box(17, 27, 37);
  popMatrix();
  int z = 10;
  int sisiscope = 30;
  float sudutscope = 360 / sisiscope;
 fill(91, 96, 100);
  noStroke();
  beginShape();
  translate(0, 45, -200);
  for (int i = 0; i < sisiscope; i++) {
    float x = cos(radians( i* sudutscope)) *z;
    float y = sin(radians( i* sudutscope)) *z;
    vertex (-x, y, 100);
    endShape(CLOSE);
  }
  beginShape();
  for (int i = 0; i < sisiscope; i++) {
    float x = cos(radians( i* sudutscope)) *z;
    float y = sin(radians( i* sudutscope)) *z;
    vertex (x, y, 220);
    endShape(CLOSE);
  }
  beginShape(TRIANGLE_STRIP);
  for (int i = 0; i < sisiscope+1; i++) {
    float x = cos(radians( i* sudutscope)) * z;
    float y = sin(radians( i* sudutscope)) * z;
    vertex (-x, y, 100);
    vertex (x, y, 220);
    endShape(CLOSE);
  }

  int zz = 14;
  int lensa = 30;
  float sudutlensa = 360 / lensa;
  fill(150, 150, 150);
  noStroke();
  beginShape();
  for (int i = 0; i < lensa; i++) {
    float x = cos(radians( i* sudutlensa)) *zz;
    float y = sin(radians( i* sudutlensa)) *zz;
    vertex (x, y, 210);
    endShape(CLOSE);
  }
  beginShape();
  for (int i = 0; i < lensa; i++) {
    float x = cos(radians( i* sudutlensa)) *zz;
    float y = sin(radians( i* sudutlensa)) *zz;
    vertex (x, y, 250);
    endShape(CLOSE);
  }
  beginShape(TRIANGLE_STRIP);
  for (int i = 0; i < lensa+1; i++) {
    float x = cos(radians( i* sudutlensa)) * zz;
    float y = sin(radians( i* sudutlensa)) * zz;
    vertex (x, y, 210);
    vertex (x, y, 250);
    endShape(CLOSE);
  }

  int zzz = 14;
  int lensa2 = 30;
  float sudutlensa2 = 360 / lensa2;
  fill(169, 169, 169);
  noStroke();
  beginShape();
  for (int i = 0; i < lensa; i++) {
    float x = cos(radians( i* sudutlensa2)) *zzz;
    float y = sin(radians( i* sudutlensa2)) *zzz;
    vertex (x, y, 90);
    endShape(CLOSE);
  }
  beginShape();
  for (int i = 0; i < lensa2; i++) {
    float x = cos(radians( i* sudutlensa2)) *zzz;
    float y = sin(radians( i* sudutlensa2)) *zzz;
    vertex (x, y, 130);
    endShape(CLOSE);
  }
  beginShape(TRIANGLE_STRIP);
  for (int i = 0; i < lensa2+1; i++) {
    float x = cos(radians( i* sudutlensa2)) * zzz;
    float y = sin(radians( i* sudutlensa2)) * zzz;
    vertex (x, y, 90);
    vertex (x, y, 130);
    endShape(CLOSE);
  }
  //magazine
  pushMatrix();
  translate(0, -100, 270);
  box(30, 65, 110);
  popMatrix();
  
  
  //body belakang
  pushMatrix();
  int bb = 9;
  int bodybelakang = 30;
  float sudutbelakang = 360 / bodybelakang;
  translate(0,-45,-100);
  fill(91, 96, 100);
  noStroke();
  beginShape();
  for (int i = 0; i < bodybelakang; i++) {
    float x = cos(radians( i* bodybelakang)) *bb;
    float y = sin(radians( i* bodybelakang)) *bb;
    vertex (x, y, 0);
    endShape(CLOSE);
  }
  beginShape();
  for (int i = 0; i < bodybelakang; i++) {
    float x = cos(radians( i* bodybelakang)) *bb;
    float y = sin(radians( i* bodybelakang)) *bb;
    vertex (x, y, 100);
    endShape(CLOSE);
  }
  beginShape(TRIANGLE_STRIP);
  for (int i = 0; i < bodybelakang+1; i++) {
    float x = cos(radians( i* bodybelakang)) * bb;
    float y = sin(radians( i* bodybelakang)) * bb;
    vertex (x, y, 0);
    vertex (x, y, 100);
    endShape(CLOSE);
  }
     translate(0,-20,0);
    box(20,75,80);
    popMatrix();
    

}

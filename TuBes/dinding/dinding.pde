void setup()
{
  size(1280, 720);
}

void draw ()
{
  background(25, 25, 112);
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
  fill(255, 255, 176);
  ellipse(40, 90, 60, 60);


  //lahan
  noStroke();
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
  strokeWeight(0);
  fill(185, 122, 87);
  quad(10, 40, 380, 40, 380, 70, 10, 70);
  quad(10, 440, 380, 440, 380, 430, 10, 430);
  line(10, 50, 380, 50);
  line(10, 60, 380, 60);
  quad(10, 40, 20, 40, 20, 440, 10, 440);
  quad(370, 40, 380, 40, 380, 440, 370, 440);
  quad(190, 40, 200, 40, 200, 440, 190, 440);
}

int step = 25;
void setup(){
 size(300, 300);
 background(255);
 stroke(0);

 for(int i = 0; i < width/step; i++ ) {
   line(i*step, 0, i*step, height);
   line(0, i*step, width, i*step);
 } 
}
void draw(){
fill(255,210,1);
stroke(80);
strokeWeight(4);
ellipse(150,150,300,300);

fill(194,24,7);
noStroke();
ellipse(93,120,22,20);
ellipse(106,120,22,20);
triangle(115,125,100,145,85,125);
ellipse(193,120,22,20);
ellipse(206,120,22,20);
triangle(215,125,197,145,185,125);

fill(100);
bezier(75,200,130,250,180,250,225,200);
}

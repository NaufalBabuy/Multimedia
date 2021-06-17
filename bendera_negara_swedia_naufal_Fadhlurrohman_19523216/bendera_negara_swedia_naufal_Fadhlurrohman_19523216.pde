int step =25;
void setup(){
size(640,400);
background(0, 106, 168);
stroke(0);
/*for(int i = 0; i < width/step; i++ ) {
   line(i*step, 0, i*step, height);
   line(0, i*step, width, i*step);
 }*/ 

}
void draw(){
fill  (254, 205, 0);
noStroke();
rect(0,125,640,125);
fill  (254, 205, 0);
noStroke();
rect(125,0,125,400);
}

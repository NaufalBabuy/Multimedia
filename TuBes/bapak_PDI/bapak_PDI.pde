void setup(){
 size(1280,720);
 background(255);
}

void draw(){
 
  //rambut
  fill(155,100,10);
  noStroke();
  ellipse(450,110,100,100);

  //kepala
  fill(255,233,170);
  noStroke();
  ellipse(450,120,100,100);
    
  //mata kiri
  fill(0,0,0);
  noStroke();
  ellipse(430,115,10,10);
  
  //mata kanan
  fill(0,0,0);
  noStroke();
  ellipse(475,115,10,10);
  
  //mulut
  fill(255,0,0);
  arc(450,137,30,30,0,PI);

  //leher
  fill(255,233,170);
  rect(438,160,25,30);
  
    
  //kumis
  fill(0);
  arc(450,157,30,60,0,PI);
  
  //badan  
  fill(250,0,0);
  rect(405,190,90,200,30);
    
  //tangan kanan
  fill(255,233,170);
  rect(370,210,30,90);
  
  //tangan kiri
  fill(255,233,170);
  rect(500,210,30,90);
  
  
  //kaki kiri
  fill(255,233,170);
  rect(410,390,30,60);
  
  //kaki kanan
  fill(255,233,170);
  rect(460,390,30,60);
  
  
  //sarung
  fill(0,0,0);
  rect(405,290,90,100);

  //kotak kotak sarung
  fill(25,10,255);
  rect(405,390,90,10);
}

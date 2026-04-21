float x,slx,c,c2;
void setup(){
  size(800,600,P2D);
  x=20;
  c2=255;
  slx=50;
}

void draw(){
  noStroke();
  background(c);
  fill(c2);
  rect(0,0,800,100);
  fill(c);
  circle(x,slx,15);
  strokeWeight(5);
  stroke(c);
  line(10,slx,110,50);
}

void mouseDragged(){
  slidermath();
}

void mousePressed(){
  slidermath();
}

void slidermath(){
   if(mouseY>slx-25 && mouseY<slx+25 && mouseX>20 && mouseX<100){
    x=mouseX; 
  }
  c = map(x,slx,100,0,255);
  c2 = map(x,slx,100,255,0);
}
  
  

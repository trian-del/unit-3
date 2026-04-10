float x,c,c2;
void setup(){
  size(800,600,P2D);
  x=50;
  c2=255;
}

void draw(){
  noStroke();
  background(c);
  fill(c2);
  circle(x,300,50);
  strokeWeight(10);
  stroke(c2);
  line(20,300,780,300);
}

void mouseDragged(){
  slider();
}
 
void mouseReleased(){
  slider(); 
}

void slider(){
    if(mouseY>280 && mouseY<320 && mouseX>50 && mouseX<750 && mouseX>x-50 && mouseX<x+50){
    x=mouseX; 
  }
  c = map(x,100,700,0,255);
  c2 = map(x,100,700,255,0);
}
  
  

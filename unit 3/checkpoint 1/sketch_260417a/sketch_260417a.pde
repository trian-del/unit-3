float x,y,xr,yr;
boolean press=false;
void setup(){
  size(800,600,P3D);
}

void draw(){
  background(255);
  lights();
  push();
  translate(400,300);
  if(press){
    xr=(radians(-mouseY+height/2));
    yr=(radians(mouseX-width/2));
  }
  rotateX(xr);
  rotateY(yr);
  fill(255);
  box(160);
  translate(0,0,80);
  circle(x,y,50);
  pop();
  fill(0);
  text(x,400,500);
}

void mousePressed(){
  press=true;
}

void mouseReleased(){
  press=false;
}

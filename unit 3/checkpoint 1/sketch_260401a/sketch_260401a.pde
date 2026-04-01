float x,y;
color sdklfj = #9D93FF;
void setup() {
  size(800,600,P2D);
  
}

//smooth animation code
void draw() {
  background(0);
  x=x+y;
  circle(400,300,x);
  if (x<400){
    y=y+0.2;
  }
  else if (x>500){
    y=y-0.1;
  }
  println(y);
}

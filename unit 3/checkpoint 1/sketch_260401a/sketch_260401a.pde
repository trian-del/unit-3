//this code only works if x and y are universal??? too dumb to figure out how to turn
//this into a function so i give up
color sdklfj = #9D93FF;
float x=41;
float y;
void setup() {
  size(800,600,P2D);
}

//smooth animation code
void draw() {
  
  background(0);
  button(41,0,400,300,#9D93FF);
  x=x+y;
  fill(color(#9D93FF));
  circle(400,300,x);
  if(dist(400, 300, mouseX, mouseY) < x) {
    
    if (x<43){
     y=y+0.03; 
    }
    
  if (x>45){
    y=y-0.03;
    }
    
  }
  
  else if (x>42){
   y=y-0.03;
  }
  
  else{
   y=0; 
  } 

}

void button(float x, float y, float d, float e, color k){
  x=x+y;
  fill(k);
  circle(d,e,x);
  if(dist(d, e, mouseX, mouseY) < x) {
    
    if (x<43){
     y=y+0.03; 
    }
    
  if (x>45){
    y=y-0.03;
    }
    
  }
  
  else if (x>42){
   y=y-0.03;
  }
  
  else{
   y=0; 
  } 
}

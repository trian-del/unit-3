float a,b,d,e,f,g;
color clr=#000000;
void setup(){
  size(800, 600, P2D);
  a=40;
  d=40;
  f=40;
}

void draw(){
  background(clr);
  
  animation(300,300,#4285F4);
  circle(300,300,a);
  
  animation2(400,300,#DB4437);
  circle(400,300,d);
  
  animation3(500,300,#FBBC05);
  circle(500,300,f);
  
}

void animation(float x, float y, color c){
  
  fill(c);
  a=a+b;
  
  if (dist(x, y, mouseX, mouseY) < 40){
    
    if(a<50){
     b=b+0.1;
    }
    else if(b>0){
     b=b-0.1; 
    }
    
  }
  
  else if(a>40){
   b=b-0.1; 
  }
  else if(a<40){
   b=0; 
  }
}

void animation2(float x, float y, color c){
  
  fill(c);
  d=d+e;
  
  if (dist(x, y, mouseX, mouseY) < 40){
    
    if(d<50){
     e=e+0.1;
    }
    else if(e>0){
     e=e-0.1; 
    }
    
  }
  
  else if(d>40){
   e=e-0.1; 
  }
  else if(d<40){
   e=0; 
  }
}

void animation3(float x, float y, color c){
  
  fill(c);
  f=f+g;
  
  if (dist(x, y, mouseX, mouseY) < 40){
    
    if(f<50){
     g=g+0.1;
    }
    else if(g>0){
     g=g-0.1; 
    }
    
  }
  
  else if(f>40){
   g=g-0.1; 
  }
  else if(f<40){
   g=0; 
  }
}

void mousePressed(){
  //button1
  if(dist(300,300,mouseX,mouseY)<40){
   clr=#4285F4;
   if(a>10){
    b=b-0.5; 
   }
   else{
    b=b+0.5; 
   }
  }
  
  //button2
  if(dist(400,300,mouseX,mouseY)<40){
    clr=#DB4437;
    if(d>10){
      e=e-0.5;
    }
    else{
      e=e+0.5;
    }
  }
  
  //button3
  if(dist(500,300,mouseX,mouseY)<40){
   clr=#FBBC05; 
   if(f>10){
     g=g-0.5;
   }
   else{
     g=g+0.5;
   }
  }
}

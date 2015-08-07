float r=100;
float theta=0;

void setup(){
  size(600,600);
  background(0);
  smooth();
}

void draw(){
  
  fill(0,8);
  rect(0,0,width,height);
  
  
  //orbit
  float x=r*cos(theta);
  float y=r*sin(theta);
  r=mouseX;
  theta+=0.08;
  
  //circle
  float c=map(x,0,width,0,255);
  fill(0,255,255);
  noStroke();
  ellipse(x+mouseX,y+mouseY,20,20);
  ellipse(width-x-mouseX,height-y-mouseY,20,20);
  ellipse(width-x-mouseX,y+mouseY,20,20);
  ellipse(x+mouseX,height-y-mouseY,20,20);
  
}

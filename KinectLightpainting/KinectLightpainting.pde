import SimpleOpenNI.*;
color a,b;
boolean useFirst = true;

void setup(){
  size(1000,1000); // The Canvas
  background(0);
  resetColors();
}
void resetColors(){
  a = color(20, 255, 255);
  b = color(random(220, 250), random(20, 50), random(220, 250));
}
void draw(){
}

void mouseDragged () {
  if(useFirst) fill(a);
  else         fill(b);
  ellipse(mouseX, mouseY, mouseX/20, mouseY/20);
}

void keyPressed(){
  resetColors();
}



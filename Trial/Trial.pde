PGraphics pg;
float vel;
float vel1;
void setup() {
  size(640, 360);
  pg = createGraphics(400, 200);
}

void draw() {
 
  
  
  fill(0, 12);
  rect(0, 0, width, height);
  color c = color(255, 204, 0);
  fill(c);
  noStroke();
  vel=(mouseX-pmouseX);
  vel1=40/vel;
  ellipse(mouseX, mouseY, vel1, vel1);
  
  pg.beginDraw();
  pg.background(51);
  //pg.noFill();
  pg.stroke(400);
 // pg.ellipse(mouseX-120, mouseY-60, 60, 60);
  pg.endDraw();
  
 
}

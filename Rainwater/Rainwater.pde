int y = 0;
int RectY = 800;
int d = 0;
float x = random(1000);
int ySpeed = 5;
  float bac = 0;
  float ba = 0;
  float bc = 0;
void setup() {
  size(1000, 1000);
}
void draw() {

  background(bac, ba, bc);
  noStroke();
  if (y>855) {
    y=0;
    x= random(1000);
    ySpeed = ySpeed/2;
    d = d-1;
    bac= random(255);
    ba=random(255);
    bc=random(255);
  }
  if (y > RectY && RectY+50 > y && x > mouseX && mouseX+75 > x) {
    y=1;
    x= random(1000);
    d=d+1;
    ySpeed = 3*ySpeed;
  }
  fill(255, 255, 255);
  rect(0, 850, 1000, 1000);
  //triangle(x,y,)
  ellipse(x, y, 15, 30);
  y = y+ySpeed;
  //ellipse(otherX,y,15,30);
  fill(102, 136, 153);
  rect(mouseX, RectY, 75, 50);
  textSize(100);
  fill(204, 255, 0);
  text(""+d, 475, 500);
}


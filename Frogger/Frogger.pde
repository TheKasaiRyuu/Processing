int frogy = 475;
int frogx = 250;
Car blob = new Car(0, 425, 50, 187, 37, 0, 8);
int deathcounter = 0;
void setup() {
  size(500, 500);
}
void draw() {
  background(128, 128, 128);
  fill(0, 119, 0);
  ellipse(frogx, frogy, 50, 50);
  fill(187, 37, 0);
  text(""+deathcounter, 10, 10);
  blob.draw();
  blob.fast();
  if (frogy < 0) {
    text("You win, keep heading up to restart", 180, 250);
  }
  if (frogy < -50) {
    frogy = 475;
  }
  if (intersects(blob)) {
    frogx = 250;
    frogy = 475;
    deathcounter = deathcounter+1;
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      frogy = frogy -25;
    } else if (keyCode == DOWN) {
      frogy = frogy +25;
    } else if (keyCode == LEFT) {
      frogx = frogx -25;
    } else if (keyCode == RIGHT) {
      frogx = frogx +25;
    }
  }
}
boolean intersects(Car car) {
  if ((frogy +5  > car.getY() && frogy -5 < car.getY()+50) && (frogx + 2> car.getX() && frogx -2  < car.getX()+car.getSize()))
    return true;
  else 
  return false;
}
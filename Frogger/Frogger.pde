int frogy = 475;
int frogx = 250;
int start = 0;
int oppostart = 0;
Car blob = new Car(0, 400, 50, 187, 37, 0, 8);
Car flob = new Car(500, 350, 100, 17, 13, 58, -6);
Car clob = new Car(0, 300, 50, 17, 137, 0, 6);
Car plob = new Car(0, 250, 50, 117, 37, 60, 3);
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
  flob.draw();
  flob.fast();
  clob.draw();
  clob.fast();
  plob.draw();
  plob.fast();
  if (frogy < 0) {
    text("You win, keep heading up to restart", 180, 250);
  }
  if (frogy < -50) {
    frogy = 475;
  }
  if (intersects(flob) || intersects(blob) || intersects(clob) || intersects(plob)) {
    frogx = 250;
    frogy = 475;
    start = 0;
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
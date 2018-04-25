// This landscape is a turtle in the water with a sunset and red sky
float y;
float ySpeed;
float xTurtle;
float xturtleSpeed;
void setup() {
  size(700,400);
  y = 200;
  ySpeed = 1;
  xTurtle = 140;
  xturtleSpeed = 2;
}

void draw() {
  //loops
  xTurtle += xturtleSpeed;
  y -= ySpeed;
  if (y <= 70) {
     y += ySpeed;
     ySpeed = -ySpeed;
  } else if (y >= 230) {
     ySpeed = -ySpeed;
  }
  if (xTurtle > 750) {
    xTurtle = -50;
  }
  noStroke();
  // sky
  background(#e85050);
  // sun
  fill(#F7FF00);
  ellipse(280, y, 90, 90);
  //water
  fill(#00C4FF);
  rect(0, 160, 700, 400);
  //turtle
  fill(#00FF09);
  rect(xTurtle - 40, 300, 25, 70);
  rect(xTurtle - 40, 190, 25, 70);
  rect(xTurtle + 18, 300, 25, 70);
  rect(xTurtle + 18, 190, 25, 70);
  ellipse(xTurtle, 280, 100, 80);
  ellipse(xTurtle + 60, 280, 50, 40);
  fill(0);
  ellipse(xTurtle + 75, 287, 5, 5);
  ellipse(xTurtle + 75, 273, 5, 5);
  }

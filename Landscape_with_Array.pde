// This landscape is a turtle in the water with a sunset and red sky
float ySun;
float ysunSpeed;
float xTurtle;
float xturtleSpeed;
PVector[] fish;

void setup() {
  size(700,400);
  ySun = 200;
  ysunSpeed = 1;
  xTurtle = 140;
  xturtleSpeed = 2;
  fish = new PVector[10];
  for (int i = 0; i < fish.length; i++) {
    float x = random(0, width);
    float y = random(200, 400);
    fish[i] = new PVector(x, y);
  }
}

void draw() {
  //loops
  xTurtle += xturtleSpeed;
  ySun -= ysunSpeed;
  if (ySun <= 70) {
     ySun += ysunSpeed;
     ysunSpeed = -ysunSpeed;
  } else if (ySun >= 230) {
     ysunSpeed = -ysunSpeed;
  }
  if (xTurtle > 750) {
    xTurtle = -50;
  }
  noStroke();
  // sky
  background(#e85050);
  // sun
  fill(#F7FF00);
  ellipse(280, ySun, 90, 90);
  //water
  fill(#00C4FF);
  rect(0, 160, 700, 400);
  // fish loop
  for (int i = 0; i < fish.length; i++) {
    fish[i].add(1, 0);
    
    if (fish[i].x - 70 > width) {
      fish[i].x = -75;
      fish[i].y = (int) random(200, 400);
    }
  // fish
  fill(0);
  ellipse(fish[i].x, fish[i].y, 60, 35);
  triangle(fish[i].x - 30, fish[i].y, fish[i].x + 40, fish[i].y - 10, fish[i].x - 40, fish[i].y + 10);
  }
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
// This landscape is a turtle in the water with a sunset and red sky
int ySun;
int ysunSpeed;
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
     fill(#F7FF00);
     ellipse(280, ySun, 90, 90);
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
  // fish array loop
  for (int i = 0; i < fish.length; i++) {
    fish[i].add(1, 0);
    
    if (fish[i].x - 50 > width) {
      fish[i].x = -25;
      fish[i].y = (int) random(200, 400);
    }
  // fish
  fill(#ffac00);
  ellipse(fish[i].x, fish[i].y, 60, 35);
  triangle(fish[i].x - 30, fish[i].y, fish[i].x - 50, fish[i].y - 18, fish[i].x - 50, fish[i].y + 18);
  fill(0);
  ellipse(fish[i].x + 10, fish[i].y - 5, 8, 8);
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
  //stick
  stroke(#BA4A00);
  strokeWeight(12);
  line(700, 110, 500, 110);
  line(530, 110, 500, 80);
  //owl
  stroke(0);
  strokeWeight(2);
  fill(0);
  line(570, 104.5, 570, 86);
  line(581, 104.5, 581, 86);
  noStroke();
  ellipse(575.5, 54, 60, 80); 
  fill(#FDFEFE);
  ellipse(575.5, 35, 40, 30);
  ellipse(575.5, 68, 45, 45);
  fill(0);
  ellipse(566, 36, 8, 8);
  ellipse(582, 36, 8, 8);
  fill(#F7DC6F);
  ellipse(566, 37, 6.5, 6.5);
  ellipse(582, 37, 6.5, 6.5);
  }

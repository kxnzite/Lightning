int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
boolean yellow = true;

void setup(){
  size(300,300);
  background(0);
  noStroke();
  strokeWeight(8);
  frameRate(150);
}

void draw(){
  fill(0,0,0,20);
  rect(-10,-10,320,320);
  if (endY < 300){
  endX = startX+(int)(Math.random()*40 - 20);
  endY = startY+(int)(Math.random()*20);
  line(startX,startY,endX, endY);
  startX = endX;
  startY = endY;
  }
}

void mousePressed(){
if (yellow == true){
  stroke(255,255,150);
  yellow = false;
} else {
  stroke(150,150,255);
  yellow = true;
}
startX = 150;
startY = 0;
endX = 150;
endY = 0;
}

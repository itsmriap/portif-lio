int circleX = 100;
int circleY = 100;
int ball = 10;
int boll = 10;

void setup() {
  size(600, 600);
}

void mudarPosicao() {
  circleX = circleX + ball;
  if (circleX > 500 || circleX == 100) {
    ball = -ball;
  }
  
  circleY = circleY + boll;
  if (circleY > 400 || circleY == 100) {
    boll = -boll;
  }
}

void mudarCor(){ 
  
  strokeWeight(5);
  stroke(#FA5A46);
  fill(#F07043);
}

void draw() {
  
  background(#E34B5D);
  ellipse(circleX, circleY, 100, 100);
  
  mudarPosicao();
  mudarCor();
}

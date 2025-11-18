int posX = -50;
int x1Tri = -50;
int x2Tri = 0;
int x3Tri = 50;
int velX = 1;

void setup () {
  size(480,360);
  ellipseMode (CORNER);
}
void draw (){
  background (0);
  posX= posX + velX;
  x1Tri = x1Tri + velX;
  x2Tri = x2Tri + velX;
  x3Tri = x3Tri + velX;
  
  if (posX > width ) {velX = -velX;}
  if (posX == -100) {velX = -velX;}
  if (posX > 100 && posX < 140) {background(#E8F1F2); fill(#FFE3DC); rect(posX, height/2, 100, 100);}
  else if (posX > 140 && posX < 180) {background(#006494); fill(#DBB4AD); triangle(x1Tri, height/2 + 100, x2Tri, height/2, x3Tri, height/2 + 100);}
  else if (posX > 180 && posX < 220) {background(#13293D); fill(#64B7CC); rect(posX, height/2, 150, 100);}
  else {fill (#93B4DB); ellipse(posX, height/2, 100, 100);}
}

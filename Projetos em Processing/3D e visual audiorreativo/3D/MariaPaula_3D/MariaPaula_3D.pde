float posX = 0;
float posZ = 0;
float directionX = 1;
float directionZ = 1;

void setup() {
  size(900, 900, P3D);
}

void draw() {
  noStroke();
  lights();
  background(#357599);

  translate(400, 400, 0);
  sphere(100);


  drawObject(posX + 100, posZ + 100, 50); 
  drawObject(posX - 200, posZ + 50, 70);  
  drawObject(posX + 150, posZ - 150, 90); 

 
  posX += 2 * directionX;
  posZ += 2 * directionZ;

  
  if (posX > 200 || posX < -200) {
    directionX *= -1;
  }
  if (posZ > 200 || posZ < -200) {
    directionZ *= -1;
  }
}

void drawObject(float x, float z, float size) {
  pushMatrix();
  translate(x, 0, z);

 
  box(size);

  translate(-size * 1.5, size * 1.5, 0);
  sphere(size / 2);

  translate(size * 3, 0, 0);
  triangle(0, 0, 0, size, size, 0);

  popMatrix();
}

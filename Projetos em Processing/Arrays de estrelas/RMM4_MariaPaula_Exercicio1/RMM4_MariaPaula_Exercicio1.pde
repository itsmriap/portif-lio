float[] x = new float[100];
float[] y = new float[100];
float[] speed = new float[100];
int i = 0;

void setup() {
  size(displayWidth, displayHeight);
  stroke(255);
  strokeWeight(3);
  i = 0;

  while (i < 100) {
    x[i] = random(width);
    y[i] = random(height);
    speed[i] = random(1, 5);
    i = i + 1;
  }
}

void draw() {
  background(#2DB1F0);
  i = 0;

  while (i < 100) {
    point(x[i], y[i]);
    x[i] = x[i] - speed[i];
   
    if (x[i] < 0)
      x[i] = width;
   
    i = i + 1;
  }
}

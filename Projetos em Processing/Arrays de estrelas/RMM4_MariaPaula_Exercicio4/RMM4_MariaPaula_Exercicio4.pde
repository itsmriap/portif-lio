float[] x = new float[100];
float[] y = new float[100];
float[] speedX = new float[100];
float[] speedY = new float[100];
color[] colors = new color[100];
int i = 0;

void setup() {
  size(displayWidth, displayHeight);
  strokeWeight(10);

  while (i < 100) {
    x[i] = random(width);
    y[i] = random(height);
    speedX[i] = random(1, 3);
    speedY[i] = random(1, 3);
    colors[i] = color(random(255), random(255), random(255));
    i = i + 1;
  }
}

void draw() {
  background(#2DB1F0);
  int i = 0;
  while (i < 100) {
    stroke(colors[i]);
    point(x[i], y[i]);
    x[i] = x[i] + speedX[i];
    y[i] = y[i] + speedY[i];

    if (x[i] > displayWidth || x[i] < 0) {
      speedX[i] *= -1;
      colors[i] = color(random(255), random(255), random(255));
    }

    if (y[i] > displayHeight || y[i] < 0) {
      speedY[i] *= -1;
      colors[i] = color(random(255), random(255), random(255));
    }

    i = i + 1;
  }
}


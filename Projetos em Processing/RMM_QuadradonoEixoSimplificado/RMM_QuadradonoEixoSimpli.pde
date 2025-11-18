float angle = 0;
float spacing = 150;
void setup() {
size(800, 800);
rectMode(CENTER);
}

void draw() {
background(#13293D);
translate(width / 2, height / 2);
for (int i = 0; i < 4; i++) {
float x = (i * spacing) - (spacing * 1.5);
pushMatrix();
translate(x, 0);
rotate(radians(angle));
fill(random(10), random(58), random(74));
rect(0, 0, 70, 70);
popMatrix();
}
angle += 1;
}

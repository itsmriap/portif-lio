int y = 500;
void setup ()
{
  size (500,500);
}

void draw ()
{
  background(#c3e3fd);
  stroke (#15297c);
  strokeWeight(15);
  fill(#107acc);
  ellipse(250,y,150,150);
  y = y - 1;
}

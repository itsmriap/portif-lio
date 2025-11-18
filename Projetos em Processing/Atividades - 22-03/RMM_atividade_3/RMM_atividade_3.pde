int x = 500;
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
  ellipse(x,x,150,150);
  x = x - 1;
}

int x = 0;
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
  ellipse(250,250,x,x);
  x = x + 1;
}

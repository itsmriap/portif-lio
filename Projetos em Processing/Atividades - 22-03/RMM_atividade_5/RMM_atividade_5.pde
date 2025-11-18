int circulo = 200;
int velocidade = 5;
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
  ellipse(250,250,circulo,circulo);
  circulo = circulo - velocidade;
  if (circulo == 0) {
    velocidade = 0;
  }
}

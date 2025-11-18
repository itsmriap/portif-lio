int circulox = 150;
int circuloy = 150;
int velocidadex = 5;
int velocidadey = 5;

void setup () {
rectMode (CENTER);
size(700, 500);
}

void draw ()
{
  background(#c3e3fd);
  stroke (#15297c);
  strokeWeight(15);
  fill(#107acc);
  ellipse(circulox,circuloy,200,200);
  circulox = circulox + velocidadex;
  if (circulox > 600) {velocidadex = - velocidadex;}
  if (circulox == 100) {velocidadex = - velocidadex;}
   circuloy = circuloy + velocidadey;
  if (circuloy > 400) {velocidadey = - velocidadey;}
  if (circuloy == 100) {velocidadey = - velocidadey;}
}


import ddf.minim.*;

Minim minim;
AudioPlayer groove;

void setup()
{
  size(1024, 200);

  minim = new Minim(this);
  groove = minim.loadFile("Kayblack e Baco Exu do Blues - Melhor só.mp3", 1024);
  groove.loop();
}

void draw()
{
  background(#357599);
  
  stroke( 255 );
  
  for(int i = 0; i < groove.bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, groove.bufferSize(), 0, width );
    float x2 = map( i+1, 0, groove.bufferSize(), 0, width );
    line( x1, 50 + groove.left.get(i)*50, x2, 50 + groove.left.get(i+1)*50 );
    line( x1, 150 + groove.right.get(i)*50, x2, 150 + groove.right.get(i+1)*50 );
  }
  
  noStroke();
  fill( 255, 128 );
  
  rect( 0, 0, groove.left.level()*width, 100 );
  rect( 0, 100, groove.right.level()*width, 100 );
}

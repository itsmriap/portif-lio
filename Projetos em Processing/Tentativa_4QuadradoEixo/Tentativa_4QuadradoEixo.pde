float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;
float squareSize = 50;
float distanceFromCenter = 100;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  translate(width / 2, height / 2); // Posiciona o centro do sketch no centro da tela
  
  // Calcula as posições dos quadrados
  float x1 = cos(angle1) * distanceFromCenter;
  float y1 = sin(angle1) * distanceFromCenter;
  float x2 = cos(angle2 + PI / 2) * distanceFromCenter;
  float y2 = sin(angle2 + PI / 2) * distanceFromCenter;
  float x3 = cos(angle3 + PI) * distanceFromCenter;
  float y3 = sin(angle3 + PI) * distanceFromCenter;
  float x4 = cos(angle4 + 3 * PI / 2) * distanceFromCenter;
  float y4 = sin(angle4 + 3 * PI / 2) * distanceFromCenter;
  
  // Desenha os quadrados
  rectMode(CENTER);
  fill(255, 0, 0);
  rect(x1, y1, squareSize, squareSize);
  
  fill(0, 255, 0);
  rect(x2, y2, squareSize, squareSize);
  
  fill(0, 0, 255);
  rect(x3, y3, squareSize, squareSize);
  
  fill(255, 255, 0);
  rect(x4, y4, squareSize, squareSize);
  
  // Atualiza os ângulos para fazer os quadrados girarem
  float rotationSpeed = 0.02;
  angle1 += rotationSpeed;
  angle2 += rotationSpeed;
  angle3 += rotationSpeed;
  angle4 += rotationSpeed;
}


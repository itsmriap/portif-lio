background (0);
size (300, 200);

String [] objeto = { "caneta", "telefone", "livro", "chave", "bola", "óculos de sol", "cadeira", "relógio"};
String [] pessoa = { "Ana", "Carlos", "Maria", "Pedro", "Sofia", "João", "Mariana", "Rafael"};
String [] acao = { "correu", "nadou", "leu", "cozinhou", "cantou", "estudou", "dançou", "viajou"};
String [] conjuncao = { "na", "com", "e", "ainda", "nem", "então", "ou", "assim"};
textSize (20);


int o = int(random (0,8));
int p = int(random (0,8));
int a = int(random (0,8));
int c = int(random (0,8));



text (objeto[o], 20, 80);
text (pessoa[p], 20, 20);
text (acao[a], 20, 60);
text (acao[c], 20, 40);

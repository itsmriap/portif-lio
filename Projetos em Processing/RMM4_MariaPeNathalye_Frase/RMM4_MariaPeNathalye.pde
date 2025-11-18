background (235, 52, 207);
size (500, 500);

String [] sujeitos = {"Maria", "João", "O cachorro", "A escola", "O professor", "Meu amigo", "A flor", "O presidente", "O carro", "A música", "Ela", "O sol", "A montanha", "A criança", "O filme", "Os pássaros", "O livro", "O time", "O rio"};
String [] substantivo = {"cachorro", "computador", "abacaxi", "montanha", "cadeira", "amizade", "caneta", "livro", "carro", "futebol", "escola", "criança", "gato", "flor", "rio", "telefone", "praia", "árvore", "beleza", "sorriso"};
String [] verbo = {"correr", "comer", "nadar", "estudar", "amar", "trabalhar", "dormir", "saltar", "cantar", "dançar", "voar", "chorar", "brincar", "pular", "escrever", "sorrir", "beber", "nadar", "sonhar", "gritar"};
String [] prep = {"em", "para", "com", "por", "sobre", "sob", "entre", "até", "contra", "dentro", "fora", "perto", "longe", "além", "durante", "desde", "através", "até", "para", "diante","em", "para", "com", "por", "sobre", "sob", "entre", "até", "contra", "dentro", "fora", "perto", "longe", "além", "durante", "desde", "através", "até", "para", "diante"};
String [] adjetivos = {"feliz", "grande", "pequeno", "bonito", "inteligente", "rápido", "lento", "doce", "frio", "quente", "alegre", "triste", "elegante", "alto", "baixo", "delicioso", "colorido", "novo", "velho", "brilhante"};
String [] adverbios = {"rapidamente", "lentamente", "bem", "mal", "hoje", "agora", "sempre", "nunca", "ainda", "logo", "já", "amanhã", "assim", "talvez", "lá", "cedo", "tarde", "muito", "pouco", "depressa"};
String [] conjuncoes = {"e", "ou", "mas", "porque", "embora", "se", "ainda que", "quando", "assim que", "enquanto", "portanto", "contudo", "além disso", "tanto quanto", "desde que", "já que", "caso", "nem", "também", "então"};
textSize (20);


int suj = int(random (0,20));
int subs = int(random (0,20));
int verb = int(random (0,20));
int pre = int(random (0,20));
int adj = int(random (0,20));
int adv = int(random (0,20));
int conj = int(random (0,20));


text (sujeitos[suj], 20, 25);
text (substantivo[subs], 20, 80);
text (verbo[verb], 20, 40);
text (prep[pre], 20, 100);
text (adjetivos[adj], 20, 120);
text (adverbios[adv], 20, 140);
text (conjuncoes[conj], 20, 60);


ellipse(300,50,100,100);
ellipse(300,200,100,100);
ellipse(100,300,100,100);
ellipse(500,50,100,100);
ellipse(300,400,100,100);

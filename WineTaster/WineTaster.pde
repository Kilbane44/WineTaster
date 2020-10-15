String[] Adj;
String[] Connect;
String[] Names;
String finalOutput="";
PImage wine;


void setup()
{
  Adj = loadStrings("adj.txt");
  Connect = loadStrings("connector.txt");
  Names = loadStrings("names.txt");
  wine = loadImage("wine.png");
  wine.resize(100,200);
  size(800,800);
}

void draw()
{
  image(wine,25,25);
}

void keyPressed()
{
  background(0);
  finalOutput = "This ";
  finalOutput += " wine";
  finalOutput += " has ";
  finalOutput += Adj[(int)random(Adj.length)];
  finalOutput += " fumes, is ";
  finalOutput += Adj[(int)random(Adj.length)];
  finalOutput += ", and ";
  finalOutput += Adj[(int)random(Adj.length)];
  finalOutput += " \n";
  finalOutput += Connect[(int)random(Connect.length)];
  finalOutput += " ";
  finalOutput += Adj[(int)random(Adj.length)];
  
  textAlign(CENTER);
  textSize(15);
  text(finalOutput,width/2, height/2);
}
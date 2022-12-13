color red = color(255, 0, 0);
color green = color(0, 255, 0);
color blue = color(0, 0, 255);
PImage robot;
PFont myFont;

Stock a = new Stock(50, red, 0, 0, 0, 1, 0);
Line al = new Line(a);
Graph graph = new Graph(100,100,700,600, 200);
Bot tbows = new Bot(5, 5, 5, 5, 0, 5, false, 5, false, false, 5, 5);
void setup() {
  robot = loadImage("images.png");
  myFont = createFont("arial", 15);
  size(800, 700);
  frameRate(1);
  graph.addLine(al);
}

void draw() {
  background(255);
  a.updatePosition();
  graph.updateGraph();
  graph.drawGraph();
  tbows.drawBot();
  tbows.checkStock(al);
  tbows.checkRisk();
  tbows.invest();
}

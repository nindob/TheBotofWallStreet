color red = color(255, 0, 0);
color green = color(0, 255, 0);
color blue = color(0, 0, 255);
PImage robot;
PFont myFont;
float InflationRate;
float EmployeeTreatmentQuality;
float InterestRates;
float VolatilityIndex;
float initialValue;
float scale;
boolean BullMarket;

Stock a;
Line al;
Graph graph;
Bot tbows;
void setup() {
  robot = loadImage("images.png");
  myFont = createFont("arial", 15);
  size(800, 700);
  frameRate(1);
  graph.addLine(al);
  reset();
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

void reset() {
  a = new Stock(initialValue, red, InflationRate, EmployeeTreatmentQuality, InterestRates, VolatilityIndex, BullMarket);
  graph = new Graph(100,100,700,550, scale);
  tbows = new Bot(700, 600);
  al = new Line(a);
}

color red = color(255, 0, 0);
color green = color(0, 255, 0);
color blue = color(0, 0, 255);

Stock a = new Stock(50, red);
Stock b = new Stock(25, blue);
Stock c = new Stock(75, green);
Line al = new Line(50, 50, 650, 650, a);
Line bl = new Line(50, 50, 650, 650, b);
Line cl = new Line(50, 50, 650, 650, c);
Graph graph = new Graph();
void setup() {
  size(800, 700);
  frameRate(1);
  graph.addLine(al);
  graph.addLine(bl);
  graph.addLine(cl);
}

void draw() {
  background(255);
  a.updateValue();
  b.updateValue();
  c.updateValue();
  graph.updateGraph();
  graph.drawGraph();
}

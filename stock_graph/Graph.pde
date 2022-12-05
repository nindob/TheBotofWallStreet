class Graph {
  ArrayList<Line> lines;
  float x, y, xsize, ysize;
  
  Graph(float a, float b, float c, float d) {
    lines = new ArrayList<Line>();
    x = a;
    y = b;
    xsize = c;
    ysize = d;
  }
  
  void addLine(Line a) {
    lines.add(a);
    a.graph = this;
  }
  
  void drawGraph() {
    for (Line a : lines) {
      if(a.drawn)
        a.drawLine();
    }
  }
  
  void updateGraph() {
    for (Line a : lines) {
      a.updateStock();
      a.updateLine();
    }
  }
}

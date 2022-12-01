class Graph {
  ArrayList<Line> lines;
  Graph() {
    lines = new ArrayList<Line>();
  }
  
  void addLine(Line a) {
    lines.add(a);
  }
  
  void drawGraph() {
    for (Line a : lines) {
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

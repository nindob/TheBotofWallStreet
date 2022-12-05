class Line {
  ArrayList<PVector> points;
  Stock stock;
  float maxValue;
  float scale;
  Graph graph;
  boolean drawn;
  
  Line (Stock e) {
    this.scale = 20;
    this.maxValue = 100;
    this.stock = e;
    this.points = new ArrayList<PVector>();
    this.drawn = true;
  }
  
  void updateStock() {
      this.points.add(new PVector(graph.xsize, graph.ysize-(this.stock.value*(this.graph.ysize/this.maxValue))));
  }
  
  void updateLine() {
    for (PVector a : this.points) {
      if (a.x < graph.x) {
        points.remove(a.x);
        println("e");
      }
      a.x -= graph.xsize/scale;
    }
  }
  
  void hide() {
    this.drawn = false;
  }
  
  void drawLine() {
    fill(stock.colour);
    stroke(stock.colour);
    strokeWeight(2);
    for (PVector a : points) {
      circle(a.x, a.y, 1);
      if (points.indexOf(a) > 0) {
        PVector b = this.points.get(points.indexOf(a) - 1);
        line(b.x, b.y, a.x, a.y);
      }
    }
   // println(points);
  }
}

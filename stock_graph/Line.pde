class Line {
  ArrayList<PVector> points;
  Stock stock;
  float scale;
  Graph graph;
  boolean drawn;
  
  Line (Stock e) {
    this.scale = 20;
    this.stock = e;
    this.points = new ArrayList<PVector>();
    this.drawn = true;
  }
  
  void updateStock() {
    if (this.stock.value > graph.maxValue) {
      graph.maxValue = this.stock.value;
    }
      this.points.add(new PVector(graph.xsize, graph.ysize-(this.stock.value*((this.graph.ysize-this.graph.y)/graph.maxValue))));
  }
  
  void updateLine() {
    this.lineCheck();
    for (PVector a : this.points) {
      a.x -= graph.xsize/scale;
    }
  }
  
  void lineCheck() {
    if (points.get(0).x < graph.x) {
      points.remove(0);
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
      if (a.x > graph.x){
        circle(a.x, a.y, 1);
        if (points.indexOf(a) > 0) {
          PVector b = this.points.get(points.indexOf(a) - 1);
          line(b.x, b.y, a.x, a.y);
        }
      }
    }
  }
  
  float getValue(int a) {
    return this.points.get(a).y;
  }
}

class Line {
  float x, y, xsize, ysize;
  ArrayList<PVector> points;
  Stock stock;
  float maxValue;
  float scale;
  
  Line (float a, float b, float c, float d, Stock e) {
    this.x = a;
    this.y = b;
    this.xsize = c;
    this.ysize = d;
    this.scale = 20;
    this.maxValue = 100;
    this.stock = e;
    this.points = new ArrayList<PVector>();
  }
  
  void updateStock() {
      this.points.add(new PVector(xsize, ysize-(this.stock.value*(this.ysize/this.maxValue))));
  }
  
  void updateLine() {
    for (PVector a : this.points) {
      if (a.x < this.x) {
        points.remove(a.x);
        println("e");
      }
      a.x -= xsize/scale;
    }
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

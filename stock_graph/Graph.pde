class Graph {
  ArrayList<Line> lines;
  float x, y, xsize, ysize;
  float maxValue;
  
  Graph(float a, float b, float c, float d, float m) {
    lines = new ArrayList<Line>();
    x = a;
    y = b;
    xsize = c;
    ysize = d;
    maxValue = m;
  }
  
  void addLine(Line a) {
    lines.add(a);
    a.graph = this;
  }
  
  void drawAxis() {
    fill(0);
    stroke(0);
    line(this.xsize, this.y, this.xsize, this.ysize);
    line(this.lines.get(0).points.get(0).x, this.ysize, this.xsize, this.ysize);
    float yscale = (this.ysize-this.y)/10;
    for (int i=0;i<10;i++) {
      line(this.xsize, this.y+i*yscale, this.xsize+10, this.y+i*yscale);
      float l = this.maxValue-i*this.maxValue/10;
      textAlign(LEFT);
      text(int(l), this.xsize+20, this.y+i*yscale);
    }
  }
  
  void drawGraph() {
    drawAxis();
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

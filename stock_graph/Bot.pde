//Bot class
class Bot {
 //Fields
 float[] values = new float[5];
 int[] time = new int[5];
 float[] slopes = new float[5];
 float slope;
 float avgSlope;
 float addPrice;
 Boolean want;
 float riskFactor;
 Boolean blueChip;
 Boolean pennyStock;
 
 
 float botX;
 float botY;
 
 Bot(float v, int t, float Ss, float s, float aS, float aP, Boolean w, float r, Boolean b, Boolean p, float x, float y) {
   this.values[4] = v;
   this.values[4] = t;
   this.values[4] = Ss;
   this.slope = s;
   this.avgSlope = aS;
   this.addPrice = 0;
   this.want = w;
   this.riskFactor = r;
   this.blueChip = b;
   this.pennyStock = p;
   
   this.botX = 50;
   this.botY = 50;
 }
 
 void checkRisk() {
   try {
     float total = 0;
     for(int i = 0; i<5; i++) {
       total += slopes[i];
     }
     avgSlope = total/this.slopes.length;
   }
   catch (Exception e) {}
 }
 
 void drawBot() {
   image(robot, 700, 600, 100, 100);
 }
 
 void checkStock(Line a) {
   try{
     for (int i=0;i<5;i++) {
       slopes[4-i] = a.getValue(a.points.size()-(2+i))-a.getValue(a.points.size()-(1+i));
     }
   }
   catch (Exception e) {
     slopes = new float[5];
     println("The Bot of Wall Street does not have enough information to make an investment");
   }
 }
 
 void invest() {
   if(avgSlope > 0) {
    want = true; 
    println("The investor wants to invest");
    fill(0);
    textAlign(CENTER);
    text("The red stock is a good investment", 700, 600);
   }
   else {
    want = false;
    println("the investor does not want to invest");
    fill(0);
    textAlign(CENTER);
    text("The red stock is a bad investment", 700, 600);
   }
 }
}

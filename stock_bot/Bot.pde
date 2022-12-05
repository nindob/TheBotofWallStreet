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
   for(int i =0; i<5; i++) {
      this.values[i] += random(-50,50);
      slope = this.values[i+1] - this.values[i]/this.time[i+1] - this.values[i];
      this.slopes[i] = slope; 
   }
   float total = 0;
   for(int i = 0; i<5; i++) {
     total += slopes[i];
   }
   avgSlope = total/this.slopes.length;
 }
 
 void drawBot() {
   
 }
 void invest() {
   if(avgSlope > 0) {
    want = true; 
    println("The investor wants to invest");
   }
   else {
    want = false;
    println("the investor does not want to invest");
   }
 }
}

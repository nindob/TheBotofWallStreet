//Bot class
class Bot {
 //Fields
 float[] slopes = new float[5];
 float slope;
 float avgSlope;
 Boolean want;
 
 
 float botX;
 float botY;
 
 Bot(float x, float y) {
   this.botX = x;
   this.botY = y;
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
   image(robot, this.botX, this.botY, 100, 100);
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
    textAlign(RIGHT);
    text("This stock is a good investment", 720, 650);
   }
   else {
    want = false;
    println("the investor does not want to invest");
    fill(0);
    textAlign(RIGHT);
    text("This stock is a bad investment", 720, 650);
   }
 }
}

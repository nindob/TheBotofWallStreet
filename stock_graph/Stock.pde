class Stock{
  color colour;
  float value;
  
  // factors that should change the stock graph
  // can make GUI sliders and buttons for this
  float inflationRates;
  float interestRates;
  float volatilityIndex;
  float employeeTreatmentQuality;
  boolean BullMarket;
  
  Stock(float val, color col, float ifr, float etq, float inr, float vi, boolean b) {
    this.value = val;
    this.colour = col;
    this.inflationRates = ifr;
    this.employeeTreatmentQuality = etq;
    this.interestRates = inr;
    this.volatilityIndex = vi;
    BullMarket = b;
   
    // sin(value - inflationRates * 2 / 10 + employeeTreatmentQuality * interestRates);
  }
  void updatePosition() {
    if (BullMarket) {
      float ifr = inflationRates + random(-1, 2);
      float etq = employeeTreatmentQuality + random(-5, 7);
      float ir = interestRates + random(-2, 4);
      value += volatilityIndex*(ifr+etq+ir);
      float p = random(0, 1);
      if (p<0.4) {
        BullMarket = false;
      }
    }
    else {
      float ifr = inflationRates + random(-2, 1);
      float etq = employeeTreatmentQuality + random(-7, 5);
      float ir = interestRates + random(-4, 2);
      value += volatilityIndex*(ifr+etq+ir);
      float p = random(0, 1);
      if (p<0.4) {
        BullMarket = true;
      }
    }
  }
}

class Stock{
  float xSpeed, ySpeed;
  int strokeSize;
  color colour;
  float value;
  
  // factors that should change the stock graph
  // can make GUI sliders and buttons for this
  float inflationRates;
  float interestRates;
  float volatilityIndex;
  float riskTolerance;
  float employeeTreatmentQuality;
  float currentPrice;
  boolean marketType;
  
  Stock(float val, color col, float ifr, float etq, float inr, float vi, float rt) {
    this.value = val;
    this.colour = col;
    this.inflationRates = ifr;
    this.employeeTreatmentQuality = etq;
    this.interestRates = inr;
    this.volatilityIndex = vi;
    this.riskTolerance = rt;
   
    // sin(value - inflationRates * 2 / 10 + employeeTreatmentQuality * interestRates);
  }
  void updatePosition() {
    float ifr = inflationRates + random(-1, 1);
    float etq = employeeTreatmentQuality + random(-5, 5);
    float ir = interestRates + random(-2, 2);
    float rt = riskTolerance + random(-3, 3);

    value += volatilityIndex*(ifr+etq+ir+rt);
  }
}

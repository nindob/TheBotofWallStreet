class Stock{
  float xSpeed, ySpeed;
  float frequency, amplitude, period, periodQuarter;
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
  
  Stock(float val, float frq, float amp, color col, float ifr, float etq, float inr, float vi, float rt) {
    this.value = val;
    this.frequency = frq;
    this.amplitude = amp;
    this.colour = col;
    this.inflationRates = ifr;
    this.employeeTreatmentQuality = etq;
    this.interestRates = inr;
    this.volatilityIndex = vi;
    this.riskTolerance = rt;
   
    // sin(value - inflationRates * 2 / 10 + employeeTreatmentQuality * interestRates);
  }
  void updatePosition() {
    float f = this.frequency;
    float a = this.amplitude;

    value = volatilityIndex + (a/f)*sin(inflationRates * employeeTreatmentQuality * interestRates * riskTolerance)+50;
  }
}

class Stock{
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
  
  Stock(float setValue, color setColor, float setInflationRates, float setEmployeeTreatmentQuality, float setInterestRates) {
    value = setValue;
    colour = setColor;
    inflationRates = setInflationRates;
    employeeTreatmentQuality = setEmployeeTreatmentQuality;
    interestRates = setInterestRates;
  }
  void updateValue() {
    value = value - inflationRates * 2 / 10 + employeeTreatmentQuality * interestRates;
  }
}

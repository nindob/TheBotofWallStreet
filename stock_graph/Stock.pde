class Stock{
  color colour;
  float value;
  Stock (float a, color c) {
    value = a;
    colour = c;
  }
  void updateValue() {
    value = random(0, 100);
  }
}

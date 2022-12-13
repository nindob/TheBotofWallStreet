class Stock{
  color colour;
  float value;
  Stock (float a, color c) {
    value = a;
    colour = c;
  }
  void updateValue() {
    this.value += random(-5, 5);
    if (this.value < 0) {
      this.value = 0;
    }
  }
}

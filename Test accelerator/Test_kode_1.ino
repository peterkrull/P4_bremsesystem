void setup() {
  for (int i = 6; i < 14 ; i++) {
    pinMode(i, OUTPUT);
  }
  for (int i = 6; i < 14 ; i++) {
    digitalWrite(i, LOW);
  }
}

void loop() {

  //Baghjul hastighed sættes til "11111111"
  for (int i = 6; i < 14; i++) {
    digitalWrite(LOW, i);
  }
  delay(2000);
  for (int i = 6; i < 14; i++) {
    digitalWrite(HIGH, i);
  }
  delay(100000);
}

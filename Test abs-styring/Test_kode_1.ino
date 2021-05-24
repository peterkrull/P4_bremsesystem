void setup() {
  for (int i = 6; i < 14 ; i++) {
    pinMode(i, OUTPUT);
  }
}

void loop() {
  //Baghjul hastighed saettes til "11111111"
  for (int i = 6; i < 14; i++) {
    digitalWrite(i, HIGH);
  }
  delay(1000);
  //Baghjul saettes til "00000000"
  for (int i = 6; i < 14; i++) {
    digitalWrite(i, LOW);
  }
  delay(1000);

}
